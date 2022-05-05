package p459j.p460a.p474c0.p488f;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.Telephony;
import android.text.TextUtils;
import android.util.Patterns;
import com.google.common.base.Joiner;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p459j.p460a.p474c0.p480d.C11689c;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p582w0.C13973d4;
/* renamed from: j.a.c0.f.i */
/* loaded from: classes2-dex2jar.jar:j/a/c0/f/i.class */
public class C11832i {

    /* renamed from: a */
    public static final Pattern f26533a = Pattern.compile("\\s*(\"[^\"]*\"|[^<>\"]+)\\s*<([^<>]+)>\\s*");

    /* renamed from: j.a.c0.f.i$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/f/i$a.class */
    public static final class C11833a implements Telephony.ThreadsColumns {

        /* renamed from: a */
        public static final String[] f26534a = {"_id"};

        /* renamed from: b */
        public static final Uri f26535b = Uri.parse("content://mms-sms/threadID");

        static {
            Uri.withAppendedPath(Telephony.MmsSms.CONTENT_URI, "conversations");
        }

        /* renamed from: a */
        public static long m8156a(Context context, String str) {
            HashSet hashSet = new HashSet();
            hashSet.add(str);
            return m8155a(context, hashSet);
        }

        /* renamed from: a */
        public static long m8155a(Context context, Set<String> set) {
            Uri.Builder buildUpon = f26535b.buildUpon();
            for (String str : set) {
                String str2 = str;
                if (C11832i.m8158b(str)) {
                    str2 = C11832i.m8161a(str);
                }
                buildUpon.appendQueryParameter("recipient", str2);
            }
            Cursor a = C11689c.m8598a(context, context.getContentResolver(), buildUpon.build(), f26534a, null, null, null);
            if (a != null) {
                try {
                    if (a.moveToFirst()) {
                        return a.getLong(0);
                    }
                    C12153d0.m6987b("MessagingAppDataModel", "getOrCreateThreadId returned no rows!");
                } finally {
                    a.close();
                }
            }
            C13973d4.m2952a(new Exception("getOrCreateThreadId failed with " + Joiner.m31135on(",").join(set)));
            return -1L;
        }
    }

    /* renamed from: a */
    public static String m8161a(String str) {
        Matcher matcher = f26533a.matcher(str);
        if (matcher.matches()) {
            str = matcher.group(2);
        }
        return str;
    }

    /* renamed from: a */
    public static boolean m8160a(String str, int i) {
        if (!C11828f.m8193a(i).m8174s()) {
            return false;
        }
        int length = str == null ? 0 : str.length();
        if (length < C11828f.m8193a(i).m8191b() || length > C11828f.m8193a(i).m8194a() || !Character.isLetter(str.charAt(0))) {
            return false;
        }
        for (int i2 = 1; i2 < length; i2++) {
            char charAt = str.charAt(i2);
            if (!(Character.isLetterOrDigit(charAt) || charAt == '.')) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public static boolean m8159a(boolean z, int i) {
        if (!TextUtils.isEmpty(C11828f.m8193a(i).m8190c())) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public static boolean m8158b(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return Patterns.EMAIL_ADDRESS.matcher(m8161a(str)).matches();
    }

    /* renamed from: c */
    public static boolean m8157c(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return Patterns.PHONE.matcher(str).matches();
    }
}
