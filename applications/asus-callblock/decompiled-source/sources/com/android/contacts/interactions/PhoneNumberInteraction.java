package com.android.contacts.interactions;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.content.ContentValues;
import android.content.Context;
import android.content.CursorLoader;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.Loader;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.CheckBox;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.android.contacts.ContactSaveService;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.activities.TransactionSafeActivity;
import com.android.contacts.dialpad.AdditionalButtonFragment;
import com.android.contacts.j;
import com.android.contacts.q;
import com.android.contacts.util.CallUtil;
import com.android.contacts.util.CoverUtils;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneConstants;
import com.android.contacts.vcard.SelectAccountActivity;
import com.asus.privatecontacts.PrivateContactsActivity;
import com.asus.updatesdk.BuildConfig;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/interactions/PhoneNumberInteraction.class */
public class PhoneNumberInteraction implements Loader.OnLoadCompleteListener<Cursor> {

    /* renamed from: a  reason: collision with root package name */
    private static final String f1437a = PhoneNumberInteraction.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private static String f1438b = null;
    private static long c = -1;
    private static int d = 0;
    private static final String[] e = {"_id", CoverUtils.CoverData.COVER_URI, "is_super_primary", SelectAccountActivity.ACCOUNT_TYPE, SelectAccountActivity.DATA_SET, CoverUtils.CoverData.COVER_TYPE, CoverUtils.CoverData.USER_SET, "mimetype", ContactDetailCallogActivity.EXTRA_CONTACT_ID};
    private final Context f;
    private final DialogInterface.OnDismissListener g;
    private final a h;
    private final String i;
    private CursorLoader j;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/interactions/PhoneNumberInteraction$PhoneItem.class */
    static class PhoneItem implements Parcelable, j.a<PhoneItem> {
        public static final Parcelable.Creator<PhoneItem> CREATOR = new Parcelable.Creator<PhoneItem>() { // from class: com.android.contacts.interactions.PhoneNumberInteraction.PhoneItem.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ PhoneItem createFromParcel(Parcel parcel) {
                return new PhoneItem(parcel, (byte) 0);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ PhoneItem[] newArray(int i) {
                return new PhoneItem[i];
            }
        };

        /* renamed from: a  reason: collision with root package name */
        long f1442a;

        /* renamed from: b  reason: collision with root package name */
        String f1443b;
        String c;
        String d;
        long e;
        String f;
        String g;

        public PhoneItem() {
        }

        private PhoneItem(Parcel parcel) {
            this.f1442a = parcel.readLong();
            this.f1443b = parcel.readString();
            this.c = parcel.readString();
            this.d = parcel.readString();
            this.e = parcel.readLong();
            this.f = parcel.readString();
            this.g = parcel.readString();
        }

        /* synthetic */ PhoneItem(Parcel parcel, byte b2) {
            this(parcel);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public boolean shouldCollapseWith(PhoneItem phoneItem) {
            return q.a("vnd.android.cursor.item/phone_v2", this.f1443b, "vnd.android.cursor.item/phone_v2", phoneItem.f1443b);
        }

        @Override // com.android.contacts.j.a
        public /* synthetic */ boolean collapseWith(PhoneItem phoneItem) {
            return shouldCollapseWith(phoneItem);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            return this.f1443b;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeLong(this.f1442a);
            parcel.writeString(this.f1443b);
            parcel.writeString(this.c);
            parcel.writeString(this.d);
            parcel.writeLong(this.e);
            parcel.writeString(this.f);
            parcel.writeString(this.g);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/interactions/PhoneNumberInteraction$a.class */
    public enum a {
        PHONE_CALL,
        SMS
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/interactions/PhoneNumberInteraction$b.class */
    public static final class b extends DialogFragment implements DialogInterface.OnClickListener, DialogInterface.OnDismissListener {

        /* renamed from: a  reason: collision with root package name */
        private a f1446a;

        /* renamed from: b  reason: collision with root package name */
        private ListAdapter f1447b;
        private List<PhoneItem> c;
        private String d;
        private boolean e = false;

        public static void a(FragmentManager fragmentManager, ArrayList<PhoneItem> arrayList, a aVar, String str) {
            b bVar = new b();
            Bundle bundle = new Bundle();
            bundle.putParcelableArrayList("phoneList", arrayList);
            bundle.putSerializable("interactionType", aVar);
            bundle.putString("callOrigin", str);
            bVar.setArguments(bundle);
            bVar.show(fragmentManager, PhoneNumberInteraction.f1437a);
        }

        public static void b(FragmentManager fragmentManager, ArrayList<PhoneItem> arrayList, a aVar, String str) {
            b bVar = new b();
            Bundle bundle = new Bundle();
            bundle.putParcelableArrayList("phoneList", arrayList);
            bundle.putSerializable("interactionType", aVar);
            bundle.putString("callOrigin", str);
            bundle.putBoolean("private_call", true);
            bVar.setArguments(bundle);
            bVar.show(fragmentManager, PhoneNumberInteraction.f1437a);
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            Activity activity = getActivity();
            if (activity != null) {
                AlertDialog alertDialog = (AlertDialog) dialogInterface;
                if (this.c.size() <= i || i < 0) {
                    dialogInterface.dismiss();
                    return;
                }
                PhoneItem phoneItem = this.c.get(i);
                if (!this.e && ((CheckBox) alertDialog.findViewById(2131297276)).isChecked()) {
                    activity.startService(ContactSaveService.b(activity, phoneItem.f1442a));
                }
                PhoneNumberInteraction.a(activity, phoneItem.f1443b, PhoneNumberInteraction.c, this.f1446a, this.d);
            }
        }

        @Override // android.app.DialogFragment
        public final Dialog onCreateDialog(Bundle bundle) {
            AlertDialog create;
            int i = 2131756160;
            Activity activity = getActivity();
            this.e = getArguments().getBoolean("private_call", false);
            this.c = getArguments().getParcelableArrayList("phoneList");
            this.f1446a = (a) getArguments().getSerializable("interactionType");
            this.d = getArguments().getString("callOrigin");
            this.f1447b = new c(activity, this.c, this.f1446a);
            LayoutInflater layoutInflater = activity.getLayoutInflater();
            if (!this.e) {
                create = new AlertDialog.Builder(activity).setAdapter(this.f1447b, this).setTitle(this.f1446a == a.SMS ? 2131756160 : 2131755262).setView(layoutInflater.inflate(2131427654, (ViewGroup) null)).create();
            } else {
                AlertDialog.Builder adapter = new AlertDialog.Builder(activity).setAdapter(this.f1447b, this);
                if (this.f1446a != a.SMS) {
                    i = 2131755262;
                }
                create = adapter.setTitle(i).create();
            }
            return create;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/interactions/PhoneNumberInteraction$c.class */
    private static final class c extends ArrayAdapter<PhoneItem> {

        /* renamed from: a  reason: collision with root package name */
        private final a f1448a;

        /* renamed from: b  reason: collision with root package name */
        private final com.android.contacts.model.a f1449b;

        public c(Context context, List<PhoneItem> list, a aVar) {
            super(context, 2131427614, 16908309, list);
            this.f1448a = aVar;
            this.f1449b = com.android.contacts.model.a.a(context);
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            View view2 = super.getView(i, view, viewGroup);
            PhoneItem item = getItem(i);
            com.android.contacts.model.account.a a2 = this.f1449b.a(item.c, item.d);
            TextView textView = (TextView) view2.findViewById(16908308);
            com.android.contacts.model.a.b a3 = a2.a("vnd.android.cursor.item/phone_v2");
            if (a3 != null) {
                ContentValues contentValues = new ContentValues();
                contentValues.put(CoverUtils.CoverData.COVER_TYPE, Long.valueOf(item.e));
                contentValues.put(CoverUtils.CoverData.USER_SET, item.f);
                textView.setText((this.f1448a == a.SMS ? a3.i : a3.h).a(getContext(), contentValues));
            } else {
                textView.setText(2131755287);
            }
            return view2;
        }
    }

    private PhoneNumberInteraction(Context context, a aVar) {
        this(context, aVar, null);
    }

    private PhoneNumberInteraction(Context context, a aVar, String str) {
        this.f = context;
        this.h = aVar;
        this.g = null;
        this.i = str;
    }

    static /* synthetic */ void a(Context context, String str, long j, a aVar, String str2) {
        Intent intent;
        switch (aVar) {
            case SMS:
                intent = new Intent("android.intent.action.SENDTO", Uri.fromParts("sms", str, null));
                break;
            default:
                if (d - 1 >= 0) {
                    intent = CallUtil.getCallIntent(str, str2, com.android.contacts.simcardmanage.b.h(context, d - 1));
                    intent.putExtra("extra_asus_dial_use_dualsim", d - 1);
                } else {
                    intent = CallUtil.getCallIntent(str, str2);
                }
                intent.putExtra("com.android.phone.AsusDialName", BuildConfig.FLAVOR);
                intent.putExtra("com.android.phone.AsusDialContactId", j);
                if (str2 != null) {
                    intent.putExtra(PhoneConstants.EXTRA_CALL_ORIGIN, str2);
                }
                if (context.getResources().getBoolean(2130968595)) {
                    float a2 = AdditionalButtonFragment.a();
                    AdditionalButtonFragment.a(a2);
                    intent.putExtra("com.android.phone.AsusSetTransitionAnimationScale", a2);
                }
                intent.putExtra("com.android.phone.FromAsusDialer", true);
                break;
        }
        CallUtil.startDialActivity(context, intent);
    }

    private void a(Uri uri) {
        if (this.j != null) {
            this.j.reset();
        }
        String uri2 = uri.toString();
        if (uri2.startsWith(ContactsContract.Contacts.CONTENT_URI.toString())) {
            if (!uri2.endsWith("data")) {
                uri = Uri.withAppendedPath(uri, "data");
            }
        } else if (!uri2.startsWith(ContactsContract.Data.CONTENT_URI.toString())) {
            throw new UnsupportedOperationException("Input Uri must be contact Uri or data Uri (input: \"" + uri + "\")");
        }
        this.j = new CursorLoader(this.f, uri, e, "mimetype IN ('vnd.android.cursor.item/phone_v2', 'vnd.android.cursor.item/sip_address') AND data1 NOT NULL", null, null);
        this.j.registerListener(0, this);
        this.j.startLoading();
    }

    public static void a(TransactionSafeActivity transactionSafeActivity, Uri uri) {
        new PhoneNumberInteraction(transactionSafeActivity, a.PHONE_CALL).a(uri);
    }

    public static void a(TransactionSafeActivity transactionSafeActivity, Uri uri, String str, long j, int i) {
        f1438b = str;
        c = j;
        d = i;
        new PhoneNumberInteraction(transactionSafeActivity, a.PHONE_CALL, null).a(uri);
    }

    public static void a(TransactionSafeActivity transactionSafeActivity, Uri uri, String str, String str2) {
        f1438b = str2;
        d = 0;
        new PhoneNumberInteraction(transactionSafeActivity, a.PHONE_CALL, str).a(uri);
    }

    public static void a(TransactionSafeActivity transactionSafeActivity, Uri uri, String str, String str2, long j) {
        f1438b = str2;
        c = j;
        d = 0;
        new PhoneNumberInteraction(transactionSafeActivity, a.PHONE_CALL, str).a(uri);
    }

    public static void a(TransactionSafeActivity transactionSafeActivity, ArrayList<PrivateContactsActivity.b> arrayList, String str) {
        Intent intent;
        f1438b = str;
        c = -1L;
        d = 0;
        PhoneNumberInteraction phoneNumberInteraction = new PhoneNumberInteraction(transactionSafeActivity, a.PHONE_CALL, null);
        ArrayList<PhoneItem> arrayList2 = new ArrayList<>();
        Iterator<PrivateContactsActivity.b> it = arrayList.iterator();
        while (it.hasNext()) {
            PrivateContactsActivity.b next = it.next();
            PhoneItem phoneItem = new PhoneItem();
            phoneItem.f1442a = next.f2969a;
            phoneItem.f1443b = next.f2970b;
            phoneItem.c = next.c;
            phoneItem.d = next.d;
            phoneItem.e = next.e;
            phoneItem.f = next.f;
            phoneItem.g = next.g;
            if (!phoneNumberInteraction.h.equals(a.SMS) || (!phoneItem.f1443b.contains(",") && !phoneItem.f1443b.contains(";") && !CallUtil.isUriNumber(phoneItem.f1443b))) {
                arrayList2.add(phoneItem);
            }
        }
        if (TextUtils.isEmpty(f1438b)) {
            j.a(arrayList2);
            if (arrayList2.size() == 0) {
                if (phoneNumberInteraction.h.equals(a.SMS)) {
                    new AlertDialog.Builder(phoneNumberInteraction.f).setMessage(2131756091).setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.android.contacts.interactions.PhoneNumberInteraction.2
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i) {
                            dialogInterface.dismiss();
                        }
                    }).show();
                }
                phoneNumberInteraction.c();
            } else if (arrayList2.size() == 1) {
                phoneNumberInteraction.c();
                phoneNumberInteraction.a(arrayList2.get(0).f1443b);
            } else {
                phoneNumberInteraction.b(arrayList2);
            }
        } else {
            j.a(arrayList2);
            if (arrayList2.size() == 0) {
                phoneNumberInteraction.c();
            } else if (arrayList2.size() == 1) {
                phoneNumberInteraction.c();
                String str2 = arrayList2.get(0).f1443b;
                String str3 = f1438b;
                Context context = phoneNumberInteraction.f;
                a aVar = phoneNumberInteraction.h;
                String str4 = phoneNumberInteraction.i;
                switch (aVar) {
                    case SMS:
                        intent = new Intent("android.intent.action.SENDTO", Uri.fromParts("sms", str2, null));
                        break;
                    default:
                        if (d - 1 >= 0) {
                            intent = CallUtil.getCallIntent(str2, str4, com.android.contacts.simcardmanage.b.h(context, d - 1));
                            intent.putExtra("extra_asus_dial_use_dualsim", d - 1);
                        } else {
                            intent = CallUtil.getCallIntent(str2, str4);
                        }
                        if (str3 != null) {
                            intent.putExtra("com.android.phone.AsusDialName", str3);
                        }
                        if (str4 != null) {
                            intent.putExtra(PhoneConstants.EXTRA_CALL_ORIGIN, str4);
                        }
                        intent.putExtra("com.android.phone.FromAsusDialer", true);
                        break;
                }
                CallUtil.startDialActivity(context, intent);
                c = -1L;
                f1438b = BuildConfig.FLAVOR;
            } else {
                phoneNumberInteraction.b(arrayList2);
            }
        }
    }

    private void a(String str) {
        Intent intent;
        Context context = this.f;
        a aVar = this.h;
        String str2 = this.i;
        switch (aVar) {
            case SMS:
                intent = new Intent("android.intent.action.SENDTO", Uri.fromParts("sms", str, null));
                break;
            default:
                if (d - 1 >= 0) {
                    intent = CallUtil.getCallIntent(str, str2, com.android.contacts.simcardmanage.b.h(context, d - 1));
                    intent.putExtra("extra_asus_dial_use_dualsim", d - 1);
                } else {
                    intent = CallUtil.getCallIntent(str, str2);
                }
                intent.putExtra("com.android.phone.FromAsusDialer", true);
                break;
        }
        ImplicitIntentsUtil.startActivityOutsideApp(context, intent);
    }

    private void a(String str, String str2, long j) {
        Intent intent;
        Context context = this.f;
        a aVar = this.h;
        String str3 = this.i;
        switch (aVar) {
            case SMS:
                intent = new Intent("android.intent.action.SENDTO", Uri.fromParts("sms", str, null));
                break;
            default:
                if (d - 1 >= 0) {
                    intent = CallUtil.getCallIntent(str, str3, com.android.contacts.simcardmanage.b.h(context, d - 1));
                    intent.putExtra("extra_asus_dial_use_dualsim", d - 1);
                } else {
                    intent = CallUtil.getCallIntent(str, str3);
                }
                if (str2 != null) {
                    intent.putExtra("com.android.phone.AsusDialName", str2);
                } else {
                    intent.putExtra("com.android.phone.AsusDialName", BuildConfig.FLAVOR);
                }
                intent.putExtra("com.android.phone.AsusDialContactId", j);
                if (str3 != null) {
                    intent.putExtra(PhoneConstants.EXTRA_CALL_ORIGIN, str3);
                }
                if (context.getResources().getBoolean(2130968595)) {
                    float a2 = AdditionalButtonFragment.a();
                    AdditionalButtonFragment.a(a2);
                    intent.putExtra("com.android.phone.AsusSetTransitionAnimationScale", a2);
                }
                intent.putExtra("com.android.phone.FromAsusDialer", true);
                break;
        }
        CallUtil.startDialActivity(context, intent);
    }

    private void a(ArrayList<PhoneItem> arrayList) {
        b.a(((Activity) this.f).getFragmentManager(), arrayList, this.h, this.i);
    }

    public static void b(TransactionSafeActivity transactionSafeActivity, Uri uri) {
        new PhoneNumberInteraction(transactionSafeActivity, a.SMS).a(uri);
    }

    private void b(ArrayList<PhoneItem> arrayList) {
        b.b(((Activity) this.f).getFragmentManager(), arrayList, this.h, this.i);
    }

    private void c() {
        if (this.g != null) {
            this.g.onDismiss(null);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0056, code lost:
        r7 = r0.getString(r0.getColumnIndex(com.android.contacts.util.CoverUtils.CoverData.COVER_URI));
        com.android.contacts.interactions.PhoneNumberInteraction.c = r0.getLong(r0.getColumnIndex(com.android.contacts.activities.ContactDetailCallogActivity.EXTRA_CONTACT_ID));
     */
    /* JADX WARN: Finally extract failed */
    @Override // android.content.Loader.OnLoadCompleteListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void onLoadComplete(android.content.Loader<android.database.Cursor> r7, android.database.Cursor r8) {
        /*
            Method dump skipped, instructions count: 578
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.interactions.PhoneNumberInteraction.onLoadComplete(android.content.Loader, java.lang.Object):void");
    }
}
