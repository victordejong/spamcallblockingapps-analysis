package p193e.p194a.p1365y.p1388f;

import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import android.text.TextUtils;
import com.razorpay.AnalyticsConstants;
import com.truecaller.flashsdk.core.KidFlashService;
import com.truecaller.flashsdk.models.Flash;
import com.truecaller.flashsdk.models.Payload;
import com.truecaller.flashsdk.models.Sender;
import e.m.e.k;
import java.util.Locale;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1365y.p1382c.AbstractC21631b;
import p193e.p194a.p1365y.p1382c.C21632c;
import p193e.p194a.p1365y.p1390h.AbstractC21747a;
/* renamed from: e.a.y.f.a */
/* loaded from: classes9-dex2jar.jar:e/a/y/f/a.class */
public class C21742a {

    /* renamed from: a */
    public final Context f60554a;

    /* renamed from: b */
    public final k f60555b;

    /* renamed from: c */
    public final AbstractC21747a f60556c;

    public C21742a(Context context, k kVar, AbstractC21747a abstractC21747a) {
        this.f60554a = context;
        this.f60555b = kVar;
        this.f60556c = abstractC21747a;
    }

    /* renamed from: a */
    public void m9139a(Map<String, String> map, String str) {
        Flash flash;
        AbstractC21631b m9330b = C21632c.m9330b();
        k kVar = this.f60555b;
        if (!map.containsKey(AnalyticsConstants.SENDER) || !map.containsKey("payload") || !map.containsKey("timestamp")) {
            flash = null;
        } else {
            Flash flash2 = new Flash();
            flash2.f11991a = (Sender) kVar.f(map.get(AnalyticsConstants.SENDER), Sender.class);
            flash2.f11996f = (Payload) kVar.f(map.get("payload"), Payload.class);
            flash2.f11997g = Long.parseLong(map.get("timestamp"));
            if (map.containsKey("instanceId")) {
                flash2.f11998h = map.get("instanceId");
            } else if (str != null) {
                flash2.f11998h = str;
            }
            if (map.containsKey("history")) {
                flash2.f11995e = map.get("history");
            } else {
                flash2.f11995e = C17891a1.C17902k.m15644T("��");
            }
            if (map.containsKey("state")) {
                flash2.f11994d = map.get("state");
            }
            if (map.containsKey("thread_id")) {
                flash2.f11993c = map.get("thread_id");
            }
            flash = flash2;
            if (map.containsKey("threadId")) {
                flash2.f11993c = map.get("threadId");
                flash = flash2;
            }
        }
        if (flash == null || !flash.m35391c()) {
            return;
        }
        Sender sender = flash.f11991a;
        if (sender != null && sender.m35377c() != null && m9330b.mo9325E(String.format(Locale.ROOT, "+%d", flash.f11991a.m35377c()))) {
            return;
        }
        StringBuilder m8728C = C22128a.m8728C("+");
        m8728C.append(flash.f11991a.m35377c());
        String sb = m8728C.toString();
        if (TextUtils.equals(flash.f11996f.m35382e(), "payment_success")) {
            this.f60556c.mo9132e(flash);
        } else if (TextUtils.equals(flash.f11996f.m35382e(), "call_me_back") && m9330b.mo9303o(sb) < 4) {
            this.f60556c.mo9131f(flash, null);
        } else {
            flash.f11997g = SystemClock.elapsedRealtime();
            Intent intent = new Intent(this.f60554a, KidFlashService.class);
            intent.putExtra("extra_flash", flash);
            this.f60554a.startService(intent);
        }
    }
}
