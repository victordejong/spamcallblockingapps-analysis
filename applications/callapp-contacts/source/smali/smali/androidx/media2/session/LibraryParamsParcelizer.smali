.class public final Landroidx/media2/session/LibraryParamsParcelizer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/media2/session/MediaLibraryService$LibraryParams;
    .locals 3

    .line 14
    new-instance v0, Landroidx/media2/session/MediaLibraryService$LibraryParams;

    invoke-direct {v0}, Landroidx/media2/session/MediaLibraryService$LibraryParams;-><init>()V

    .line 15
    iget-object v1, v0, Landroidx/media2/session/MediaLibraryService$LibraryParams;->a:Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->b(Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/session/MediaLibraryService$LibraryParams;->a:Landroid/os/Bundle;

    .line 16
    iget v1, v0, Landroidx/media2/session/MediaLibraryService$LibraryParams;->b:I

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->b(II)I

    move-result v1

    iput v1, v0, Landroidx/media2/session/MediaLibraryService$LibraryParams;->b:I

    .line 17
    iget v1, v0, Landroidx/media2/session/MediaLibraryService$LibraryParams;->c:I

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->b(II)I

    move-result v1

    iput v1, v0, Landroidx/media2/session/MediaLibraryService$LibraryParams;->c:I

    .line 18
    iget v1, v0, Landroidx/media2/session/MediaLibraryService$LibraryParams;->d:I

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->b(II)I

    move-result p0

    iput p0, v0, Landroidx/media2/session/MediaLibraryService$LibraryParams;->d:I

    return-object v0
.end method

.method public static write(Landroidx/media2/session/MediaLibraryService$LibraryParams;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 2

    .line 25
    iget-object v0, p0, Landroidx/media2/session/MediaLibraryService$LibraryParams;->a:Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->a(Landroid/os/Bundle;I)V

    .line 26
    iget v0, p0, Landroidx/media2/session/MediaLibraryService$LibraryParams;->b:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->a(II)V

    .line 27
    iget v0, p0, Landroidx/media2/session/MediaLibraryService$LibraryParams;->c:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->a(II)V

    .line 28
    iget p0, p0, Landroidx/media2/session/MediaLibraryService$LibraryParams;->d:I

    const/4 v0, 0x4

    invoke-virtual {p1, p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->a(II)V

    return-void
.end method
