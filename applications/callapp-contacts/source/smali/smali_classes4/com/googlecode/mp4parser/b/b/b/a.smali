.class public final Lcom/googlecode/mp4parser/b/b/b/a;
.super Lcom/googlecode/mp4parser/b/b/b/b;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:B

.field private c:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/googlecode/mp4parser/b/b/b/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "seig"

    return-object v0
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 48
    invoke-static {p1}, Lcom/b/a/e;->b(Ljava/nio/ByteBuffer;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/googlecode/mp4parser/b/b/b/a;->a:Z

    .line 1068
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Lcom/b/a/e;->a(B)I

    move-result v0

    int-to-byte v0, v0

    .line 49
    iput-byte v0, p0, Lcom/googlecode/mp4parser/b/b/b/a;->b:B

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 51
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 2044
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 2045
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2046
    new-instance v0, Ljava/util/UUID;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .line 52
    iput-object v0, p0, Lcom/googlecode/mp4parser/b/b/b/a;->c:Ljava/util/UUID;

    return-void
.end method

.method public final b()Ljava/nio/ByteBuffer;
    .locals 11

    const/16 v0, 0x14

    .line 58
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 59
    iget-boolean v1, p0, Lcom/googlecode/mp4parser/b/b/b/a;->a:Z

    invoke-static {v0, v1}, Lcom/b/a/f;->a(Ljava/nio/ByteBuffer;I)V

    .line 60
    iget-boolean v1, p0, Lcom/googlecode/mp4parser/b/b/b/a;->a:Z

    if-eqz v1, :cond_2

    .line 61
    iget-byte v1, p0, Lcom/googlecode/mp4parser/b/b/b/a;->b:B

    invoke-static {v0, v1}, Lcom/b/a/f;->c(Ljava/nio/ByteBuffer;I)V

    .line 62
    iget-object v1, p0, Lcom/googlecode/mp4parser/b/b/b/a;->c:Ljava/util/UUID;

    .line 3028
    invoke-virtual {v1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    .line 3029
    invoke-virtual {v1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    const/16 v1, 0x10

    new-array v6, v1, [B

    const/4 v7, 0x0

    :goto_0
    const/16 v8, 0x8

    if-lt v7, v8, :cond_1

    const/16 v2, 0x8

    :goto_1
    if-lt v2, v1, :cond_0

    .line 62
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_2

    :cond_0
    rsub-int/lit8 v3, v2, 0x7

    mul-int/lit8 v3, v3, 0x8

    ushr-long v9, v4, v3

    long-to-int v3, v9

    int-to-byte v3, v3

    .line 3036
    aput-byte v3, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    rsub-int/lit8 v9, v7, 0x7

    mul-int/lit8 v9, v9, 0x8

    ushr-long v8, v2, v9

    long-to-int v9, v8

    int-to-byte v8, v9

    .line 3033
    aput-byte v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    const/16 v1, 0x11

    new-array v1, v1, [B

    .line 64
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 66
    :goto_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 108
    :cond_1
    check-cast p1, Lcom/googlecode/mp4parser/b/b/b/a;

    .line 110
    iget-boolean v2, p0, Lcom/googlecode/mp4parser/b/b/b/a;->a:Z

    iget-boolean v3, p1, Lcom/googlecode/mp4parser/b/b/b/a;->a:Z

    if-eq v2, v3, :cond_2

    return v1

    .line 111
    :cond_2
    iget-byte v2, p0, Lcom/googlecode/mp4parser/b/b/b/a;->b:B

    iget-byte v3, p1, Lcom/googlecode/mp4parser/b/b/b/a;->b:B

    if-eq v2, v3, :cond_3

    return v1

    .line 112
    :cond_3
    iget-object v2, p0, Lcom/googlecode/mp4parser/b/b/b/a;->c:Ljava/util/UUID;

    iget-object p1, p1, Lcom/googlecode/mp4parser/b/b/b/a;->c:Ljava/util/UUID;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    :goto_0
    return v1

    :cond_5
    return v0

    :cond_6
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 119
    iget-boolean v0, p0, Lcom/googlecode/mp4parser/b/b/b/a;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    const/16 v0, 0x13

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 120
    iget-byte v1, p0, Lcom/googlecode/mp4parser/b/b/b/a;->b:B

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 121
    iget-object v1, p0, Lcom/googlecode/mp4parser/b/b/b/a;->c:Ljava/util/UUID;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/UUID;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CencSampleEncryptionInformationGroupEntry{isEncrypted="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    iget-boolean v1, p0, Lcom/googlecode/mp4parser/b/b/b/a;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ivSize="

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/googlecode/mp4parser/b/b/b/a;->b:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", kid="

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/googlecode/mp4parser/b/b/b/a;->c:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
