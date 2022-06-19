.class public final Landroidx/media2/session/StarRatingParcelizer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/media2/session/StarRating;
    .locals 3

    .line 14
    new-instance v0, Landroidx/media2/session/StarRating;

    invoke-direct {v0}, Landroidx/media2/session/StarRating;-><init>()V

    .line 15
    iget v1, v0, Landroidx/media2/session/StarRating;->a:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->b(II)I

    move-result v1

    iput v1, v0, Landroidx/media2/session/StarRating;->a:I

    .line 16
    iget v1, v0, Landroidx/media2/session/StarRating;->b:F

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->b(FI)F

    move-result p0

    iput p0, v0, Landroidx/media2/session/StarRating;->b:F

    return-object v0
.end method

.method public static write(Landroidx/media2/session/StarRating;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 2

    .line 23
    iget v0, p0, Landroidx/media2/session/StarRating;->a:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->a(II)V

    .line 24
    iget p0, p0, Landroidx/media2/session/StarRating;->b:F

    const/4 v0, 0x2

    invoke-virtual {p1, p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->a(FI)V

    return-void
.end method
