package p193e.p194a.p1114o5;

import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.OperationApplicationException;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Parcelable;
import android.os.RemoteException;
import android.provider.ContactsContract;
import android.text.TextUtils;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.TrueApp;
import com.truecaller.data.entity.Address;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.Number;
import e.m.f.a.j;
import io.agora.rtc.Constants;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import p193e.p194a.p1011l.p1012a.AbstractC16596q;
import p193e.p194a.p372b0.p430q.C8574c0;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p937j4.p939b.p942c.C15583c;
/* renamed from: e.a.o5.q */
/* loaded from: classes15-dex2jar.jar:e/a/o5/q.class */
public class C19090q {

    /* renamed from: a */
    public static final String[] f53295a = {AnalyticsConstants.PHONE, "secondary_phone", "tertiary_phone"};

    /* renamed from: b */
    public static final String[] f53296b = {"phone_type", "secondary_phone_type", "tertiary_phone_type"};

    /* renamed from: c */
    public static final String[] f53297c = {AnalyticsConstants.EMAIL, "secondary_email", "tertiary_email"};

    /* renamed from: d */
    public static final String[] f53298d = {"email_type", "secondary_email_type", "tertiary_email_type"};

    /* renamed from: e */
    public static final String[] f53299e = {"data1", "data4", "data5", "data6", "data7", "data8", "data9", "data10"};

    /* renamed from: a */
    public static void m14143a(Context context, long j, Contact contact) {
        if (j != 0) {
            List<Address> m35510k = contact.m35510k();
            if (m35510k.isEmpty()) {
                return;
            }
            ArrayList<ContentProviderOperation> arrayList = new ArrayList<>(m35510k.size());
            for (Address address : m35510k) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("raw_contact_id", Long.valueOf(j));
                contentValues.put("mimetype", "vnd.android.cursor.item/postal-address_v2");
                contentValues.put("data7", address.getCity());
                contentValues.put("data10", address.getCountryName());
                contentValues.put("data4", address.getStreet());
                contentValues.put("data9", address.getZipCode());
                int type = address.getType();
                if (type != 0) {
                    if (type == 1 || type == 2 || type == 3) {
                        contentValues.put("data2", address.getTcId());
                    }
                } else if (TextUtils.isEmpty(address.getTypeLabel())) {
                    contentValues.put("data2", (Integer) 1);
                } else {
                    contentValues.put("data2", (Integer) 0);
                    contentValues.put("data3", address.getTypeLabel());
                }
                arrayList.add(ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withValues(contentValues).build());
            }
            try {
                context.getContentResolver().applyBatch("com.android.contacts", arrayList);
            } catch (OperationApplicationException | RemoteException | RuntimeException e) {
                C10480a.m26061I1(e);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x00a4, code lost:
        if (r0 != null) goto L18;
     */
    /* JADX WARN: Finally extract failed */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m14142b(android.content.Context r7, java.lang.String r8) {
        /*
            r0 = 0
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = 0
            r11 = r0
            r0 = r10
            r12 = r0
            r0 = r7
            if (r0 == 0) goto Laa
            r0 = r8
            boolean r0 = w3.c.a.a.a.h.j(r0)
            if (r0 == 0) goto L1b
            r0 = r10
            r12 = r0
            goto Laa
        L1b:
            android.net.Uri r0 = android.provider.ContactsContract.CommonDataKinds.Phone.CONTENT_URI
            r12 = r0
            r0 = r7
            android.content.ContentResolver r0 = r0.getContentResolver()
            r1 = r12
            r2 = 2
            java.lang.String[] r2 = new java.lang.String[r2]
            r3 = r2
            r4 = 0
            java.lang.String r5 = "contact_id"
            r3[r4] = r5
            r3 = r2
            r4 = 1
            java.lang.String r5 = "data1"
            r3[r4] = r5
            java.lang.String r3 = ""
            r4 = 0
            java.lang.String[] r4 = new java.lang.String[r4]
            r5 = 0
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5)
            r10 = r0
            r0 = r9
            r7 = r0
            r0 = r10
            if (r0 == 0) goto La0
        L45:
            r0 = r9
            r7 = r0
            r0 = r10
            boolean r0 = r0.moveToNext()     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7f
            if (r0 == 0) goto La0
            r0 = r10
            r1 = r10
            java.lang.String r2 = "contact_id"
            int r1 = r1.getColumnIndexOrThrow(r2)     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7f
            java.lang.String r0 = r0.getString(r1)     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7f
            r7 = r0
            r0 = r10
            r1 = r10
            java.lang.String r2 = "data1"
            int r1 = r1.getColumnIndexOrThrow(r2)     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7f
            java.lang.String r0 = r0.getString(r1)     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7f
            r1 = r8
            boolean r0 = p193e.p194a.p372b0.p430q.C8574c0.m28358a(r0, r1)     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7f
            r13 = r0
            r0 = r13
            if (r0 == 0) goto L45
            goto La0
        L7b:
            r7 = move-exception
            goto L98
        L7f:
            r7 = move-exception
            r0 = r7
            p193e.p194a.p437c.p578p.C10480a.m26061I1(r0)     // Catch: java.lang.Throwable -> L7b
            r0 = r7
            java.lang.String r0 = r0.getMessage()     // Catch: java.lang.Throwable -> L7b
            r0 = r11
            r7 = r0
        L8c:
            r0 = r10
            r0.close()
            r0 = r7
            r12 = r0
            goto Laa
        L98:
            r0 = r10
            r0.close()
            r0 = r7
            throw r0
        La0:
            r0 = r7
            r12 = r0
            r0 = r10
            if (r0 == 0) goto Laa
            goto L8c
        Laa:
            r0 = r12
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1114o5.C19090q.m14142b(android.content.Context, java.lang.String):java.lang.String");
    }

    /* renamed from: c */
    public static ArrayList<String> m14141c(Context context, String str) {
        Exception e;
        Cursor query = context.getContentResolver().query(ContactsContract.CommonDataKinds.Email.CONTENT_URI, new String[]{"data1"}, "contact_id = ? ", new String[]{str}, null);
        ArrayList<String> arrayList = null;
        if (query != null) {
            arrayList = null;
            try {
                try {
                    if (query.getCount() > 0) {
                        int columnIndex = query.getColumnIndex("data1");
                        arrayList = new ArrayList<>();
                        while (query.moveToNext()) {
                            try {
                                arrayList.add(query.getString(columnIndex));
                            } catch (Exception e2) {
                                e = e2;
                                C10480a.m26061I1(e);
                                e.getMessage();
                                query.close();
                                return arrayList;
                            }
                        }
                    }
                } finally {
                    query.close();
                }
            } catch (Exception e3) {
                e = e3;
                arrayList = null;
            }
        }
        if (query != null) {
        }
        return arrayList;
    }

    /* renamed from: d */
    public static Intent m14140d(Contact contact, byte[] bArr) {
        ArrayList<? extends Parcelable> arrayList;
        boolean z;
        String[] strArr = f53297c;
        String[] strArr2 = f53295a;
        AbstractC16596q mo12402e4 = TrueApp.m36032b0().mo10154s().mo12402e4();
        Intent intent = new Intent("android.intent.action.INSERT_OR_EDIT");
        intent.setType("vnd.android.cursor.item/contact");
        intent.addCategory("android.intent.category.DEFAULT");
        intent.putExtra("finishActivityOnSaveCompleted", true);
        intent.putExtra("account_type", (String) null);
        intent.putExtra("account_name", (String) null);
        List<Number> m35557M = contact.m35557M();
        int min = Math.min(strArr2.length, m35557M.size());
        for (int i = 0; i < min; i++) {
            Number number = m35557M.get(i);
            String m35479e = number.m35479e();
            String str = m35479e;
            if (TextUtils.isEmpty(m35479e)) {
                String m35473l = number.m35473l();
                str = m35473l;
                if (TextUtils.isEmpty(m35473l)) {
                    str = number.m35480d();
                }
            }
            intent.putExtra(strArr2[i], str);
            int m35470o = number.m35470o();
            j.d m35475i = number.m35475i();
            switch (m35470o) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                case 11:
                case 12:
                case 13:
                case 14:
                case 15:
                case 16:
                case 17:
                case 18:
                case 19:
                case 20:
                    z = true;
                    break;
                default:
                    z = false;
                    break;
            }
            int m28355d = z ? m35470o : C8574c0.m28355d(m35475i);
            String str2 = f53296b[i];
            if (m28355d == 0) {
                m28355d = 7;
            }
            intent.putExtra(str2, m28355d);
        }
        if (!mo12402e4.mo17205f(contact)) {
            List<String> m14111b = C19103t.m14111b(contact);
            int length = strArr.length;
            ArrayList arrayList2 = (ArrayList) m14111b;
            int min2 = Math.min(length, arrayList2.size());
            for (int i2 = 0; i2 < min2; i2++) {
                intent.putExtra(strArr[i2], (String) arrayList2.get(i2));
                intent.putExtra(f53298d[i2], 1);
            }
        }
        if (!mo12402e4.mo17207d(contact)) {
            m14136h(intent, "job_title", contact.m35569D());
            m14136h(intent, "company", contact.m35502p());
        }
        m14136h(intent, AnalyticsConstants.NAME, contact.m35501q0() ? contact.m35566G() : "");
        if (bArr != null) {
            if (bArr.length > 358400) {
                arrayList = null;
            } else {
                ArrayList<? extends Parcelable> arrayList3 = new ArrayList<>();
                ContentValues contentValues = new ContentValues();
                contentValues.put("mimetype", "vnd.android.cursor.item/photo");
                contentValues.put("data15", bArr);
                arrayList3.add(contentValues);
                arrayList = arrayList3;
            }
            if (arrayList != null && !arrayList.isEmpty()) {
                intent.putParcelableArrayListExtra(RemoteMessageConst.DATA, arrayList);
            }
        }
        if (!mo12402e4.mo17209b(contact, true) && !TextUtils.isEmpty(contact.m35485z())) {
            intent.putExtra("postal", contact.m35485z());
        }
        return intent;
    }

    /* renamed from: e */
    public static ArrayList<C15583c> m14139e(Context context, String str) {
        Exception e;
        int i;
        Cursor query = context.getContentResolver().query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, new String[]{"data1", "data2", "raw_contact_id"}, "contact_id = ? ", new String[]{str}, null);
        ArrayList<C15583c> arrayList = null;
        if (query != null) {
            arrayList = null;
            try {
                try {
                    if (query.getCount() > 0) {
                        arrayList = new ArrayList<>();
                        while (query.moveToNext()) {
                            try {
                                C15583c c15583c = new C15583c();
                                c15583c.f44072b = query.getString(query.getColumnIndexOrThrow("data1"));
                                int i2 = query.getInt(query.getColumnIndexOrThrow("data2"));
                                if (i2 == 1) {
                                    i = 1;
                                } else {
                                    i = 3;
                                    if (i2 == 3) {
                                        i = 2;
                                    }
                                }
                                c15583c.f44073c = i;
                                c15583c.f44071a = query.getString(query.getColumnIndexOrThrow("raw_contact_id"));
                                arrayList.add(c15583c);
                            } catch (Exception e2) {
                                e = e2;
                                C10480a.m26061I1(e);
                                e.getMessage();
                                query.close();
                                return arrayList;
                            }
                        }
                    }
                } finally {
                    query.close();
                }
            } catch (Exception e3) {
                e = e3;
                arrayList = null;
            }
        }
        if (query != null) {
        }
        return arrayList;
    }

    /* renamed from: f */
    public static Bitmap m14138f(Context context, long j, boolean z) {
        if (j > 0) {
            try {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                InputStream openContactPhotoInputStream = ContactsContract.Contacts.openContactPhotoInputStream(context.getContentResolver(), ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, j), z);
                BitmapFactory.decodeStream(openContactPhotoInputStream, null, options);
                C12864a2.m22543o(openContactPhotoInputStream);
                int i = 0;
                options.inJustDecodeBounds = false;
                int max = Math.max(options.outWidth, options.outHeight);
                int i2 = max / Constants.ERR_ALREADY_IN_RECORDING;
                if (max % Constants.ERR_ALREADY_IN_RECORDING > 80) {
                    i = 1;
                }
                options.inSampleSize = Math.max(1, i2 + i);
                InputStream openContactPhotoInputStream2 = ContactsContract.Contacts.openContactPhotoInputStream(context.getContentResolver(), ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, j), z);
                Bitmap decodeStream = BitmapFactory.decodeStream(openContactPhotoInputStream2, null, options);
                C12864a2.m22543o(openContactPhotoInputStream2);
                return decodeStream;
            } catch (Exception e) {
                C10480a.m26061I1(e);
                return null;
            }
        }
        return null;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: g */
    public static boolean m14137g(Context context, long j) {
        String[] strArr = f53299e;
        Cursor query = context.getContentResolver().query(ContactsContract.Data.CONTENT_URI, strArr, "mimetype=? AND contact_id=?", new String[]{"vnd.android.cursor.item/postal-address_v2", String.valueOf(j)}, null);
        if (query != null) {
            while (query.moveToNext()) {
                try {
                    int i = 0;
                    while (true) {
                        if (i < strArr.length) {
                            if (!TextUtils.isEmpty(query.getString(i))) {
                                query.close();
                                return true;
                            }
                            i++;
                        }
                    }
                } catch (Throwable th) {
                    query.close();
                    throw th;
                }
            }
            query.close();
            return false;
        }
        return false;
    }

    /* renamed from: h */
    public static void m14136h(Intent intent, String str, String str2) {
        if (!TextUtils.isEmpty(str2)) {
            intent.putExtra(str, str2);
        }
    }

    /* renamed from: i */
    public static boolean m14135i(ContentResolver contentResolver, Bitmap bitmap, long j) {
        int i;
        if (bitmap == null) {
            return false;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        Cursor query = contentResolver.query(ContactsContract.Data.CONTENT_URI, new String[]{"_id"}, "raw_contact_id=? AND mimetype=?", new String[]{String.valueOf(j), "vnd.android.cursor.item/photo"}, null);
        if (query != null) {
            try {
                i = query.moveToFirst() ? query.getInt(query.getColumnIndexOrThrow("_id")) : 0;
            } finally {
                query.close();
            }
        } else {
            i = 0;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("raw_contact_id", Long.valueOf(j));
        contentValues.put("is_super_primary", (Integer) 1);
        contentValues.put("data15", byteArray);
        contentValues.put("mimetype", "vnd.android.cursor.item/photo");
        boolean z = false;
        if (i != 0) {
            z = false;
            if (1 == contentResolver.update(ContactsContract.Data.CONTENT_URI, contentValues, "_id=?", new String[]{String.valueOf(i)})) {
                z = true;
            }
        }
        if (!z) {
            contentResolver.insert(ContactsContract.Data.CONTENT_URI, contentValues);
            z = true;
        }
        return z;
    }
}
