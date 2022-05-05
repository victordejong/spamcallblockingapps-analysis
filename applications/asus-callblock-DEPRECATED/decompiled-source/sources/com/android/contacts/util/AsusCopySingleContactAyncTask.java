package com.android.contacts.util;

import android.accounts.Account;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.ContentProviderOperation;
import android.content.ContentProviderResult;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.content.OperationApplicationException;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.RemoteException;
import android.provider.ContactsContract;
import android.util.Log;
import android.widget.Toast;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.b;
import com.android.contacts.model.a.a;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.model.c;
import com.android.contacts.simcardmanage.SimCardContact;
import com.android.contacts.simcardmanage.e;
import com.android.contacts.util.CoverUtils;
import com.android.contacts.vcard.SelectAccountActivity;
import com.google.a.b.ae;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/AsusCopySingleContactAyncTask.class */
public class AsusCopySingleContactAyncTask extends AsyncTask<Void, Integer, Integer> {
    public static final int COLUMN_SPACE_NOT_ENOUGH_DIALOG = 9;
    private static final int MAX_OP_COUNT = 300;
    private static final String[] RAWCONTACTS_SUMMARY_PROJECTION = {"_id", "display_name", "display_name_alt"};
    public static final int SIM_CONTACT_NO_PHONE_NUMBER_DIALOG = 11;
    public static final int SIM_NOT_SUPPORT_SOME_DATA_DIALOG = 12;
    public static final int SPACE_FULL_DIALOG = 6;
    public static final int SPACE_NOT_ENOUGH_DIALOG = 5;
    private static final int SUMMARY_ID_COLUMN_INDEX = 0;
    private static final String VALUE_OF_IS_SUPER_PRIMARY = "1";
    private static CalculateSimSpaceTask mCalculateSimSpaceTask;
    final int COPY_FAIL;
    final int COPY_SUCCESS;
    private String TAG;
    private AlertDialog.Builder alertDialog;
    private AlertDialog.Builder alertNoEnoughSpaceDialog;
    private boolean hasSimNotSupportData;
    private ArrayList<String> idArray;
    private boolean isColumnSpaceFull;
    private boolean isCopyFromOdmSimContact;
    private AccountWithDataSet mAccount;
    private c mContactData;
    private long mContactId;
    private Context mContext;
    private boolean mHasPrimaryPhoto;
    private Set<Long> mHaveBeenAddedToSimRawContactIds;
    private int mIndexOfPrimaryName;
    private int mIndexOfPrimaryPhoto;
    private boolean mIsCopyFromSimContact;
    private boolean mIsKeepEnable;
    private AlertDialog.Builder mKeepOrigContactsDialogForSim;
    private long mMainRawContactId;
    private boolean mNeedCopyToSimForVerizon;
    private long mOrigSimContactContactId;
    private long mOrigSimContactRawId;
    private ArrayList<Long> mOrigSimContactRawIds;
    private long mPrimaryDisplayPhotoFileId;
    private long mPrimaryDisplayPhotoId;
    private long mRawContactId;
    private long mRawContactIdForPhoto;
    private boolean mSpaceNotEnough;
    private int simIndex;
    private int simStatus;
    private List<SimCardContact> toExportSimContacts;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/util/AsusCopySingleContactAyncTask$CalculateSimSpaceTask.class */
    public class CalculateSimSpaceTask extends AsyncTask<ArrayList<String>, Integer, Integer> {
        Integer[] existId;
        private List<SimCardContact> exportSimContacts;
        private Map<Long, String> mRawDisplayNameMap;
        long start;
        long stop;
        private List<SimCardContact> toAddSimContacts;
        private final int SIM_STORAGE_ENOUGH = 0;
        private final int SIM_FULL = 1;
        private final int SIM_STORAGE_NOT_ENOUGH = 2;
        private final int COLUMN_STORAGE_NOT_ENOUGH = 3;
        private final int SIM_CONTACT_NO_PHONE_NUMBER = 4;
        private final int SIM_CALCULATE_SPACE_FAIL = 5;
        String[] PROJECTION = {"raw_contact_id", "mimetype", CoverUtils.CoverData.COVER_URI, CoverUtils.CoverData.COVER_URI, CoverUtils.CoverData.COVER_URI, CoverUtils.CoverData.COVER_URI, ContactDetailCallogActivity.EXTRA_CONTACT_ID, "data15"};
        int maxNameLength = 0;
        int maxPhoneLength = 0;
        int maxEmailLength = 0;
        int maxAdditionNumberLength = 0;
        int maxSecondNameLength = 0;
        Boolean isSupportAdditionNumber = false;
        Boolean isSupportEmail = false;
        Boolean isSupportSecondName = false;
        int storage = 0;
        int additionNumberStorage = 0;
        int emailstorage = 0;
        int secondNameStorage = 0;
        Boolean isEmailStorageEnough = true;
        Boolean isStorageEnough = true;
        Boolean isSecondNameEnough = true;

        CalculateSimSpaceTask() {
        }

        private Cursor getContactsData(Cursor cursor) {
            String str;
            String str2 = " IN ('";
            if (cursor != null) {
                str2 = " IN ('";
                try {
                    if (cursor.moveToFirst()) {
                        String str3 = " IN ('";
                        do {
                            long j = cursor.getInt(0);
                            this.mRawDisplayNameMap.put(Long.valueOf(j), cursor.getString(1));
                            str = str3 + j + "', '";
                            str3 = str;
                        } while (cursor.moveToNext());
                        str2 = str;
                    }
                } catch (Throwable th) {
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            Log.d(AsusCopySingleContactAyncTask.this.TAG, "CalculateSimSpaceTask : getContactsData toQueryString = " + str2);
            if (cursor != null) {
                cursor.close();
            }
            return AsusCopySingleContactAyncTask.this.mContext.getContentResolver().query(ContactsContract.Data.CONTENT_URI, this.PROJECTION, "raw_contact_id" + ((str2.substring(0, str2.length() - 3) + ")") + " AND mimetype_id IN( SELECT _id FROM mimetypes WHERE mimetype NOT IN ('vnd.android.cursor.item/group_membership', 'vnd.android.cursor.item/cover'))"), null, "_id ASC");
        }

        private Cursor getContactsDataVerizon(long j) {
            String str = (" IN ('" + j + "')") + " AND mimetype_id IN( SELECT _id FROM mimetypes WHERE mimetype NOT IN ('vnd.android.cursor.item/group_membership', 'vnd.android.cursor.item/cover'))";
            Log.d(AsusCopySingleContactAyncTask.this.TAG, "CalculateSimSpaceTask verizon : getContactsData toQueryString = " + str);
            return AsusCopySingleContactAyncTask.this.mContext.getContentResolver().query(ContactsContract.Data.CONTENT_URI, this.PROJECTION, "raw_contact_id" + str, null, "_id ASC");
        }

        private long getMainRawId(int i) {
            Cursor query = AsusCopySingleContactAyncTask.this.mContext.getContentResolver().query(ContactsContract.Contacts.CONTENT_URI, new String[]{"name_raw_contact_id"}, "_id = " + i, null, null);
            long j = -1;
            try {
                if (query.moveToFirst()) {
                    j = query.getLong(0);
                }
                return j;
            } finally {
                if (query != null) {
                    query.close();
                }
            }
        }

        private Cursor getRawCursor(String str) {
            return AsusCopySingleContactAyncTask.this.mContext.getContentResolver().query(ContactsContract.RawContacts.CONTENT_URI, new String[]{"_id", "display_name"}, ContactDetailCallogActivity.EXTRA_CONTACT_ID + str, null, null);
        }

        private boolean inExistId(int i) {
            boolean z = false;
            int i2 = 0;
            while (true) {
                if (i2 < this.existId.length) {
                    if (this.existId[i2] != null && this.existId[i2].intValue() == i) {
                        z = true;
                        break;
                    }
                    i2++;
                } else {
                    break;
                }
            }
            return z;
        }

        /* JADX WARN: Code restructure failed: missing block: B:129:0x060a, code lost:
            r17 = r10;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void toAddData(int r7, android.database.Cursor r8) {
            /*
                Method dump skipped, instructions count: 1572
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.util.AsusCopySingleContactAyncTask.CalculateSimSpaceTask.toAddData(int, android.database.Cursor):void");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public Integer doInBackground(ArrayList<String>... arrayListArr) {
            String str;
            int i;
            Log.d(AsusCopySingleContactAyncTask.this.TAG, "CalculateSimSpaceTask START");
            e a2 = e.a(AsusCopySingleContactAyncTask.this.mContext);
            List<SimCardContact> f = a2.f(AsusCopySingleContactAyncTask.this.simIndex);
            int a3 = a2.a(f, 1);
            int a4 = a2.a(f, 3);
            int a5 = a2.a(f, 5);
            int a6 = a2.a(f, 4);
            int a7 = a2.a(AsusCopySingleContactAyncTask.this.simIndex, 1);
            int a8 = a2.a(AsusCopySingleContactAyncTask.this.simIndex, 2);
            int a9 = a2.a(AsusCopySingleContactAyncTask.this.simIndex, 3);
            int a10 = a2.a(AsusCopySingleContactAyncTask.this.simIndex, 4);
            this.maxNameLength = a2.a(AsusCopySingleContactAyncTask.this.simIndex, 5);
            this.maxPhoneLength = a2.a(AsusCopySingleContactAyncTask.this.simIndex, 6);
            this.maxEmailLength = a2.a(AsusCopySingleContactAyncTask.this.simIndex, 7);
            this.maxAdditionNumberLength = a2.a(AsusCopySingleContactAyncTask.this.simIndex, 8);
            this.maxSecondNameLength = a2.a(AsusCopySingleContactAyncTask.this.simIndex, 9);
            this.isSupportAdditionNumber = Boolean.valueOf(a9 > 0);
            this.isSupportEmail = Boolean.valueOf(a8 > 0);
            this.isSupportSecondName = Boolean.valueOf(a10 > 0);
            this.storage = a7 - a3;
            if (this.storage <= 0) {
                i = 1;
            } else {
                this.additionNumberStorage = a9 - a5;
                this.emailstorage = a8 - a4;
                this.secondNameStorage = a10 - a6;
                String str2 = " IN ('";
                Cursor cursor = null;
                int min = Math.min(this.storage + 1, arrayListArr[0].size());
                if (AsusCopySingleContactAyncTask.this.mNeedCopyToSimForVerizon) {
                    this.existId = new Integer[min];
                    cursor = getContactsDataVerizon(AsusCopySingleContactAyncTask.this.mRawContactId);
                } else {
                    int i2 = 0;
                    while (i2 < min) {
                        str2 = i2 < min - 1 ? str2 + arrayListArr[0].get(i2) + "', '" : str2 + String.valueOf(str);
                        i2++;
                    }
                    Log.d(AsusCopySingleContactAyncTask.this.TAG, "CalculateSimSpaceTask : toQueryString = " + str2);
                    Cursor rawCursor = getRawCursor(str2 + "')");
                    this.existId = new Integer[min];
                    if (rawCursor == null || rawCursor.getCount() <= 0) {
                        Log.d(AsusCopySingleContactAyncTask.this.TAG, "CalculateSimSpaceTask : rawCursor = null || rawCursor.getCount() <= 0");
                    } else {
                        cursor = getContactsData(rawCursor);
                    }
                }
                if (cursor != null) {
                    try {
                        if (cursor.moveToFirst()) {
                            int i3 = 0;
                            do {
                                long j = cursor.getLong(cursor.getColumnIndex("raw_contact_id"));
                                int i4 = cursor.getInt(cursor.getColumnIndex(ContactDetailCallogActivity.EXTRA_CONTACT_ID));
                                if (inExistId(i4)) {
                                    toAddData(i4, cursor);
                                    i3 = i3;
                                } else {
                                    i3 = i3;
                                    if (this.storage > 0) {
                                        this.existId[i3] = Integer.valueOf(i4);
                                        i3++;
                                        SimCardContact simCardContact = new SimCardContact();
                                        simCardContact.i = AsusCopySingleContactAyncTask.this.simIndex;
                                        simCardContact.d = Long.valueOf(j).longValue();
                                        simCardContact.f2133a = i4;
                                        this.toAddSimContacts.add(simCardContact);
                                        toAddData(i4, cursor);
                                    }
                                }
                            } while (cursor.moveToNext());
                        }
                    } catch (Throwable th) {
                        if (cursor != null) {
                            cursor.close();
                            throw th;
                        }
                        Log.d(AsusCopySingleContactAyncTask.this.TAG, "CalculateSimSpaceTask : detailCursor = null");
                        i = 5;
                    }
                }
                if (cursor != null) {
                    cursor.close();
                    if (this.toAddSimContacts.size() > this.storage) {
                        this.isStorageEnough = false;
                    }
                    Iterator<SimCardContact> it = this.toAddSimContacts.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            SimCardContact next = it.next();
                            if (next.c == null) {
                                i = 4;
                                break;
                            } else if (next.c != null || next.e != null) {
                                if (this.storage > 0) {
                                    this.storage--;
                                    this.exportSimContacts.add(next);
                                }
                            }
                        } else {
                            i = !this.isStorageEnough.booleanValue() ? 2 : AsusCopySingleContactAyncTask.this.isColumnSpaceFull ? 3 : 0;
                        }
                    }
                } else {
                    Log.d(AsusCopySingleContactAyncTask.this.TAG, "CalculateSimSpaceTask : detailCursor = null");
                    i = 5;
                }
            }
            return i;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void onPostExecute(Integer num) {
            super.onPostExecute((CalculateSimSpaceTask) num);
            if (AsusCopySingleContactAyncTask.this.mContext != null) {
                switch (num.intValue()) {
                    case 0:
                        AsusCopySingleContactAyncTask.this.setExportContact(this.exportSimContacts);
                        if (AsusCopySingleContactAyncTask.this.mNeedCopyToSimForVerizon) {
                            AsusCopySingleContactAyncTask.this.excuteExportTask();
                        } else {
                            AsusCopySingleContactAyncTask.this.showKeepDialog();
                        }
                        Log.d(AsusCopySingleContactAyncTask.this.TAG, "SIM_STORAGE_ENOUGH");
                        break;
                    case 1:
                        AsusCopySingleContactAyncTask.this.simStatus = 6;
                        AsusCopySingleContactAyncTask.this.simStatusShowDialog(AsusCopySingleContactAyncTask.this.simStatus);
                        Log.d(AsusCopySingleContactAyncTask.this.TAG, "SIM_FULL");
                        break;
                    case 2:
                        AsusCopySingleContactAyncTask.this.setExportContact(this.exportSimContacts);
                        AsusCopySingleContactAyncTask.this.simStatus = 5;
                        AsusCopySingleContactAyncTask.this.simStatusShowDialog(AsusCopySingleContactAyncTask.this.simStatus);
                        Log.d(AsusCopySingleContactAyncTask.this.TAG, "SIM_STORAGE_NOT_ENOUGH");
                        break;
                    case 3:
                        AsusCopySingleContactAyncTask.this.setExportContact(this.exportSimContacts);
                        AsusCopySingleContactAyncTask.this.simStatus = 9;
                        AsusCopySingleContactAyncTask.this.simStatusShowDialog(AsusCopySingleContactAyncTask.this.simStatus);
                        Log.d(AsusCopySingleContactAyncTask.this.TAG, "COLUMN_STORAGE_NOT_ENOUGH");
                        break;
                    case 4:
                        AsusCopySingleContactAyncTask.this.simStatus = 11;
                        AsusCopySingleContactAyncTask.this.simStatusShowDialog(AsusCopySingleContactAyncTask.this.simStatus);
                        Log.d(AsusCopySingleContactAyncTask.this.TAG, "SIM_CONTACT_NO_PHONE_NUMBER");
                        break;
                    case 5:
                        Log.d(AsusCopySingleContactAyncTask.this.TAG, "SIM_CALCULATE_SPACE_FAIL");
                        Toast.makeText(AsusCopySingleContactAyncTask.this.mContext, AsusCopySingleContactAyncTask.this.mContext.getString(2131755076), 1).show();
                        break;
                }
            }
            this.stop = System.currentTimeMillis();
            Log.d(AsusCopySingleContactAyncTask.this.TAG, "Total calculate time is: " + (this.stop - this.start) + " msec");
            CalculateSimSpaceTask unused = AsusCopySingleContactAyncTask.mCalculateSimSpaceTask = null;
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            this.start = System.currentTimeMillis();
            super.onPreExecute();
            this.exportSimContacts = new LinkedList();
            this.toAddSimContacts = new LinkedList();
            AsusCopySingleContactAyncTask.this.isColumnSpaceFull = false;
            this.mRawDisplayNameMap = new HashMap();
            AsusCopySingleContactAyncTask.this.alertDialog = new AlertDialog.Builder(AsusCopySingleContactAyncTask.this.mContext);
            AsusCopySingleContactAyncTask.this.alertNoEnoughSpaceDialog = new AlertDialog.Builder(AsusCopySingleContactAyncTask.this.mContext);
            AsusCopySingleContactAyncTask.this.mKeepOrigContactsDialogForSim = new AlertDialog.Builder(AsusCopySingleContactAyncTask.this.mContext);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/util/AsusCopySingleContactAyncTask$ExportSimTask.class */
    public class ExportSimTask extends AsyncTask<List<SimCardContact>, Integer, Integer> {
        long startTotal;
        long stopTotal;
        Boolean isSupportAdditionNumber = false;
        Boolean isSupportEmail = false;
        Boolean isSupportSecondName = false;
        private final int EXPORT_SUCCESS = 1;
        private final int EXPORT_FAIL = -1;

        ExportSimTask() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public Integer doInBackground(List<SimCardContact>... listArr) {
            Account account;
            int i;
            Account account2;
            this.startTotal = System.currentTimeMillis();
            LinkedList linkedList = new LinkedList();
            e a2 = e.a(AsusCopySingleContactAyncTask.this.mContext);
            boolean IsAsusDevice = PhoneCapabilityTester.IsAsusDevice();
            Iterator<SimCardContact> it = listArr[0].iterator();
            while (true) {
                if (it.hasNext()) {
                    SimCardContact next = it.next();
                    Uri a3 = a2.a(next, true);
                    if (a3 != null) {
                        next.h = ContentUris.parseId(a3);
                        linkedList.add(next);
                        if (!AsusCopySingleContactAyncTask.this.mIsKeepEnable) {
                            if (AsusCopySingleContactAyncTask.this.mIsCopyFromSimContact) {
                                AsusCopySingleContactAyncTask.this.mOrigSimContactContactId = next.f2133a;
                                AsusCopySingleContactAyncTask.this.mOrigSimContactRawId = next.d;
                            } else {
                                AsusCopySingleContactAyncTask.this.mHaveBeenAddedToSimRawContactIds.add(Long.valueOf(next.d));
                            }
                        }
                    } else {
                        Log.d(AsusCopySingleContactAyncTask.this.TAG, "Start to add to contacts database");
                        if (IsAsusDevice) {
                            account2 = AsusCopySingleContactAyncTask.this.simIndex == 2 ? new Account(b.a.c, "asus.local.simcard2") : new Account(b.a.c, b.a.d);
                        } else {
                            account2 = new Account("SIM", b.a.d);
                            if (com.android.contacts.simcardmanage.b.a(AsusCopySingleContactAyncTask.this.mContext)) {
                                account2 = AsusCopySingleContactAyncTask.this.simIndex == 2 ? new Account("SIM2", b.a.d) : new Account(b.a.c, b.a.d);
                            }
                        }
                        a2.a(AsusCopySingleContactAyncTask.this.simIndex, linkedList, account2, 100);
                        i = -1;
                    }
                } else {
                    Log.d(AsusCopySingleContactAyncTask.this.TAG, "Start to add to contacts database");
                    if (IsAsusDevice) {
                        account = AsusCopySingleContactAyncTask.this.simIndex == 2 ? new Account(b.a.c, "asus.local.simcard2") : new Account(b.a.c, b.a.d);
                    } else {
                        account = new Account("SIM", b.a.d);
                        if (com.android.contacts.simcardmanage.b.a(AsusCopySingleContactAyncTask.this.mContext)) {
                            account = AsusCopySingleContactAyncTask.this.simIndex == 2 ? new Account("SIM2", b.a.d) : new Account(b.a.c, b.a.d);
                        }
                    }
                    if (a2.a(AsusCopySingleContactAyncTask.this.simIndex, linkedList, account, 100) == null) {
                        i = -1;
                    } else {
                        this.stopTotal = System.currentTimeMillis();
                        Log.d(AsusCopySingleContactAyncTask.this.TAG, "Total copy time is: " + (this.stopTotal - this.startTotal) + " msec");
                        i = 1;
                    }
                }
            }
            return i;
        }

        @Override // android.os.AsyncTask
        public void onCancelled() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void onPostExecute(Integer num) {
            boolean deleteRawContacts;
            boolean z;
            super.onPostExecute((ExportSimTask) num);
            if (AsusCopySingleContactAyncTask.this.mContext == null) {
                return;
            }
            if (num.intValue() == 1) {
                if (AsusCopySingleContactAyncTask.this.hasSimNotSupportData) {
                    Log.d(AsusCopySingleContactAyncTask.this.TAG, "SIM_NOT_SUPPORT_SOME_DATA");
                    AsusCopySingleContactAyncTask.this.simStatus = 12;
                    AsusCopySingleContactAyncTask.this.simStatusShowDialog(AsusCopySingleContactAyncTask.this.simStatus);
                }
                if (!AsusCopySingleContactAyncTask.this.mIsKeepEnable) {
                    if (AsusCopySingleContactAyncTask.this.mIsCopyFromSimContact) {
                        z = AsusCopySingleContactAyncTask.this.deleteSimContact(AsusCopySingleContactAyncTask.this.mOrigSimContactContactId, AsusCopySingleContactAyncTask.this.mOrigSimContactRawId);
                        deleteRawContacts = false;
                    } else {
                        deleteRawContacts = AsusCopySingleContactAyncTask.this.deleteRawContacts(new ArrayList(AsusCopySingleContactAyncTask.this.mHaveBeenAddedToSimRawContactIds));
                        z = false;
                    }
                    AsusCopySingleContactAyncTask.this.checkDeleteIsSuccessAndLog(z, deleteRawContacts);
                }
                if (AsusCopySingleContactAyncTask.this.mSpaceNotEnough) {
                    Toast.makeText(AsusCopySingleContactAyncTask.this.mContext, AsusCopySingleContactAyncTask.this.mContext.getString(2131755469), 1).show();
                } else if (!AsusCopySingleContactAyncTask.this.mNeedCopyToSimForVerizon || !AsusCopySingleContactAyncTask.this.hasSimNotSupportData) {
                    Toast.makeText(AsusCopySingleContactAyncTask.this.mContext, AsusCopySingleContactAyncTask.this.mContext.getString(2131755472), 1).show();
                }
            } else if (num.intValue() == -1) {
                Toast.makeText(AsusCopySingleContactAyncTask.this.mContext, AsusCopySingleContactAyncTask.this.mContext.getString(2131755076), 1).show();
            }
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            super.onPreExecute();
            AsusCopySingleContactAyncTask.this.mHaveBeenAddedToSimRawContactIds = new HashSet();
        }
    }

    public AsusCopySingleContactAyncTask(AccountWithDataSet accountWithDataSet, Context context, long j, boolean z, boolean z2) {
        this.TAG = "AsusCopySingleContactAyncTask";
        this.mIsKeepEnable = true;
        this.COPY_SUCCESS = 1;
        this.COPY_FAIL = 2;
        this.simIndex = 1;
        this.isColumnSpaceFull = false;
        this.idArray = new ArrayList<>();
        this.hasSimNotSupportData = false;
        this.simStatus = 0;
        this.isCopyFromOdmSimContact = false;
        this.mOrigSimContactRawIds = new ArrayList<>();
        this.mOrigSimContactRawId = -1L;
        this.mOrigSimContactContactId = -1L;
        this.mIsCopyFromSimContact = false;
        this.mNeedCopyToSimForVerizon = false;
        this.mSpaceNotEnough = false;
        this.mMainRawContactId = 0L;
        this.mRawContactIdForPhoto = 0L;
        this.mIndexOfPrimaryName = -1;
        this.mIndexOfPrimaryPhoto = -1;
        this.mHasPrimaryPhoto = false;
        this.mPrimaryDisplayPhotoId = -1L;
        this.mPrimaryDisplayPhotoFileId = -1L;
        this.mContext = context;
        this.mAccount = accountWithDataSet;
        this.mContactId = j;
        this.mIsKeepEnable = z2;
        if (!PhoneCapabilityTester.IsAsusDevice()) {
            this.isCopyFromOdmSimContact = z;
            Log.d(this.TAG, "From others isCopyFromOdmSimContact:" + this.isCopyFromOdmSimContact);
        }
        this.mIsCopyFromSimContact = z;
    }

    public AsusCopySingleContactAyncTask(AccountWithDataSet accountWithDataSet, Context context, c cVar, boolean z, boolean z2) {
        this.TAG = "AsusCopySingleContactAyncTask";
        this.mIsKeepEnable = true;
        this.COPY_SUCCESS = 1;
        this.COPY_FAIL = 2;
        this.simIndex = 1;
        this.isColumnSpaceFull = false;
        this.idArray = new ArrayList<>();
        this.hasSimNotSupportData = false;
        this.simStatus = 0;
        this.isCopyFromOdmSimContact = false;
        this.mOrigSimContactRawIds = new ArrayList<>();
        this.mOrigSimContactRawId = -1L;
        this.mOrigSimContactContactId = -1L;
        this.mIsCopyFromSimContact = false;
        this.mNeedCopyToSimForVerizon = false;
        this.mSpaceNotEnough = false;
        this.mMainRawContactId = 0L;
        this.mRawContactIdForPhoto = 0L;
        this.mIndexOfPrimaryName = -1;
        this.mIndexOfPrimaryPhoto = -1;
        this.mHasPrimaryPhoto = false;
        this.mPrimaryDisplayPhotoId = -1L;
        this.mPrimaryDisplayPhotoFileId = -1L;
        this.mContext = context;
        this.mAccount = accountWithDataSet;
        this.mContactData = cVar;
        this.mIsKeepEnable = z2;
        if (!PhoneCapabilityTester.IsAsusDevice()) {
            this.isCopyFromOdmSimContact = z;
            Log.d(this.TAG, "From Detail isCopyFromOdmSimContact:" + this.isCopyFromOdmSimContact);
        }
        this.mIsCopyFromSimContact = z;
    }

    public AsusCopySingleContactAyncTask(boolean z, AccountWithDataSet accountWithDataSet, Context context, long j, boolean z2) {
        this.TAG = "AsusCopySingleContactAyncTask";
        this.mIsKeepEnable = true;
        this.COPY_SUCCESS = 1;
        this.COPY_FAIL = 2;
        this.simIndex = 1;
        this.isColumnSpaceFull = false;
        this.idArray = new ArrayList<>();
        this.hasSimNotSupportData = false;
        this.simStatus = 0;
        this.isCopyFromOdmSimContact = false;
        this.mOrigSimContactRawIds = new ArrayList<>();
        this.mOrigSimContactRawId = -1L;
        this.mOrigSimContactContactId = -1L;
        this.mIsCopyFromSimContact = false;
        this.mNeedCopyToSimForVerizon = false;
        this.mSpaceNotEnough = false;
        this.mMainRawContactId = 0L;
        this.mRawContactIdForPhoto = 0L;
        this.mIndexOfPrimaryName = -1;
        this.mIndexOfPrimaryPhoto = -1;
        this.mHasPrimaryPhoto = false;
        this.mPrimaryDisplayPhotoId = -1L;
        this.mPrimaryDisplayPhotoFileId = -1L;
        this.mContext = context;
        this.mAccount = accountWithDataSet;
        this.mRawContactId = j;
        this.mNeedCopyToSimForVerizon = z;
        Log.d(this.TAG, "mNeedCopyToSimForVerion:" + this.mNeedCopyToSimForVerizon + " mRawContactId:" + this.mRawContactId);
        if (!PhoneCapabilityTester.IsAsusDevice()) {
            this.isCopyFromOdmSimContact = z2;
            Log.d(this.TAG, "From others isCopyFromOdmSimContact:" + this.isCopyFromOdmSimContact);
        }
    }

    private void addOrigContactToKeep(String str, long j, long j2) {
        if (b.a.d.equals(str) || "asus.local.simcard2".equals(str)) {
            this.mOrigSimContactRawId = j;
            this.mOrigSimContactContactId = j2;
            return;
        }
        this.mOrigSimContactRawIds.add(Long.valueOf(j));
    }

    private void buildLinkContactDiff(ArrayList<ContentProviderOperation> arrayList, long j, long j2) {
        ContentProviderOperation.Builder newUpdate = ContentProviderOperation.newUpdate(ContactsContract.AggregationExceptions.CONTENT_URI);
        newUpdate.withValue("type", 1);
        newUpdate.withValue("raw_contact_id1", Long.valueOf(j));
        newUpdate.withValue("raw_contact_id2", Long.valueOf(j2));
        arrayList.add(newUpdate.build());
    }

    private void buildSplitContactDiff(ArrayList<ContentProviderOperation> arrayList, long j, long j2) {
        ContentProviderOperation.Builder newUpdate = ContentProviderOperation.newUpdate(ContactsContract.AggregationExceptions.CONTENT_URI);
        newUpdate.withValue("type", 2);
        newUpdate.withValue("raw_contact_id1", Long.valueOf(j));
        newUpdate.withValue("raw_contact_id2", Long.valueOf(j2));
        arrayList.add(newUpdate.build());
    }

    private void changeDisplayName(long j, long j2) {
        if (j >= 0 && j2 >= 0 && isRawContactIdVisiable(j2, j)) {
            ContentValues contentValues = new ContentValues();
            try {
                if (CompatUtils.isMarshmallowCompatible()) {
                    Uri uri = ContactsContract.Data.CONTENT_URI;
                    contentValues.put("is_super_primary", (Integer) 1);
                    Log.i(this.TAG, "changeDisplayName:" + j2 + "(" + this.mContext.getContentResolver().update(uri, contentValues, "raw_contact_id = " + j2 + " AND mimetype='vnd.android.cursor.item/name'", null) + ")");
                    return;
                }
                contentValues.put("name_verified", (Integer) 1);
                int update = this.mContext.getContentResolver().update(ContactsContract.RawContacts.CONTENT_URI, contentValues, "_id = " + j2, null);
                int i = update;
                if (update <= 0) {
                    Log.i(this.TAG, "changeDisplayName(readOnly):" + j2 + "(" + update + ")");
                    i = this.mContext.getContentResolver().update(ContactsContract.RawContacts.CONTENT_URI.buildUpon().appendQueryParameter("caller_is_syncadapter", "true").build(), contentValues, "_id = " + j2, null);
                }
                Log.i(this.TAG, "changeDisplayName:" + j2 + "(" + i + ")");
            } catch (UnsupportedOperationException e) {
                Log.w(this.TAG, "DataBase not suport Changing DisplayName !");
            }
        }
    }

    private void changeDisplayPhoto(long j, long j2, long j3) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("_id", Long.valueOf(j));
        if (j2 > 0) {
            contentValues.put("photo_id", Long.valueOf(j2));
        } else {
            contentValues.putNull("photo_id");
        }
        if (j3 >= 0) {
            contentValues.put("photo_file_id", Long.valueOf(j3));
        } else {
            contentValues.putNull("photo_file_id");
        }
        try {
            this.mContext.getContentResolver().update(b.i, contentValues, null, null);
        } catch (UnsupportedOperationException e) {
            Log.w(this.TAG, "DataBase not suport Changing DisplayPhoto !");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkDeleteIsSuccessAndLog(boolean z, boolean z2) {
        if (z || z2) {
            Log.d(this.TAG, "DELETE_SUCCESS");
        } else {
            Log.d(this.TAG, "DELETE_FAIL");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean deleteRawContacts(ArrayList<Long> arrayList) {
        boolean z;
        ArrayList<ContentProviderOperation> arrayList2 = new ArrayList<>();
        Iterator<Long> it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(ContentProviderOperation.newDelete(ContactsContract.RawContacts.CONTENT_URI).withSelection("_id = " + it.next().longValue(), null).build());
        }
        try {
            this.mContext.getContentResolver().applyBatch("com.android.contacts", arrayList2);
            z = true;
        } catch (OperationApplicationException e) {
            e.printStackTrace();
            z = false;
        } catch (RemoteException e2) {
            e2.printStackTrace();
            z = false;
        }
        return z;
    }

    private boolean deleteSIMContactsUtil(long j) {
        boolean z = false;
        boolean z2 = false;
        if (j < 0) {
            Log.e(this.TAG, "Invalid arguments for deleteContact request");
        } else {
            e a2 = e.a(this.mContext);
            SimCardContact a3 = a2.a(j);
            Log.d(this.TAG, "contact.getSimId():" + a3.h);
            if (a3.h > 0) {
                if (a2.c(a3.i, a3.h) > 0) {
                    z = true;
                }
                z2 = z;
                if (!z) {
                    Log.d(this.TAG, "delete SIM fail !!!!");
                    z2 = z;
                }
            }
        }
        return z2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean deleteSimContact(long j, long j2) {
        boolean deleteSIMContactsUtil = deleteSIMContactsUtil(j);
        int delete = deleteSIMContactsUtil ? this.mContext.getContentResolver().delete(ContactsContract.RawContacts.CONTENT_URI, "_id = " + j2, null) : 0;
        boolean z = false;
        if (deleteSIMContactsUtil) {
            z = false;
            if (delete > 0) {
                z = true;
            }
        }
        return z;
    }

    private void getDisplayPhotoId(long j) {
        Throwable th;
        Cursor cursor;
        try {
            Cursor query = this.mContext.getContentResolver().query(Uri.withAppendedPath(ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, j), "data"), new String[]{"photo_id", "photo_file_id"}, null, null, null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        this.mPrimaryDisplayPhotoId = query.getLong(query.getColumnIndex("photo_id"));
                        this.mPrimaryDisplayPhotoFileId = query.getLong(query.getColumnIndex("photo_file_id"));
                    }
                } catch (Throwable th2) {
                    th = th2;
                    cursor = query;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (query != null) {
                query.close();
            }
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
    }

    private boolean isRawContactIdVisiable(long j, long j2) {
        boolean z;
        Cursor query = this.mContext.getContentResolver().query(ContactsContract.RawContacts.CONTENT_URI, new String[]{ContactDetailCallogActivity.EXTRA_CONTACT_ID}, "_id=" + j, null, null);
        try {
            if (query.getCount() > 0) {
                query.moveToFirst();
                if (j2 == query.getLong(0)) {
                    if (query != null) {
                        query.close();
                    }
                    z = true;
                    return z;
                }
            }
            if (query != null) {
                query.close();
            }
            z = false;
            return z;
        } catch (Throwable th) {
            if (query != null) {
                query.close();
            }
            throw th;
        }
    }

    private long joinAggregate(List<Long> list) {
        ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            arrayList2.add(list.get(i));
        }
        int size = arrayList2.size();
        long longValue = size > 0 ? ((Long) arrayList2.get(0)).longValue() : -1L;
        for (int i2 = 0; i2 < size; i2++) {
            for (int i3 = 0; i3 < size; i3++) {
                if (i2 != i3) {
                    buildLinkContactDiff(arrayList, ((Long) arrayList2.get(i2)).longValue(), ((Long) arrayList2.get(i3)).longValue());
                }
            }
        }
        try {
            if (!arrayList.isEmpty()) {
                int size2 = arrayList.size();
                int i4 = (size2 / MAX_OP_COUNT) + 1;
                Log.d(this.TAG, "total op count: " + size2 + ", loopCount: " + i4);
                for (int i5 = 0; i5 < i4; i5++) {
                    Log.d(this.TAG, "joinAggregate batch[" + (i5 + 1) + "]");
                    ArrayList<ContentProviderOperation> arrayList3 = new ArrayList<>();
                    for (int i6 = 0; i6 < MAX_OP_COUNT; i6++) {
                        int i7 = (i5 * MAX_OP_COUNT) + i6;
                        if (i7 < arrayList.size()) {
                            arrayList3.add(arrayList.get(i7));
                        }
                    }
                    Log.d(this.TAG, "partOperations count: " + arrayList3.size());
                    this.mContext.getContentResolver().applyBatch("com.android.contacts", arrayList3);
                }
            }
        } catch (OperationApplicationException e) {
            Log.e(this.TAG, "Failed to apply aggregation exception batch", e);
        } catch (RemoteException e2) {
            Log.e(this.TAG, "Failed to apply aggregation exception batch", e2);
        }
        return longValue;
    }

    private void putValuesIfNeeded(ContentProviderOperation.Builder builder, ContentValues contentValues) {
        putValuesIfNeeded(builder, contentValues.getAsString(CoverUtils.CoverData.COVER_URI), CoverUtils.CoverData.COVER_URI);
        putValuesIfNeeded(builder, contentValues.getAsString(CoverUtils.CoverData.COVER_TYPE), CoverUtils.CoverData.COVER_TYPE);
        putValuesIfNeeded(builder, contentValues.getAsString(CoverUtils.CoverData.USER_SET), CoverUtils.CoverData.USER_SET);
        putValuesIfNeeded(builder, contentValues.getAsString("data4"), "data4");
        putValuesIfNeeded(builder, contentValues.getAsString("data5"), "data5");
        putValuesIfNeeded(builder, contentValues.getAsString("data6"), "data6");
        putValuesIfNeeded(builder, contentValues.getAsString("data7"), "data7");
        putValuesIfNeeded(builder, contentValues.getAsString("data8"), "data8");
        putValuesIfNeeded(builder, contentValues.getAsString("data9"), "data9");
        putValuesIfNeeded(builder, contentValues.getAsString("data10"), "data10");
        putValuesIfNeeded(builder, contentValues.getAsString("data11"), "data11");
        putValuesIfNeeded(builder, contentValues.getAsString("data12"), "data12");
        putValuesIfNeeded(builder, contentValues.getAsString("data13"), "data13");
        if (!this.isCopyFromOdmSimContact) {
            putValuesIfNeeded(builder, contentValues.getAsString("data14"), "data14");
            putValuesIfNeeded(builder, contentValues.getAsByteArray("data15"), "data15");
        }
    }

    private void putValuesIfNeeded(ContentProviderOperation.Builder builder, Cursor cursor) {
        putValuesIfNeeded(builder, cursor.getString(cursor.getColumnIndex(CoverUtils.CoverData.COVER_URI)), CoverUtils.CoverData.COVER_URI);
        putValuesIfNeeded(builder, cursor.getString(cursor.getColumnIndex(CoverUtils.CoverData.COVER_TYPE)), CoverUtils.CoverData.COVER_TYPE);
        putValuesIfNeeded(builder, cursor.getString(cursor.getColumnIndex(CoverUtils.CoverData.USER_SET)), CoverUtils.CoverData.USER_SET);
        putValuesIfNeeded(builder, cursor.getString(cursor.getColumnIndex("data4")), "data4");
        putValuesIfNeeded(builder, cursor.getString(cursor.getColumnIndex("data5")), "data5");
        putValuesIfNeeded(builder, cursor.getString(cursor.getColumnIndex("data6")), "data6");
        putValuesIfNeeded(builder, cursor.getString(cursor.getColumnIndex("data7")), "data7");
        putValuesIfNeeded(builder, cursor.getString(cursor.getColumnIndex("data8")), "data8");
        putValuesIfNeeded(builder, cursor.getString(cursor.getColumnIndex("data9")), "data9");
        putValuesIfNeeded(builder, cursor.getString(cursor.getColumnIndex("data10")), "data10");
        putValuesIfNeeded(builder, cursor.getString(cursor.getColumnIndex("data11")), "data11");
        putValuesIfNeeded(builder, cursor.getString(cursor.getColumnIndex("data12")), "data12");
        putValuesIfNeeded(builder, cursor.getString(cursor.getColumnIndex("data13")), "data13");
        if (!this.isCopyFromOdmSimContact) {
            putValuesIfNeeded(builder, cursor.getString(cursor.getColumnIndex("data14")), "data14");
            putValuesIfNeeded(builder, cursor.getBlob(cursor.getColumnIndex("data15")), "data15");
        }
    }

    private void putValuesIfNeeded(ContentProviderOperation.Builder builder, String str, String str2) {
        if (str != null) {
            builder.withValue(str2, str);
        }
    }

    private void putValuesIfNeeded(ContentProviderOperation.Builder builder, byte[] bArr, String str) {
        if (bArr != null) {
            builder.withValue(str, bArr);
        }
    }

    private void restoreSingleContacts(long j) {
        long j2;
        if (j >= 0) {
            Cursor query = this.mContext.getContentResolver().query(ContactsContract.RawContacts.CONTENT_URI, new String[]{ContactDetailCallogActivity.EXTRA_CONTACT_ID}, "_id = " + j, null, null);
            try {
                long j3 = query.moveToFirst() ? query.getLong(0) : -1L;
                if (query != null) {
                    query.close();
                }
                if (j3 >= 0) {
                    long j4 = -1;
                    query = this.mContext.getContentResolver().query(ContactsContract.Data.CONTENT_URI, new String[]{"_id", "data14"}, "raw_contact_id=" + j + " AND mimetype='vnd.android.cursor.item/photo'", null, null);
                    try {
                        if (query.moveToFirst()) {
                            j2 = query.getLong(0);
                            j4 = query.getLong(1);
                        } else {
                            j2 = -1;
                        }
                        if (query != null) {
                            query.close();
                        }
                        changeDisplayName(j3, j);
                        changeDisplayPhoto(j3, j2, j4);
                    } finally {
                    }
                }
            } finally {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0068  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private long returnContactId(long r8) {
        /*
            r7 = this;
            r0 = r7
            android.content.Context r0 = r0.mContext     // Catch: all -> 0x0070
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: all -> 0x0070
            r10 = r0
            android.net.Uri r0 = android.provider.ContactsContract.RawContacts.CONTENT_URI     // Catch: all -> 0x0070
            r11 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: all -> 0x0070
            r12 = r0
            r0 = r12
            java.lang.String r1 = "_id = "
            r0.<init>(r1)     // Catch: all -> 0x0070
            r0 = r12
            r1 = r8
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: all -> 0x0070
            java.lang.String r0 = r0.toString()     // Catch: all -> 0x0070
            r12 = r0
            r0 = r10
            r1 = r11
            r2 = 1
            java.lang.String[] r2 = new java.lang.String[r2]     // Catch: all -> 0x0070
            r3 = r2
            r4 = 0
            java.lang.String r5 = "contact_id"
            r3[r4] = r5     // Catch: all -> 0x0070
            r3 = r12
            r4 = 0
            r5 = 0
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5)     // Catch: all -> 0x0070
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L_0x0086
            r0 = r10
            boolean r0 = r0.moveToFirst()     // Catch: all -> 0x0081
            if (r0 == 0) goto L_0x0086
        L_0x0047:
            r0 = r10
            r1 = r10
            java.lang.String r2 = "contact_id"
            int r1 = r1.getColumnIndex(r2)     // Catch: all -> 0x0081
            long r0 = r0.getLong(r1)     // Catch: all -> 0x0081
            r8 = r0
            r0 = r10
            boolean r0 = r0.moveToNext()     // Catch: all -> 0x0081
            r13 = r0
            r0 = r13
            if (r0 != 0) goto L_0x0047
        L_0x0064:
            r0 = r10
            if (r0 == 0) goto L_0x006e
            r0 = r10
            r0.close()
        L_0x006e:
            r0 = r8
            return r0
        L_0x0070:
            r11 = move-exception
            r0 = 0
            r10 = r0
        L_0x0074:
            r0 = r10
            if (r0 == 0) goto L_0x007e
            r0 = r10
            r0.close()
        L_0x007e:
            r0 = r11
            throw r0
        L_0x0081:
            r11 = move-exception
            goto L_0x0074
        L_0x0086:
            r0 = 0
            r8 = r0
            goto L_0x0064
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.util.AsusCopySingleContactAyncTask.returnContactId(long):long");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setExportContact(List<SimCardContact> list) {
        this.toExportSimContacts = list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showKeepDialog() {
        this.mKeepOrigContactsDialogForSim.setMessage(2131755167);
        this.mKeepOrigContactsDialogForSim.setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.android.contacts.util.AsusCopySingleContactAyncTask.6
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                AsusCopySingleContactAyncTask.this.mIsKeepEnable = true;
                AsusCopySingleContactAyncTask.this.excuteExportTask();
            }
        });
        this.mKeepOrigContactsDialogForSim.setNegativeButton(17039369, new DialogInterface.OnClickListener() { // from class: com.android.contacts.util.AsusCopySingleContactAyncTask.7
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                AsusCopySingleContactAyncTask.this.mIsKeepEnable = false;
                AsusCopySingleContactAyncTask.this.excuteExportTask();
            }
        });
        this.mKeepOrigContactsDialogForSim.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void simStatusShowDialog(int i) {
        switch (i) {
            case 5:
            case 9:
                if (this.mNeedCopyToSimForVerizon) {
                    this.mSpaceNotEnough = true;
                    excuteExportTask();
                    return;
                }
                this.alertNoEnoughSpaceDialog.setCancelable(false);
                this.alertNoEnoughSpaceDialog.setTitle(this.mContext.getString(2131755566));
                this.alertNoEnoughSpaceDialog.setMessage(this.mContext.getString(2131755562));
                this.alertNoEnoughSpaceDialog.setPositiveButton(this.mContext.getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.util.AsusCopySingleContactAyncTask.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i2) {
                        AsusCopySingleContactAyncTask.this.showKeepDialog();
                        dialogInterface.cancel();
                    }
                });
                this.alertNoEnoughSpaceDialog.setNegativeButton(this.mContext.getResources().getString(17039360), new DialogInterface.OnClickListener() { // from class: com.android.contacts.util.AsusCopySingleContactAyncTask.3
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i2) {
                        dialogInterface.cancel();
                    }
                });
                this.alertNoEnoughSpaceDialog.show();
                return;
            case 6:
                if (this.mNeedCopyToSimForVerizon) {
                    Toast.makeText(this.mContext, this.mContext.getString(2131756140), 1).show();
                    return;
                } else {
                    this.alertDialog.setCancelable(false).setTitle(this.mContext.getResources().getString(2131755566)).setMessage(this.mContext.getResources().getString(2131756140)).setPositiveButton(this.mContext.getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.util.AsusCopySingleContactAyncTask.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i2) {
                            dialogInterface.cancel();
                        }
                    }).show();
                    return;
                }
            case 7:
            case 8:
            case 10:
            default:
                return;
            case 11:
                if (this.mNeedCopyToSimForVerizon) {
                    Toast.makeText(this.mContext, this.mContext.getString(2131755563), 1).show();
                    return;
                } else {
                    this.alertDialog.setCancelable(false).setTitle(this.mContext.getResources().getString(2131755564)).setMessage(this.mContext.getResources().getString(2131755563)).setPositiveButton(this.mContext.getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.util.AsusCopySingleContactAyncTask.4
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i2) {
                            dialogInterface.cancel();
                        }
                    }).show();
                    return;
                }
            case 12:
                if (this.mNeedCopyToSimForVerizon) {
                    Toast.makeText(this.mContext, this.mContext.getString(2131755565), 1).show();
                    return;
                } else if (!((Activity) this.mContext).isFinishing()) {
                    this.alertDialog.setCancelable(false).setTitle(this.mContext.getResources().getString(2131755566)).setMessage(this.mContext.getResources().getString(2131755565)).setPositiveButton(this.mContext.getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.util.AsusCopySingleContactAyncTask.5
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i2) {
                            dialogInterface.cancel();
                        }
                    }).show();
                    return;
                } else {
                    return;
                }
        }
    }

    private void splitAggregateWithShit(long j) {
        ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
        Cursor query = this.mContext.getContentResolver().query(ContactsContract.RawContacts.CONTENT_URI, RAWCONTACTS_SUMMARY_PROJECTION, "contact_id=" + j, null, null);
        long[] jArr = new long[query.getCount()];
        for (int i = 0; i < jArr.length; i++) {
            try {
                if (!query.moveToNext()) {
                    throw new IllegalStateException("couldn't move cursor to position " + i);
                }
                jArr[i] = query.getLong(0);
            } catch (Throwable th) {
                if (query != null) {
                    query.close();
                }
                throw th;
            }
        }
        if (query != null) {
            query.close();
        }
        for (int i2 = 0; i2 < jArr.length; i2++) {
            for (int i3 = 0; i3 < jArr.length; i3++) {
                if (i2 != i3) {
                    buildSplitContactDiff(arrayList, jArr[i2], jArr[i3]);
                }
            }
        }
        int i4 = 0;
        try {
            if (!arrayList.isEmpty()) {
                int size = arrayList.size();
                int i5 = (size / MAX_OP_COUNT) + 1;
                Log.d(this.TAG, "total op count: " + size + ", loopCount: " + i5);
                int i6 = 0;
                while (true) {
                    i4 = 0;
                    if (i6 >= i5) {
                        break;
                    }
                    Log.d(this.TAG, "splitAggregateWithState batch[" + (i6 + 1) + "]");
                    ArrayList<ContentProviderOperation> arrayList2 = new ArrayList<>();
                    for (int i7 = 0; i7 < MAX_OP_COUNT; i7++) {
                        int i8 = (i6 * MAX_OP_COUNT) + i7;
                        if (i8 < arrayList.size()) {
                            arrayList2.add(arrayList.get(i8));
                        }
                    }
                    Log.d(this.TAG, "partOperations count: " + arrayList2.size());
                    this.mContext.getContentResolver().applyBatch("com.android.contacts", arrayList2);
                    i6++;
                }
            }
        } catch (OperationApplicationException e) {
            Log.e(this.TAG, "Failed to apply aggregation exception batch", e);
            i4 = 0;
        } catch (RemoteException e2) {
            Log.e(this.TAG, "Failed to apply aggregation exception batch", e2);
            i4 = 0;
        }
        while (i4 < jArr.length) {
            restoreSingleContacts(jArr[i4]);
            i4++;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Integer doInBackground(Void... voidArr) {
        Integer num;
        Throwable th;
        Cursor cursor;
        Cursor cursor2;
        Throwable th2;
        String[] strArr;
        String str = this.mAccount.name;
        boolean IsAsusDevice = PhoneCapabilityTester.IsAsusDevice();
        boolean z = false;
        if (IsAsusDevice) {
            if (str != null) {
                z = str.equals(b.a.c);
            }
        } else if (this.mAccount.type != null) {
            z = this.mAccount.type.equals(b.a.d);
        }
        if (!(this.mAccount == null || this.mAccount.type == null)) {
            Log.d(this.TAG, "Copy to account type:" + this.mAccount.type);
        }
        if (z) {
            if (IsAsusDevice) {
                String str2 = this.mAccount.type;
                if (b.a.d.equals(str2)) {
                    this.simIndex = 1;
                    Log.d(this.TAG, "choose SIM1");
                } else if ("asus.local.simcard2".equals(str2)) {
                    this.simIndex = 2;
                    Log.d(this.TAG, "choose SIM2");
                } else {
                    this.simIndex = 1;
                    Log.d(this.TAG, "choose default-SIM1");
                }
            } else {
                String str3 = this.mAccount.name;
                if (b.a.c.equals(str3)) {
                    this.simIndex = 1;
                    Log.d(this.TAG, "choose SIM1");
                } else if ("SIM2".equals(str3)) {
                    this.simIndex = 2;
                    Log.d(this.TAG, "choose SIM2");
                } else {
                    this.simIndex = 1;
                    Log.d(this.TAG, "choose default-SIM1");
                }
            }
            this.idArray.add(String.valueOf(this.mContactId));
            if (mCalculateSimSpaceTask == null) {
                CalculateSimSpaceTask calculateSimSpaceTask = new CalculateSimSpaceTask();
                mCalculateSimSpaceTask = calculateSimSpaceTask;
                calculateSimSpaceTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, this.idArray);
            }
            num = null;
        } else if (this.mAccount != null) {
            int i = -1;
            ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
            int i2 = 0;
            if (this.mContactData != null) {
                ae<com.android.contacts.model.e> b2 = this.mContactData.o.iterator();
                int i3 = 0;
                int i4 = -1;
                while (b2.hasNext()) {
                    com.android.contacts.model.e next = b2.next();
                    i3++;
                    ContentProviderOperation.Builder newInsert = ContentProviderOperation.newInsert(ContactsContract.RawContacts.CONTENT_URI);
                    newInsert.withValue(SelectAccountActivity.ACCOUNT_NAME, this.mAccount.name);
                    newInsert.withValue(SelectAccountActivity.ACCOUNT_TYPE, this.mAccount.type);
                    newInsert.withYieldAllowed(true);
                    arrayList.add(newInsert.build());
                    int i5 = i4 + 1;
                    Log.d(this.TAG, "operation = " + newInsert.build().toString());
                    i4 = i5;
                    for (a aVar : next.h()) {
                        ContentValues contentValues = aVar.f1994a;
                        String asString = contentValues.getAsString("mimetype");
                        if (!"vnd.android.cursor.item/group_membership".equals(asString)) {
                            ContentProviderOperation.Builder newInsert2 = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI);
                            newInsert2.withValueBackReference("raw_contact_id", i5);
                            newInsert2.withValue("mimetype", asString);
                            if (!this.mIsKeepEnable && IsAsusDevice) {
                                if ("vnd.android.cursor.item/name".equals(asString) && contentValues.getAsString("is_super_primary").equals(VALUE_OF_IS_SUPER_PRIMARY)) {
                                    this.mIndexOfPrimaryName = i3;
                                }
                                if ("vnd.android.cursor.item/photo".equals(asString) && contentValues.getAsString("is_super_primary").equals(VALUE_OF_IS_SUPER_PRIMARY)) {
                                    this.mHasPrimaryPhoto = true;
                                    this.mIndexOfPrimaryPhoto = i3;
                                }
                            }
                            putValuesIfNeeded(newInsert2, contentValues);
                            i4++;
                            arrayList.add(newInsert2.build());
                            Log.d(this.TAG, "operation = " + newInsert2.build().toString());
                        }
                    }
                    if (!this.mIsKeepEnable) {
                        addOrigContactToKeep(next.d(), next.b().longValue(), next.f());
                    }
                }
            } else if (this.mContactId > 0) {
                try {
                    if (!this.mIsKeepEnable) {
                        strArr = new String[3];
                        strArr[0] = "_id";
                        strArr[1] = SelectAccountActivity.ACCOUNT_TYPE;
                        strArr[2] = ContactDetailCallogActivity.EXTRA_CONTACT_ID;
                    } else {
                        strArr = new String[1];
                        strArr[0] = "_id";
                    }
                    cursor2 = this.mContext.getContentResolver().query(ContactsContract.RawContacts.CONTENT_URI, strArr, "contact_id = " + this.mContactId, null, null);
                    if (cursor2 != null) {
                        try {
                            if (cursor2.moveToFirst()) {
                                while (true) {
                                    long j = cursor2.getLong(0);
                                    if (!this.mIsKeepEnable) {
                                        addOrigContactToKeep(cursor2.getString(cursor2.getColumnIndex(SelectAccountActivity.ACCOUNT_TYPE)), j, cursor2.getLong(cursor2.getColumnIndex(ContactDetailCallogActivity.EXTRA_CONTACT_ID)));
                                    }
                                    ContentProviderOperation.Builder newInsert3 = ContentProviderOperation.newInsert(ContactsContract.RawContacts.CONTENT_URI);
                                    newInsert3.withValue(SelectAccountActivity.ACCOUNT_NAME, this.mAccount.name);
                                    newInsert3.withValue(SelectAccountActivity.ACCOUNT_TYPE, this.mAccount.type);
                                    newInsert3.withYieldAllowed(true);
                                    arrayList.add(newInsert3.build());
                                    int i6 = i + 1;
                                    Log.d(this.TAG, "operation = " + newInsert3.build().toString());
                                    Cursor query = this.mContext.getContentResolver().query(ContactsContract.Data.CONTENT_URI, null, "raw_contact_id = " + j, null, null);
                                    if (query == null || !query.moveToFirst()) {
                                        i = i6;
                                        i2 = i2;
                                    } else {
                                        int i7 = i2 + 1;
                                        int i8 = i6;
                                        do {
                                            String string = query.getString(query.getColumnIndex("mimetype"));
                                            i = i8;
                                            if (!"vnd.android.cursor.item/group_membership".equals(string)) {
                                                ContentProviderOperation.Builder newInsert4 = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI);
                                                newInsert4.withValueBackReference("raw_contact_id", i6);
                                                newInsert4.withValue("mimetype", string);
                                                if (!this.mIsKeepEnable && IsAsusDevice) {
                                                    if ("vnd.android.cursor.item/name".equals(string) && query.getString(query.getColumnIndex("is_super_primary")).equals(VALUE_OF_IS_SUPER_PRIMARY)) {
                                                        this.mIndexOfPrimaryName = i7;
                                                    }
                                                    if ("vnd.android.cursor.item/photo".equals(string) && query.getString(query.getColumnIndex("is_super_primary")).equals(VALUE_OF_IS_SUPER_PRIMARY)) {
                                                        this.mHasPrimaryPhoto = true;
                                                        this.mIndexOfPrimaryPhoto = i7;
                                                    }
                                                }
                                                putValuesIfNeeded(newInsert4, query);
                                                i = i8 + 1;
                                                arrayList.add(newInsert4.build());
                                                Log.d(this.TAG, "operation = " + newInsert4.build().toString());
                                            }
                                            i8 = i;
                                        } while (query.moveToNext());
                                        i2 = i7;
                                    }
                                    if (query != null) {
                                        query.close();
                                    }
                                    if (!cursor2.moveToNext()) {
                                        break;
                                    }
                                }
                            }
                        } catch (Throwable th3) {
                            th2 = th3;
                            if (cursor2 != null) {
                                cursor2.close();
                            }
                            throw th2;
                        }
                    }
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                } catch (Throwable th4) {
                    th2 = th4;
                    cursor2 = null;
                }
            }
            try {
                ContentProviderResult[] applyBatch = this.mContext.getContentResolver().applyBatch("com.android.contacts", arrayList);
                String str4 = null;
                if (!b.f607a.booleanValue() || applyBatch == null) {
                    str4 = null;
                } else {
                    int i9 = 0;
                    for (ContentProviderResult contentProviderResult : applyBatch) {
                        Log.d(this.TAG, "result = " + contentProviderResult.uri);
                        i9 = i9;
                        str4 = str4;
                        if (!this.mIsKeepEnable) {
                            i9 = i9;
                            str4 = str4;
                            if (IsAsusDevice) {
                                i9 = i9;
                                str4 = str4;
                                if (contentProviderResult.uri.toString().contains("raw_contacts")) {
                                    int i10 = i9 + 1;
                                    String lastPathSegment = contentProviderResult.uri.getLastPathSegment();
                                    if (i10 == this.mIndexOfPrimaryName) {
                                        this.mMainRawContactId = Long.parseLong(lastPathSegment);
                                    }
                                    i9 = i10;
                                    str4 = lastPathSegment;
                                    if (i10 == this.mIndexOfPrimaryPhoto) {
                                        this.mRawContactIdForPhoto = Long.parseLong(lastPathSegment);
                                        str4 = lastPathSegment;
                                        i9 = i10;
                                    }
                                }
                            }
                        }
                    }
                    if (i9 < 2) {
                        str4 = null;
                    }
                }
                if (!this.mIsKeepEnable) {
                    if (applyBatch == null || applyBatch.length == 0 || applyBatch[0] == null) {
                        Log.d(this.TAG, "COPY_FAIL");
                    } else {
                        Log.d(this.TAG, "COPY_SUCCESS, begin delete original contact(s)");
                        boolean z2 = false;
                        boolean z3 = false;
                        if (this.mIsCopyFromSimContact) {
                            z2 = deleteSimContact(this.mOrigSimContactContactId, this.mOrigSimContactRawId);
                        } else {
                            z3 = deleteRawContacts(this.mOrigSimContactRawIds);
                        }
                        checkDeleteIsSuccessAndLog(z2, z3);
                    }
                    if (str4 != null && IsAsusDevice) {
                        long returnContactId = returnContactId(Long.parseLong(str4));
                        ArrayList arrayList2 = new ArrayList();
                        try {
                            Cursor query2 = this.mContext.getContentResolver().query(ContactsContract.RawContacts.CONTENT_URI, new String[]{"_id"}, "contact_id = " + returnContactId, null, null);
                            if (query2 != null) {
                                try {
                                    if (query2.moveToFirst()) {
                                        do {
                                            arrayList2.add(Long.valueOf(query2.getLong(query2.getColumnIndex("_id"))));
                                        } while (query2.moveToNext());
                                    }
                                } catch (Throwable th5) {
                                    th = th5;
                                    cursor = query2;
                                    if (cursor != null) {
                                        cursor.close();
                                    }
                                    throw th;
                                }
                            }
                            if (query2 != null && query2.getCount() > 1) {
                                splitAggregateWithShit(returnContactId);
                                if (this.mHasPrimaryPhoto) {
                                    getDisplayPhotoId(returnContactId(this.mRawContactIdForPhoto));
                                }
                                long returnContactId2 = returnContactId(joinAggregate(arrayList2));
                                if (this.mMainRawContactId >= 0) {
                                    changeDisplayName(returnContactId2, this.mMainRawContactId);
                                }
                                changeDisplayPhoto(returnContactId2, this.mPrimaryDisplayPhotoId, this.mPrimaryDisplayPhotoFileId);
                            }
                            if (query2 != null) {
                                query2.close();
                            }
                        } catch (Throwable th6) {
                            th = th6;
                            cursor = null;
                        }
                    }
                }
                num = Integer.valueOf((applyBatch == null || applyBatch.length == 0 || applyBatch[0] == null) ? 2 : 1);
            } catch (OperationApplicationException e) {
                Log.e(this.TAG, String.format("%s: %s", e.toString(), e.getMessage()));
                num = 2;
            } catch (RemoteException e2) {
                Log.e(this.TAG, String.format("%s: %s", e2.toString(), e2.getMessage()));
                num = 2;
            }
        } else {
            num = null;
        }
        return num;
    }

    public void excuteExportTask() {
        if (this.toExportSimContacts == null || this.toExportSimContacts.isEmpty()) {
            Log.d(this.TAG, "toCopySimContacts is empty");
        } else {
            new ExportSimTask().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, this.toExportSimContacts);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onPostExecute(Integer num) {
        super.onPostExecute((AsusCopySingleContactAyncTask) num);
        if (this.mContext != null && num != null) {
            if (num.intValue() == 1) {
                Toast.makeText(this.mContext, this.mContext.getString(2131755472), 1).show();
            } else if (num.intValue() == 2) {
                Toast.makeText(this.mContext, this.mContext.getString(2131755076), 1).show();
            }
        }
    }
}
