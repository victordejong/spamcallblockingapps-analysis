package com.android.contacts;

import android.app.KeyguardManager;
import android.app.ProgressDialog;
import android.content.ActivityNotFoundException;
import android.content.AsyncQueryHandler;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.net.Uri;
import android.preference.PreferenceManager;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.android.contacts.activities.AsusDialerSettingActivity;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.vcard.VCardConfig;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/android/contacts/ad.class */
public final class ad {

    /* renamed from: a  reason: collision with root package name */
    static b f526a;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/ad$a.class */
    public static final class a extends BaseAdapter {

        /* renamed from: a  reason: collision with root package name */
        LayoutInflater f529a;

        /* renamed from: b  reason: collision with root package name */
        int[] f530b = {2131165292, 2131165293};
        String[] c = {"SIM 1", "SIM 2"};
        private Context d;

        public a(Context context) {
            this.f529a = (LayoutInflater) context.getSystemService("layout_inflater");
            this.d = context;
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            return this.f530b.length;
        }

        @Override // android.widget.Adapter
        public final Object getItem(int i) {
            return null;
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i) {
            return 0L;
        }

        @Override // android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            View inflate = this.f529a.inflate(2131427331, (ViewGroup) null);
            ImageView imageView = (ImageView) inflate.findViewById(16908294);
            TextView textView = (TextView) inflate.findViewById(16908308);
            TextView textView2 = (TextView) inflate.findViewById(16908309);
            String f = com.android.contacts.simcardmanage.b.f(this.d, i + 1);
            imageView.setImageResource(this.f530b[i]);
            textView.setText(this.c[i]);
            textView2.setText(f);
            return inflate;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/ad$b.class */
    private static final class b extends AsyncQueryHandler {

        /* renamed from: a  reason: collision with root package name */
        boolean f531a;

        public b(ContentResolver contentResolver) {
            super(contentResolver);
        }

        @Override // android.content.AsyncQueryHandler
        protected final void onQueryComplete(int i, Object obj, Cursor cursor) {
            ad.f526a = null;
            if (!this.f531a) {
                c cVar = (c) obj;
                cVar.f532a.dismiss();
                EditText a2 = cVar.a();
                if (!(cursor == null || a2 == null || !cursor.moveToPosition(cVar.f533b))) {
                    String string = cursor.getString(cursor.getColumnIndexOrThrow(ContactDetailCallogActivity.EXTRA_NAME));
                    String string2 = cursor.getString(cursor.getColumnIndexOrThrow("number"));
                    Log.d("SpecialCharSequenceMgr", "[handleAdnEntry] Query result: name=" + string + ", number=" + string2);
                    a2.getText().replace(0, 0, string2);
                    Context context = cVar.f532a.getContext();
                    Toast.makeText(context, context.getString(2131755812, string), 0).show();
                }
                if (cursor != null) {
                    cursor.close();
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/ad$c.class */
    private static final class c implements DialogInterface.OnCancelListener {

        /* renamed from: a  reason: collision with root package name */
        public ProgressDialog f532a;

        /* renamed from: b  reason: collision with root package name */
        public int f533b;
        private int c = -1;
        private b d;
        private EditText e;

        public c(int i, b bVar) {
            this.f533b = i;
            this.d = bVar;
        }

        public final EditText a() {
            EditText editText;
            synchronized (this) {
                editText = this.e;
            }
            return editText;
        }

        public final void a(EditText editText) {
            synchronized (this) {
                this.e = editText;
            }
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public final void onCancel(DialogInterface dialogInterface) {
            synchronized (this) {
                if (this.f532a != null) {
                    this.f532a.dismiss();
                }
                this.e = null;
                this.d.cancelOperation(this.c);
            }
        }
    }

    public static boolean a(Context context, String str) {
        boolean z;
        if (str.equals("*#07#")) {
            Log.d("SpecialCharSequenceMgr", "handleRegulatoryInfoDisplay() sending intent to settings app");
            try {
                context.startActivity(new Intent("android.settings.SHOW_REGULATORY_INFO"));
            } catch (ActivityNotFoundException e) {
                Log.e("SpecialCharSequenceMgr", "startActivity() failed: " + e);
            }
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    public static boolean a(Context context, String str, EditText editText) {
        TelephonyManager telephonyManager;
        boolean z;
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        if (defaultSharedPreferences.getBoolean("pref_use_defalut", true)) {
            Locale locale = context.getResources().getConfiguration().locale;
            if (Locale.getDefault().toString().equals("zh_TW")) {
                Log.w("SpecialCharSequenceMgr", "[handleAdnEntry] ADN not support. (Smart search language is zh_TW.");
                z = false;
            }
            telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager != null || telephonyManager.getPhoneType() != 1) {
                Log.w("SpecialCharSequenceMgr", "[handleAdnEntry] ADN not support. (phone type is not PHONE_TYPE_GSM)");
                z = false;
            } else if (((KeyguardManager) context.getSystemService("keyguard")).inKeyguardRestrictedInputMode()) {
                z = false;
            } else {
                int length = str.length();
                if (length > 1 && length < 5 && str.endsWith("#")) {
                    try {
                        int parseInt = Integer.parseInt(str.substring(0, length - 1));
                        b bVar = new b(context.getContentResolver());
                        c cVar = new c(parseInt - 1, bVar);
                        cVar.f533b = parseInt - 1;
                        cVar.a(editText);
                        cVar.f532a = new ProgressDialog(context);
                        cVar.f532a.setTitle(2131756133);
                        cVar.f532a.setMessage(context.getText(2131756132));
                        cVar.f532a.setIndeterminate(true);
                        cVar.f532a.setCancelable(true);
                        cVar.f532a.setOnCancelListener(cVar);
                        cVar.f532a.getWindow().addFlags(4);
                        cVar.f532a.show();
                        Object c2 = com.android.contacts.simcardmanage.b.c(context);
                        bVar.startQuery(-1, cVar, com.android.contacts.simcardmanage.b.a(context) ? com.android.contacts.simcardmanage.b.a(c2 instanceof Long ? ((Long) c2).longValue() : ((Integer) c2).longValue(), context) : Uri.parse("content://icc/adn"), new String[]{"number"}, null, null, null);
                        if (f526a != null) {
                            b bVar2 = f526a;
                            bVar2.f531a = true;
                            bVar2.cancelOperation(-1);
                        }
                        f526a = bVar;
                        z = true;
                    } catch (NumberFormatException e) {
                        Log.e("SpecialCharSequenceMgr", "[handleAdnEntry] error:" + e.toString());
                    }
                }
                z = false;
            }
        } else {
            if (defaultSharedPreferences.getString(AsusDialerSettingActivity.KEY_DIALPAD_LIST, "0").equals("3")) {
                Log.w("SpecialCharSequenceMgr", "[handleAdnEntry] ADN not support. (Smart search language is zh_TW)");
                z = false;
            }
            telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager != null) {
            }
            Log.w("SpecialCharSequenceMgr", "[handleAdnEntry] ADN not support. (phone type is not PHONE_TYPE_GSM)");
            z = false;
        }
        return z;
    }

    public static boolean b(Context context, String str) {
        boolean a2 = com.asus.contacts.a.a("ro.config.chinatelecom.asus", false);
        Log.d("SpecialCharSequenceMgr", "ro.config.chinatelecom.asus = " + a2);
        boolean z = false;
        if (a2) {
            z = false;
            if (str.equals("*#0000#")) {
                try {
                    Intent intent = new Intent("android.intent.action.ENGINEER_MODE_DEVICEINFO");
                    intent.addFlags(VCardConfig.FLAG_REFRAIN_QP_TO_NAME_PROPERTIES);
                    ImplicitIntentsUtil.startActivityOutsideApp(context, intent);
                    z = true;
                } catch (ActivityNotFoundException e) {
                    Log.d("SpecialCharSequenceMgr", "no activity to handle showing device info");
                    z = false;
                }
            }
        }
        return z;
    }

    public static boolean c(Context context, String str) {
        boolean z = false;
        if (PhoneCapabilityTester.isPhone(context)) {
            z = false;
            if (PhoneCapabilityTester.isATTSku()) {
                z = false;
                if (str.equals("*#2787282#")) {
                    try {
                        Log.d("SpecialCharSequenceMgr", "start ATA");
                        Intent intent = new Intent();
                        intent.setAction("com.asus.ata");
                        ImplicitIntentsUtil.startActivityOutsideApp(context, intent, false);
                    } catch (Exception e) {
                        Log.w("SpecialCharSequenceMgr", "fail to start ATA");
                    }
                    z = true;
                }
            }
        }
        return z;
    }
}
