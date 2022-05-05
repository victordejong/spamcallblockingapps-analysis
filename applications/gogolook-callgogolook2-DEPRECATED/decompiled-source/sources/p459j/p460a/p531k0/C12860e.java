package p459j.p460a.p531k0;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Messenger;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import gogolook.callgogolook2.FavoriteReportActivity;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.main.MainActivity;
import p459j.p460a.p461a0.C11052i;
import p459j.p460a.p533l.HandlerC12947l;
import p459j.p460a.p541n0.C13057d;
import p459j.p460a.p567t0.C13625a;
import p459j.p460a.p582w0.C14020h1;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14148s0;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p613z0.p617p.C14687h;
/* renamed from: j.a.k0.e */
/* loaded from: classes3-dex2jar.jar:j/a/k0/e.class */
public class C12860e {
    /* renamed from: a */
    public static void m5133a(@NonNull Context context, @NonNull String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable HandlerC12947l lVar) {
        if (lVar != null) {
            lVar.mo4942b();
        }
        try {
            Intent intent = new Intent(context, FavoriteReportActivity.class);
            Bundle bundle = new Bundle();
            bundle.putString("number", str);
            String str5 = str2;
            if (TextUtils.isEmpty(str2)) {
                str5 = C14108o4.m2474l(str);
            }
            bundle.putString("e164", str5);
            bundle.putString("groupId", str3);
            bundle.putString("from", str4);
            if (lVar != null) {
                bundle.putParcelable("handler", new Messenger(lVar));
            }
            intent.putExtras(bundle);
            C14217x3.m2156c(context, intent);
        } catch (NullPointerException e) {
            C14217x3.m2156c(context, new Intent(context, MainActivity.class));
        }
    }

    /* renamed from: a */
    public static void m5132a(@NonNull Context context, @NonNull String str, @Nullable String str2, boolean z, @Nullable String str3, @Nullable HandlerC12947l lVar) {
        String l = C14108o4.m2474l(str);
        if (!C13057d.m4676c(l)) {
            m5133a(context, str, l, str2, str3, lVar);
        } else if (z) {
            C14687h.m861a(context, C14206w4.m2225a((int) R$string.toast_delete_from_wishlist), 1).m858c();
            C11052i.m10328e().m10344a(l);
            C13625a.m3809a(context, str2, l);
            C14037j3.m2731a().mo2704a(new C14148s0(1, 0, str2));
            C14037j3.m2731a().mo2704a(new C14020h1((String) null));
            if (lVar != null) {
                lVar.mo4944a((Object) null);
            }
        } else {
            C14687h.m861a(context, C14206w4.m2225a((int) R$string.wish_exist), 1).m858c();
        }
    }
}
