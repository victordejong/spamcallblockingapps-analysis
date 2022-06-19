package com.truecaller.deeplink;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Toast;
import com.truecaller.C2752R;
import com.truecaller.TrueApp;
import com.truecaller.p183ui.TruecallerInit;
import java.util.ArrayList;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC16444k2;
import p193e.p194a.p1365y.p1382c.C21632c;
import p193e.p194a.p372b0.p430q.C8572b0;
import p193e.p194a.p372b0.p430q.C8604n;
import p193e.p194a.p937j4.p939b.p940a.C15571h;
import w3.c.a.a.a.h;
/* loaded from: classes8-dex2jar.jar:com/truecaller/deeplink/DeepLinkHandlerActivity.class */
public class DeepLinkHandlerActivity extends Activity {
    /* JADX WARN: Code restructure failed: missing block: B:101:0x02be, code lost:
        if (r0.equals("www.truecaller.com") != false) goto L102;
     */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x018a  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0293  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0298  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m35442a() {
        /*
            Method dump skipped, instructions count: 2130
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.deeplink.DeepLinkHandlerActivity.m35442a():void");
    }

    /* renamed from: b */
    public final void m35441b(String str, String str2, String str3, String str4, String str5, String str6, boolean z, String str7) {
        if (!C15571h.m18632s()) {
            Toast.makeText(this, (int) C2752R.string.enable_flash_in_settings, 0).show();
            return;
        }
        if (!h.j(str) && str.trim().length() > 7) {
            String trim = str.trim();
            AbstractC15539j2 mo10154s = ((TrueApp) getApplicationContext()).mo10154s();
            if (mo10154s.mo12805A3().mo9316b(C8572b0.m28372g(trim, C8604n.m28242c(this))).f60563c) {
                try {
                    if (h.j(str4) || h.j(str5) || h.j(str3) || h.j(str7)) {
                        C21632c.m9330b().mo9319K(this, Long.parseLong(trim), str2, "deepLink");
                        return;
                    } else {
                        C21632c.m9330b().mo9326D(this, Long.parseLong(trim), str2, "deepLink", str4, str5, str3, z, str7);
                        return;
                    }
                } catch (NumberFormatException e) {
                }
            }
        }
        Intent mo9322H = C21632c.m9330b().mo9322H(this, str4, str5, str3, str6, z, str7);
        ArrayList arrayList = new ArrayList();
        arrayList.add(TruecallerInit.m34554wa(this, "flashShare"));
        arrayList.add(mo9322H);
        if (arrayList.isEmpty()) {
            throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
        }
        Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[arrayList.size()]);
        intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
        Object obj = C26467a.f74235a;
        C26467a.C26468a.m1795a(this, intentArr, null);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        AbstractC16444k2.f46188a.m17389a().mo11367z(this);
        m35442a();
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        m35442a();
    }
}
