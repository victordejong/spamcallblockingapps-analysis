.class public Landroidx/media/AudioAttributesCompatParcelizer;
.super Ljava/lang/Object;
.source "AudioAttributesCompatParcelizer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/media/AudioAttributesCompat;
    .locals 3

    .prologue
    .line 14
    new-instance v1, Landroidx/media/AudioAttributesCompat;

    invoke-direct {v1}, Landroidx/media/AudioAttributesCompat;-><init>()V

    .line 15
    iget-object v0, v1, Landroidx/media/AudioAttributesCompat;->b:Landroidx/media/a;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Landroidx/versionedparcelable/VersionedParcel;->b(Landroidx/versionedparcelable/c;I)Landroidx/versionedparcelable/c;

    move-result-object v0

    check-cast v0, Landroidx/media/a;

    iput-object v0, v1, Landroidx/media/AudioAttributesCompat;->b:Landroidx/media/a;

    .line 16
    return-object v1
.end method

.method public static write(Landroidx/media/AudioAttributesCompat;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p1, v0, v0}, Landroidx/versionedparcelable/VersionedParcel;->a(ZZ)V

    .line 22
    iget-object v0, p0, Landroidx/media/AudioAttributesCompat;->b:Landroidx/media/a;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->a(Landroidx/versionedparcelable/c;I)V

    .line 23
    return-void
.end method
