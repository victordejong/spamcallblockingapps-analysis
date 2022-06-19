.class public final Landroidx/media2/session/HeartRatingParcelizer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/media2/session/HeartRating;
    .locals 3

    .line 14
    new-instance v0, Landroidx/media2/session/HeartRating;

    invoke-direct {v0}, Landroidx/media2/session/HeartRating;-><init>()V

    .line 15
    iget-boolean v1, v0, Landroidx/media2/session/HeartRating;->a:Z

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->b(ZI)Z

    move-result v1

    iput-boolean v1, v0, Landroidx/media2/session/HeartRating;->a:Z

    .line 16
    iget-boolean v1, v0, Landroidx/media2/session/HeartRating;->b:Z

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->b(ZI)Z

    move-result p0

    iput-boolean p0, v0, Landroidx/media2/session/HeartRating;->b:Z

    return-object v0
.end method

.method public static write(Landroidx/media2/session/HeartRating;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 2

    .line 23
    iget-boolean v0, p0, Landroidx/media2/session/HeartRating;->a:Z

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->a(ZI)V

    .line 24
    iget-boolean p0, p0, Landroidx/media2/session/HeartRating;->b:Z

    const/4 v0, 0x2

    invoke-virtual {p1, p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->a(ZI)V

    return-void
.end method
