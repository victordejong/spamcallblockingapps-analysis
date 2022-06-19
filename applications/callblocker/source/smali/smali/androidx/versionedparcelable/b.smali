.class Landroidx/versionedparcelable/b;
.super Landroidx/versionedparcelable/VersionedParcel;
.source "VersionedParcelParcel.java"


# instance fields
.field private final d:Landroid/util/SparseIntArray;

.field private final e:Landroid/os/Parcel;

.field private final f:I

.field private final g:I

.field private final h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .locals 8

    .prologue
    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    const-string/jumbo v4, ""

    new-instance v5, Landroidx/b/a;

    invoke-direct {v5}, Landroidx/b/a;-><init>()V

    new-instance v6, Landroidx/b/a;

    invoke-direct {v6}, Landroidx/b/a;-><init>()V

    new-instance v7, Landroidx/b/a;

    invoke-direct {v7}, Landroidx/b/a;-><init>()V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroidx/versionedparcelable/b;-><init>(Landroid/os/Parcel;IILjava/lang/String;Landroidx/b/a;Landroidx/b/a;Landroidx/b/a;)V

    .line 54
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;IILjava/lang/String;Landroidx/b/a;Landroidx/b/a;Landroidx/b/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "II",
            "Ljava/lang/String;",
            "Landroidx/b/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Landroidx/b/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Landroidx/b/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 60
    invoke-direct {p0, p5, p6, p7}, Landroidx/versionedparcelable/VersionedParcel;-><init>(Landroidx/b/a;Landroidx/b/a;Landroidx/b/a;)V

    .line 41
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/versionedparcelable/b;->d:Landroid/util/SparseIntArray;

    .line 46
    iput v1, p0, Landroidx/versionedparcelable/b;->i:I

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Landroidx/versionedparcelable/b;->j:I

    .line 48
    iput v1, p0, Landroidx/versionedparcelable/b;->k:I

    .line 61
    iput-object p1, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;

    .line 62
    iput p2, p0, Landroidx/versionedparcelable/b;->f:I

    .line 63
    iput p3, p0, Landroidx/versionedparcelable/b;->g:I

    .line 64
    iget v0, p0, Landroidx/versionedparcelable/b;->f:I

    iput v0, p0, Landroidx/versionedparcelable/b;->j:I

    .line 65
    iput-object p4, p0, Landroidx/versionedparcelable/b;->h:Ljava/lang/String;

    .line 66
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 177
    return-void
.end method

.method protected a(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 197
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 181
    iget-object v1, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    return-void

    .line 181
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a([B)V
    .locals 2

    .prologue
    .line 126
    if-eqz p1, :cond_0

    .line 127
    iget-object v0, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;

    array-length v1, p1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget-object v0, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 99
    iget v0, p0, Landroidx/versionedparcelable/b;->i:I

    if-ltz v0, :cond_0

    .line 100
    iget-object v0, p0, Landroidx/versionedparcelable/b;->d:Landroid/util/SparseIntArray;

    iget v1, p0, Landroidx/versionedparcelable/b;->i:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 101
    iget-object v1, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 102
    sub-int v2, v1, v0

    .line 107
    iget-object v3, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 108
    iget-object v0, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-object v0, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 111
    :cond_0
    return-void
.end method

.method public b(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 70
    :goto_0
    iget v2, p0, Landroidx/versionedparcelable/b;->j:I

    iget v3, p0, Landroidx/versionedparcelable/b;->g:I

    if-ge v2, v3, :cond_3

    .line 71
    iget v2, p0, Landroidx/versionedparcelable/b;->k:I

    if-ne v2, p1, :cond_1

    .line 84
    :cond_0
    :goto_1
    return v0

    .line 74
    :cond_1
    iget v2, p0, Landroidx/versionedparcelable/b;->k:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    move v0, v1

    .line 75
    goto :goto_1

    .line 77
    :cond_2
    iget-object v2, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;

    iget v3, p0, Landroidx/versionedparcelable/b;->j:I

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 78
    iget-object v2, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 79
    iget-object v3, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroidx/versionedparcelable/b;->k:I

    .line 82
    iget v3, p0, Landroidx/versionedparcelable/b;->j:I

    add-int/2addr v2, v3

    iput v2, p0, Landroidx/versionedparcelable/b;->j:I

    goto :goto_0

    .line 84
    :cond_3
    iget v2, p0, Landroidx/versionedparcelable/b;->k:I

    if-eq v2, p1, :cond_0

    move v0, v1

    goto :goto_1
.end method

.method protected c()Landroidx/versionedparcelable/VersionedParcel;
    .locals 8

    .prologue
    .line 119
    new-instance v0, Landroidx/versionedparcelable/b;

    iget-object v1, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;

    iget-object v2, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    iget v3, p0, Landroidx/versionedparcelable/b;->j:I

    iget v4, p0, Landroidx/versionedparcelable/b;->f:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Landroidx/versionedparcelable/b;->g:I

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroidx/versionedparcelable/b;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroidx/versionedparcelable/b;->a:Landroidx/b/a;

    iget-object v6, p0, Landroidx/versionedparcelable/b;->b:Landroidx/b/a;

    iget-object v7, p0, Landroidx/versionedparcelable/b;->c:Landroidx/b/a;

    invoke-direct/range {v0 .. v7}, Landroidx/versionedparcelable/b;-><init>(Landroid/os/Parcel;IILjava/lang/String;Landroidx/b/a;Landroidx/b/a;Landroidx/b/a;)V

    return-object v0

    :cond_0
    iget v3, p0, Landroidx/versionedparcelable/b;->j:I

    goto :goto_0
.end method

.method public c(I)V
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Landroidx/versionedparcelable/b;->b()V

    .line 90
    iput p1, p0, Landroidx/versionedparcelable/b;->i:I

    .line 91
    iget-object v0, p0, Landroidx/versionedparcelable/b;->d:Landroid/util/SparseIntArray;

    iget-object v1, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/b;->a(I)V

    .line 94
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/b;->a(I)V

    .line 95
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()[B
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 237
    if-gez v0, :cond_0

    .line 238
    const/4 v0, 0x0

    .line 242
    :goto_0
    return-object v0

    .line 240
    :cond_0
    new-array v0, v0, [B

    .line 241
    iget-object v1, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    goto :goto_0
.end method

.method protected g()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 201
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    iget-object v1, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public h()Landroid/os/Parcelable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Landroidx/versionedparcelable/b;->e:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
