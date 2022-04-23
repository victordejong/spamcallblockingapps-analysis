package com.android.contacts.calllog;

import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.util.Log;
import com.android.contacts.simcardmanage.b;
import com.android.contacts.util.CallUtil;
import com.android.contacts.util.Constants;
import com.asus.updatesdk.BuildConfig;
import com.google.a.b.aa;
import java.util.HashMap;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/t.class */
public class t {

    /* renamed from: b  reason: collision with root package name */
    private static final String f759b = t.class.getSimpleName();
    private static final Set<String> d = aa.a("-1", "-2", "-3");
    private static HashMap<Integer, String> e = new HashMap<>();

    /* renamed from: a  reason: collision with root package name */
    public final Resources f760a;
    private Context c;

    public t(Context context) {
        this.c = context;
        this.f760a = this.c.getResources();
    }

    public t(Resources resources) {
        this.f760a = resources;
    }

    public static Uri a(String str) {
        return d(str) ? Uri.fromParts(Constants.SCHEME_SIP, str, null) : Uri.fromParts(Constants.SCHEME_TEL, str, null);
    }

    public static void a() {
        if (e != null) {
            e.clear();
        }
    }

    public static boolean a(CharSequence charSequence) {
        return !TextUtils.isEmpty(charSequence) && !g(charSequence);
    }

    public static boolean d(CharSequence charSequence) {
        return TextUtils.isEmpty(charSequence) ? false : CallUtil.isUriNumber(charSequence.toString());
    }

    public static boolean e(CharSequence charSequence) {
        String charSequence2 = charSequence.toString();
        return charSequence2.contains(",") || charSequence2.contains(";");
    }

    public static boolean g(CharSequence charSequence) {
        return charSequence != null && d.contains(charSequence.toString());
    }

    public final CharSequence a(CharSequence charSequence, CharSequence charSequence2) {
        if (TextUtils.isEmpty(charSequence)) {
            charSequence = this.f760a.getString(2131755991);
        } else if (f(charSequence)) {
            charSequence = this.f760a.getString(2131756459);
        } else if (g(charSequence)) {
            charSequence = this.f760a.getString(2131756348);
        } else if (!TextUtils.isEmpty(charSequence2)) {
            charSequence = charSequence2;
        }
        return charSequence;
    }

    public final CharSequence a(CharSequence charSequence, CharSequence charSequence2, int i) {
        return i == 3 ? this.f760a.getString(2131756348) : i == 2 ? this.f760a.getString(2131755991) : i == 4 ? this.f760a.getString(2131755938) : a(charSequence, charSequence2);
    }

    public final CharSequence a(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i) {
        return i == 3 ? this.f760a.getString(2131756348) : i == 2 ? this.f760a.getString(2131755991) : i == 4 ? this.f760a.getString(2131755938) : a(TextUtils.concat(charSequence, charSequence2), charSequence3);
    }

    public final boolean b(CharSequence charSequence) {
        return a(charSequence) && !c(charSequence) && !d(charSequence) && !e(charSequence);
    }

    public final boolean c(CharSequence charSequence) {
        boolean z = true;
        Object a2 = b.a(1);
        Object a3 = b.a(2);
        String a4 = b.a(this.c, a2);
        String a5 = b.a(this.c, a3);
        if (e != null) {
            e.clear();
            if (a4 != null) {
                e.put(1, a4);
            } else {
                e.put(1, BuildConfig.FLAVOR);
            }
            if (a5 != null) {
                e.put(2, a5);
            } else {
                e.put(2, BuildConfig.FLAVOR);
            }
        }
        if ((a4 == null || charSequence == null || !PhoneNumberUtils.compare(a4, charSequence.toString())) && (a5 == null || charSequence == null || !PhoneNumberUtils.compare(a5, charSequence.toString()))) {
            z = false;
        } else {
            Log.d(f759b, "isVoicemailNumber: true");
        }
        return z;
    }

    public final boolean f(CharSequence charSequence) {
        boolean c;
        if (e == null || e.isEmpty()) {
            c = c(charSequence);
        } else {
            String str = e.get(1);
            String str2 = e.get(2);
            c = ((str == null || charSequence == null || !PhoneNumberUtils.compare(str, charSequence.toString())) && (str2 == null || charSequence == null || !PhoneNumberUtils.compare(str2, charSequence.toString()))) ? false : true;
        }
        if (c) {
            Log.d(f759b, "isVoicemailNumber: " + c + ", from cache:true");
        }
        return c;
    }
}
