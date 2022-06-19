package com.truecaller.swish.deeplink;

import android.content.Context;
import android.widget.Toast;
import com.airbnb.deeplinkdispatch.DeepLink;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p765f5.p768g.AbstractC14055b;
import p193e.p194a.p765f5.p768g.AbstractC14058e;
import p193e.p194a.p765f5.p768g.AbstractC14059f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0016\u0010\rJ\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\f\u0010\rR\"\u0010\u0015\u001a\u00020\u000e8��@��X\u0081.¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0017"}, d2 = {"Lcom/truecaller/swish/deeplink/SwishResultActivity;", "Ln3/b/a/h;", "Le/a/f5/g/f;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "", "text", "m", "(Ljava/lang/String;)V", "onDestroy", "()V", "Le/a/f5/g/e;", "d", "Le/a/f5/g/e;", "getPresenter$swish_integration_release", "()Le/a/f5/g/e;", "setPresenter$swish_integration_release", "(Le/a/f5/g/e;)V", "presenter", "<init>", "swish-integration_release"}, k = 1, mv = {1, 4, 1})
@DeepLink({"truecaller://swish"})
/* loaded from: classes14-dex2jar.jar:com/truecaller/swish/deeplink/SwishResultActivity.class */
public final class SwishResultActivity extends AbstractC14055b implements AbstractC14059f {
    @Inject

    /* renamed from: d */
    public AbstractC14058e f15197d;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p765f5.p768g.AbstractC14059f
    /* renamed from: m */
    public void mo20810m(String str) {
        l.e(str, "text");
        Toast.makeText((Context) this, (CharSequence) str, 1).show();
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00bd A[Catch: all -> 0x01a3, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x01a3, blocks: (B:14:0x004b, B:16:0x005a, B:18:0x0066, B:23:0x007d, B:25:0x0086, B:26:0x009a, B:28:0x00a3, B:32:0x00bd, B:34:0x00cb, B:36:0x00d4, B:38:0x00f6, B:40:0x0105, B:42:0x010f, B:44:0x0118, B:46:0x013b, B:52:0x0169), top: B:71:0x004b }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00f6 A[Catch: all -> 0x01a3, TryCatch #0 {all -> 0x01a3, blocks: (B:14:0x004b, B:16:0x005a, B:18:0x0066, B:23:0x007d, B:25:0x0086, B:26:0x009a, B:28:0x00a3, B:32:0x00bd, B:34:0x00cb, B:36:0x00d4, B:38:0x00f6, B:40:0x0105, B:42:0x010f, B:44:0x0118, B:46:0x013b, B:52:0x0169), top: B:71:0x004b }] */
    /* JADX WARN: Removed duplicated region for block: B:74:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCreate(android.os.Bundle r8) {
        /*
            Method dump skipped, instructions count: 470
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.swish.deeplink.SwishResultActivity.onCreate(android.os.Bundle):void");
    }

    public void onDestroy() {
        AbstractC14058e abstractC14058e = this.f15197d;
        if (abstractC14058e == null) {
            l.l("presenter");
            throw null;
        }
        ((AbstractC20574a) abstractC14058e).mo9806c();
        SwishResultActivity.super.onDestroy();
    }
}
