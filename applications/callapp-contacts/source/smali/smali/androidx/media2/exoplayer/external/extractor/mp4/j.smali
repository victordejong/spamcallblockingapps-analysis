.class public final Landroidx/media2/exoplayer/external/extractor/mp4/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/mp4/j$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)Ljava/util/UUID;
    .locals 0

    .line 106
    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/j;->b([B)Landroidx/media2/exoplayer/external/extractor/mp4/j$a;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1199
    :cond_0
    iget-object p0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/j$a;->a:Ljava/util/UUID;

    return-object p0
.end method

.method public static a(Ljava/util/UUID;[B)[B
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1061
    array-length v1, p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v1, v1, 0x20

    .line 1066
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1067
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const v1, 0x70737368    # 3.013775E29f

    .line 1068
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1069
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1070
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1071
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_1

    .line 1079
    array-length p0, p1

    if-eqz p0, :cond_1

    .line 1080
    array-length p0, p1

    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1081
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1083
    :cond_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method private static b([B)Landroidx/media2/exoplayer/external/extractor/mp4/j$a;
    .locals 9

    .line 162
    new-instance v0, Landroidx/media2/exoplayer/external/util/p;

    invoke-direct {v0, p0}, Landroidx/media2/exoplayer/external/util/p;-><init>([B)V

    .line 2125
    iget p0, v0, Landroidx/media2/exoplayer/external/util/p;->c:I

    const/4 v1, 0x0

    const/16 v2, 0x20

    if-ge p0, v2, :cond_0

    return-object v1

    :cond_0
    const/4 p0, 0x0

    .line 167
    invoke-virtual {v0, p0}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 168
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v2

    .line 169
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    if-eq v2, v3, :cond_1

    return-object v1

    .line 173
    :cond_1
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v2

    const v3, 0x70737368    # 3.013775E29f

    if-eq v2, v3, :cond_2

    return-object v1

    .line 178
    :cond_2
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v2

    invoke-static {v2}, Landroidx/media2/exoplayer/external/extractor/mp4/a;->a(I)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    const/16 p0, 0x25

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Unsupported pssh version: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PsshAtomUtil"

    invoke-static {v0, p0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 183
    :cond_3
    new-instance v4, Ljava/util/UUID;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/p;->k()J

    move-result-wide v5

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/p;->k()J

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/util/UUID;-><init>(JJ)V

    if-ne v2, v3, :cond_4

    .line 185
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/p;->n()I

    move-result v3

    mul-int/lit8 v3, v3, 0x10

    .line 186
    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 188
    :cond_4
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/p;->n()I

    move-result v3

    .line 189
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v5

    if-eq v3, v5, :cond_5

    return-object v1

    .line 193
    :cond_5
    new-array v1, v3, [B

    .line 194
    invoke-virtual {v0, v1, p0, v3}, Landroidx/media2/exoplayer/external/util/p;->a([BII)V

    .line 195
    new-instance p0, Landroidx/media2/exoplayer/external/extractor/mp4/j$a;

    invoke-direct {p0, v4, v2, v1}, Landroidx/media2/exoplayer/external/extractor/mp4/j$a;-><init>(Ljava/util/UUID;I[B)V

    return-object p0
.end method
