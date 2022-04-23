package p459j.p460a.p582w0.p593y4;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.WorkerThread;
import gogolook.callgogolook2.R$string;
import p081h.p160h.p179e.p180a.p184j.C6364a;
import p081h.p160h.p179e.p180a.p184j.C6367b;
import p459j.p460a.p582w0.C13884a4;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14092n3;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p596x.p598l.C14422j;
import p459j.p460a.p613z0.DialogC14628h;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.w0.y4.a */
/* loaded from: classes3-dex2jar.jar:j/a/w0/y4/a.class */
public final class C14321a {
    static {
        new C14321a();
    }

    @WorkerThread
    /* renamed from: a */
    public static final int m1581a(C14422j jVar) {
        C15149k.m377b(jVar, "authData");
        m1579b(jVar);
        C6367b a = C6367b.m22958a("whoscall", C14017g4.m2810n(), jVar.m1375c(), jVar.m1377a(), jVar.m1373e());
        if (jVar.m1375c() == 2) {
            if (jVar.m1374d().length() > 0) {
                a.m22959a("fb_email", jVar.m1374d());
            }
        }
        return C6364a.m22987a(a);
    }

    /* renamed from: a */
    public static final Dialog m1582a(Context context) {
        C15149k.m377b(context, "context");
        DialogC14628h hVar = new DialogC14628h(context, (int) R$string.commit_waiting);
        hVar.setCancelable(true);
        hVar.setCanceledOnTouchOutside(false);
        return hVar;
    }

    /* renamed from: b */
    public static final void m1580b(Context context) {
        C15149k.m377b(context, "context");
        Bundle bundle = new Bundle();
        bundle.putBoolean("with_extra_info", false);
        bundle.putString("title_postfix", "Whoscall - " + C14206w4.m2225a((int) R$string.intro_verify_dialogue_cs));
        bundle.putInt("category_id", 9);
        C13884a4.m3187a(context, 3, bundle, (C13884a4.AbstractC13890d) null);
    }

    /* renamed from: b */
    public static final void m1579b(C14422j jVar) {
        if (jVar.m1375c() == 1) {
            C14092n3.m2583b("google_id", jVar.m1377a());
        }
    }
}
