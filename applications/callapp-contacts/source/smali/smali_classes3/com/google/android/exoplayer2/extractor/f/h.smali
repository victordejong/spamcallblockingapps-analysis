.class public final Lcom/google/android/exoplayer2/extractor/f/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/f/h$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)Ljava/util/UUID;
    .locals 0

    .line 100
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/f/h;->b([B)Lcom/google/android/exoplayer2/extractor/f/h$a;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1195
    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/f/h$a;->a:Ljava/util/UUID;

    return-object p0
.end method

.method public static a([BLjava/util/UUID;)[B
    .locals 3

    .line 137
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/f/h;->b([B)Lcom/google/android/exoplayer2/extractor/f/h$a;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2195
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/h$a;->a:Ljava/util/UUID;

    .line 141
    invoke-virtual {p1, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UUID mismatch. Expected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", got: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3195
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/f/h$a;->a:Ljava/util/UUID;

    .line 142
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PsshAtomUtil"

    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 4195
    :cond_1
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/f/h$a;->c:[B

    return-object p0
.end method

.method public static b([B)Lcom/google/android/exoplayer2/extractor/f/h$a;
    .locals 9

    .line 158
    new-instance v0, Lcom/google/android/exoplayer2/util/u;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/util/u;-><init>([B)V

    .line 5127
    iget p0, v0, Lcom/google/android/exoplayer2/util/u;->c:I

    const/4 v1, 0x0

    const/16 v2, 0x20

    if-ge p0, v2, :cond_0

    return-object v1

    :cond_0
    const/4 p0, 0x0

    .line 163
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 164
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v2

    .line 165
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    if-eq v2, v3, :cond_1

    return-object v1

    .line 169
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v2

    const v3, 0x70737368    # 3.013775E29f

    if-eq v2, v3, :cond_2

    return-object v1

    .line 174
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/f/a;->a(I)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    .line 176
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Unsupported pssh version: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "PsshAtomUtil"

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 179
    :cond_3
    new-instance v4, Ljava/util/UUID;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->l()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->l()J

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/util/UUID;-><init>(JJ)V

    if-ne v2, v3, :cond_4

    .line 181
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->o()I

    move-result v3

    mul-int/lit8 v3, v3, 0x10

    .line 182
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 184
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->o()I

    move-result v3

    .line 185
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v5

    if-eq v3, v5, :cond_5

    return-object v1

    .line 189
    :cond_5
    new-array v1, v3, [B

    .line 190
    invoke-virtual {v0, v1, p0, v3}, Lcom/google/android/exoplayer2/util/u;->a([BII)V

    .line 191
    new-instance p0, Lcom/google/android/exoplayer2/extractor/f/h$a;

    invoke-direct {p0, v4, v2, v1}, Lcom/google/android/exoplayer2/extractor/f/h$a;-><init>(Ljava/util/UUID;I[B)V

    return-object p0
.end method
