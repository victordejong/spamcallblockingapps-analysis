package androidx.media2.session;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/ThumbRatingParcelizer.class */
public final class ThumbRatingParcelizer {
    public static ThumbRating read(d40 d40Var) {
        ThumbRating thumbRating = new ThumbRating();
        thumbRating.a = d40Var.m2847i(thumbRating.a, 1);
        thumbRating.b = d40Var.m2847i(thumbRating.b, 2);
        return thumbRating;
    }

    public static void write(ThumbRating thumbRating, d40 d40Var) {
        d40Var.m2879K(false, false);
        d40Var.m2877M(thumbRating.a, 1);
        d40Var.m2877M(thumbRating.b, 2);
    }
}
