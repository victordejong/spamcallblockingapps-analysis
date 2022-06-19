package androidx.media2.session;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/HeartRatingParcelizer.class */
public final class HeartRatingParcelizer {
    public static HeartRating read(d40 d40Var) {
        HeartRating heartRating = new HeartRating();
        heartRating.a = d40Var.m2847i(heartRating.a, 1);
        heartRating.b = d40Var.m2847i(heartRating.b, 2);
        return heartRating;
    }

    public static void write(HeartRating heartRating, d40 d40Var) {
        d40Var.m2879K(false, false);
        d40Var.m2877M(heartRating.a, 1);
        d40Var.m2877M(heartRating.b, 2);
    }
}
