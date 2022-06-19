.class public final Landroidx/media2/common/TrackInfoParcelizer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/media2/common/SessionPlayer$TrackInfo;
    .locals 3

    .line 14
    new-instance v0, Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-direct {v0}, Landroidx/media2/common/SessionPlayer$TrackInfo;-><init>()V

    .line 15
    iget v1, v0, Landroidx/media2/common/SessionPlayer$TrackInfo;->a:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->b(II)I

    move-result v1

    iput v1, v0, Landroidx/media2/common/SessionPlayer$TrackInfo;->a:I

    .line 16
    iget v1, v0, Landroidx/media2/common/SessionPlayer$TrackInfo;->b:I

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->b(II)I

    move-result v1

    iput v1, v0, Landroidx/media2/common/SessionPlayer$TrackInfo;->b:I

    .line 17
    iget-object v1, v0, Landroidx/media2/common/SessionPlayer$TrackInfo;->e:Landroid/os/Bundle;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->b(Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object p0

    iput-object p0, v0, Landroidx/media2/common/SessionPlayer$TrackInfo;->e:Landroid/os/Bundle;

    .line 18
    invoke-virtual {v0}, Landroidx/media2/common/SessionPlayer$TrackInfo;->e()V

    return-object v0
.end method

.method public static write(Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 2

    const/4 v0, 0x0

    .line 25
    invoke-virtual {p0, v0}, Landroidx/media2/common/SessionPlayer$TrackInfo;->a(Z)V

    .line 26
    iget v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->a:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->a(II)V

    .line 27
    iget v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->b:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->a(II)V

    .line 28
    iget-object p0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->e:Landroid/os/Bundle;

    const/4 v0, 0x4

    invoke-virtual {p1, p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->a(Landroid/os/Bundle;I)V

    return-void
.end method
