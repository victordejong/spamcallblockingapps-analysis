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
import kotlin.a.n;
import kotlin.f.d;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import nl.dionsegijn.konfetti.a.b;
import nl.dionsegijn.konfetti.models.Vector;
@Metadata(bv = {1, 0, 3}, d1 = {"��P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0016\u0018��2\u00020\u0001:\u0001#B\u0011\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004B\u001b\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007B#\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0006\u0010\u0016\u001a\u00020\u0013J\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012J\u0006\u0010\u0018\u001a\u00020\u0019J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0014J\u0006\u0010\u001e\u001a\u00020\u001bJ\u000e\u0010\u001f\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\u0013J\u000e\u0010!\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\u0013J\u0006\u0010\"\u001a\u00020\u001bR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n��¨\u0006$"}, d2 = {"Lnl/dionsegijn/konfetti/KonfettiView;", "Landroid/view/View;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "onParticleSystemUpdateListener", "Lnl/dionsegijn/konfetti/listeners/OnParticleSystemUpdateListener;", "getOnParticleSystemUpdateListener", "()Lnl/dionsegijn/konfetti/listeners/OnParticleSystemUpdateListener;", "setOnParticleSystemUpdateListener", "(Lnl/dionsegijn/konfetti/listeners/OnParticleSystemUpdateListener;)V", "systems", "", "Lnl/dionsegijn/konfetti/ParticleSystem;", "timer", "Lnl/dionsegijn/konfetti/KonfettiView$TimerIntegration;", JsonPOJOBuilder.DEFAULT_BUILD_METHOD, "getActiveSystems", "isActive", "", "onDraw", "", "canvas", "Landroid/graphics/Canvas;", "reset", EventConstants.START, "particleSystem", "stop", "stopGracefully", "TimerIntegration", "konfetti_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:nl/dionsegijn/konfetti/KonfettiView.class */
public class KonfettiView extends View {

    /* renamed from: b  reason: collision with root package name */
    public nl.dionsegijn.konfetti.b.a f39092b;

    /* renamed from: a  reason: collision with root package name */
    public final List<b> f39091a = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private a f39093c = new a();

    @Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0004J\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u000b"}, d2 = {"Lnl/dionsegijn/konfetti/KonfettiView$TimerIntegration;", "", "()V", "previousTime", "", "getDeltaTime", "", "getTotalTimeRunning", "startTime", "reset", "", "konfetti_release"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:nl/dionsegijn/konfetti/KonfettiView$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        long f39094a = -1;
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
        p.d(canvas, "canvas");
        super.onDraw(canvas);
        a aVar = this.f39093c;
        if (aVar.f39094a == -1) {
            aVar.f39094a = System.nanoTime();
        }
        long nanoTime = System.nanoTime();
        aVar.f39094a = nanoTime;
        float f = (((float) (nanoTime - aVar.f39094a)) / 1000000.0f) / 1000.0f;
        for (int size = this.f39091a.size() - 1; size >= 0; size--) {
            b bVar = this.f39091a.get(size);
            if (System.currentTimeMillis() - bVar.a().e >= bVar.f.getDelay()) {
                b a2 = bVar.a();
                p.d(canvas, "canvas");
                if (a2.f39100a) {
                    a2.f39103d.a(f);
                }
                for (int size2 = a2.f39101b.size() - 1; size2 >= 0; size2--) {
                    nl.dionsegijn.konfetti.a aVar2 = a2.f39101b.get(size2);
                    Vector force = a2.f39102c;
                    p.d(force, "force");
                    aVar2.o.addScaled(force, 1.0f / aVar2.f39096b);
                    p.d(canvas, "canvas");
                    if (aVar2.q && (aVar2.o.getY() < aVar2.r || aVar2.r == -1.0f)) {
                        aVar2.p.add(aVar2.o);
                    }
                    if (aVar2.s) {
                        aVar2.j.addScaled(aVar2.p, aVar2.h * f * aVar2.f39095a);
                    } else {
                        aVar2.j.addScaled(aVar2.p, aVar2.h * f);
                    }
                    if (aVar2.m <= 0) {
                        aVar2.i = aVar2.n ? d.c(aVar2.i - ((int) ((5.0f * f) * aVar2.h)), 0) : 0;
                    } else {
                        aVar2.m -= f * 1000.0f;
                    }
                    float f2 = aVar2.e * f * aVar2.h;
                    aVar2.f += f2;
                    if (aVar2.f >= 360.0f) {
                        aVar2.f = BitmapDescriptorFactory.HUE_RED;
                    }
                    aVar2.g -= f2;
                    if (aVar2.g < BitmapDescriptorFactory.HUE_RED) {
                        aVar2.g = aVar2.f39097c;
                    }
                    if (aVar2.j.getY() > canvas.getHeight()) {
                        aVar2.m = 0L;
                    } else if (aVar2.j.getX() <= canvas.getWidth() && aVar2.j.getX() + aVar2.f39097c >= BitmapDescriptorFactory.HUE_RED && aVar2.j.getY() + aVar2.f39097c >= BitmapDescriptorFactory.HUE_RED) {
                        aVar2.f39098d.setColor((aVar2.i << 24) | (aVar2.k & 16777215));
                        float abs = Math.abs((aVar2.g / aVar2.f39097c) - 0.5f) * 2.0f;
                        float f3 = (aVar2.f39097c * abs) / 2.0f;
                        int save = canvas.save();
                        canvas.translate(aVar2.j.getX() - f3, aVar2.j.getY());
                        canvas.rotate(aVar2.f, f3, aVar2.f39097c / 2.0f);
                        canvas.scale(abs, 1.0f);
                        aVar2.l.draw(canvas, aVar2.f39098d, aVar2.f39097c);
                        canvas.restoreToCount(save);
                    }
                }
                n.a((List) a2.f39101b, (Function1) b.a.f39104a);
            }
            b bVar2 = bVar.h;
            if (bVar2 == null) {
                p.a("renderSystem");
            }
            if ((bVar2.f39103d.a() && bVar2.f39101b.size() == 0) || (!bVar2.f39100a && bVar2.f39101b.size() == 0)) {
                this.f39091a.remove(size);
                if (this.f39092b != null) {
                    this.f39091a.size();
                }
            }
        }
        if (this.f39091a.size() != 0) {
            invalidate();
        } else {
            this.f39093c.f39094a = -1L;
        }
    }

    public final void setOnParticleSystemUpdateListener(nl.dionsegijn.konfetti.b.a aVar) {
        this.f39092b = aVar;
    }
}
