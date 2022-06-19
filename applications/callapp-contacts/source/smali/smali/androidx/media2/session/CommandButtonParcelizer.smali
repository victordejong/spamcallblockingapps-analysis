.class public final Landroidx/media2/session/CommandButtonParcelizer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/media2/session/MediaSession$CommandButton;
    .locals 3

    .line 14
    new-instance v0, Landroidx/media2/session/MediaSession$CommandButton;

    invoke-direct {v0}, Landroidx/media2/session/MediaSession$CommandButton;-><init>()V

    .line 15
    iget-object v1, v0, Landroidx/media2/session/MediaSession$CommandButton;->a:Landroidx/media2/session/SessionCommand;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->b(Landroidx/versionedparcelable/c;I)Landroidx/versionedparcelable/c;

    move-result-object v1

    check-cast v1, Landroidx/media2/session/SessionCommand;

    iput-object v1, v0, Landroidx/media2/session/MediaSession$CommandButton;->a:Landroidx/media2/session/SessionCommand;

    .line 16
    iget v1, v0, Landroidx/media2/session/MediaSession$CommandButton;->b:I

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->b(II)I

    move-result v1

    iput v1, v0, Landroidx/media2/session/MediaSession$CommandButton;->b:I

    .line 17
    iget-object v1, v0, Landroidx/media2/session/MediaSession$CommandButton;->c:Ljava/lang/CharSequence;

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->b(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/session/MediaSession$CommandButton;->c:Ljava/lang/CharSequence;

    .line 18
    iget-object v1, v0, Landroidx/media2/session/MediaSession$CommandButton;->d:Landroid/os/Bundle;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->b(Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/session/MediaSession$CommandButton;->d:Landroid/os/Bundle;

    .line 19
    iget-boolean v1, v0, Landroidx/media2/session/MediaSession$CommandButton;->e:Z

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->b(ZI)Z

    move-result p0

    iput-boolean p0, v0, Landroidx/media2/session/MediaSession$CommandButton;->e:Z

    return-object v0
.end method

.method public static write(Landroidx/media2/session/MediaSession$CommandButton;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 2

    .line 26
    iget-object v0, p0, Landroidx/media2/session/MediaSession$CommandButton;->a:Landroidx/media2/session/SessionCommand;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->a(Landroidx/versionedparcelable/c;I)V

    .line 27
    iget v0, p0, Landroidx/media2/session/MediaSession$CommandButton;->b:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->a(II)V

    .line 28
    iget-object v0, p0, Landroidx/media2/session/MediaSession$CommandButton;->c:Ljava/lang/CharSequence;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->a(Ljava/lang/CharSequence;I)V

    .line 29
    iget-object v0, p0, Landroidx/media2/session/MediaSession$CommandButton;->d:Landroid/os/Bundle;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->a(Landroid/os/Bundle;I)V

    .line 30
    iget-boolean p0, p0, Landroidx/media2/session/MediaSession$CommandButton;->e:Z

    const/4 v0, 0x5

    invoke-virtual {p1, p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->a(ZI)V

    return-void
.end method
