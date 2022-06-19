package p193e.p194a.p1114o5;

import android.content.BroadcastReceiver;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import android.telephony.TelephonyManager;
import com.truecaller.notifications.NotificationHandlerService;
import com.truecaller.util.CallMonitoringReceiver;
import java.util.Objects;
import javax.inject.Inject;
import p1727n3.p1872x.p1873a.C27062a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p372b0.p430q.C8604n;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p937j4.p939b.p940a.C15571h;
/* renamed from: e.a.o5.g0 */
/* loaded from: classes15-dex2jar.jar:e/a/o5/g0.class */
public class C19029g0 implements AbstractC19022f0 {

    /* renamed from: a */
    public final Context f53152a;

    @Inject
    public C19029g0(Context context) {
        this.f53152a = context;
    }

    @Override // p193e.p194a.p1114o5.AbstractC19022f0
    /* renamed from: Q0 */
    public boolean mo14246Q0() {
        Objects.requireNonNull((AbstractApplicationC8442a) this.f53152a.getApplicationContext());
        return true;
    }

    @Override // p193e.p194a.p1114o5.AbstractC19022f0
    /* renamed from: a */
    public boolean mo14245a() {
        return ((AbstractApplicationC8442a) this.f53152a.getApplicationContext()).mo28540W();
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    @Override // p193e.p194a.p1114o5.AbstractC19022f0
    /* renamed from: b */
    public long mo14244b() {
        char c;
        Context context = this.f53152a;
        try {
            c = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).firstInstallTime;
        } catch (Exception e) {
            C10480a.m26061I1(e);
            c = 0;
        }
        return c;
    }

    @Override // p193e.p194a.p1114o5.AbstractC19022f0
    /* renamed from: c */
    public boolean mo14243c() {
        return !CallMonitoringReceiver.f15941a.equals(TelephonyManager.EXTRA_STATE_IDLE);
    }

    @Override // p193e.p194a.p1114o5.AbstractC19022f0
    /* renamed from: d */
    public String mo14242d() {
        Configuration configuration = this.f53152a.getResources().getConfiguration();
        return (Build.VERSION.SDK_INT >= 24 ? configuration.getLocales().get(0) : configuration.locale).getLanguage();
    }

    @Override // p193e.p194a.p1114o5.AbstractC19022f0
    /* renamed from: e */
    public void mo14241e(BroadcastReceiver broadcastReceiver, String... strArr) {
        C19291g.m13572Y0(this.f53152a, broadcastReceiver, strArr);
    }

    @Override // p193e.p194a.p1114o5.AbstractC19022f0
    /* renamed from: f */
    public boolean mo14240f() {
        return C8604n.m28240e(this.f53152a);
    }

    @Override // p193e.p194a.p1114o5.AbstractC19022f0
    /* renamed from: g */
    public boolean mo14239g() {
        int i = NotificationHandlerService.f14082j;
        boolean z = false;
        if (i == 0) {
            return false;
        }
        if (i != 1) {
            z = true;
        }
        return z;
    }

    @Override // p193e.p194a.p1114o5.AbstractC19022f0
    /* renamed from: h */
    public void mo14238h(BroadcastReceiver broadcastReceiver) {
        C27062a.m968b(this.f53152a).m965e(broadcastReceiver);
    }

    @Override // p193e.p194a.p1114o5.AbstractC19022f0
    /* renamed from: i */
    public String mo14237i() {
        ClipboardManager clipboardManager = (ClipboardManager) this.f53152a.getSystemService("clipboard");
        String str = null;
        if (clipboardManager != null) {
            ClipData primaryClip = clipboardManager.getPrimaryClip();
            str = null;
            if (primaryClip != null) {
                str = null;
                if (primaryClip.getItemCount() > 0) {
                    CharSequence text = primaryClip.getItemAt(0).getText();
                    str = text == null ? null : text.toString();
                }
            }
        }
        return str;
    }

    @Override // p193e.p194a.p1114o5.AbstractC19022f0
    /* renamed from: j */
    public void mo14236j(Intent intent) {
        C27062a.m968b(this.f53152a).m966d(intent);
    }

    @Override // p193e.p194a.p1114o5.AbstractC19022f0
    /* renamed from: k */
    public Uri mo14235k(long j, String str, boolean z) {
        return C12864a2.m22593A(j, str, z);
    }

    @Override // p193e.p194a.p1114o5.AbstractC19022f0
    /* renamed from: l */
    public void mo14234l(String str, String str2) {
        C12864a2.m22560d0(this.f53152a, str2, str);
    }

    @Override // p193e.p194a.p1114o5.AbstractC19022f0
    /* renamed from: m */
    public boolean mo14233m() {
        return C15571h.m18636o("initialContactsSyncComplete");
    }

    @Override // p193e.p194a.p1114o5.AbstractC19022f0
    /* renamed from: n */
    public int mo14232n() {
        return ((AudioManager) this.f53152a.getSystemService("audio")).getRingerMode();
    }
}
