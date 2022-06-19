package p000;

import android.content.Intent;
import android.os.Build;
import android.view.KeyEvent;
import com.android.internal.telephony.PhoneConstants;
import p000.fa1;
/* renamed from: k71 */
/* loaded from: classes3-dex2jar.jar:k71.class */
public abstract class k71 {

    /* renamed from: a */
    public boolean f6845a = false;

    /* renamed from: f */
    public void m1433f() {
        if (Build.VERSION.SDK_INT < 26) {
            fa1.C1420e.m1806i().answerRingingCall();
        } else {
            fa1.C1420e.m1803l().acceptRingingCall();
        }
    }

    /* renamed from: g */
    public void m1432g() {
        Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
        intent.putExtra("android.intent.extra.KEY_EVENT", new KeyEvent(0, 5));
        fa1.m1840j().sendOrderedBroadcast(intent, null);
        Intent intent2 = new Intent("android.intent.action.MEDIA_BUTTON");
        intent2.putExtra("android.intent.extra.KEY_EVENT", new KeyEvent(1, 5));
        fa1.m1840j().sendOrderedBroadcast(intent2, null);
    }

    /* renamed from: h */
    public void m1431h() {
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                Runtime.getRuntime().exec("input keyevent 79");
                Thread.sleep(2000L);
                return;
            } catch (Throwable th) {
                j91.m1504l(this, "Oops", th);
                return;
            }
        }
        m1428m();
        Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
        intent.putExtra("android.intent.extra.KEY_EVENT", new KeyEvent(0, 79));
        fa1.m1840j().sendOrderedBroadcast(intent, null);
        Intent intent2 = new Intent("android.intent.action.MEDIA_BUTTON");
        intent2.putExtra("android.intent.extra.KEY_EVENT", new KeyEvent(1, 79));
        fa1.m1840j().sendOrderedBroadcast(intent2, null);
    }

    /* renamed from: j */
    public void m1430j() {
        if (Build.VERSION.SDK_INT < 16 && this.f6845a) {
            Intent intent = new Intent("android.intent.action.HEADSET_PLUG");
            intent.putExtra(PhoneConstants.STATE_KEY, 0);
            fa1.m1840j().sendOrderedBroadcast(intent, null);
            intent.putExtra("name", "CallControlHeadset");
            this.f6845a = false;
        }
    }

    /* renamed from: k */
    public void mo1289k() {
        Throwable th;
        try {
            fa1.C1420e.m1806i().endCall();
            th = null;
        } catch (Throwable th2) {
            th = th2;
        }
        m1430j();
        if (th == null) {
            return;
        }
        throw th;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0041, code lost:
        if (r0.isBluetoothA2dpOn() != false) goto L12;
     */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m1429l() {
        /*
            r4 = this;
            android.app.Application r0 = p000.fa1.m1840j()
            java.lang.String r1 = "audio"
            java.lang.Object r0 = r0.getSystemService(r1)
            android.media.AudioManager r0 = (android.media.AudioManager) r0
            r5 = r0
            r0 = r5
            java.lang.Class r0 = r0.getClass()
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r6
            java.lang.String r1 = "isWiredHeadsetOn"
            r2 = 0
            java.lang.reflect.Method r0 = r0.getMethod(r1, r2)     // Catch: java.lang.Exception -> L2a
            r1 = r5
            r2 = 0
            java.lang.Object r0 = r0.invoke(r1, r2)     // Catch: java.lang.Exception -> L2a
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Exception -> L2a
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Exception -> L2a
            r8 = r0
            goto L2e
        L2a:
            r6 = move-exception
            r0 = 0
            r8 = r0
        L2e:
            r0 = r8
            if (r0 != 0) goto L44
            r0 = r5
            boolean r0 = r0.isBluetoothScoOn()
            if (r0 != 0) goto L44
            r0 = r7
            r8 = r0
            r0 = r5
            boolean r0 = r0.isBluetoothA2dpOn()
            if (r0 == 0) goto L47
        L44:
            r0 = 1
            r8 = r0
        L47:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.k71.m1429l():boolean");
    }

    /* renamed from: m */
    public void m1428m() {
        if (Build.VERSION.SDK_INT < 16 && !this.f6845a && !m1429l()) {
            Intent intent = new Intent("android.intent.action.HEADSET_PLUG");
            intent.putExtra(PhoneConstants.STATE_KEY, 1);
            fa1.m1840j().sendOrderedBroadcast(intent, null);
            intent.putExtra("name", "CallControlHeadset");
            this.f6845a = true;
        }
    }
}
