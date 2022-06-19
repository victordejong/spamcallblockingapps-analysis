.class public Landroidx/core/graphics/drawable/IconCompatParcelizer;
.super Ljava/lang/Object;
.source "IconCompatParcelizer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 3

    .prologue
    .line 14
    new-instance v1, Landroidx/core/graphics/drawable/IconCompat;

    invoke-direct {v1}, Landroidx/core/graphics/drawable/IconCompat;-><init>()V

    .line 15
    iget v0, v1, Landroidx/core/graphics/drawable/IconCompat;->a:I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Landroidx/versionedparcelable/VersionedParcel;->b(II)I

    move-result v0

    iput v0, v1, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 16
    iget-object v0, v1, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Landroidx/versionedparcelable/VersionedParcel;->b([BI)[B

    move-result-object v0

    iput-object v0, v1, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    .line 17
    iget-object v0, v1, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Landroidx/versionedparcelable/VersionedParcel;->b(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    .line 18
    iget v0, v1, Landroidx/core/graphics/drawable/IconCompat;->e:I

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Landroidx/versionedparcelable/VersionedParcel;->b(II)I

    move-result v0

    iput v0, v1, Landroidx/core/graphics/drawable/IconCompat;->e:I

    .line 19
    iget v0, v1, Landroidx/core/graphics/drawable/IconCompat;->f:I

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v2}, Landroidx/versionedparcelable/VersionedParcel;->b(II)I

    move-result v0

    iput v0, v1, Landroidx/core/graphics/drawable/IconCompat;->f:I

    .line 20
    iget-object v0, v1, Landroidx/core/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;

    const/4 v2, 0x6

    invoke-virtual {p0, v0, v2}, Landroidx/versionedparcelable/VersionedParcel;->b(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    iput-object v0, v1, Landroidx/core/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;

    .line 21
    iget-object v0, v1, Landroidx/core/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-virtual {p0, v0, v2}, Landroidx/versionedparcelable/VersionedParcel;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroidx/core/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    .line 22
    invoke-virtual {v1}, Landroidx/core/graphics/drawable/IconCompat;->c()V

    .line 23
    return-object v1
.end method

.method public static write(Landroidx/core/graphics/drawable/IconCompat;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 28
    invoke-virtual {p1, v2, v2}, Landroidx/versionedparcelable/VersionedParcel;->a(ZZ)V

    .line 29
    invoke-virtual {p1}, Landroidx/versionedparcelable/VersionedParcel;->a()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/core/graphics/drawable/IconCompat;->a(Z)V

    .line 30
    const/4 v0, -0x1

    iget v1, p0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    if-eq v0, v1, :cond_0

    .line 31
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    invoke-virtual {p1, v0, v2}, Landroidx/versionedparcelable/VersionedParcel;->a(II)V

    .line 33
    :cond_0
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    if-eqz v0, :cond_1

    .line 34
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->a([BI)V

    .line 36
    :cond_1
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    if-eqz v0, :cond_2

    .line 37
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->a(Landroid/os/Parcelable;I)V

    .line 39
    :cond_2
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->e:I

    if-eqz v0, :cond_3

    .line 40
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->e:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->a(II)V

    .line 42
    :cond_3
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->f:I

    if-eqz v0, :cond_4

    .line 43
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->f:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->a(II)V

    .line 45
    :cond_4
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_5

    .line 46
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->a(Landroid/os/Parcelable;I)V

    .line 48
    :cond_5
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 49
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->a(Ljava/lang/String;I)V

    .line 51
    :cond_6
    return-void
.end method
