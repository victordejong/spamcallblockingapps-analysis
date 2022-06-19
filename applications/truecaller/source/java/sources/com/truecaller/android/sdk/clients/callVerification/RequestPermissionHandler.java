package com.truecaller.android.sdk.clients.callVerification;

import android.content.SharedPreferences;
import android.os.Build;
import androidx.fragment.app.FragmentManager;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import kotlin.Metadata;
import n3.r.a.l;
import p1727n3.p1807k.p1808a.C26413b;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p194a.p1221t.p1230b.p1231c.p1232k.C20371e;
import s1.u.i;
/* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler.class */
public final class RequestPermissionHandler {

    /* renamed from: a */
    public boolean f10002a;

    /* renamed from: b */
    public Set<String> f10003b;

    /* renamed from: c */
    public final l f10004c;

    /* renamed from: d */
    public final AbstractC2866a f10005d;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler$Status;", "", "<init>", "(Ljava/lang/String;I)V", "GRANTED", "UN_GRANTED", "TEMPORARY_DENIED", "PERMANENT_DENIED", "sdk-external_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler$Status.class */
    public enum Status {
        GRANTED,
        UN_GRANTED,
        TEMPORARY_DENIED,
        PERMANENT_DENIED
    }

    /* renamed from: com.truecaller.android.sdk.clients.callVerification.RequestPermissionHandler$a */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler$a.class */
    public interface AbstractC2866a {
        /* renamed from: a */
        boolean mo11208a(Set<String> set);

        /* renamed from: b */
        void mo11207b(Set<String> set, Set<String> set2);

        /* renamed from: c */
        boolean mo11206c(Set<String> set);
    }

    public RequestPermissionHandler(l lVar, AbstractC2866a abstractC2866a) {
        s1.z.c.l.e(lVar, "activity");
        this.f10004c = lVar;
        this.f10005d = abstractC2866a;
        this.f10003b = new HashSet();
        this.f10003b = Build.VERSION.SDK_INT >= 26 ? i.z0(new String[]{"android.permission.ANSWER_PHONE_CALLS", "android.permission.READ_CALL_LOG", "android.permission.READ_PHONE_STATE"}) : i.z0(new String[]{"android.permission.READ_CALL_LOG", "android.permission.READ_PHONE_STATE", "android.permission.CALL_PHONE"});
    }

    /* renamed from: a */
    public final void m35921a(Set<String> set) {
        FragmentManager supportFragmentManager = this.f10004c.getSupportFragmentManager();
        s1.z.c.l.d(supportFragmentManager, "fragmentManager");
        C20371e c20371e = (C20371e) supportFragmentManager.m42942K("FragTag");
        if (c20371e == null) {
            c20371e = new C20371e();
            C26907a c26907a = new C26907a(supportFragmentManager);
            c26907a.mo1122k(0, c20371e, "FragTag", 1);
            c26907a.m1128e(null);
            c26907a.mo1127f();
        }
        s1.z.c.l.e(this, "requestPermissionHandler");
        c20371e.f57231a = this;
        Object[] array = this.f10003b.toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        c20371e.f57232b = (String[]) array;
        if (c20371e.isAdded()) {
            Object[] array2 = set.toArray(new String[0]);
            Objects.requireNonNull(array2, "null cannot be cast to non-null type kotlin.Array<T>");
            c20371e.requestPermissions((String[]) array2, 200);
        }
    }

    /* renamed from: b */
    public final Set<String> m35920b(Set<String> set, Status status) {
        HashSet hashSet = new HashSet();
        for (String str : set) {
            int ordinal = status.ordinal();
            boolean z = false;
            if (ordinal == 0) {
                boolean z2 = false;
                if (C26467a.m1801a(this.f10004c, str) == 0) {
                    z2 = true;
                }
                if (z2) {
                    hashSet.add(str);
                }
            } else if (ordinal == 1) {
                if (C26467a.m1801a(this.f10004c, str) == 0) {
                    z = true;
                }
                if (!z) {
                    hashSet.add(str);
                }
            } else if (ordinal == 2) {
                l lVar = this.f10004c;
                int i = C26413b.f74031c;
                if (lVar.shouldShowRequestPermissionRationale(str)) {
                    hashSet.add(str);
                }
            } else if (ordinal == 3) {
                SharedPreferences sharedPreferences = this.f10004c.getSharedPreferences("SHARED_PREFS_RUNTIME_PERMISSION", 0);
                s1.z.c.l.d(sharedPreferences, "context.getSharedPrefere…N\", Context.MODE_PRIVATE)");
                if (sharedPreferences.getBoolean(str, false)) {
                    hashSet.add(str);
                }
            }
        }
        return hashSet;
    }

    /* renamed from: c */
    public final void m35919c(String str, boolean z) {
        SharedPreferences sharedPreferences = this.f10004c.getSharedPreferences("SHARED_PREFS_RUNTIME_PERMISSION", 0);
        s1.z.c.l.d(sharedPreferences, "context.getSharedPrefere…N\", Context.MODE_PRIVATE)");
        sharedPreferences.edit().putBoolean(str, z).apply();
    }

    /* renamed from: d */
    public final void m35918d() {
        AbstractC2866a abstractC2866a = this.f10005d;
        if (abstractC2866a != null) {
            abstractC2866a.mo11207b(m35920b(this.f10003b, Status.GRANTED), m35920b(this.f10003b, Status.UN_GRANTED));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00e0, code lost:
        if (r5.booleanValue() != false) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0120, code lost:
        if (r5.booleanValue() != false) goto L48;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x005a A[Catch: NameNotFoundException -> 0x008a, TRY_ENTER, TryCatch #0 {NameNotFoundException -> 0x008a, blocks: (B:3:0x001e, B:5:0x0036, B:16:0x005a, B:18:0x0065, B:20:0x006d), top: B:54:0x001e }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x013a  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m35917e() {
        /*
            Method dump skipped, instructions count: 325
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.android.sdk.clients.callVerification.RequestPermissionHandler.m35917e():void");
    }
}
