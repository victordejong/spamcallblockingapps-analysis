package com.unknownphone.callblocker.receiver;

import android.annotation.SuppressLint;
import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.graphics.Color;
import android.media.AudioManager;
import android.os.Binder;
import android.os.Build;
import android.provider.ContactsContract;
import android.provider.Settings;
import android.telecom.TelecomManager;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import com.google.i18n.phonenumbers.C5055g;
import com.google.i18n.phonenumbers.NumberParseException;
import com.unknownphone.callblocker.custom.C5287g;
import com.unknownphone.callblocker.custom.CustomApplication;
import com.unknownphone.callblocker.p180a.C5207c;
import com.unknownphone.callblocker.p186d.C5289a;
import com.unknownphone.callblocker.p186d.C5290b;
import com.unknownphone.callblocker.p187e.C5296a;
import com.unknownphone.callblocker.p189g.C5329a;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
/* renamed from: com.unknownphone.callblocker.receiver.a */
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/receiver/a.class */
public class C5362a extends PhoneStateListener {

    /* renamed from: a */
    private static int f22342a;

    /* renamed from: b */
    private String f22343b;

    /* renamed from: c */
    private String f22344c;

    /* renamed from: d */
    private Context f22345d;

    /* renamed from: com.unknownphone.callblocker.receiver.a$a */
    /* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/receiver/a$a.class */
    public static class C5365a {

        /* renamed from: a */
        String f22357a;

        /* renamed from: b */
        String f22358b;

        C5365a(Cursor cursor) {
            this.f22357a = cursor.getString(cursor.getColumnIndex("display_name"));
            this.f22358b = cursor.getString(cursor.getColumnIndex("data1"));
        }
    }

    public C5362a(Context context) {
        this.f22345d = context;
    }

    /* renamed from: a */
    private String m915a(List<C5365a> list, String str) {
        String str2 = "";
        if (list != null) {
            Iterator<C5365a> it = list.iterator();
            String str3 = str2;
            while (true) {
                str2 = str3;
                if (!it.hasNext()) {
                    break;
                }
                C5365a next = it.next();
                if (m916a(next.f22358b, str)) {
                    str3 = next.f22357a;
                }
            }
        }
        return str2;
    }

    /* renamed from: a */
    private List<C5365a> m921a(Context context) {
        Cursor query;
        Log.d("PhoneStateListener", "getContacts() was called.");
        ArrayList arrayList = new ArrayList();
        ContentResolver contentResolver = context.getContentResolver();
        if (contentResolver != null && (query = contentResolver.query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, new String[]{"display_name", "data1"}, null, null, null)) != null) {
            query.moveToFirst();
            while (!query.isAfterLast()) {
                try {
                    arrayList.add(new C5365a(query));
                } catch (IllegalStateException e) {
                    e.printStackTrace();
                }
                query.moveToNext();
            }
            query.close();
        }
        return arrayList;
    }

    /* renamed from: a */
    private void m922a(int i) {
        switch (i) {
            case 0:
                Log.d("PhoneStateListener", "Current call state is idle.");
                return;
            case 1:
                Log.d("PhoneStateListener", "Current call state is ringing.");
                return;
            case 2:
                Log.d("PhoneStateListener", "Current call state is off hook.");
                return;
            default:
                Log.d("PhoneStateListener", "Current call state could not be recognized.");
                return;
        }
    }

    /* renamed from: a */
    private void m920a(Context context, String str) {
        String str2;
        String m914b;
        boolean z = true;
        Log.d("PhoneStateListener", "onStartedRinging() was called.");
        boolean z2 = Build.VERSION.SDK_INT < 23 || Settings.canDrawOverlays(context);
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.unknownphone.callblocker.PREFS", 0);
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        TelecomManager telecomManager = (TelecomManager) context.getSystemService("telecom");
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        C5290b c5290b = new C5290b(context);
        this.f22344c = telephonyManager == null ? null : telephonyManager.getSimCountryIso();
        this.f22343b = C5289a.m1069a(this.f22344c);
        ArrayList<C5365a> arrayList = new ArrayList();
        if (sharedPreferences.getBoolean("block_all_calls", false)) {
            m918a(telephonyManager, telecomManager, audioManager);
            return;
        }
        if (sharedPreferences.getBoolean("block_strange_calls", false)) {
            try {
                arrayList.addAll(m921a(context));
            } catch (SecurityException e) {
            }
            boolean z3 = true;
            for (C5365a c5365a : arrayList) {
                if (m916a(c5365a.f22358b, str)) {
                    z3 = false;
                }
            }
            if (z3) {
                m918a(telephonyManager, telecomManager, audioManager);
                return;
            }
        }
        if (sharedPreferences.getBoolean("block_international_calls", false)) {
            try {
                str2 = String.valueOf(C5055g.m1745a().m1727a(C5287g.m1086a(str, this.f22344c), Locale.getDefault().getCountry()).m1631a());
            } catch (NumberParseException e2) {
                e2.printStackTrace();
                str2 = null;
            }
            if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(this.f22343b) && !str2.equals(this.f22343b)) {
                m918a(telephonyManager, telecomManager, audioManager);
                return;
            }
        }
        if (sharedPreferences.getBoolean("block_unknown_calls", false) && TextUtils.isEmpty(str)) {
            m918a(telephonyManager, telecomManager, audioManager);
            return;
        }
        for (C5207c c5207c : c5290b.m1056b()) {
            if (c5207c.m1224b() != 0) {
                if (m916a(c5207c.m1221d(), str)) {
                    m918a(telephonyManager, telecomManager, audioManager);
                    return;
                }
            } else if (m913b(str, c5207c.m1221d())) {
                m918a(telephonyManager, telecomManager, audioManager);
                return;
            }
        }
        C5329a c5329a = null;
        for (C5329a c5329a2 : c5290b.m1050c()) {
            if (m916a(c5329a2.m982b(), str)) {
                c5329a = c5329a2;
            }
        }
        if (c5329a != null && (!z2 || sharedPreferences.getBoolean("block_spam_calls", true))) {
            m918a(telephonyManager, telecomManager, audioManager);
        } else if (!TextUtils.isEmpty(str)) {
            if (c5329a != null) {
                m914b = c5329a.m983a();
            } else {
                if (arrayList.isEmpty()) {
                    try {
                        arrayList.addAll(m921a(context));
                    } catch (SecurityException e3) {
                    }
                }
                m914b = m914b(context, m915a(arrayList, str));
            }
            if (c5329a != null && sharedPreferences.getBoolean("identify_spam_calls", false)) {
                m919a(context, m914b, C5287g.m1076c(str));
            }
            String m1076c = C5287g.m1076c(str);
            if (c5329a == null) {
                z = false;
            }
            m917a(c5290b, m914b, m1076c, z);
        }
    }

    @SuppressLint({"InflateParams"})
    /* renamed from: a */
    private void m919a(Context context, String str, String str2) {
        final View inflate;
        Log.d("PhoneStateListener", "displayOverlayWindow() was called.");
        int i = Build.VERSION.SDK_INT >= 26 ? 2038 : 2010;
        final WindowManager windowManager = (WindowManager) context.getSystemService("window");
        final WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.flags = 524296;
        layoutParams.width = -1;
        layoutParams.height = -2;
        layoutParams.gravity = 16;
        layoutParams.format = -3;
        layoutParams.type = i;
        layoutParams.x = 0;
        layoutParams.y = 0;
        LayoutInflater layoutInflater = (LayoutInflater) context.getSystemService("layout_inflater");
        if (layoutInflater == null || (inflate = layoutInflater.inflate(2131493005, (ViewGroup) null)) == null) {
            return;
        }
        if (windowManager != null && inflate.isAttachedToWindow()) {
            try {
                windowManager.removeView(inflate);
            } catch (SecurityException e) {
                e.printStackTrace();
            }
        }
        if (windowManager != null && !inflate.isAttachedToWindow()) {
            try {
                windowManager.addView(inflate, layoutParams);
            } catch (WindowManager.BadTokenException | SecurityException e2) {
                e2.printStackTrace();
            }
        }
        inflate.setOnTouchListener(new View.OnTouchListener() { // from class: com.unknownphone.callblocker.receiver.a.1

            /* renamed from: e */
            private float f22350e;

            /* renamed from: f */
            private float f22351f;

            /* renamed from: g */
            private int f22352g;

            /* renamed from: h */
            private int f22353h;

            @Override // android.view.View.OnTouchListener
            @SuppressLint({"ClickableViewAccessibility"})
            public boolean onTouch(View view, MotionEvent motionEvent) {
                switch (motionEvent.getAction()) {
                    case 0:
                        this.f22352g = layoutParams.x;
                        this.f22353h = layoutParams.y;
                        this.f22350e = motionEvent.getRawX();
                        this.f22351f = motionEvent.getRawY();
                        return false;
                    case 1:
                    default:
                        return false;
                    case 2:
                        layoutParams.x = this.f22352g + ((int) (motionEvent.getRawX() - this.f22350e));
                        layoutParams.y = this.f22353h + ((int) (motionEvent.getRawY() - this.f22351f));
                        if (windowManager == null) {
                            return false;
                        }
                        windowManager.updateViewLayout(inflate, layoutParams);
                        return false;
                }
            }
        });
        AppCompatImageButton appCompatImageButton = (AppCompatImageButton) inflate.findViewById(2131296392);
        AppCompatTextView appCompatTextView = (AppCompatTextView) inflate.findViewById(2131296577);
        AppCompatImageView appCompatImageView = (AppCompatImageView) inflate.findViewById(2131296492);
        AppCompatTextView appCompatTextView2 = (AppCompatTextView) inflate.findViewById(2131296564);
        appCompatImageButton.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.receiver.a.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (windowManager == null || !inflate.isAttachedToWindow()) {
                    return;
                }
                windowManager.removeView(inflate);
            }
        });
        appCompatTextView2.setText(str);
        appCompatTextView.setText(str2);
        appCompatTextView2.setTextColor(-1);
        appCompatTextView.setTextColor(-1);
        appCompatImageView.setImageResource(2131230985);
        ((CardView) inflate.findViewById(2131296378)).setCardBackgroundColor(Color.parseColor("#c85c53"));
        CustomApplication.m1110a("A phone number was identified by the app.");
    }

    /* renamed from: a */
    private void m918a(TelephonyManager telephonyManager, TelecomManager telecomManager, AudioManager audioManager) {
        Log.d("PhoneStateListener", "rejectCall() was called.");
        if (audioManager != null) {
            if (Build.VERSION.SDK_INT >= 23) {
                audioManager.adjustStreamVolume(3, -100, 0);
            } else {
                audioManager.setStreamMute(3, true);
            }
        }
        if (Build.VERSION.SDK_INT >= 28 && telecomManager != null) {
            try {
                telecomManager.endCall();
            } catch (SecurityException e) {
                e.printStackTrace();
            }
        }
        if (telephonyManager != null) {
            try {
                Method declaredMethod = Class.forName(telephonyManager.getClass().getName()).getDeclaredMethod("getITelephony", new Class[0]);
                declaredMethod.setAccessible(true);
                Object invoke = declaredMethod.invoke(telephonyManager, new Object[0]);
                Class.forName(invoke.getClass().getName()).getDeclaredMethod("endCall", new Class[0]).invoke(invoke, new Object[0]);
            } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | NullPointerException | InvocationTargetException e2) {
                e2.printStackTrace();
            }
        }
        CustomApplication.m1110a("A phone number was blocked by the app.");
    }

    /* renamed from: a */
    private void m917a(C5290b c5290b, String str, String str2, boolean z) {
        C5296a c5296a = new C5296a();
        c5296a.m1033b(str2);
        c5296a.m1039a(1);
        c5296a.m1037a(str);
        c5296a.m1034b(System.currentTimeMillis());
        c5296a.m1036a(z ? (short) 4 : (short) 2);
        c5290b.m1062a(c5296a);
    }

    /* renamed from: a */
    private boolean m916a(String str, String str2) {
        return C5287g.m1085a(str, str2, this.f22343b, this.f22344c);
    }

    /* renamed from: b */
    private String m914b(Context context, String str) {
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = context.getString(2131755530);
        }
        return str2;
    }

    /* renamed from: b */
    private boolean m913b(String str, String str2) {
        boolean z;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            z = false;
        } else {
            z = true;
            if (!C5287g.m1084a(str, this.f22343b, false).startsWith(str2)) {
                z = true;
                if (!C5287g.m1084a(str, this.f22343b, true).startsWith(str2)) {
                    z = true;
                    if (!C5287g.m1086a(str, this.f22344c).startsWith(str2)) {
                        z = true;
                        if (!C5287g.m1084a(C5287g.m1078b(str, this.f22344c), this.f22343b, false).startsWith(str2)) {
                            z = false;
                        }
                    }
                }
            }
        }
        return z;
    }

    @Override // android.telephony.PhoneStateListener
    public void onCallStateChanged(int i, String str) {
        super.onCallStateChanged(i, str);
        Log.d("PhoneStateListener", String.format(Locale.US, "Hash code: %d", Integer.valueOf(hashCode())));
        m922a(i);
        if (i == 1 && f22342a != 1) {
            m920a(this.f22345d, str);
        } else if (i != 1 && f22342a == 1 && this.f22345d != null) {
            System.exit(0);
        }
        f22342a = i;
        Binder.clearCallingIdentity();
        TelephonyManager telephonyManager = (TelephonyManager) this.f22345d.getSystemService("phone");
        if (telephonyManager != null) {
            telephonyManager.listen(this, 0);
        }
    }
}
