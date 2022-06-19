package androidx.media2.session;

import java.util.Objects;
import p1727n3.p1803i0.AbstractC26405c;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/HeartRatingParcelizer.class */
public final class HeartRatingParcelizer {
    public static HeartRating read(AbstractC26405c abstractC26405c) {
        HeartRating heartRating = new HeartRating();
        heartRating.a = abstractC26405c.m1932g(heartRating.a, 1);
        heartRating.b = abstractC26405c.m1932g(heartRating.b, 2);
        return heartRating;
    }

    public static void write(HeartRating heartRating, AbstractC26405c abstractC26405c) {
        Objects.requireNonNull(abstractC26405c);
        boolean z = heartRating.a;
        abstractC26405c.mo1922B(1);
        abstractC26405c.mo1921C(z);
        boolean z2 = heartRating.b;
        abstractC26405c.mo1922B(2);
        abstractC26405c.mo1921C(z2);
    }
}
