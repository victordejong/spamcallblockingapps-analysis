.class final Lcom/google/android/play/core/assetpacks/cd;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/String;

.field final b:J

.field final c:I

.field final d:Z

.field final e:Z

.field final f:[B


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;JIZZ[B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/play/core/assetpacks/cd;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/cd;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/play/core/assetpacks/cd;->b:J

    iput p4, p0, Lcom/google/android/play/core/assetpacks/cd;->c:I

    iput-boolean p5, p0, Lcom/google/android/play/core/assetpacks/cd;->d:Z

    iput-boolean p6, p0, Lcom/google/android/play/core/assetpacks/cd;->e:Z

    iput-object p7, p0, Lcom/google/android/play/core/assetpacks/cd;->f:[B

    return-void
.end method

.method static a(Ljava/lang/String;JIZ[BZ)Lcom/google/android/play/core/assetpacks/cd;
    .locals 9

    new-instance v8, Lcom/google/android/play/core/assetpacks/cd;

    move-object v0, v8

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p6

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/play/core/assetpacks/cd;-><init>(Ljava/lang/String;JIZZ[B)V

    return-object v8
.end method


# virtual methods
.method final a()Z
    .locals 2

    .line 1000
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/cd;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v1, "/"

    .line 2000
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method final b()Z
    .locals 1

    .line 3000
    iget v0, p0, Lcom/google/android/play/core/assetpacks/cd;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/play/core/assetpacks/cd;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lcom/google/android/play/core/assetpacks/cd;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/cd;->a:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 4000
    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/cd;->a:Ljava/lang/String;

    if-nez v1, :cond_3

    goto :goto_0

    .line 10000
    :cond_1
    iget-object v3, p1, Lcom/google/android/play/core/assetpacks/cd;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4000
    :goto_0
    iget-wide v3, p0, Lcom/google/android/play/core/assetpacks/cd;->b:J

    .line 5000
    iget-wide v5, p1, Lcom/google/android/play/core/assetpacks/cd;->b:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    iget v1, p0, Lcom/google/android/play/core/assetpacks/cd;->c:I

    .line 6000
    iget v3, p1, Lcom/google/android/play/core/assetpacks/cd;->c:I

    if-ne v1, v3, :cond_3

    iget-boolean v1, p0, Lcom/google/android/play/core/assetpacks/cd;->d:Z

    .line 7000
    iget-boolean v3, p1, Lcom/google/android/play/core/assetpacks/cd;->d:Z

    if-ne v1, v3, :cond_3

    iget-boolean v1, p0, Lcom/google/android/play/core/assetpacks/cd;->e:Z

    .line 8000
    iget-boolean v3, p1, Lcom/google/android/play/core/assetpacks/cd;->e:Z

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/cd;->f:[B

    instance-of v3, p1, Lcom/google/android/play/core/assetpacks/cd;

    if-eqz v3, :cond_2

    iget-object p1, p1, Lcom/google/android/play/core/assetpacks/cd;->f:[B

    goto :goto_1

    .line 9000
    :cond_2
    iget-object p1, p1, Lcom/google/android/play/core/assetpacks/cd;->f:[B

    .line 8000
    :goto_1
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    return v2
.end method

.method public final hashCode()I
    .locals 6

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/cd;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    iget-wide v1, p0, Lcom/google/android/play/core/assetpacks/cd;->b:J

    const v3, 0xf4243

    xor-int/2addr v0, v3

    mul-int v0, v0, v3

    const/16 v4, 0x20

    ushr-long v4, v1, v4

    xor-long/2addr v1, v4

    long-to-int v2, v1

    xor-int/2addr v0, v2

    mul-int v0, v0, v3

    iget v1, p0, Lcom/google/android/play/core/assetpacks/cd;->c:I

    xor-int/2addr v0, v1

    mul-int v0, v0, v3

    iget-boolean v1, p0, Lcom/google/android/play/core/assetpacks/cd;->d:Z

    const/16 v2, 0x4d5

    const/16 v4, 0x4cf

    const/4 v5, 0x1

    if-eq v5, v1, :cond_1

    const/16 v1, 0x4d5

    goto :goto_1

    :cond_1
    const/16 v1, 0x4cf

    :goto_1
    xor-int/2addr v0, v1

    mul-int v0, v0, v3

    iget-boolean v1, p0, Lcom/google/android/play/core/assetpacks/cd;->e:Z

    if-eq v5, v1, :cond_2

    goto :goto_2

    :cond_2
    const/16 v2, 0x4cf

    :goto_2
    xor-int/2addr v0, v2

    mul-int v0, v0, v3

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/cd;->f:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/cd;->a:Ljava/lang/String;

    iget-wide v1, p0, Lcom/google/android/play/core/assetpacks/cd;->b:J

    iget v3, p0, Lcom/google/android/play/core/assetpacks/cd;->c:I

    iget-boolean v4, p0, Lcom/google/android/play/core/assetpacks/cd;->d:Z

    iget-boolean v5, p0, Lcom/google/android/play/core/assetpacks/cd;->e:Z

    iget-object v6, p0, Lcom/google/android/play/core/assetpacks/cd;->f:[B

    invoke-static {v6}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x7e

    add-int/2addr v7, v8

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "ZipEntry{name="

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", size="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", compressionMethod="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isPartial="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isEndOfArchive="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", headerBytes="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
