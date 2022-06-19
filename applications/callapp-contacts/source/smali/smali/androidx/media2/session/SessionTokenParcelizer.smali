.class public final Landroidx/media2/session/SessionTokenParcelizer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/media2/session/SessionToken;
    .locals 3

    .line 14
    new-instance v0, Landroidx/media2/session/SessionToken;

    invoke-direct {v0}, Landroidx/media2/session/SessionToken;-><init>()V

    .line 15
    iget-object v1, v0, Landroidx/media2/session/SessionToken;->a:Landroidx/media2/session/SessionToken$SessionTokenImpl;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->b(Landroidx/versionedparcelable/c;I)Landroidx/versionedparcelable/c;

    move-result-object p0

    check-cast p0, Landroidx/media2/session/SessionToken$SessionTokenImpl;

    iput-object p0, v0, Landroidx/media2/session/SessionToken;->a:Landroidx/media2/session/SessionToken$SessionTokenImpl;

    return-object v0
.end method

.method public static write(Landroidx/media2/session/SessionToken;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 1

    .line 22
    iget-object p0, p0, Landroidx/media2/session/SessionToken;->a:Landroidx/media2/session/SessionToken$SessionTokenImpl;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->a(Landroidx/versionedparcelable/c;I)V

    return-void
.end method
