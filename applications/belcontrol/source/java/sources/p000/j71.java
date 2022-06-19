package p000;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.AudioDeviceInfo;
import android.media.AudioManager;
import android.telecom.CallAudioState;
import java.util.ArrayList;
import java.util.List;
@TargetApi(23)
/* renamed from: j71 */
/* loaded from: classes3-dex2jar.jar:j71.class */
public class j71 {

    /* renamed from: c */
    public static final j71 f6805c = new j71();

    /* renamed from: a */
    public final List<AbstractC1450a> f6806a = new ArrayList();

    /* renamed from: b */
    public CallAudioState f6807b = new CallAudioState(false, 1, 15);

    /* renamed from: j71$a */
    /* loaded from: classes3-dex2jar.jar:j71$a.class */
    public interface AbstractC1450a {
        /* renamed from: d */
        void mo1531d(CallAudioState callAudioState);
    }

    /* renamed from: b */
    public static int m1537b(Context context) {
        boolean z = false;
        boolean z2 = false;
        for (AudioDeviceInfo audioDeviceInfo : ((AudioManager) context.getSystemService(AudioManager.class)).getDevices(2)) {
            int type = audioDeviceInfo.getType();
            if (type == 3) {
                z2 = true;
            } else if (type == 7 || type == 8) {
                z = true;
            }
        }
        if (z) {
            return 2;
        }
        return z2 ? 4 : 1;
    }

    /* renamed from: d */
    public static j71 m1535d() {
        return f6805c;
    }

    /* renamed from: a */
    public void m1538a(AbstractC1450a abstractC1450a) {
        if (!this.f6806a.contains(abstractC1450a)) {
            this.f6806a.add(abstractC1450a);
            abstractC1450a.mo1531d(this.f6807b);
        }
    }

    /* renamed from: c */
    public CallAudioState m1536c() {
        return this.f6807b;
    }

    /* renamed from: e */
    public void m1534e(Context context) {
        m1533f(new CallAudioState(false, m1537b(context), 15));
    }

    /* renamed from: f */
    public void m1533f(CallAudioState callAudioState) {
        if (!this.f6807b.equals(callAudioState)) {
            this.f6807b = callAudioState;
            for (AbstractC1450a abstractC1450a : this.f6806a) {
                abstractC1450a.mo1531d(callAudioState);
            }
        }
    }

    /* renamed from: g */
    public void m1532g(AbstractC1450a abstractC1450a) {
        this.f6806a.remove(abstractC1450a);
    }
}
