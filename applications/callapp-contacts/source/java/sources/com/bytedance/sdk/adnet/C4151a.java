package com.bytedance.sdk.adnet;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.adnet.core.AbstractC4220n;
import com.bytedance.sdk.adnet.core.C4214k;
import com.bytedance.sdk.adnet.core.C4215l;
import com.bytedance.sdk.adnet.core.C4221o;
import com.bytedance.sdk.adnet.face.IHttpStack;
import com.bytedance.sdk.adnet.p140a.C4153a;
import com.bytedance.sdk.adnet.p142c.AbstractC4186a;
import com.bytedance.sdk.adnet.p142c.AbstractC4187b;
import com.bytedance.sdk.adnet.p142c.C4191f;
import com.bytedance.sdk.adnet.p143d.C4228d;
import com.bytedance.sdk.adnet.p143d.C4235g;
import com.bytedance.sdk.openadsdk.p184l.AbstractRunnableC5055g;
import com.bytedance.sdk.openadsdk.p184l.C5052e;
import java.io.File;
/* renamed from: com.bytedance.sdk.adnet.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/a.class */
public class C4151a {

    /* renamed from: a */
    public static AbstractC4220n f15229a;

    /* renamed from: b */
    private static String f15230b;

    /* renamed from: c */
    private static AbstractC4187b f15231c;

    /* renamed from: d */
    private static boolean f15232d = true;

    /* renamed from: e */
    private static AbstractC4186a f15233e;

    /* renamed from: a */
    public static AbstractC4187b m36311a() {
        AbstractC4187b abstractC4187b = f15231c;
        if (abstractC4187b != null) {
            return abstractC4187b;
        }
        throw new IllegalArgumentException("sITTNetDepend is null");
    }

    /* renamed from: a */
    public static C4215l m36309a(Context context) {
        return C4214k.m36128a(context);
    }

    /* renamed from: a */
    public static C4215l m36307a(Context context, IHttpStack iHttpStack, int i) {
        return C4214k.m36126a(context, iHttpStack, i);
    }

    /* renamed from: a */
    public static void m36310a(Activity activity) {
        if (activity == null) {
            return;
        }
        final Context applicationContext = activity.getApplicationContext();
        C5052e.m33158b(new AbstractRunnableC5055g("adnet onActivityResume") { // from class: com.bytedance.sdk.adnet.a.1
            @Override // java.lang.Runnable
            public final void run() {
                C4153a.m36297a(applicationContext).m36286c();
                C4153a.m36297a(applicationContext);
                C4153a.m36290b(applicationContext);
            }
        });
    }

    /* renamed from: a */
    public static void m36308a(Context context, Application application, boolean z) {
        if (context != null) {
            C4191f.m36225a().m36223a(context, C4235g.m36077b(context));
            if (C4235g.m36078a(context) || (!C4235g.m36077b(context) && z)) {
                C4153a.m36297a(context).m36286c();
                C4153a.m36297a(context).m36299a();
            }
            if (!C4235g.m36077b(context)) {
                return;
            }
            C4153a.m36297a(context);
            return;
        }
        throw new IllegalArgumentException("tryInitAdTTNet context is null");
    }

    /* renamed from: a */
    public static void m36306a(AbstractC4186a abstractC4186a) {
        f15233e = abstractC4186a;
    }

    /* renamed from: a */
    public static void m36305a(AbstractC4187b abstractC4187b) {
        f15231c = abstractC4187b;
    }

    /* renamed from: a */
    public static void m36304a(boolean z) {
        f15232d = z;
    }

    /* renamed from: b */
    public static String m36302b(Context context) {
        try {
            if (TextUtils.isEmpty(f15230b)) {
                File file = new File(context.getCacheDir(), "VAdNetSdk");
                file.mkdirs();
                f15230b = file.getAbsolutePath();
            }
        } catch (Throwable th) {
            C4221o.m36107a(th, "init adnetsdk default directory error ", new Object[0]);
        }
        return f15230b;
    }

    /* renamed from: b */
    public static boolean m36303b() {
        return f15232d;
    }

    /* renamed from: c */
    public static void m36301c() {
        C4228d.m36088a(C4228d.EnumC4230a.DEBUG);
    }

    /* renamed from: d */
    public static AbstractC4186a m36300d() {
        return f15233e;
    }
}
