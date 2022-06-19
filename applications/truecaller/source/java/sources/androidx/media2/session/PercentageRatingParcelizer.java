package androidx.media2.session;

import java.util.Objects;
import p1727n3.p1803i0.AbstractC26405c;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/PercentageRatingParcelizer.class */
public final class PercentageRatingParcelizer {
    public static PercentageRating read(AbstractC26405c abstractC26405c) {
        PercentageRating percentageRating = new PercentageRating();
        percentageRating.a = abstractC26405c.m1928p(percentageRating.a, 1);
        return percentageRating;
    }

    public static void write(PercentageRating percentageRating, AbstractC26405c abstractC26405c) {
        Objects.requireNonNull(abstractC26405c);
        float f = percentageRating.a;
        abstractC26405c.mo1922B(1);
        abstractC26405c.mo1917H(f);
    }
}
