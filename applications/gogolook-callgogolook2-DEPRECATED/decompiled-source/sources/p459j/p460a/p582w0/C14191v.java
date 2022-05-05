package p459j.p460a.p582w0;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.core.app.ActivityCompat;
import com.mopub.common.Constants;
import kotlin.Metadata;
import p626l.C14989s;
import p626l.p631e0.C14966w;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��T\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004*\u0004\u0018\u00010\u0005H\u0007J\u000e\u0010\u0006\u001a\u00020\u0007*\u0004\u0018\u00010\u0004H\u0007J\u000e\u0010\u0006\u001a\u00020\u0007*\u0004\u0018\u00010\u0005H\u0007J\u000e\u0010\b\u001a\u00020\u0007*\u0004\u0018\u00010\u0005H\u0007J\u0016\u0010\t\u001a\u00020\u0007*\u0004\u0018\u00010\u00052\u0006\u0010\n\u001a\u00020\u000bH\u0007J&\u0010\f\u001a\u00020\r*\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0007J;\u0010\u0014\u001a\u00020\u0007*\u0004\u0018\u00010\u00052\u0006\u0010\u000e\u001a\u00020\u000f2#\b\u0002\u0010\u0015\u001a\u001d\u0012\u0013\u0012\u00110\u0017¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(\u001a\u0012\u0004\u0012\u00020\r0\u0016H\u0007J\u001e\u0010\u0014\u001a\u00020\u0007*\u0004\u0018\u00010\u00052\u000e\u0010\u001b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u001cH\u0007¨\u0006\u001d"}, m815d2 = {"Lgogolook/callgogolook2/util/ContextUtils;", "", "()V", "getActivity", "Landroid/app/Activity;", "Landroid/content/Context;", "isActivityAlive", "", "isContextAlive", "launchBrowser", "url", "", "startActivityForResultSafely", "", Constants.INTENT_SCHEME, "Landroid/content/Intent;", "requestCode", "", "options", "Landroid/os/Bundle;", "startActivitySafely", "exceptionHandler", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "throwable", "cls", "Ljava/lang/Class;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.w0.v */
/* loaded from: classes3-dex2jar.jar:j/a/w0/v.class */
public final class C14191v {

    /* renamed from: j.a.w0.v$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/v$a.class */
    public static final class C14192a extends AbstractC15150l implements AbstractC15118l<Throwable, C14989s> {

        /* renamed from: a */
        public static final C14192a f31719a = new C14192a();

        public C14192a() {
            super(1);
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ C14989s invoke(Throwable th) {
            invoke2(th);
            return C14989s.f33022a;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(Throwable th) {
            C15149k.m377b(th, "throwable");
            C14080m2.m2612a(th);
        }
    }

    static {
        new C14191v();
    }

    /* renamed from: a */
    public static final Activity m2260a(Context context) {
        while (!(context instanceof Activity)) {
            if (!(context instanceof ContextWrapper)) {
                return null;
            }
            context = ((ContextWrapper) context).getBaseContext();
        }
        return (Activity) context;
    }

    /* renamed from: a */
    public static final void m2261a(Activity activity, Intent intent, int i, Bundle bundle) {
        C15149k.m377b(activity, "receiver$0");
        C15149k.m377b(intent, Constants.INTENT_SCHEME);
        try {
            ActivityCompat.startActivityForResult(activity, intent, i, bundle);
        } catch (Throwable th) {
            C14080m2.m2612a(th);
        }
    }

    /* renamed from: a */
    public static final boolean m2262a(Activity activity) {
        return activity != null && !activity.isFinishing() && !activity.isDestroyed();
    }

    /* renamed from: a */
    public static final boolean m2259a(Context context, Intent intent) {
        return m2257a(context, intent, null, 2, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0042 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean m2258a(android.content.Context r4, android.content.Intent r5, p626l.p641z.p642c.AbstractC15118l<? super java.lang.Throwable, p626l.C14989s> r6) {
        /*
            r0 = r5
            java.lang.String r1 = "intent"
            p626l.p641z.p643d.C15149k.m377b(r0, r1)
            r0 = r6
            java.lang.String r1 = "exceptionHandler"
            p626l.p641z.p643d.C15149k.m377b(r0, r1)
            r0 = 0
            r7 = r0
            r0 = r4
            if (r0 != 0) goto L_0x0014
            r0 = 0
            return r0
        L_0x0014:
            r0 = r4
            boolean r0 = m2255b(r0)
            if (r0 == 0) goto L_0x0021
        L_0x001b:
            r0 = 1
            r8 = r0
            goto L_0x003a
        L_0x0021:
            r0 = r4
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 != 0) goto L_0x0037
            r0 = r5
            r1 = r5
            int r1 = r1.getFlags()
            r2 = 268435456(0x10000000, float:2.5243549E-29)
            r1 = r1 | r2
            android.content.Intent r0 = r0.setFlags(r1)
            goto L_0x001b
        L_0x0037:
            r0 = 0
            r8 = r0
        L_0x003a:
            r0 = r7
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0059
            r0 = r4
            r1 = r5
            r0.startActivity(r1)     // Catch: all -> 0x004d
            r0 = 1
            r9 = r0
            goto L_0x0059
        L_0x004d:
            r4 = move-exception
            r0 = r6
            r1 = r4
            java.lang.Object r0 = r0.invoke(r1)
            r0 = r7
            r9 = r0
        L_0x0059:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p582w0.C14191v.m2258a(android.content.Context, android.content.Intent, l.z.c.l):boolean");
    }

    /* renamed from: a */
    public static /* synthetic */ boolean m2257a(Context context, Intent intent, AbstractC15118l lVar, int i, Object obj) {
        if ((i & 2) != 0) {
            lVar = C14192a.f31719a;
        }
        return m2258a(context, intent, lVar);
    }

    /* renamed from: a */
    public static final boolean m2256a(Context context, String str) {
        C15149k.m377b(str, "url");
        Intent intent = new Intent("android.intent.action.VIEW");
        if (!C14966w.m712c(str, "http", false, 2, null)) {
            str = "http://" + str;
        }
        intent.setData(Uri.parse(str));
        return m2257a(context, intent, null, 2, null);
    }

    /* renamed from: b */
    public static final boolean m2255b(Context context) {
        Activity a = m2260a(context);
        return a != null ? m2262a(a) : false;
    }

    /* renamed from: c */
    public static final boolean m2254c(Context context) {
        Activity a = m2260a(context);
        return a != null ? m2262a(a) : context != null;
    }
}
