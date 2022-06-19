.class public final Landroidx/media2/session/SessionResultParcelizer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/media2/session/SessionResult;
    .locals 4

    .line 14
    new-instance v0, Landroidx/media2/session/SessionResult;

    invoke-direct {v0}, Landroidx/media2/session/SessionResult;-><init>()V

    .line 15
    iget v1, v0, Landroidx/media2/session/SessionResult;->a:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->b(II)I

    move-result v1

    iput v1, v0, Landroidx/media2/session/SessionResult;->a:I

    .line 16
    iget-wide v1, v0, Landroidx/media2/session/SessionResult;->b:J

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v2, v3}, Landroidx/versionedparcelable/VersionedParcel;->b(JI)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media2/session/SessionResult;->b:J

    .line 17
    iget-object v1, v0, Landroidx/media2/session/SessionResult;->c:Landroid/os/Bundle;

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->b(Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/session/SessionResult;->c:Landroid/os/Bundle;

    .line 18
    iget-object v1, v0, Landroidx/media2/session/SessionResult;->e:Landroidx/media2/common/MediaItem;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->b(Landroidx/versionedparcelable/c;I)Landroidx/versionedparcelable/c;

    move-result-object p0

    check-cast p0, Landroidx/media2/common/MediaItem;

    iput-object p0, v0, Landroidx/media2/session/SessionResult;->e:Landroidx/media2/common/MediaItem;

    .line 19
    invoke-virtual {v0}, Landroidx/media2/session/SessionResult;->e()V

    return-object v0
.end method

.method public static write(Landroidx/media2/session/SessionResult;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 3

    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, v0}, Landroidx/media2/session/SessionResult;->a(Z)V

    .line 27
    iget v0, p0, Landroidx/media2/session/SessionResult;->a:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->a(II)V

    .line 28
    iget-wide v0, p0, Landroidx/media2/session/SessionResult;->b:J

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->a(JI)V

    .line 29
    iget-object v0, p0, Landroidx/media2/session/SessionResult;->c:Landroid/os/Bundle;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->a(Landroid/os/Bundle;I)V

    .line 30
    iget-object p0, p0, Landroidx/media2/session/SessionResult;->e:Landroidx/media2/common/MediaItem;

    const/4 v0, 0x4

    invoke-virtual {p1, p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->a(Landroidx/versionedparcelable/c;I)V

    return-void
.end method
