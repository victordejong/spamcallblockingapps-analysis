package androidx.media2.session;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/PercentageRatingParcelizer.class */
public final class PercentageRatingParcelizer {
    public static PercentageRating read(d40 d40Var) {
        PercentageRating percentageRating = new PercentageRating();
        percentageRating.a = d40Var.m2831s(percentageRating.a, 1);
        return percentageRating;
    }

    public static void write(PercentageRating percentageRating, d40 d40Var) {
        d40Var.m2879K(false, false);
        d40Var.m2867W(percentageRating.a, 1);
    }
}
