package p193e.p194a.p1266t4.p1267e;

import android.media.AudioManager;
import s1.z.c.l;
/* renamed from: e.a.t4.e.a */
/* loaded from: classes12-dex2jar.jar:e/a/t4/e/a.class */
public final class C20562a implements AbstractC20563b {

    /* renamed from: a */
    public Integer f57649a;

    /* renamed from: b */
    public Integer f57650b;

    /* renamed from: c */
    public final AudioManager f57651c;

    public C20562a(AudioManager audioManager) {
        l.e(audioManager, "audioManager");
        this.f57651c = audioManager;
    }

    @Override // p193e.p194a.p1266t4.p1267e.AbstractC20563b
    /* renamed from: a */
    public void mo11032a() {
        Integer num = this.f57649a;
        Integer num2 = this.f57650b;
        if (num != null) {
            try {
                this.f57651c.setRingerMode(num.intValue());
                m11033c(num);
                this.f57649a = null;
            } catch (SecurityException e) {
            }
        }
        if (num2 != null) {
            try {
                this.f57651c.setStreamMute(2, false);
                this.f57651c.setStreamVolume(2, num2.intValue(), 0);
                String str = "Changed STREAM_RING back to Volume " + num2;
                this.f57650b = null;
            } catch (SecurityException e2) {
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x002d, code lost:
        if ((r3.f57651c.getRingerMode() == 1) == false) goto L15;
     */
    @Override // p193e.p194a.p1266t4.p1267e.AbstractC20563b
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo11031b() {
        /*
            r3 = this;
            r0 = r3
            android.media.AudioManager r0 = r0.f57651c
            r1 = 2
            int r0 = r0.getStreamVolume(r1)
            r4 = r0
            r0 = 1
            r5 = r0
            r0 = r4
            if (r0 != 0) goto L14
            r0 = 1
            r4 = r0
            goto L16
        L14:
            r0 = 0
            r4 = r0
        L16:
            r0 = r4
            if (r0 == 0) goto L33
            r0 = r3
            android.media.AudioManager r0 = r0.f57651c
            int r0 = r0.getRingerMode()
            r1 = 1
            if (r0 != r1) goto L2a
            r0 = 1
            r4 = r0
            goto L2c
        L2a:
            r0 = 0
            r4 = r0
        L2c:
            r0 = r4
            if (r0 != 0) goto L33
            goto L35
        L33:
            r0 = 0
            r5 = r0
        L35:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1266t4.p1267e.C20562a.mo11031b():boolean");
    }

    /* renamed from: c */
    public final String m11033c(Integer num) {
        return (num != null && num.intValue() == 0) ? "RINGER_MODE_SILENT" : (num != null && num.intValue() == 1) ? "RINGER_MODE_VIBRATE" : (num != null && num.intValue() == 2) ? "RINGER_MODE_NORMAL" : null;
    }

    @Override // p193e.p194a.p1266t4.p1267e.AbstractC20563b
    /* renamed from: d */
    public void mo11030d() {
        if (this.f57649a == null) {
            if (!(this.f57651c.getRingerMode() == 0)) {
                this.f57649a = Integer.valueOf(this.f57651c.getRingerMode());
                try {
                    this.f57651c.setRingerMode(0);
                    m11033c(this.f57649a);
                } catch (SecurityException e) {
                }
            }
        }
        if (this.f57650b != null || this.f57651c.getStreamVolume(2) == 0) {
            return;
        }
        this.f57650b = Integer.valueOf(this.f57651c.getStreamVolume(2));
        try {
            this.f57651c.setStreamMute(2, true);
            String str = "Muted STREAM_RING from Volume " + this.f57650b;
        } catch (SecurityException e2) {
        }
    }
}
