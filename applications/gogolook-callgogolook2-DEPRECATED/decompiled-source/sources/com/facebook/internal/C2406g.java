package com.facebook.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.facebook.FacebookActivity;
import com.facebook.internal.C2372a0;
import com.facebook.internal.C2464o;
import p081h.p154f.C6131k;
import p081h.p154f.C6135n;
/* renamed from: com.facebook.internal.g */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/g.class */
public class C2406g {

    /* renamed from: com.facebook.internal.g$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/g$a.class */
    public interface AbstractC2407a {
        /* renamed from: a */
        Bundle mo33979a();

        Bundle getParameters();
    }

    /* renamed from: a */
    public static void m34888a(C2371a aVar) {
        m34879b(aVar, new C6131k("Unable to show the provided content via the web or the installed version of the Facebook app. Some dialogs are only supported starting API 14."));
    }

    /* renamed from: a */
    public static void m34887a(C2371a aVar, Activity activity) {
        activity.startActivityForResult(aVar.m34977c(), aVar.m34978b());
        aVar.m34976d();
    }

    /* renamed from: a */
    public static void m34886a(C2371a aVar, Bundle bundle, AbstractC2404f fVar) {
        C2416h0.m34783c(C6135n.m23746e());
        C2416h0.m34781d(C6135n.m23746e());
        String name = fVar.name();
        Uri b = m34878b(fVar);
        if (b != null) {
            Bundle a = C2401d0.m34898a(aVar.m34982a().toString(), C2372a0.m34945f(), bundle);
            if (a != null) {
                Uri a2 = b.isRelative() ? C2408g0.m34851a(C2401d0.m34897b(), b.toString(), a) : C2408g0.m34851a(b.getAuthority(), b.getPath(), a);
                Bundle bundle2 = new Bundle();
                bundle2.putString("url", a2.toString());
                bundle2.putBoolean("is_fallback", true);
                Intent intent = new Intent();
                C2372a0.m34966a(intent, aVar.m34982a().toString(), fVar.mo34024b(), C2372a0.m34945f(), bundle2);
                intent.setClass(C6135n.m23746e(), FacebookActivity.class);
                intent.setAction("FacebookDialogFragment");
                aVar.m34981a(intent);
                return;
            }
            throw new C6131k("Unable to fetch the app's key-hash");
        }
        throw new C6131k("Unable to fetch the Url for the DialogFeature : '" + name + "'");
    }

    /* renamed from: a */
    public static void m34885a(C2371a aVar, AbstractC2407a aVar2, AbstractC2404f fVar) {
        Context e = C6135n.m23746e();
        String b = fVar.mo34024b();
        C2372a0.C2379g c = m34877c(fVar);
        int a = c.m34938a();
        if (a != -1) {
            Bundle parameters = C2372a0.m34957b(a) ? aVar2.getParameters() : aVar2.mo33979a();
            Bundle bundle = parameters;
            if (parameters == null) {
                bundle = new Bundle();
            }
            Intent a2 = C2372a0.m34970a(e, aVar.m34982a().toString(), b, c, bundle);
            if (a2 != null) {
                aVar.m34981a(a2);
                return;
            }
            throw new C6131k("Unable to create Intent; this likely means theFacebook app is not installed.");
        }
        throw new C6131k("Cannot present this dialog. This likely means that the Facebook app is not installed.");
    }

    /* renamed from: a */
    public static void m34884a(C2371a aVar, C2486r rVar) {
        rVar.m34604a(aVar.m34977c(), aVar.m34978b());
        aVar.m34976d();
    }

    /* renamed from: a */
    public static void m34883a(C2371a aVar, C6131k kVar) {
        if (kVar != null) {
            C2416h0.m34783c(C6135n.m23746e());
            Intent intent = new Intent();
            intent.setClass(C6135n.m23746e(), FacebookActivity.class);
            intent.setAction(FacebookActivity.f2547b);
            C2372a0.m34966a(intent, aVar.m34982a().toString(), (String) null, C2372a0.m34945f(), C2372a0.m34962a(kVar));
            aVar.m34981a(intent);
        }
    }

    /* renamed from: a */
    public static void m34882a(C2371a aVar, String str, Bundle bundle) {
        C2416h0.m34783c(C6135n.m23746e());
        C2416h0.m34781d(C6135n.m23746e());
        Bundle bundle2 = new Bundle();
        bundle2.putString("action", str);
        bundle2.putBundle("params", bundle);
        Intent intent = new Intent();
        C2372a0.m34966a(intent, aVar.m34982a().toString(), str, C2372a0.m34945f(), bundle2);
        intent.setClass(C6135n.m23746e(), FacebookActivity.class);
        intent.setAction("FacebookDialogFragment");
        aVar.m34981a(intent);
    }

    /* renamed from: a */
    public static boolean m34881a(AbstractC2404f fVar) {
        return m34877c(fVar).m34938a() != -1;
    }

    /* renamed from: a */
    public static int[] m34880a(String str, String str2, AbstractC2404f fVar) {
        C2464o.C2465a a = C2464o.m34666a(str, str2, fVar.name());
        return a != null ? a.m34647d() : new int[]{fVar.mo34025a()};
    }

    /* renamed from: b */
    public static Uri m34878b(AbstractC2404f fVar) {
        C2464o.C2465a a = C2464o.m34666a(C6135n.m23745f(), fVar.mo34024b(), fVar.name());
        return a != null ? a.m34649b() : null;
    }

    /* renamed from: b */
    public static void m34879b(C2371a aVar, C6131k kVar) {
        m34883a(aVar, kVar);
    }

    /* renamed from: c */
    public static C2372a0.C2379g m34877c(AbstractC2404f fVar) {
        String f = C6135n.m23745f();
        String b = fVar.mo34024b();
        return C2372a0.m34961a(b, m34880a(f, b, fVar));
    }
}
