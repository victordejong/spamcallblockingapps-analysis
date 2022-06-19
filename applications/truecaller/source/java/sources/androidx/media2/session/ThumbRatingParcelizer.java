package androidx.media2.session;

import java.util.Objects;
import p1727n3.p1803i0.AbstractC26405c;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/ThumbRatingParcelizer.class */
public final class ThumbRatingParcelizer {
    public static ThumbRating read(AbstractC26405c abstractC26405c) {
        ThumbRating thumbRating = new ThumbRating();
        thumbRating.a = abstractC26405c.m1932g(thumbRating.a, 1);
        thumbRating.b = abstractC26405c.m1932g(thumbRating.b, 2);
        return thumbRating;
    }

    public static void write(ThumbRating thumbRating, AbstractC26405c abstractC26405c) {
        Objects.requireNonNull(abstractC26405c);
        boolean z = thumbRating.a;
        abstractC26405c.mo1922B(1);
        abstractC26405c.mo1921C(z);
        boolean z2 = thumbRating.b;
        abstractC26405c.mo1922B(2);
        abstractC26405c.mo1921C(z2);
    }
}
