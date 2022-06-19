package p262v3;

import android.graphics.Typeface;
import android.support.p012v4.media.AbstractC0081a;
import android.text.TextPaint;
import java.lang.ref.WeakReference;
import p304z3.C5072d;
/* renamed from: v3.n */
/* loaded from: classes-dex2jar.jar:v3/n.class */
public class C4630n {

    /* renamed from: c */
    public float f14319c;

    /* renamed from: e */
    public WeakReference<AbstractC4632b> f14321e;

    /* renamed from: f */
    public C5072d f14322f;

    /* renamed from: a */
    public final TextPaint f14317a = new TextPaint(1);

    /* renamed from: b */
    public final AbstractC0081a f14318b = new C4631a();

    /* renamed from: d */
    public boolean f14320d = true;

    /* renamed from: v3.n$a */
    /* loaded from: classes-dex2jar.jar:v3/n$a.class */
    public class C4631a extends AbstractC0081a {
        public C4631a() {
            C4630n.this = r4;
        }

        @Override // android.support.p012v4.media.AbstractC0081a
        /* renamed from: A */
        public void mo58A(int i) {
            C4630n c4630n = C4630n.this;
            c4630n.f14320d = true;
            AbstractC4632b abstractC4632b = c4630n.f14321e.get();
            if (abstractC4632b != null) {
                abstractC4632b.mo691a();
            }
        }

        @Override // android.support.p012v4.media.AbstractC0081a
        /* renamed from: B */
        public void mo57B(Typeface typeface, boolean z) {
            if (z) {
                return;
            }
            C4630n c4630n = C4630n.this;
            c4630n.f14320d = true;
            AbstractC4632b abstractC4632b = c4630n.f14321e.get();
            if (abstractC4632b == null) {
                return;
            }
            abstractC4632b.mo691a();
        }
    }

    /* renamed from: v3.n$b */
    /* loaded from: classes-dex2jar.jar:v3/n$b.class */
    public interface AbstractC4632b {
        /* renamed from: a */
        void mo691a();

        int[] getState();

        boolean onStateChange(int[] iArr);
    }

    public C4630n(AbstractC4632b abstractC4632b) {
        this.f14321e = new WeakReference<>(null);
        this.f14321e = new WeakReference<>(abstractC4632b);
    }

    /* renamed from: a */
    public float m692a(String str) {
        if (!this.f14320d) {
            return this.f14319c;
        }
        float measureText = str == null ? 0.0f : this.f14317a.measureText((CharSequence) str, 0, str.length());
        this.f14319c = measureText;
        this.f14320d = false;
        return measureText;
    }
}
