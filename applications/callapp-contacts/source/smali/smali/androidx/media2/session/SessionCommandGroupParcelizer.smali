.class public final Landroidx/media2/session/SessionCommandGroupParcelizer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/media2/session/SessionCommandGroup;
    .locals 2

    .line 14
    new-instance v0, Landroidx/media2/session/SessionCommandGroup;

    invoke-direct {v0}, Landroidx/media2/session/SessionCommandGroup;-><init>()V

    .line 15
    iget-object v1, v0, Landroidx/media2/session/SessionCommandGroup;->a:Ljava/util/Set;

    invoke-virtual {p0, v1}, Landroidx/versionedparcelable/VersionedParcel;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    iput-object p0, v0, Landroidx/media2/session/SessionCommandGroup;->a:Ljava/util/Set;

    return-object v0
.end method

.method public static write(Landroidx/media2/session/SessionCommandGroup;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 1

    .line 22
    iget-object p0, p0, Landroidx/media2/session/SessionCommandGroup;->a:Ljava/util/Set;

    const/4 v0, 0x1

    .line 1826
    invoke-virtual {p1, p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->a(Ljava/util/Collection;I)V

    return-void
.end method
