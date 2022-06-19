.class public Landroidx/media2/common/MediaParcelUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/common/MediaParcelUtils$MediaItemParcelImpl;
    }
.end annotation


# direct methods
.method public static a(Landroidx/versionedparcelable/ParcelImpl;)Lf40;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lf40;",
            ">(",
            "Landroidx/versionedparcelable/ParcelImpl;",
            ")TT;"
        }
    .end annotation

    invoke-static {p0}, Lc40;->a(Landroid/os/Parcelable;)Lf40;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lf40;)Landroidx/versionedparcelable/ParcelImpl;
    .locals 1

    instance-of v0, p0, Landroidx/media2/common/MediaItem;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/media2/common/MediaParcelUtils$MediaItemParcelImpl;

    check-cast p0, Landroidx/media2/common/MediaItem;

    invoke-direct {v0, p0}, Landroidx/media2/common/MediaParcelUtils$MediaItemParcelImpl;-><init>(Landroidx/media2/common/MediaItem;)V

    return-object v0

    :cond_0
    invoke-static {p0}, Lc40;->d(Lf40;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroidx/versionedparcelable/ParcelImpl;

    return-object p0
.end method
