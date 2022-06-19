.class public final Lcom/google/android/gms/internal/ads/dho;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/dho;

.field private static final k:Lcom/google/android/gms/internal/ads/dho;

.field private static final l:Lcom/google/android/gms/internal/ads/dho;

.field private static final m:Lcom/google/android/gms/internal/ads/dho;


# instance fields
.field private final b:D

.field private final c:D

.field private final d:D

.field private final e:D

.field private final f:D

.field private final g:D

.field private final h:D

.field private final i:D

.field private final j:D


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .prologue
    .line 66
    new-instance v1, Lcom/google/android/gms/internal/ads/dho;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    invoke-direct/range {v1 .. v19}, Lcom/google/android/gms/internal/ads/dho;-><init>(DDDDDDDDD)V

    sput-object v1, Lcom/google/android/gms/internal/ads/dho;->a:Lcom/google/android/gms/internal/ads/dho;

    .line 67
    new-instance v1, Lcom/google/android/gms/internal/ads/dho;

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    invoke-direct/range {v1 .. v19}, Lcom/google/android/gms/internal/ads/dho;-><init>(DDDDDDDDD)V

    sput-object v1, Lcom/google/android/gms/internal/ads/dho;->k:Lcom/google/android/gms/internal/ads/dho;

    .line 68
    new-instance v1, Lcom/google/android/gms/internal/ads/dho;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    invoke-direct/range {v1 .. v19}, Lcom/google/android/gms/internal/ads/dho;-><init>(DDDDDDDDD)V

    sput-object v1, Lcom/google/android/gms/internal/ads/dho;->l:Lcom/google/android/gms/internal/ads/dho;

    .line 69
    new-instance v1, Lcom/google/android/gms/internal/ads/dho;

    const-wide/16 v2, 0x0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    invoke-direct/range {v1 .. v19}, Lcom/google/android/gms/internal/ads/dho;-><init>(DDDDDDDDD)V

    sput-object v1, Lcom/google/android/gms/internal/ads/dho;->m:Lcom/google/android/gms/internal/ads/dho;

    return-void
.end method

.method private constructor <init>(DDDDDDDDD)V
    .locals 3

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p9, p0, Lcom/google/android/gms/internal/ads/dho;->b:D

    .line 3
    iput-wide p11, p0, Lcom/google/android/gms/internal/ads/dho;->c:D

    .line 4
    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dho;->d:D

    .line 5
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/dho;->e:D

    .line 6
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/dho;->f:D

    .line 7
    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/dho;->g:D

    .line 8
    iput-wide p7, p0, Lcom/google/android/gms/internal/ads/dho;->h:D

    .line 9
    move-wide/from16 v0, p15

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dho;->i:D

    .line 10
    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dho;->j:D

    .line 11
    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;)Lcom/google/android/gms/internal/ads/dho;
    .locals 20

    .prologue
    .line 53
    .line 54
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/aej;->d(Ljava/nio/ByteBuffer;)D

    move-result-wide v2

    .line 55
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/aej;->d(Ljava/nio/ByteBuffer;)D

    move-result-wide v4

    .line 56
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/aej;->e(Ljava/nio/ByteBuffer;)D

    move-result-wide v10

    .line 57
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/aej;->d(Ljava/nio/ByteBuffer;)D

    move-result-wide v6

    .line 58
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/aej;->d(Ljava/nio/ByteBuffer;)D

    move-result-wide v8

    .line 59
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/aej;->e(Ljava/nio/ByteBuffer;)D

    move-result-wide v12

    .line 60
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/aej;->d(Ljava/nio/ByteBuffer;)D

    move-result-wide v16

    .line 61
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/aej;->d(Ljava/nio/ByteBuffer;)D

    move-result-wide v18

    .line 62
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/aej;->e(Ljava/nio/ByteBuffer;)D

    move-result-wide v14

    .line 64
    new-instance v1, Lcom/google/android/gms/internal/ads/dho;

    invoke-direct/range {v1 .. v19}, Lcom/google/android/gms/internal/ads/dho;-><init>(DDDDDDDDD)V

    .line 65
    return-object v1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 12
    if-ne p0, p1, :cond_1

    .line 24
    :cond_0
    :goto_0
    return v0

    .line 13
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 14
    :cond_3
    check-cast p1, Lcom/google/android/gms/internal/ads/dho;

    .line 15
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/dho;->e:D

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/dho;->e:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 16
    :cond_4
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/dho;->f:D

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/dho;->f:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    .line 17
    :cond_5
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/dho;->g:D

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/dho;->g:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_0

    .line 18
    :cond_6
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/dho;->h:D

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/dho;->h:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_7

    move v0, v1

    goto :goto_0

    .line 19
    :cond_7
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/dho;->i:D

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/dho;->i:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_8

    move v0, v1

    goto :goto_0

    .line 20
    :cond_8
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/dho;->j:D

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/dho;->j:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_9

    move v0, v1

    goto :goto_0

    .line 21
    :cond_9
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/dho;->b:D

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/dho;->b:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_a

    move v0, v1

    goto :goto_0

    .line 22
    :cond_a
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/dho;->c:D

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/dho;->c:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_b

    move v0, v1

    goto :goto_0

    .line 23
    :cond_b
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/dho;->d:D

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/dho;->d:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 25
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dho;->b:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 26
    ushr-long v2, v0, v6

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 27
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dho;->c:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 28
    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 29
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dho;->d:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 30
    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 31
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dho;->e:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 32
    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 33
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dho;->f:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 34
    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 35
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dho;->g:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 36
    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 37
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dho;->h:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 38
    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 39
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dho;->i:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 40
    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 41
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dho;->j:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 42
    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 43
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 22

    .prologue
    .line 44
    sget-object v2, Lcom/google/android/gms/internal/ads/dho;->a:Lcom/google/android/gms/internal/ads/dho;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/dho;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    const-string/jumbo v2, "Rotate 0\u00b0"

    .line 52
    :goto_0
    return-object v2

    .line 46
    :cond_0
    sget-object v2, Lcom/google/android/gms/internal/ads/dho;->k:Lcom/google/android/gms/internal/ads/dho;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/dho;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    const-string/jumbo v2, "Rotate 90\u00b0"

    goto :goto_0

    .line 48
    :cond_1
    sget-object v2, Lcom/google/android/gms/internal/ads/dho;->l:Lcom/google/android/gms/internal/ads/dho;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/dho;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 49
    const-string/jumbo v2, "Rotate 180\u00b0"

    goto :goto_0

    .line 50
    :cond_2
    sget-object v2, Lcom/google/android/gms/internal/ads/dho;->m:Lcom/google/android/gms/internal/ads/dho;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/dho;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 51
    const-string/jumbo v2, "Rotate 270\u00b0"

    goto :goto_0

    .line 52
    :cond_3
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/dho;->b:D

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/dho;->c:D

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/dho;->d:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/dho;->e:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/dho;->f:D

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/dho;->g:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/dho;->h:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/dho;->i:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/dho;->j:D

    move-wide/from16 v18, v0

    const/16 v20, 0x104

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v20, "Matrix{u="

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", v="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", w="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", a="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", b="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", c="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", d="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", tx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", ty="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method
