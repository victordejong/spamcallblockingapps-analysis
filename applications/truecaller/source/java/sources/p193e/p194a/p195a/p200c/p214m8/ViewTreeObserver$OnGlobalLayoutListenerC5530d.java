package p193e.p194a.p195a.p200c.p214m8;

import android.view.View;
import android.view.ViewTreeObserver;
import com.google.android.libraries.places.api.model.PlaceLikelihood;
import com.truecaller.messaging.conversation.emoji.EmojiPokeView;
import java.util.Arrays;
import nl.dionsegijn.konfetti.KonfettiView;
import s1.z.c.l;
import t3.a.a.b;
import t3.a.a.e.a;
import t3.a.a.e.c;
/* renamed from: e.a.a.c.m8.d */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/m8/d.class */
public final class ViewTreeObserver$OnGlobalLayoutListenerC5530d implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a */
    public final /* synthetic */ View f18707a;

    /* renamed from: b */
    public final /* synthetic */ EmojiPokeView f18708b;

    public ViewTreeObserver$OnGlobalLayoutListenerC5530d(View view, EmojiPokeView emojiPokeView) {
        this.f18707a = view;
        this.f18708b = emojiPokeView;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        KonfettiView konfetti;
        int[] confettiColors;
        KonfettiView konfetti2;
        KonfettiView konfetti3;
        KonfettiView konfetti4;
        KonfettiView konfetti5;
        this.f18707a.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        konfetti = this.f18708b.getKonfetti();
        b bVar = new b(konfetti);
        confettiColors = this.f18708b.getConfettiColors();
        int[] copyOf = Arrays.copyOf(confettiColors, confettiColors.length);
        l.f(copyOf, "colors");
        bVar.d = copyOf;
        bVar.c((double) PlaceLikelihood.LIKELIHOOD_MIN_VALUE, 359.0d);
        bVar.d(7.0f, 13.0f);
        a aVar = bVar.g;
        aVar.a = true;
        aVar.b = 500L;
        bVar.a(new t3.a.a.e.b[]{t3.a.a.e.b.a, t3.a.a.e.b.b});
        bVar.b(new c[]{new c(4, 5.0f), new c(4, 2.0f)});
        konfetti2 = this.f18708b.getKonfetti();
        l.d(konfetti2, "konfetti");
        float x = konfetti2.getX();
        konfetti3 = this.f18708b.getKonfetti();
        l.d(konfetti3, "konfetti");
        float width = konfetti3.getWidth() / 2;
        konfetti4 = this.f18708b.getKonfetti();
        l.d(konfetti4, "konfetti");
        float y = konfetti4.getY();
        konfetti5 = this.f18708b.getKonfetti();
        l.d(konfetti5, "konfetti");
        float height = konfetti5.getHeight();
        float m35101f = this.f18708b.m35101f();
        t3.a.a.f.a aVar2 = bVar.b;
        aVar2.a = x + width;
        aVar2.c = (y + height) - m35101f;
        t3.a.a.c.a aVar3 = new t3.a.a.c.a();
        aVar3.b = 200;
        aVar3.c = false;
        bVar.e(aVar3);
    }
}
