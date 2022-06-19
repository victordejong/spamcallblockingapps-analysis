.class public final Landroidx/media2/session/SessionCommandParcelizer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/media2/session/SessionCommand;
    .locals 3

    .line 14
    new-instance v0, Landroidx/media2/session/SessionCommand;

    invoke-direct {v0}, Landroidx/media2/session/SessionCommand;-><init>()V

    .line 15
    iget v1, v0, Landroidx/media2/session/SessionCommand;->f:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->b(II)I

    move-result v1

    iput v1, v0, Landroidx/media2/session/SessionCommand;->f:I

    .line 16
    iget-object v1, v0, Landroidx/media2/session/SessionCommand;->g:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/session/SessionCommand;->g:Ljava/lang/String;

    .line 17
    iget-object v1, v0, Landroidx/media2/session/SessionCommand;->h:Landroid/os/Bundle;

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->b(Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object p0

    iput-object p0, v0, Landroidx/media2/session/SessionCommand;->h:Landroid/os/Bundle;

    return-object v0
.end method

.method public static write(Landroidx/media2/session/SessionCommand;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 2

    .line 24
    iget v0, p0, Landroidx/media2/session/SessionCommand;->f:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->a(II)V

    .line 25
    iget-object v0, p0, Landroidx/media2/session/SessionCommand;->g:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->a(Ljava/lang/String;I)V

    .line 26
    iget-object p0, p0, Landroidx/media2/session/SessionCommand;->h:Landroid/os/Bundle;

    const/4 v0, 0x3

    invoke-virtual {p1, p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->a(Landroid/os/Bundle;I)V

    return-void
.end method
