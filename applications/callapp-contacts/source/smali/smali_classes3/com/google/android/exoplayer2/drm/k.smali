.class public final Lcom/google/android/exoplayer2/drm/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/i;


# static fields
.field public static final a:Lcom/google/android/exoplayer2/drm/i$d;


# instance fields
.field private final b:Ljava/util/UUID;

.field private final c:Landroid/media/MediaDrm;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    sget-object v0, Lcom/google/android/exoplayer2/drm/-$$Lambda$k$z7KPPTFmpecNbZoov3QKXgAAgP4;->INSTANCE:Lcom/google/android/exoplayer2/drm/-$$Lambda$k$z7KPPTFmpecNbZoov3QKXgAAgP4;

    sput-object v0, Lcom/google/android/exoplayer2/drm/k;->a:Lcom/google/android/exoplayer2/drm/i$d;

    return-void
.end method

.method private constructor <init>(Ljava/util/UUID;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/UnsupportedSchemeException;
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/google/android/exoplayer2/f;->b:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Use C.CLEARKEY_UUID instead"

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/a;->a(ZLjava/lang/Object;)V

    .line 106
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/k;->b:Ljava/util/UUID;

    .line 107
    new-instance v0, Landroid/media/MediaDrm;

    invoke-static {p1}, Lcom/google/android/exoplayer2/drm/k;->b(Ljava/util/UUID;)Ljava/util/UUID;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/k;->c:Landroid/media/MediaDrm;

    .line 109
    iput v1, p0, Lcom/google/android/exoplayer2/drm/k;->d:I

    .line 110
    sget-object v1, Lcom/google/android/exoplayer2/f;->d:Ljava/util/UUID;

    invoke-virtual {v1, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1432
    sget-object p1, Lcom/google/android/exoplayer2/util/af;->d:Ljava/lang/String;

    const-string v1, "ASUS_Z00AD"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "securityLevel"

    const-string v1, "L3"

    .line 2423
    invoke-virtual {v0, p1, v1}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static a(Ljava/util/UUID;)Lcom/google/android/exoplayer2/drm/k;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;
        }
    .end annotation

    .line 95
    :try_start_0
    new-instance v0, Lcom/google/android/exoplayer2/drm/k;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/drm/k;-><init>(Ljava/util/UUID;)V
    :try_end_0
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 99
    new-instance v0, Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;-><init>(ILjava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p0

    .line 97
    new-instance v0, Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;-><init>(ILjava/lang/Exception;)V

    throw v0
.end method

.method private synthetic a(Lcom/google/android/exoplayer2/drm/i$c;Landroid/media/MediaDrm;[BII[B)V
    .locals 0

    .line 121
    invoke-interface {p1, p3, p4}, Lcom/google/android/exoplayer2/drm/i$c;->a([BI)V

    return-void
.end method

.method private static b(Ljava/util/UUID;)Ljava/util/UUID;
    .locals 2

    .line 365
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v1, 0x1b

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/google/android/exoplayer2/f;->c:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/google/android/exoplayer2/f;->b:Ljava/util/UUID;

    :cond_0
    return-object p0
.end method

.method private static synthetic c(Ljava/util/UUID;)Lcom/google/android/exoplayer2/drm/i;
    .locals 2

    .line 60
    :try_start_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/k;->a(Ljava/util/UUID;)Lcom/google/android/exoplayer2/drm/k;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/android/exoplayer2/drm/UnsupportedDrmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 62
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to instantiate a FrameworkMediaDrm for uuid: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FrameworkMediaDrm"

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/n;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance p0, Lcom/google/android/exoplayer2/drm/f;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/f;-><init>()V

    return-object p0
.end method

.method public static synthetic lambda$Gx_4WBid3YFD_Cq6KlZN7diuSvk(Lcom/google/android/exoplayer2/drm/k;Lcom/google/android/exoplayer2/drm/i$c;Landroid/media/MediaDrm;[BII[B)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/exoplayer2/drm/k;->a(Lcom/google/android/exoplayer2/drm/i$c;Landroid/media/MediaDrm;[BII[B)V

    return-void
.end method

.method public static synthetic lambda$z7KPPTFmpecNbZoov3QKXgAAgP4(Ljava/util/UUID;)Lcom/google/android/exoplayer2/drm/i;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/k;->c(Ljava/util/UUID;)Lcom/google/android/exoplayer2/drm/i;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a([BLjava/util/List;ILjava/util/HashMap;)Lcom/google/android/exoplayer2/drm/i$b;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplayer2/drm/i$b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    const/16 v3, 0x17

    if-eqz v1, :cond_16

    .line 194
    iget-object v2, v0, Lcom/google/android/exoplayer2/drm/k;->b:Ljava/util/UUID;

    .line 3310
    sget-object v4, Lcom/google/android/exoplayer2/f;->d:Ljava/util/UUID;

    invoke-virtual {v4, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_8

    .line 3315
    sget v2, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v7, 0x1c

    if-lt v2, v7, :cond_4

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v5, :cond_4

    .line 3317
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 3320
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_2

    .line 3321
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 3322
    iget-object v10, v9, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->data:[B

    invoke-static {v10}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 3323
    iget-object v11, v9, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    iget-object v12, v2, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v9, v9, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    iget-object v11, v2, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    .line 3324
    invoke-static {v9, v11}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 4086
    invoke-static {v10}, Lcom/google/android/exoplayer2/extractor/f/h;->b([B)Lcom/google/android/exoplayer2/extractor/f/h$a;

    move-result-object v9

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_1

    .line 3326
    array-length v9, v10

    add-int/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    goto :goto_2

    :cond_2
    const/4 v7, 0x1

    :goto_2
    if-eqz v7, :cond_4

    .line 3333
    new-array v7, v8, [B

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 3335
    :goto_3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_3

    .line 3336
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 3337
    iget-object v10, v10, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->data:[B

    invoke-static {v10}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 3338
    array-length v11, v10

    .line 3339
    invoke-static {v10, v6, v7, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v9, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 3343
    :cond_3
    invoke-virtual {v2, v7}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->copyWithData([B)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v1

    goto :goto_7

    :cond_4
    const/4 v2, 0x0

    .line 3349
    :goto_4
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_8

    .line 3350
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 3351
    iget-object v8, v7, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->data:[B

    invoke-static {v8}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 4117
    invoke-static {v8}, Lcom/google/android/exoplayer2/extractor/f/h;->b([B)Lcom/google/android/exoplayer2/extractor/f/h$a;

    move-result-object v8

    if-nez v8, :cond_5

    const/4 v8, -0x1

    goto :goto_5

    .line 4195
    :cond_5
    iget v8, v8, Lcom/google/android/exoplayer2/extractor/f/h$a;->b:I

    .line 3352
    :goto_5
    sget v9, Lcom/google/android/exoplayer2/util/af;->a:I

    if-ge v9, v3, :cond_6

    if-nez v8, :cond_6

    goto :goto_6

    .line 3354
    :cond_6
    sget v9, Lcom/google/android/exoplayer2/util/af;->a:I

    if-lt v9, v3, :cond_7

    if-ne v8, v5, :cond_7

    :goto_6
    move-object v2, v7

    goto :goto_8

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 3360
    :cond_8
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    :goto_7
    move-object v2, v1

    .line 195
    :goto_8
    iget-object v1, v0, Lcom/google/android/exoplayer2/drm/k;->b:Ljava/util/UUID;

    iget-object v7, v2, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->data:[B

    invoke-static {v7}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 4370
    sget-object v8, Lcom/google/android/exoplayer2/f;->e:Ljava/util/UUID;

    invoke-virtual {v8, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 4371
    invoke-static {v7, v1}, Lcom/google/android/exoplayer2/extractor/f/h;->a([BLjava/util/UUID;)[B

    move-result-object v8

    if-nez v8, :cond_9

    goto :goto_9

    :cond_9
    move-object v7, v8

    .line 4376
    :goto_9
    sget-object v8, Lcom/google/android/exoplayer2/f;->e:Ljava/util/UUID;

    .line 4442
    new-instance v9, Lcom/google/android/exoplayer2/util/u;

    invoke-direct {v9, v7}, Lcom/google/android/exoplayer2/util/u;-><init>([B)V

    .line 4445
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/u;->k()I

    move-result v10

    .line 4446
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/u;->f()S

    move-result v11

    .line 4447
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/u;->f()S

    move-result v12

    if-ne v11, v5, :cond_d

    if-eq v12, v5, :cond_a

    goto :goto_a

    .line 4452
    :cond_a
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/u;->f()S

    move-result v5

    .line 4453
    sget-object v13, Lcom/google/common/base/d;->e:Ljava/nio/charset/Charset;

    invoke-virtual {v9, v5, v13}, Lcom/google/android/exoplayer2/util/u;->a(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "<LA_URL>"

    .line 4454
    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_b

    goto :goto_b

    :cond_b
    const-string v7, "</DATA>"

    .line 4459
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v4, :cond_c

    const-string v4, "FrameworkMediaDrm"

    const-string v9, "Could not find the </DATA> tag. Skipping LA_URL workaround."

    .line 4461
    invoke-static {v4, v9}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4463
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 4464
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "<LA_URL>https://x</LA_URL>"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4466
    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v10, v10, 0x34

    .line 4468
    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 4469
    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 4470
    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    int-to-short v7, v11

    .line 4471
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    int-to-short v7, v12

    .line 4472
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 4473
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    int-to-short v7, v7

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 4474
    sget-object v7, Lcom/google/common/base/d;->e:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 4475
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    goto :goto_b

    .line 4449
    :cond_d
    :goto_a
    invoke-static {}, Lcom/google/android/exoplayer2/util/n;->b()V

    :goto_b
    if-eqz v7, :cond_e

    .line 5054
    array-length v4, v7

    goto :goto_c

    :cond_e
    const/4 v4, 0x0

    :goto_c
    add-int/lit8 v4, v4, 0x20

    .line 5059
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 5060
    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const v4, 0x70737368    # 3.013775E29f

    .line 5061
    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5062
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5063
    invoke-virtual {v8}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 5064
    invoke-virtual {v8}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_f

    .line 5072
    array-length v4, v7

    if-eqz v4, :cond_f

    .line 5073
    array-length v4, v7

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5074
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 5076
    :cond_f
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    .line 4388
    :cond_10
    sget v4, Lcom/google/android/exoplayer2/util/af;->a:I

    if-ge v4, v3, :cond_11

    sget-object v4, Lcom/google/android/exoplayer2/f;->d:Ljava/util/UUID;

    invoke-virtual {v4, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    :cond_11
    sget-object v4, Lcom/google/android/exoplayer2/f;->e:Ljava/util/UUID;

    .line 4389
    invoke-virtual {v4, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    sget-object v4, Lcom/google/android/exoplayer2/util/af;->c:Ljava/lang/String;

    const-string v5, "Amazon"

    .line 4390
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    sget-object v4, Lcom/google/android/exoplayer2/util/af;->d:Ljava/lang/String;

    const-string v5, "AFTB"

    .line 4391
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    sget-object v4, Lcom/google/android/exoplayer2/util/af;->d:Ljava/lang/String;

    const-string v5, "AFTS"

    .line 4392
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    sget-object v4, Lcom/google/android/exoplayer2/util/af;->d:Ljava/lang/String;

    const-string v5, "AFTM"

    .line 4393
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    sget-object v4, Lcom/google/android/exoplayer2/util/af;->d:Ljava/lang/String;

    const-string v5, "AFTT"

    .line 4394
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 4395
    :cond_12
    invoke-static {v7, v1}, Lcom/google/android/exoplayer2/extractor/f/h;->a([BLjava/util/UUID;)[B

    move-result-object v1

    if-eqz v1, :cond_13

    goto :goto_d

    :cond_13
    move-object v1, v7

    .line 196
    :goto_d
    iget-object v4, v0, Lcom/google/android/exoplayer2/drm/k;->b:Ljava/util/UUID;

    iget-object v5, v2, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    .line 5406
    sget v6, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v7, 0x1a

    if-ge v6, v7, :cond_15

    sget-object v6, Lcom/google/android/exoplayer2/f;->c:Ljava/util/UUID;

    .line 5407
    invoke-virtual {v6, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    const-string v4, "video/mp4"

    .line 5408
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string v4, "audio/mp4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    :cond_14
    const-string v4, "cenc"

    goto :goto_e

    :cond_15
    move-object v4, v5

    :goto_e
    move-object v7, v1

    move-object v8, v4

    goto :goto_f

    :cond_16
    move-object v7, v2

    move-object v8, v7

    .line 198
    :goto_f
    iget-object v5, v0, Lcom/google/android/exoplayer2/drm/k;->c:Landroid/media/MediaDrm;

    move-object v6, p1

    move/from16 v9, p3

    move-object/from16 v10, p4

    .line 199
    invoke-virtual/range {v5 .. v10}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object v1

    .line 201
    iget-object v4, v0, Lcom/google/android/exoplayer2/drm/k;->b:Ljava/util/UUID;

    invoke-virtual {v1}, Landroid/media/MediaDrm$KeyRequest;->getData()[B

    move-result-object v5

    .line 5415
    sget-object v6, Lcom/google/android/exoplayer2/f;->c:Ljava/util/UUID;

    invoke-virtual {v6, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 6040
    sget v4, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v6, 0x1b

    if-lt v4, v6, :cond_17

    goto :goto_10

    .line 6047
    :cond_17
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/af;->a([B)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2b

    const/16 v6, 0x2d

    .line 6090
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2f

    const/16 v6, 0x5f

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 6048
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/af;->c(Ljava/lang/String;)[B

    move-result-object v5

    .line 203
    :cond_18
    :goto_10
    invoke-virtual {v1}, Landroid/media/MediaDrm$KeyRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v4

    const-string v6, "https://x"

    .line 204
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    const-string v4, ""

    .line 207
    :cond_19
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1a

    if-eqz v2, :cond_1a

    iget-object v6, v2, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    .line 209
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1a

    .line 210
    iget-object v4, v2, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    .line 215
    :cond_1a
    sget v2, Lcom/google/android/exoplayer2/util/af;->a:I

    if-lt v2, v3, :cond_1b

    invoke-virtual {v1}, Landroid/media/MediaDrm$KeyRequest;->getRequestType()I

    move-result v1

    goto :goto_11

    :cond_1b
    const/high16 v1, -0x80000000

    .line 217
    :goto_11
    new-instance v2, Lcom/google/android/exoplayer2/drm/i$b;

    invoke-direct {v2, v5, v4, v1}, Lcom/google/android/exoplayer2/drm/i$b;-><init>([BLjava/lang/String;I)V

    return-object v2
.end method

.method public final a(Lcom/google/android/exoplayer2/drm/i$c;)V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/k;->c:Landroid/media/MediaDrm;

    .line 120
    new-instance v1, Lcom/google/android/exoplayer2/drm/-$$Lambda$k$Gx_4WBid3YFD_Cq6KlZN7diuSvk;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/drm/-$$Lambda$k$Gx_4WBid3YFD_Cq6KlZN7diuSvk;-><init>(Lcom/google/android/exoplayer2/drm/k;Lcom/google/android/exoplayer2/drm/i$c;)V

    .line 117
    invoke-virtual {v0, v1}, Landroid/media/MediaDrm;->setOnEventListener(Landroid/media/MediaDrm$OnEventListener;)V

    return-void
.end method

.method public final a([B)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/k;->c:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->closeSession([B)V

    return-void
.end method

.method public final a()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaDrmException;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/k;->c:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object v0

    return-object v0
.end method

.method public final a([B[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;,
            Landroid/media/DeniedByServerException;
        }
    .end annotation

    .line 224
    sget-object v0, Lcom/google/android/exoplayer2/f;->c:Ljava/util/UUID;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/k;->b:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    invoke-static {p2}, Lcom/google/android/exoplayer2/drm/a;->a([B)[B

    move-result-object p2

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/k;->c:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->provideKeyResponse([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public final b()Lcom/google/android/exoplayer2/drm/i$e;
    .locals 3

    .line 233
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/k;->c:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object v0

    .line 234
    new-instance v1, Lcom/google/android/exoplayer2/drm/i$e;

    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    move-result-object v2

    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/exoplayer2/drm/i$e;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public final b([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/DeniedByServerException;
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/k;->c:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->provideProvisionResponse([B)V

    return-void
.end method

.method public final b([B[B)V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/k;->c:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->restoreKeys([B[B)V

    return-void
.end method

.method public final c([B)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/k;->c:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->queryKeyStatus([B)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized c()V
    .locals 2

    monitor-enter p0

    .line 249
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/drm/k;->d:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 250
    iget v0, p0, Lcom/google/android/exoplayer2/drm/k;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/drm/k;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final synthetic d([B)Lcom/google/android/exoplayer2/drm/h;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCryptoException;
        }
    .end annotation

    .line 6298
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/google/android/exoplayer2/f;->d:Ljava/util/UUID;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/k;->b:Ljava/util/UUID;

    .line 6299
    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7276
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/k;->c:Landroid/media/MediaDrm;

    const-string v1, "securityLevel"

    invoke-virtual {v0, v1}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "L3"

    .line 6299
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6300
    :goto_0
    new-instance v1, Lcom/google/android/exoplayer2/drm/j;

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/k;->b:Ljava/util/UUID;

    .line 6301
    invoke-static {v2}, Lcom/google/android/exoplayer2/drm/k;->b(Ljava/util/UUID;)Ljava/util/UUID;

    move-result-object v2

    invoke-direct {v1, v2, p1, v0}, Lcom/google/android/exoplayer2/drm/j;-><init>(Ljava/util/UUID;[BZ)V

    return-object v1
.end method

.method public final declared-synchronized d()V
    .locals 1

    monitor-enter p0

    .line 255
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/drm/k;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/drm/k;->d:I

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/k;->c:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/google/android/exoplayer2/drm/j;",
            ">;"
        }
    .end annotation

    .line 306
    const-class v0, Lcom/google/android/exoplayer2/drm/j;

    return-object v0
.end method
