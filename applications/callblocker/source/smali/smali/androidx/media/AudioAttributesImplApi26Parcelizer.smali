.class public Landroidx/media/AudioAttributesImplApi26Parcelizer;
.super Ljava/lang/Object;
.source "AudioAttributesImplApi26Parcelizer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/media/AudioAttributesImplApi26;
    .locals 3

    .prologue
    .line 14
    new-instance v1, Landroidx/media/AudioAttributesImplApi26;

    invoke-direct {v1}, Landroidx/media/AudioAttributesImplApi26;-><init>()V

    .line 15
    iget-object v0, v1, Landroidx/media/AudioAttributesImplApi26;->a:Landroid/media/AudioAttributes;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Landroidx/versionedparcelable/VersionedParcel;->b(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    iput-object v0, v1, Landroidx/media/AudioAttributesImplApi26;->a:Landroid/media/AudioAttributes;

    .line 16
    iget v0, v1, Landroidx/media/AudioAttributesImplApi26;->b:I

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Landroidx/versionedparcelable/VersionedParcel;->b(II)I

    move-result v0

    iput v0, v1, Landroidx/media/AudioAttributesImplApi26;->b:I

    .line 17
    return-object v1
.end method

.method public static write(Landroidx/media/AudioAttributesImplApi26;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p1, v0, v0}, Landroidx/versionedparcelable/VersionedParcel;->a(ZZ)V

    .line 23
    iget-object v0, p0, Landroidx/media/AudioAttributesImplApi26;->a:Landroid/media/AudioAttributes;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->a(Landroid/os/Parcelable;I)V

    .line 24
    iget v0, p0, Landroidx/media/AudioAttributesImplApi26;->b:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->a(II)V

    .line 25
    return-void
.end method
