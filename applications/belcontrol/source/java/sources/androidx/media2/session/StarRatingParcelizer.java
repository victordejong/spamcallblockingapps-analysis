package androidx.media2.session;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/StarRatingParcelizer.class */
public final class StarRatingParcelizer {
    public static StarRating read(d40 d40Var) {
        StarRating starRating = new StarRating();
        starRating.a = d40Var.m2828v(starRating.a, 1);
        starRating.b = d40Var.m2831s(starRating.b, 2);
        return starRating;
    }

    public static void write(StarRating starRating, d40 d40Var) {
        d40Var.m2879K(false, false);
        d40Var.m2865Y(starRating.a, 1);
        d40Var.m2867W(starRating.b, 2);
    }
}
