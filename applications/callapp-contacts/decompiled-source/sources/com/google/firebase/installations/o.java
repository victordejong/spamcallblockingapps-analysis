package com.google.firebase.installations;

import android.text.TextUtils;
import com.google.firebase.installations.a.d;
import com.google.firebase.installations.c.a;
import com.google.firebase.installations.c.b;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/o.class */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    public static final long f32438a = TimeUnit.HOURS.toSeconds(1);

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f32439b = Pattern.compile("\\AA[\\w-]{38}\\z");

    /* renamed from: c  reason: collision with root package name */
    private static o f32440c;

    /* renamed from: d  reason: collision with root package name */
    private final a f32441d;

    private o(a aVar) {
        this.f32441d = aVar;
    }

    public static o a() {
        if (b.f32425a == null) {
            b.f32425a = new b();
        }
        b bVar = b.f32425a;
        if (f32440c == null) {
            f32440c = new o(bVar);
        }
        return f32440c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(String str) {
        return str.contains(":");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(String str) {
        return f32439b.matcher(str).matches();
    }

    public static long d() {
        return (long) (Math.random() * 1000.0d);
    }

    public final boolean a(d dVar) {
        return TextUtils.isEmpty(dVar.c()) || dVar.f() + dVar.e() < b() + f32438a;
    }

    public final long b() {
        return TimeUnit.MILLISECONDS.toSeconds(c());
    }

    public final long c() {
        return this.f32441d.a();
    }
}
