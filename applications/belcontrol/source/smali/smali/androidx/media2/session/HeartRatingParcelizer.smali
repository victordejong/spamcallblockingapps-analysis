.class public final Landroidx/media2/session/HeartRatingParcelizer;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ld40;)Landroidx/media2/session/HeartRating;
    .locals 3

    new-instance v0, Landroidx/media2/session/HeartRating;

    invoke-direct {v0}, Landroidx/media2/session/HeartRating;-><init>()V

    iget-boolean v1, v0, Landroidx/media2/session/HeartRating;->a:Z

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ld40;->i(ZI)Z

    move-result v1

    iput-boolean v1, v0, Landroidx/media2/session/HeartRating;->a:Z

    iget-boolean v1, v0, Landroidx/media2/session/HeartRating;->b:Z

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Ld40;->i(ZI)Z

    move-result p0

    iput-boolean p0, v0, Landroidx/media2/session/HeartRating;->b:Z

    return-object v0
.end method

.method public static write(Landroidx/media2/session/HeartRating;Ld40;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Ld40;->K(ZZ)V

    iget-boolean v0, p0, Landroidx/media2/session/HeartRating;->a:Z

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ld40;->M(ZI)V

    iget-boolean p0, p0, Landroidx/media2/session/HeartRating;->b:Z

    const/4 v0, 0x2

    invoke-virtual {p1, p0, v0}, Ld40;->M(ZI)V

    return-void
.end method
