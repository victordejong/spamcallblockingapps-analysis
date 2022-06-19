.class public final Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;
.super Lcom/google/android/exoplayer2/trackselection/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;,
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;,
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;,
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$e;,
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;,
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;,
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;
    }
.end annotation


# static fields
.field private static final b:[I

.field private static final c:Lcom/google/common/collect/an;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/an<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lcom/google/common/collect/an;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/an<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final e:Lcom/google/android/exoplayer2/trackselection/c$b;

.field private final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 1615
    sput-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->b:[I

    .line 1617
    sget-object v0, Lcom/google/android/exoplayer2/trackselection/-$$Lambda$DefaultTrackSelector$Z2Vlah-5LKefLbYS6DEef6odOek;->INSTANCE:Lcom/google/android/exoplayer2/trackselection/-$$Lambda$DefaultTrackSelector$Z2Vlah-5LKefLbYS6DEef6odOek;

    .line 1618
    invoke-static {v0}, Lcom/google/common/collect/an;->a(Ljava/util/Comparator;)Lcom/google/common/collect/an;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->c:Lcom/google/common/collect/an;

    .line 1624
    sget-object v0, Lcom/google/android/exoplayer2/trackselection/-$$Lambda$DefaultTrackSelector$ipqbCtpmBMyKx__d5oPRaYqjyEA;->INSTANCE:Lcom/google/android/exoplayer2/trackselection/-$$Lambda$DefaultTrackSelector$ipqbCtpmBMyKx__d5oPRaYqjyEA;

    invoke-static {v0}, Lcom/google/common/collect/an;->a(Ljava/util/Comparator;)Lcom/google/common/collect/an;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->d:Lcom/google/common/collect/an;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1632
    sget-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    new-instance v1, Lcom/google/android/exoplayer2/trackselection/a$b;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/trackselection/a$b;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/google/android/exoplayer2/trackselection/c$b;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1643
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/a$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/trackselection/a$b;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/c$b;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/c$b;)V
    .locals 0

    .line 1651
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->getDefaults(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/google/android/exoplayer2/trackselection/c$b;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/google/android/exoplayer2/trackselection/c$b;)V
    .locals 0

    .line 1659
    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/e;-><init>()V

    .line 1660
    iput-object p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->e:Lcom/google/android/exoplayer2/trackselection/c$b;

    .line 1661
    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->f:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/trackselection/c$b;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1638
    sget-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/google/android/exoplayer2/trackselection/c$b;)V

    return-void
.end method

.method protected static a(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;Z)I
    .locals 1

    .line 2547
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x4

    return p0

    .line 2551
    :cond_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2552
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_1

    goto :goto_1

    .line 2557
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const-string p2, "-"

    .line 2561
    invoke-static {p0, p2}, Lcom/google/android/exoplayer2/util/af;->b(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    .line 2562
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/af;->b(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v0

    .line 2563
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    return v0

    :cond_4
    :goto_0
    const/4 p0, 0x3

    return p0

    :cond_5
    :goto_1
    if-eqz p2, :cond_6

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    return v0
.end method

.method private static a(Lcom/google/android/exoplayer2/source/TrackGroup;[IILjava/lang/String;IIIIIIIILjava/util/List;)I
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "[II",
            "Ljava/lang/String;",
            "IIIIIIII",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2057
    :goto_0
    invoke-interface/range {p12 .. p12}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    move-object/from16 v2, p12

    .line 2058
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v4, p0

    .line 2060
    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    aget v7, p1, v3

    move-object/from16 v6, p3

    move/from16 v8, p2

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    move/from16 v15, p10

    move/from16 v16, p11

    .line 2059
    invoke-static/range {v5 .. v16}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->a(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;IIIIIIIIII)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static synthetic a(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private static a(ZIIII)Landroid/graphics/Point;
    .locals 3

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-le p3, p4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-le p1, p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-eq v1, p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, p2

    move p2, p1

    move p1, v2

    :goto_2
    mul-int p0, p3, p1

    mul-int v0, p4, p2

    if-lt p0, v0, :cond_3

    .line 2637
    new-instance p0, Landroid/graphics/Point;

    invoke-static {v0, p3}, Lcom/google/android/exoplayer2/util/af;->a(II)I

    move-result p1

    invoke-direct {p0, p2, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    .line 2640
    :cond_3
    new-instance p2, Landroid/graphics/Point;

    invoke-static {p0, p4}, Lcom/google/android/exoplayer2/util/af;->a(II)I

    move-result p0

    invoke-direct {p2, p0, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p2
.end method

.method private static a(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;)Landroid/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            "[[I",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/trackselection/c$a;",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    move-object v4, v1

    move-object v5, v4

    const/4 v3, 0x0

    .line 2347
    :goto_0
    iget v6, p0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v3, v6, :cond_3

    .line 2348
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v6

    .line 2349
    aget-object v7, p1, v3

    const/4 v8, 0x0

    .line 2350
    :goto_1
    iget v9, v6, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v8, v9, :cond_2

    .line 2351
    aget v9, v7, v8

    iget-boolean v10, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {v9, v10}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->a(IZ)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2353
    invoke-virtual {v6, v8}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v9

    .line 2354
    new-instance v10, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;

    aget v11, v7, v8

    invoke-direct {v10, v9, p2, v11, p3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;-><init>(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;ILjava/lang/String;)V

    .line 2357
    iget-boolean v9, v10, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->a:Z

    if-eqz v9, :cond_1

    if-eqz v5, :cond_0

    .line 2358
    invoke-virtual {v10, v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->a(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;)I

    move-result v9

    if-lez v9, :cond_1

    :cond_0
    move-object v4, v6

    move v2, v8

    move-object v5, v10

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-nez v4, :cond_4

    return-object v1

    .line 2368
    :cond_4
    new-instance p0, Lcom/google/android/exoplayer2/trackselection/c$a;

    const/4 p1, 0x1

    new-array p1, p1, [I

    aput v2, p1, v0

    invoke-direct {p0, v4, p1}, Lcom/google/android/exoplayer2/trackselection/c$a;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    .line 2370
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;

    .line 2368
    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Z)Landroid/util/Pair;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            "[[I",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;",
            "Z)",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/trackselection/c$a;",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object v8, v2

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    .line 2218
    :goto_0
    iget v9, v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v5, v9, :cond_4

    .line 2219
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v9

    .line 2220
    aget-object v10, p1, v5

    const/4 v11, 0x0

    .line 2221
    :goto_1
    iget v12, v9, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v11, v12, :cond_3

    .line 2222
    aget v12, v10, v11

    iget-boolean v13, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {v12, v13}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->a(IZ)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 2224
    invoke-virtual {v9, v11}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v12

    .line 2225
    new-instance v13, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;

    aget v14, v10, v11

    invoke-direct {v13, v12, v1, v14}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;-><init>(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;I)V

    .line 2227
    iget-boolean v12, v13, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;->a:Z

    if-nez v12, :cond_0

    iget-boolean v12, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedAudioConstraintsIfNecessary:Z

    if-eqz v12, :cond_2

    :cond_0
    if-eqz v8, :cond_1

    .line 2231
    invoke-virtual {v13, v8}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;->a(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;)I

    move-result v12

    if-lez v12, :cond_2

    :cond_1
    move v6, v5

    move v7, v11

    move-object v8, v13

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    if-ne v6, v3, :cond_5

    return-object v2

    .line 2244
    :cond_5
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v0

    .line 2247
    iget-boolean v5, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->forceHighestSupportedBitrate:Z

    if-nez v5, :cond_d

    iget-boolean v5, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->forceLowestBitrate:Z

    if-nez v5, :cond_d

    if-eqz p3, :cond_d

    .line 2251
    aget-object v5, p1, v6

    iget v6, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxAudioBitrate:I

    iget-boolean v10, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedMimeTypeAdaptiveness:Z

    iget-boolean v11, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedSampleRateAdaptiveness:Z

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedChannelCountAdaptiveness:Z

    .line 10280
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v12

    .line 10281
    iget v13, v0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    new-array v13, v13, [I

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 10283
    :goto_2
    iget v2, v0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v14, v2, :cond_c

    if-eq v14, v7, :cond_a

    .line 10286
    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    aget v9, v5, v14

    .line 10307
    invoke-static {v9, v4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->a(IZ)Z

    move-result v9

    if-eqz v9, :cond_9

    iget v9, v2, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-eq v9, v3, :cond_9

    iget v9, v2, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-gt v9, v6, :cond_9

    if-nez v1, :cond_6

    iget v9, v2, Lcom/google/android/exoplayer2/Format;->channelCount:I

    if-eq v9, v3, :cond_9

    iget v9, v2, Lcom/google/android/exoplayer2/Format;->channelCount:I

    iget v4, v12, Lcom/google/android/exoplayer2/Format;->channelCount:I

    if-ne v9, v4, :cond_9

    :cond_6
    if-nez v10, :cond_7

    iget-object v4, v2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz v4, :cond_9

    iget-object v4, v2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v9, v12, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 10315
    invoke-static {v4, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_7
    if-nez v11, :cond_8

    iget v4, v2, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    if-eq v4, v3, :cond_9

    iget v2, v2, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    iget v4, v12, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    if-ne v2, v4, :cond_9

    :cond_8
    const/4 v2, 0x1

    goto :goto_3

    :cond_9
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_b

    :cond_a
    add-int/lit8 v2, v15, 0x1

    .line 10293
    aput v14, v13, v15

    move v15, v2

    :cond_b
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x0

    goto :goto_2

    .line 10296
    :cond_c
    invoke-static {v13, v15}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 2260
    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_e

    .line 2261
    new-instance v2, Lcom/google/android/exoplayer2/trackselection/c$a;

    invoke-direct {v2, v0, v1}, Lcom/google/android/exoplayer2/trackselection/c$a;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    goto :goto_4

    :cond_d
    const/4 v3, 0x1

    :cond_e
    const/4 v2, 0x0

    :goto_4
    if-nez v2, :cond_f

    .line 2266
    new-instance v2, Lcom/google/android/exoplayer2/trackselection/c$a;

    new-array v1, v3, [I

    const/4 v3, 0x0

    aput v7, v1, v3

    invoke-direct {v2, v0, v1}, Lcom/google/android/exoplayer2/trackselection/c$a;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    .line 2269
    :cond_f
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;

    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/android/exoplayer2/trackselection/c$a;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    move-object v6, v3

    move-object v7, v6

    const/4 v5, 0x0

    .line 2148
    :goto_0
    iget v8, v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v5, v8, :cond_4

    .line 2149
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v8

    .line 2150
    iget v9, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    iget v10, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    iget-boolean v11, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportOrientationMayChange:Z

    .line 2151
    invoke-static {v8, v9, v10, v11}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->a(Lcom/google/android/exoplayer2/source/TrackGroup;IIZ)Ljava/util/List;

    move-result-object v9

    .line 2156
    aget-object v10, p1, v5

    const/4 v11, 0x0

    .line 2157
    :goto_1
    iget v12, v8, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v11, v12, :cond_3

    .line 2158
    invoke-virtual {v8, v11}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v12

    .line 2159
    iget v13, v12, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    and-int/lit16 v13, v13, 0x4000

    if-nez v13, :cond_2

    .line 2163
    aget v13, v10, v11

    iget-boolean v14, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {v13, v14}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->a(IZ)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 2165
    new-instance v13, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$e;

    aget v14, v10, v11

    .line 2170
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v9, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    invoke-direct {v13, v12, v1, v14, v15}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$e;-><init>(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;IZ)V

    .line 2171
    iget-boolean v12, v13, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$e;->a:Z

    if-nez v12, :cond_0

    iget-boolean v12, v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    if-eqz v12, :cond_2

    :cond_0
    if-eqz v7, :cond_1

    .line 2175
    invoke-virtual {v13, v7}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$e;->a(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$e;)I

    move-result v12

    if-lez v12, :cond_2

    :cond_1
    move-object v6, v8

    move v4, v11

    move-object v7, v13

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    if-nez v6, :cond_5

    return-object v3

    .line 2186
    :cond_5
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/c$a;

    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v4, v1, v2

    invoke-direct {v0, v6, v1}, Lcom/google/android/exoplayer2/trackselection/c$a;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    return-object v0
.end method

.method protected static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2528
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "und"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Lcom/google/android/exoplayer2/source/TrackGroup;IIZ)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "IIZ)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2573
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2574
    :goto_0
    iget v3, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v2, v3, :cond_0

    .line 2575
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const v2, 0x7fffffff

    if-eq p1, v2, :cond_6

    if-ne p2, v2, :cond_1

    goto :goto_3

    :cond_1
    const v3, 0x7fffffff

    .line 2584
    :goto_1
    iget v4, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v1, v4, :cond_3

    .line 2585
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    .line 2589
    iget v5, v4, Lcom/google/android/exoplayer2/Format;->width:I

    if-lez v5, :cond_2

    iget v5, v4, Lcom/google/android/exoplayer2/Format;->height:I

    if-lez v5, :cond_2

    .line 2590
    iget v5, v4, Lcom/google/android/exoplayer2/Format;->width:I

    iget v6, v4, Lcom/google/android/exoplayer2/Format;->height:I

    .line 2591
    invoke-static {p3, p1, p2, v5, v6}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->a(ZIIII)Landroid/graphics/Point;

    move-result-object v5

    .line 2593
    iget v6, v4, Lcom/google/android/exoplayer2/Format;->width:I

    iget v7, v4, Lcom/google/android/exoplayer2/Format;->height:I

    mul-int v6, v6, v7

    .line 2594
    iget v7, v4, Lcom/google/android/exoplayer2/Format;->width:I

    iget v8, v5, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    const v9, 0x3f7ae148    # 0.98f

    mul-float v8, v8, v9

    float-to-int v8, v8

    if-lt v7, v8, :cond_2

    iget v4, v4, Lcom/google/android/exoplayer2/Format;->height:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    mul-float v5, v5, v9

    float-to-int v5, v5

    if-lt v4, v5, :cond_2

    if-ge v6, v3, :cond_2

    move v3, v6

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-eq v3, v2, :cond_6

    .line 2606
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_2
    if-ltz p1, :cond_6

    .line 2607
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object p2

    .line 2608
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Format;->getPixelCount()I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_4

    if-le p2, v3, :cond_5

    .line 2610
    :cond_4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_5
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_6
    :goto_3
    return-object v0
.end method

.method private static a(Lcom/google/android/exoplayer2/trackselection/e$a;[[[I[Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/trackselection/c;)V
    .locals 14

    move-object v0, p0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    .line 11128
    :goto_0
    iget v6, v0, Lcom/google/android/exoplayer2/trackselection/e$a;->a:I

    const/4 v7, 0x1

    if-ge v3, v6, :cond_8

    .line 11150
    iget-object v6, v0, Lcom/google/android/exoplayer2/trackselection/e$a;->b:[I

    aget v6, v6, v3

    .line 2441
    aget-object v8, p3, v3

    if-eq v6, v7, :cond_0

    const/4 v9, 0x2

    if-ne v6, v9, :cond_7

    :cond_0
    if-eqz v8, :cond_7

    .line 2444
    aget-object v9, p1, v3

    .line 11160
    iget-object v10, v0, Lcom/google/android/exoplayer2/trackselection/e$a;->c:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v10, v10, v3

    if-nez v8, :cond_1

    :goto_1
    const/4 v8, 0x0

    goto :goto_3

    .line 11489
    :cond_1
    invoke-interface {v8}, Lcom/google/android/exoplayer2/trackselection/c;->d()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v10

    const/4 v11, 0x0

    .line 11490
    :goto_2
    invoke-interface {v8}, Lcom/google/android/exoplayer2/trackselection/c;->e()I

    move-result v12

    if-ge v11, v12, :cond_3

    .line 11492
    aget-object v12, v9, v10

    invoke-interface {v8, v11}, Lcom/google/android/exoplayer2/trackselection/c;->b(I)I

    move-result v13

    aget v12, v12, v13

    const/16 v13, 0x20

    and-int/2addr v12, v13

    if-eq v12, v13, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_3
    const/4 v8, 0x1

    :goto_3
    if-eqz v8, :cond_7

    if-ne v6, v7, :cond_5

    if-eq v5, v1, :cond_4

    goto :goto_4

    :cond_4
    move v5, v3

    goto :goto_5

    :cond_5
    if-eq v4, v1, :cond_6

    :goto_4
    const/4 v0, 0x0

    goto :goto_6

    :cond_6
    move v4, v3

    :cond_7
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    const/4 v0, 0x1

    :goto_6
    if-eq v5, v1, :cond_9

    if-eq v4, v1, :cond_9

    const/4 v2, 0x1

    :cond_9
    and-int/2addr v0, v2

    if-eqz v0, :cond_a

    .line 2466
    new-instance v0, Lcom/google/android/exoplayer2/RendererConfiguration;

    invoke-direct {v0, v7}, Lcom/google/android/exoplayer2/RendererConfiguration;-><init>(Z)V

    .line 2468
    aput-object v0, p2, v5

    .line 2469
    aput-object v0, p2, v4

    :cond_a
    return-void
.end method

.method protected static a(IZ)Z
    .locals 1

    and-int/lit8 p0, p0, 0x7

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;IIIIIIIIII)Z
    .locals 2

    .line 2125
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2129
    :cond_0
    invoke-static {p2, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_6

    and-int/2addr p2, p3

    if-eqz p2, :cond_6

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 2131
    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_1
    iget p1, p0, Lcom/google/android/exoplayer2/Format;->width:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    iget p1, p0, Lcom/google/android/exoplayer2/Format;->width:I

    if-gt p8, p1, :cond_6

    iget p1, p0, Lcom/google/android/exoplayer2/Format;->width:I

    if-gt p1, p4, :cond_6

    :cond_2
    iget p1, p0, Lcom/google/android/exoplayer2/Format;->height:I

    if-eq p1, p2, :cond_3

    iget p1, p0, Lcom/google/android/exoplayer2/Format;->height:I

    if-gt p9, p1, :cond_6

    iget p1, p0, Lcom/google/android/exoplayer2/Format;->height:I

    if-gt p1, p5, :cond_6

    :cond_3
    iget p1, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    const/high16 p3, -0x40800000    # -1.0f

    cmpl-float p1, p1, p3

    if-eqz p1, :cond_4

    int-to-float p1, p10

    iget p3, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    cmpg-float p1, p1, p3

    if-gtz p1, :cond_6

    iget p1, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    int-to-float p3, p6

    cmpg-float p1, p1, p3

    if-gtz p1, :cond_6

    :cond_4
    iget p1, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-eq p1, p2, :cond_5

    iget p1, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-gt p11, p1, :cond_6

    iget p0, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-gt p0, p7, :cond_6

    :cond_5
    const/4 p0, 0x1

    return p0

    :cond_6
    return v1
.end method

.method private static synthetic b(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 2

    .line 1620
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1621
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1

    .line 1622
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method private static b(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/android/exoplayer2/trackselection/c$a;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    move-object v5, v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 2394
    :goto_0
    iget v6, p0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v2, v6, :cond_3

    .line 2395
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v6

    .line 2396
    aget-object v7, p1, v2

    const/4 v8, 0x0

    .line 2397
    :goto_1
    iget v9, v6, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v8, v9, :cond_2

    .line 2398
    aget v9, v7, v8

    iget-boolean v10, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {v9, v10}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->a(IZ)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2400
    invoke-virtual {v6, v8}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v9

    .line 2401
    new-instance v10, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;

    aget v11, v7, v8

    invoke-direct {v10, v9, v11}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;-><init>(Lcom/google/android/exoplayer2/Format;I)V

    if-eqz v5, :cond_0

    .line 2402
    invoke-virtual {v10, v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;->a(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;)I

    move-result v9

    if-lez v9, :cond_1

    :cond_0
    move-object v3, v6

    move v4, v8

    move-object v5, v10

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    return-object v0

    .line 2412
    :cond_4
    new-instance p0, Lcom/google/android/exoplayer2/trackselection/c$a;

    const/4 p1, 0x1

    new-array p1, p1, [I

    aput v4, p1, v1

    invoke-direct {p0, v3, p1}, Lcom/google/android/exoplayer2/trackselection/c$a;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    return-object p0
.end method

.method static synthetic b()Lcom/google/common/collect/an;
    .locals 1

    .line 164
    sget-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->c:Lcom/google/common/collect/an;

    return-object v0
.end method

.method private static b(Lcom/google/android/exoplayer2/source/TrackGroup;[IILjava/lang/String;IIIIIIIILjava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "[II",
            "Ljava/lang/String;",
            "IIIIIIII",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p12

    .line 2092
    invoke-interface/range {p12 .. p12}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 2093
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v3, p0

    .line 2095
    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    aget v6, p1, v2

    move-object/from16 v5, p3

    move/from16 v7, p2

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move/from16 v15, p11

    .line 2094
    invoke-static/range {v4 .. v15}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->a(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;IIIIIIIIII)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2107
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic c()Lcom/google/common/collect/an;
    .locals 1

    .line 164
    sget-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->d:Lcom/google/common/collect/an;

    return-object v0
.end method

.method public static synthetic lambda$Z2Vlah-5LKefLbYS6DEef6odOek(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->b(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$ipqbCtpmBMyKx__d5oPRaYqjyEA(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->a(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method


# virtual methods
.method protected final a(Lcom/google/android/exoplayer2/trackselection/e$a;[[[I[I)Landroid/util/Pair;
    .locals 41
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/trackselection/e$a;",
            "[[[I[I)",
            "Landroid/util/Pair<",
            "[",
            "Lcom/google/android/exoplayer2/RendererConfiguration;",
            "[",
            "Lcom/google/android/exoplayer2/trackselection/c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1710
    iget-object v3, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 3128
    iget v4, v1, Lcom/google/android/exoplayer2/trackselection/e$a;->a:I

    .line 4128
    iget v5, v1, Lcom/google/android/exoplayer2/trackselection/e$a;->a:I

    .line 3792
    new-array v6, v5, [Lcom/google/android/exoplayer2/trackselection/c$a;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    const/4 v11, 0x2

    if-ge v8, v5, :cond_10

    .line 4150
    iget-object v14, v1, Lcom/google/android/exoplayer2/trackselection/e$a;->b:[I

    aget v14, v14, v8

    if-ne v11, v14, :cond_f

    if-nez v9, :cond_d

    .line 4160
    iget-object v9, v1, Lcom/google/android/exoplayer2/trackselection/e$a;->c:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v9, v9, v8

    .line 3802
    aget-object v14, v2, v8

    aget v15, p3, v8

    .line 4913
    iget-boolean v7, v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->forceHighestSupportedBitrate:Z

    if-nez v7, :cond_a

    iget-boolean v7, v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->forceLowestBitrate:Z

    if-nez v7, :cond_a

    .line 4932
    iget-boolean v7, v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowVideoNonSeamlessAdaptiveness:Z

    if-eqz v7, :cond_0

    const/16 v7, 0x18

    goto :goto_1

    :cond_0
    const/16 v7, 0x10

    .line 4935
    :goto_1
    iget-boolean v12, v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedMimeTypeAdaptiveness:Z

    if-eqz v12, :cond_1

    and-int v12, v15, v7

    if-eqz v12, :cond_1

    const/4 v12, 0x1

    goto :goto_2

    :cond_1
    const/4 v12, 0x0

    :goto_2
    const/4 v15, 0x0

    .line 4938
    :goto_3
    iget v13, v9, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v15, v13, :cond_a

    .line 4939
    invoke-virtual {v9, v15}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v13

    .line 4940
    aget-object v29, v14, v15

    iget v11, v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    iget v0, v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    move/from16 v30, v4

    iget v4, v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoFrameRate:I

    iget v2, v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoBitrate:I

    move/from16 v31, v5

    iget v5, v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->minVideoWidth:I

    move/from16 v32, v10

    iget v10, v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->minVideoHeight:I

    iget v1, v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->minVideoFrameRate:I

    move-object/from16 v33, v6

    iget v6, v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->minVideoBitrate:I

    move/from16 v34, v8

    iget v8, v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    move-object/from16 v35, v9

    iget v9, v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    move-object/from16 v36, v14

    iget-boolean v14, v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportOrientationMayChange:Z

    move-object/from16 v37, v3

    .line 4980
    iget v3, v13, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    move/from16 v38, v15

    const/4 v15, 0x2

    if-ge v3, v15, :cond_2

    .line 4981
    sget-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->b:[I

    goto/16 :goto_7

    .line 4985
    :cond_2
    invoke-static {v13, v8, v9, v14}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->a(Lcom/google/android/exoplayer2/source/TrackGroup;IIZ)Ljava/util/List;

    move-result-object v3

    .line 4987
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v8, v15, :cond_3

    .line 4988
    sget-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->b:[I

    goto/16 :goto_7

    :cond_3
    if-nez v12, :cond_7

    .line 4994
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v39, 0x0

    .line 4996
    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-ge v14, v9, :cond_6

    .line 4997
    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 4998
    invoke-virtual {v13, v9}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v9

    iget-object v9, v9, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 4999
    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    move-object/from16 v16, v13

    move-object/from16 v17, v29

    move/from16 v18, v7

    move-object/from16 v19, v9

    move/from16 v20, v11

    move/from16 v21, v0

    move/from16 v22, v4

    move/from16 v23, v2

    move/from16 v24, v5

    move/from16 v25, v10

    move/from16 v26, v1

    move/from16 v27, v6

    move-object/from16 v28, v3

    move-object/from16 v40, v8

    .line 5001
    invoke-static/range {v16 .. v28}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->a(Lcom/google/android/exoplayer2/source/TrackGroup;[IILjava/lang/String;IIIIIIIILjava/util/List;)I

    move-result v8

    if-le v8, v15, :cond_5

    move v15, v8

    move-object/from16 v39, v9

    goto :goto_5

    :cond_4
    move-object/from16 v40, v8

    :cond_5
    :goto_5
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v8, v40

    goto :goto_4

    :cond_6
    move-object/from16 v19, v39

    goto :goto_6

    :cond_7
    const/16 v19, 0x0

    :goto_6
    move-object/from16 v16, v13

    move-object/from16 v17, v29

    move/from16 v18, v7

    move/from16 v20, v11

    move/from16 v21, v0

    move/from16 v22, v4

    move/from16 v23, v2

    move/from16 v24, v5

    move/from16 v25, v10

    move/from16 v26, v1

    move/from16 v27, v6

    move-object/from16 v28, v3

    .line 5024
    invoke-static/range {v16 .. v28}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->b(Lcom/google/android/exoplayer2/source/TrackGroup;[IILjava/lang/String;IIIIIIIILjava/util/List;)V

    .line 5039
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_8

    sget-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->b:[I

    goto :goto_7

    :cond_8
    invoke-static {v3}, Lcom/google/common/b/b;->a(Ljava/util/Collection;)[I

    move-result-object v0

    .line 4957
    :goto_7
    array-length v1, v0

    if-lez v1, :cond_9

    .line 4958
    new-instance v1, Lcom/google/android/exoplayer2/trackselection/c$a;

    invoke-direct {v1, v13, v0}, Lcom/google/android/exoplayer2/trackselection/c$a;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    move-object v12, v1

    goto :goto_8

    :cond_9
    add-int/lit8 v15, v38, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, v30

    move/from16 v5, v31

    move/from16 v10, v32

    move-object/from16 v6, v33

    move/from16 v8, v34

    move-object/from16 v9, v35

    move-object/from16 v14, v36

    move-object/from16 v3, v37

    const/4 v11, 0x2

    goto/16 :goto_3

    :cond_a
    move-object/from16 v37, v3

    move/from16 v30, v4

    move/from16 v31, v5

    move-object/from16 v33, v6

    move/from16 v34, v8

    move-object/from16 v35, v9

    move/from16 v32, v10

    move-object/from16 v36, v14

    const/4 v12, 0x0

    :goto_8
    if-nez v12, :cond_b

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v3, v37

    .line 4920
    invoke-static {v0, v1, v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->a(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/android/exoplayer2/trackselection/c$a;

    move-result-object v12

    goto :goto_9

    :cond_b
    move-object/from16 v3, v37

    .line 3801
    :goto_9
    aput-object v12, v33, v34

    .line 3807
    aget-object v0, v33, v34

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_a

    :cond_c
    const/4 v0, 0x0

    :goto_a
    move v9, v0

    goto :goto_b

    :cond_d
    move/from16 v30, v4

    move/from16 v31, v5

    move-object/from16 v33, v6

    move/from16 v34, v8

    move/from16 v32, v10

    :goto_b
    move-object/from16 v0, p1

    .line 5160
    iget-object v1, v0, Lcom/google/android/exoplayer2/trackselection/e$a;->c:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v1, v1, v34

    .line 3809
    iget v1, v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-lez v1, :cond_e

    const/4 v13, 0x1

    goto :goto_c

    :cond_e
    const/4 v13, 0x0

    :goto_c
    or-int v10, v32, v13

    goto :goto_d

    :cond_f
    move-object v0, v1

    move/from16 v30, v4

    move/from16 v31, v5

    move-object/from16 v33, v6

    move/from16 v34, v8

    move/from16 v32, v10

    :goto_d
    add-int/lit8 v8, v34, 0x1

    move-object/from16 v2, p2

    move-object v1, v0

    move/from16 v4, v30

    move/from16 v5, v31

    move-object/from16 v6, v33

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_10
    move-object v0, v1

    move/from16 v30, v4

    move/from16 v31, v5

    move-object/from16 v33, v6

    move/from16 v32, v10

    const/4 v1, -0x1

    move/from16 v2, v31

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    :goto_e
    if-ge v4, v2, :cond_17

    .line 6150
    iget-object v8, v0, Lcom/google/android/exoplayer2/trackselection/e$a;->b:[I

    aget v8, v8, v4

    const/4 v9, 0x1

    if-ne v9, v8, :cond_15

    .line 3818
    iget-boolean v8, v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMultipleAdaptiveSelections:Z

    if-nez v8, :cond_12

    if-nez v32, :cond_11

    goto :goto_f

    :cond_11
    const/4 v9, 0x0

    goto :goto_10

    :cond_12
    :goto_f
    const/4 v9, 0x1

    .line 6160
    :goto_10
    iget-object v8, v0, Lcom/google/android/exoplayer2/trackselection/e$a;->c:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v8, v8, v4

    move-object/from16 v10, p2

    .line 3823
    aget-object v11, v10, v4

    .line 3822
    invoke-static {v8, v11, v3, v9}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->a(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Z)Landroid/util/Pair;

    move-result-object v8

    if-eqz v8, :cond_16

    if-eqz v6, :cond_13

    .line 3828
    iget-object v9, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;

    .line 3830
    invoke-virtual {v9, v6}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;->a(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;)I

    move-result v9

    if-lez v9, :cond_16

    :cond_13
    if-eq v7, v1, :cond_14

    const/4 v5, 0x0

    .line 3834
    aput-object v5, v33, v7

    .line 3836
    :cond_14
    iget-object v5, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/exoplayer2/trackselection/c$a;

    .line 3837
    aput-object v5, v33, v4

    .line 3839
    iget-object v6, v5, Lcom/google/android/exoplayer2/trackselection/c$a;->a:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v5, v5, Lcom/google/android/exoplayer2/trackselection/c$a;->b:[I

    const/4 v9, 0x0

    aget v5, v5, v9

    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    .line 3840
    iget-object v6, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;

    move v7, v4

    goto :goto_11

    :cond_15
    move-object/from16 v10, p2

    :cond_16
    const/4 v9, 0x0

    :goto_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_17
    move-object/from16 v10, p2

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    :goto_12
    if-ge v6, v2, :cond_1c

    .line 7150
    iget-object v8, v0, Lcom/google/android/exoplayer2/trackselection/e$a;->b:[I

    aget v8, v8, v6

    const/4 v11, 0x1

    const/4 v12, 0x2

    if-eq v8, v11, :cond_1b

    if-eq v8, v12, :cond_1b

    const/4 v13, 0x3

    if-eq v8, v13, :cond_18

    .line 8160
    iget-object v8, v0, Lcom/google/android/exoplayer2/trackselection/e$a;->c:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v8, v8, v6

    .line 3879
    aget-object v13, v10, v6

    .line 3878
    invoke-static {v8, v13, v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->b(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/android/exoplayer2/trackselection/c$a;

    move-result-object v8

    aput-object v8, v33, v6

    goto :goto_13

    .line 7160
    :cond_18
    iget-object v8, v0, Lcom/google/android/exoplayer2/trackselection/e$a;->c:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v8, v8, v6

    .line 3859
    aget-object v13, v10, v6

    .line 3858
    invoke-static {v8, v13, v3, v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->a(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v8

    if-eqz v8, :cond_1b

    if-eqz v4, :cond_19

    .line 3863
    iget-object v13, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;

    .line 3865
    invoke-virtual {v13, v4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->a(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;)I

    move-result v13

    if-lez v13, :cond_1b

    :cond_19
    const/4 v13, 0x0

    if-eq v7, v1, :cond_1a

    .line 3869
    aput-object v13, v33, v7

    .line 3871
    :cond_1a
    iget-object v4, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/exoplayer2/trackselection/c$a;

    aput-object v4, v33, v6

    .line 3872
    iget-object v4, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;

    move v7, v6

    goto :goto_14

    :cond_1b
    :goto_13
    const/4 v13, 0x0

    :goto_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    :cond_1c
    const/4 v11, 0x1

    const/4 v13, 0x0

    move/from16 v1, v30

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v1, :cond_20

    .line 1721
    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->getRendererDisabled(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    :goto_16
    move-object v5, v13

    goto :goto_17

    .line 9160
    :cond_1d
    iget-object v4, v0, Lcom/google/android/exoplayer2/trackselection/e$a;->c:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v4, v4, v2

    .line 1726
    invoke-virtual {v3, v2, v4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->hasSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 1727
    invoke-virtual {v3, v2, v4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->getSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    move-result-object v5

    if-nez v5, :cond_1e

    goto :goto_16

    .line 1731
    :cond_1e
    new-instance v6, Lcom/google/android/exoplayer2/trackselection/c$a;

    iget v7, v5, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->groupIndex:I

    .line 1732
    invoke-virtual {v4, v7}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v4

    iget-object v7, v5, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    iget v8, v5, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->reason:I

    iget v5, v5, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->data:I

    .line 1735
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v6, v4, v7, v8, v5}, Lcom/google/android/exoplayer2/trackselection/c$a;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[IILjava/lang/Object;)V

    move-object v5, v6

    :goto_17
    aput-object v5, v33, v2

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_20
    move-object/from16 v2, p0

    .line 1740
    iget-object v4, v2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->e:Lcom/google/android/exoplayer2/trackselection/c$b;

    .line 1742
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->e()Lcom/google/android/exoplayer2/upstream/c;

    move-result-object v5

    move-object/from16 v6, v33

    .line 1741
    invoke-interface {v4, v6, v5}, Lcom/google/android/exoplayer2/trackselection/c$b;->a([Lcom/google/android/exoplayer2/trackselection/c$a;Lcom/google/android/exoplayer2/upstream/c;)[Lcom/google/android/exoplayer2/trackselection/c;

    move-result-object v4

    .line 1747
    new-array v5, v1, [Lcom/google/android/exoplayer2/RendererConfiguration;

    const/4 v6, 0x0

    :goto_18
    if-ge v6, v1, :cond_24

    .line 1749
    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->getRendererDisabled(I)Z

    move-result v7

    if-nez v7, :cond_22

    .line 10150
    iget-object v7, v0, Lcom/google/android/exoplayer2/trackselection/e$a;->b:[I

    aget v7, v7, v6

    const/4 v8, 0x7

    if-eq v7, v8, :cond_21

    .line 1752
    aget-object v7, v4, v6

    if-eqz v7, :cond_22

    :cond_21
    const/4 v7, 0x1

    goto :goto_19

    :cond_22
    const/4 v7, 0x0

    :goto_19
    if-eqz v7, :cond_23

    .line 1754
    sget-object v7, Lcom/google/android/exoplayer2/RendererConfiguration;->DEFAULT:Lcom/google/android/exoplayer2/RendererConfiguration;

    goto :goto_1a

    :cond_23
    move-object v7, v13

    :goto_1a
    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    .line 1758
    :cond_24
    iget-boolean v1, v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->tunnelingEnabled:Z

    if-eqz v1, :cond_25

    .line 1759
    invoke-static {v0, v10, v5, v4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->a(Lcom/google/android/exoplayer2/trackselection/e$a;[[[I[Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/trackselection/c;)V

    .line 1763
    :cond_25
    invoke-static {v5, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public final a()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 1

    .line 1691
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    return-object v0
.end method

.method public final a(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;)V
    .locals 1

    .line 1682
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;->a()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p1

    .line 2670
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2671
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2672
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->d()V

    :cond_0
    return-void
.end method
