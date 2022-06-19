package p000;

import android.media.AudioManager;
import androidx.media.AudioAttributesCompat;
import p000.C1322dv;
/* renamed from: dv$b$a */
/* loaded from: classes-dex2jar.jar:dv$b$a.class */
public class dv$b$a implements AudioManager.OnAudioFocusChangeListener {

    /* renamed from: a */
    public float f6139a;

    /* renamed from: b */
    public float f6140b;

    /* renamed from: c */
    public final /* synthetic */ C1322dv.b f6141c;

    public dv$b$a(C1322dv.b bVar) {
        this.f6141c = bVar;
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public void onAudioFocusChange(int i) {
        if (i == -3) {
            ev evVar = this.f6141c.d;
            synchronized (evVar) {
                try {
                    AudioAttributesCompat audioAttributesCompat = this.f6141c.h;
                    if (audioAttributesCompat == null) {
                        evVar = evVar;
                    } else {
                        boolean z = false;
                        if (audioAttributesCompat.getContentType() == 1) {
                            z = true;
                        }
                        ev evVar2 = this.f6141c.f;
                        if (z) {
                            evVar2.E();
                            evVar = evVar2;
                        } else {
                            float d0 = evVar2.d0();
                            float f = 0.2f * d0;
                            Object obj = this.f6141c.d;
                            synchronized (obj) {
                                this.f6139a = d0;
                                this.f6140b = f;
                            }
                            this.f6141c.f.w0(f);
                            evVar = obj;
                        }
                    }
                } catch (Throwable th) {
                    Object obj2 = evVar;
                    throw th;
                }
            }
        } else if (i == -2) {
            this.f6141c.f.E();
            synchronized (this.f6141c.d) {
                this.f6141c.j = true;
            }
        } else if (i == -1) {
            this.f6141c.f.E();
            synchronized (this.f6141c.d) {
                this.f6141c.j = false;
            }
        } else if (i != 1) {
        } else {
            if (this.f6141c.f.y() == 1) {
                synchronized (this.f6141c.d) {
                    C1322dv.b bVar = this.f6141c;
                    if (bVar.j) {
                        bVar.f.F();
                    }
                }
                return;
            }
            float d02 = this.f6141c.f.d0();
            synchronized (this.f6141c.d) {
                if (d02 == this.f6140b) {
                    this.f6141c.f.w0(this.f6139a);
                }
            }
        }
    }
}
