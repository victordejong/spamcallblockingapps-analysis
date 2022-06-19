package p1727n3.p1874y.p1906c;

import android.os.Build;
import android.util.SparseIntArray;
import androidx.media.AudioAttributesCompat;
import androidx.media.AudioAttributesImplApi21$a;
import androidx.media.AudioAttributesImplApi26;
import java.util.concurrent.Callable;
import p1727n3.p1874y.p1876b.p1877a.p1879n0.C27113c;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27181i;
/* renamed from: n3.y.c.m$a */
/* loaded from: classes-dex2jar.jar:n3/y/c/m$a.class */
public class m$a implements Callable<AudioAttributesCompat> {

    /* renamed from: a */
    public final /* synthetic */ m f77380a;

    public m$a(m mVar) {
        this.f77380a = mVar;
    }

    @Override // java.util.concurrent.Callable
    public AudioAttributesCompat call() throws Exception {
        AudioAttributesCompat audioAttributesCompat;
        C27477j0 c27477j0 = this.f77380a.a;
        if (c27477j0.f77354l) {
            C27113c c27113c = c27477j0.f77349g.s;
            AbstractC27181i abstractC27181i = C27474h0.f77339a;
            SparseIntArray sparseIntArray = AudioAttributesCompat.f925b;
            AudioAttributesImplApi21$a aVar = Build.VERSION.SDK_INT >= 26 ? new AudioAttributesImplApi26.a() : new AudioAttributesImplApi21$a();
            aVar.f927a.setContentType(c27113c.f75820a);
            aVar.f927a.setFlags(c27113c.f75821b);
            aVar.mo42855a(c27113c.f75822c);
            audioAttributesCompat = new AudioAttributesCompat(aVar.build());
        } else {
            audioAttributesCompat = null;
        }
        return audioAttributesCompat;
    }
}
