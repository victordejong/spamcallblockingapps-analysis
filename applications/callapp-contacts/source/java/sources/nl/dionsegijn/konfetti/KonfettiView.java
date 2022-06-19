package nl.dionsegijn.konfetti;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.p530f.C18363d;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import nl.dionsegijn.konfetti.models.Vector;
import nl.dionsegijn.konfetti.p574a.C20702b;
import nl.dionsegijn.konfetti.p575b.AbstractC20708a;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0016\u0018��2\u00020\u0001:\u0001#B\u0011\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004B\u001b\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007B#\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0006\u0010\u0016\u001a\u00020\u0013J\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012J\u0006\u0010\u0018\u001a\u00020\u0019J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0014J\u0006\u0010\u001e\u001a\u00020\u001bJ\u000e\u0010\u001f\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\u0013J\u000e\u0010!\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\u0013J\u0006\u0010\"\u001a\u00020\u001bR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n��¨\u0006$"}, m4298d2 = {"Lnl/dionsegijn/konfetti/KonfettiView;", "Landroid/view/View;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "onParticleSystemUpdateListener", "Lnl/dionsegijn/konfetti/listeners/OnParticleSystemUpdateListener;", "getOnParticleSystemUpdateListener", "()Lnl/dionsegijn/konfetti/listeners/OnParticleSystemUpdateListener;", "setOnParticleSystemUpdateListener", "(Lnl/dionsegijn/konfetti/listeners/OnParticleSystemUpdateListener;)V", "systems", "", "Lnl/dionsegijn/konfetti/ParticleSystem;", "timer", "Lnl/dionsegijn/konfetti/KonfettiView$TimerIntegration;", JsonPOJOBuilder.DEFAULT_BUILD_METHOD, "getActiveSystems", "isActive", "", "onDraw", "", "canvas", "Landroid/graphics/Canvas;", "reset", EventConstants.START, "particleSystem", "stop", "stopGracefully", "TimerIntegration", "konfetti_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:nl/dionsegijn/konfetti/KonfettiView.class */
public class KonfettiView extends View {

    /* renamed from: b */
    public AbstractC20708a f67093b;

    /* renamed from: a */
    public final List<C20707b> f67092a = new ArrayList();

    /* renamed from: c */
    private C20699a f67094c = new C20699a();

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0004J\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u000b"}, m4298d2 = {"Lnl/dionsegijn/konfetti/KonfettiView$TimerIntegration;", "", "()V", "previousTime", "", "getDeltaTime", "", "getTotalTimeRunning", "startTime", "reset", "", "konfetti_release"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: nl.dionsegijn.konfetti.KonfettiView$a */
    /* loaded from: classes5-dex2jar.jar:nl/dionsegijn/konfetti/KonfettiView$a.class */
    public static final class C20699a {

        /* renamed from: a */
        long f67095a = -1;
    }

    public KonfettiView(Context context) {
        super(context);
    }

    public KonfettiView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public KonfettiView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        C18524p.m3840d(canvas, "canvas");
        super.onDraw(canvas);
        C20699a c20699a = this.f67094c;
        if (c20699a.f67095a == -1) {
            c20699a.f67095a = System.nanoTime();
        }
        long nanoTime = System.nanoTime();
        c20699a.f67095a = nanoTime;
        float f = (((float) (nanoTime - c20699a.f67095a)) / 1000000.0f) / 1000.0f;
        for (int size = this.f67092a.size() - 1; size >= 0; size--) {
            C20707b c20707b = this.f67092a.get(size);
            if (System.currentTimeMillis() - c20707b.m620a().f67123e >= c20707b.f67145f.getDelay()) {
                C20702b m620a = c20707b.m620a();
                C18524p.m3840d(canvas, "canvas");
                if (m620a.f67119a) {
                    m620a.f67122d.mo622a(f);
                }
                for (int size2 = m620a.f67120b.size() - 1; size2 >= 0; size2--) {
                    C20700a c20700a = m620a.f67120b.get(size2);
                    Vector force = m620a.f67121c;
                    C18524p.m3840d(force, "force");
                    c20700a.f67110o.addScaled(force, 1.0f / c20700a.f67097b);
                    C18524p.m3840d(canvas, "canvas");
                    if (c20700a.f67112q && (c20700a.f67110o.getY() < c20700a.f67113r || c20700a.f67113r == -1.0f)) {
                        c20700a.f67111p.add(c20700a.f67110o);
                    }
                    if (c20700a.f67114s) {
                        c20700a.f67105j.addScaled(c20700a.f67111p, c20700a.f67103h * f * c20700a.f67096a);
                    } else {
                        c20700a.f67105j.addScaled(c20700a.f67111p, c20700a.f67103h * f);
                    }
                    if (c20700a.f67108m <= 0) {
                        c20700a.f67104i = c20700a.f67109n ? C18363d.m4051c(c20700a.f67104i - ((int) ((5.0f * f) * c20700a.f67103h)), 0) : 0;
                    } else {
                        c20700a.f67108m -= f * 1000.0f;
                    }
                    float f2 = c20700a.f67100e * f * c20700a.f67103h;
                    c20700a.f67101f += f2;
                    if (c20700a.f67101f >= 360.0f) {
                        c20700a.f67101f = BitmapDescriptorFactory.HUE_RED;
                    }
                    c20700a.f67102g -= f2;
                    if (c20700a.f67102g < BitmapDescriptorFactory.HUE_RED) {
                        c20700a.f67102g = c20700a.f67098c;
                    }
                    if (c20700a.f67105j.getY() > canvas.getHeight()) {
                        c20700a.f67108m = 0L;
                    } else if (c20700a.f67105j.getX() <= canvas.getWidth() && c20700a.f67105j.getX() + c20700a.f67098c >= BitmapDescriptorFactory.HUE_RED && c20700a.f67105j.getY() + c20700a.f67098c >= BitmapDescriptorFactory.HUE_RED) {
                        c20700a.f67099d.setColor((c20700a.f67104i << 24) | (c20700a.f67106k & 16777215));
                        float abs = Math.abs((c20700a.f67102g / c20700a.f67098c) - 0.5f) * 2.0f;
                        float f3 = (c20700a.f67098c * abs) / 2.0f;
                        int save = canvas.save();
                        canvas.translate(c20700a.f67105j.getX() - f3, c20700a.f67105j.getY());
                        canvas.rotate(c20700a.f67101f, f3, c20700a.f67098c / 2.0f);
                        canvas.scale(abs, 1.0f);
                        c20700a.f67107l.draw(canvas, c20700a.f67099d, c20700a.f67098c);
                        canvas.restoreToCount(save);
                    }
                }
                C18282n.m4156a((List) m620a.f67120b, (Function1) C20702b.C20704a.f67131a);
            }
            C20702b c20702b = c20707b.f67147h;
            if (c20702b == null) {
                C18524p.m3848a("renderSystem");
            }
            if ((c20702b.f67122d.mo623a() && c20702b.f67120b.size() == 0) || (!c20702b.f67119a && c20702b.f67120b.size() == 0)) {
                this.f67092a.remove(size);
                if (this.f67093b != null) {
                    this.f67092a.size();
                }
            }
        }
        if (this.f67092a.size() != 0) {
            invalidate();
        } else {
            this.f67094c.f67095a = -1L;
        }
    }

    public final void setOnParticleSystemUpdateListener(AbstractC20708a abstractC20708a) {
        this.f67093b = abstractC20708a;
    }
}
