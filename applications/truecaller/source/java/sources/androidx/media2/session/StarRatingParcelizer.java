package androidx.media2.session;

import java.util.Objects;
import p1727n3.p1803i0.AbstractC26405c;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/StarRatingParcelizer.class */
public final class StarRatingParcelizer {
    public static StarRating read(AbstractC26405c abstractC26405c) {
        StarRating starRating = new StarRating();
        starRating.a = abstractC26405c.m1927r(starRating.a, 1);
        starRating.b = abstractC26405c.m1928p(starRating.b, 2);
        return starRating;
    }

    public static void write(StarRating starRating, AbstractC26405c abstractC26405c) {
        Objects.requireNonNull(abstractC26405c);
        int i = starRating.a;
        abstractC26405c.mo1922B(1);
        abstractC26405c.mo1916I(i);
        float f = starRating.b;
        abstractC26405c.mo1922B(2);
        abstractC26405c.mo1917H(f);
    }
}
