package com.google.firebase.installations;

import android.text.TextUtils;
import com.google.firebase.installations.p396a.AbstractC15796d;
import com.google.firebase.installations.p398c.AbstractC15816a;
import com.google.firebase.installations.p398c.C15817b;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
/* renamed from: com.google.firebase.installations.o */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/o.class */
public final class C15830o {

    /* renamed from: a */
    public static final long f56262a = TimeUnit.HOURS.toSeconds(1);

    /* renamed from: b */
    private static final Pattern f56263b = Pattern.compile("\\AA[\\w-]{38}\\z");

    /* renamed from: c */
    private static C15830o f56264c;

    /* renamed from: d */
    private final AbstractC15816a f56265d;

    private C15830o(AbstractC15816a abstractC15816a) {
        this.f56265d = abstractC15816a;
    }

    /* renamed from: a */
    public static C15830o m8272a() {
        if (C15817b.f56249a == null) {
            C15817b.f56249a = new C15817b();
        }
        C15817b c15817b = C15817b.f56249a;
        if (f56264c == null) {
            f56264c = new C15830o(c15817b);
        }
        return f56264c;
    }

    /* renamed from: a */
    public static boolean m8270a(String str) {
        return str.contains(":");
    }

    /* renamed from: b */
    public static boolean m8268b(String str) {
        return f56263b.matcher(str).matches();
    }

    /* renamed from: d */
    public static long m8266d() {
        return (long) (Math.random() * 1000.0d);
    }

    /* renamed from: a */
    public final boolean m8271a(AbstractC15796d abstractC15796d) {
        return TextUtils.isEmpty(abstractC15796d.mo8374c()) || abstractC15796d.mo8371f() + abstractC15796d.mo8372e() < m8269b() + f56262a;
    }

    /* renamed from: b */
    public final long m8269b() {
        return TimeUnit.MILLISECONDS.toSeconds(m8267c());
    }

    /* renamed from: c */
    public final long m8267c() {
        return this.f56265d.mo8291a();
    }
}
