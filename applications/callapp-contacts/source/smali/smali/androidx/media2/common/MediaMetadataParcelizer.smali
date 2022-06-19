.class public final Landroidx/media2/common/MediaMetadataParcelizer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/media2/common/MediaMetadata;
    .locals 3

    .line 14
    new-instance v0, Landroidx/media2/common/MediaMetadata;

    invoke-direct {v0}, Landroidx/media2/common/MediaMetadata;-><init>()V

    .line 15
    iget-object v1, v0, Landroidx/media2/common/MediaMetadata;->c:Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->b(Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/common/MediaMetadata;->c:Landroid/os/Bundle;

    .line 16
    iget-object v1, v0, Landroidx/media2/common/MediaMetadata;->d:Landroidx/media2/common/ParcelImplListSlice;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->b(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroidx/media2/common/ParcelImplListSlice;

    iput-object p0, v0, Landroidx/media2/common/MediaMetadata;->d:Landroidx/media2/common/ParcelImplListSlice;

    .line 17
    invoke-virtual {v0}, Landroidx/media2/common/MediaMetadata;->e()V

    return-object v0
.end method

.method public static write(Landroidx/media2/common/MediaMetadata;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 2

    const/4 v0, 0x0

    .line 24
    invoke-virtual {p0, v0}, Landroidx/media2/common/MediaMetadata;->a(Z)V

    .line 25
    iget-object v0, p0, Landroidx/media2/common/MediaMetadata;->c:Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->a(Landroid/os/Bundle;I)V

    .line 26
    iget-object p0, p0, Landroidx/media2/common/MediaMetadata;->d:Landroidx/media2/common/ParcelImplListSlice;

    const/4 v0, 0x2

    invoke-virtual {p1, p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->a(Landroid/os/Parcelable;I)V

    return-void
.end method
