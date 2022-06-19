.class public final Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;
.super Landroidx/media2/exoplayer/external/trackselection/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;,
        Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioConfigurationTuple;,
        Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;,
        Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;,
        Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;,
        Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;
    }
.end annotation


# static fields
.field private static final d:[I


# instance fields
.field private final e:Landroidx/media2/exoplayer/external/trackselection/e$b;

.field private final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 1399
    sput-object v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->d:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1411
    new-instance v0, Landroidx/media2/exoplayer/external/trackselection/a$c;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/trackselection/a$c;-><init>()V

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;-><init>(Landroidx/media2/exoplayer/external/trackselection/e$b;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1432
    new-instance v0, Landroidx/media2/exoplayer/external/trackselection/a$c;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/trackselection/a$c;-><init>()V

    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/trackselection/e$b;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/trackselection/e$b;)V
    .locals 0

    .line 1440
    invoke-static {p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->getDefaults(Landroid/content/Context;)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;-><init>(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;Landroidx/media2/exoplayer/external/trackselection/e$b;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;Landroidx/media2/exoplayer/external/trackselection/e$b;)V
    .locals 0

    .line 1447
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/trackselection/d;-><init>()V

    .line 1448
    iput-object p2, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->e:Landroidx/media2/exoplayer/external/trackselection/e$b;

    .line 1449
    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->f:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/trackselection/e$b;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1427
    sget-object v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->DEFAULT_WITHOUT_VIEWPORT:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    invoke-direct {p0, v0, p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;-><init>(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;Landroidx/media2/exoplayer/external/trackselection/e$b;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/c;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1421
    new-instance v0, Landroidx/media2/exoplayer/external/trackselection/a$c;

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/trackselection/a$c;-><init>(Landroidx/media2/exoplayer/external/upstream/c;)V

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;-><init>(Landroidx/media2/exoplayer/external/trackselection/e$b;)V

    return-void
.end method

.method static synthetic a(II)I
    .locals 0

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-le p1, p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method protected static a(Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;Z)I
    .locals 1

    .line 2444
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x4

    return p0

    .line 2448
    :cond_0
    invoke-static {p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2449
    iget-object p0, p0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    invoke-static {p0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_1

    goto :goto_1

    .line 2454
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

    .line 2458
    invoke-static {p0, p2}, Landroidx/media2/exoplayer/external/util/ac;->b(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    .line 2459
    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/util/ac;->b(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v0

    .line 2460
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

.method private static a(Landroidx/media2/exoplayer/external/source/TrackGroup;[IILjava/lang/String;IIIILjava/util/List;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/source/TrackGroup;",
            "[II",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1888
    :goto_0
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    move-object/from16 v2, p8

    .line 1889
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v4, p0

    .line 1891
    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v5

    aget v7, p1, v3

    move-object/from16 v6, p3

    move v8, p2

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    .line 1890
    invoke-static/range {v5 .. v12}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->a(Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;IIIIII)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static a(Landroidx/media2/exoplayer/external/source/TrackGroup;[ILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioConfigurationTuple;IZZZ)I
    .locals 11

    move-object v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2162
    :goto_0
    iget v3, v0, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    if-ge v1, v3, :cond_1

    .line 2164
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v4

    aget v5, p1, v1

    move-object v6, p2

    move v7, p3

    move v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    .line 2163
    invoke-static/range {v4 .. v10}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->a(Landroidx/media2/exoplayer/external/Format;ILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioConfigurationTuple;IZZZ)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
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

    .line 2529
    new-instance p0, Landroid/graphics/Point;

    invoke-static {v0, p3}, Landroidx/media2/exoplayer/external/util/ac;->a(II)I

    move-result p1

    invoke-direct {p0, p2, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    .line 2532
    :cond_3
    new-instance p2, Landroid/graphics/Point;

    invoke-static {p0, p4}, Landroidx/media2/exoplayer/external/util/ac;->a(II)I

    move-result p0

    invoke-direct {p2, p0, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p2
.end method

.method private static a(Landroidx/media2/exoplayer/external/source/TrackGroupArray;[[ILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;)Landroid/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/source/TrackGroupArray;",
            "[[I",
            "Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Landroidx/media2/exoplayer/external/trackselection/e$a;",
            "Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    move-object v4, v1

    move-object v5, v4

    const/4 v3, 0x0

    .line 2224
    :goto_0
    iget v6, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    if-ge v3, v6, :cond_3

    .line 2225
    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v6

    .line 2226
    aget-object v7, p1, v3

    const/4 v8, 0x0

    .line 2227
    :goto_1
    iget v9, v6, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    if-ge v8, v9, :cond_2

    .line 2228
    aget v9, v7, v8

    iget-boolean v10, p2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {v9, v10}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->a(IZ)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2230
    invoke-virtual {v6, v8}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v9

    .line 2231
    new-instance v10, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;

    aget v11, v7, v8

    invoke-direct {v10, v9, p2, v11, p3}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;-><init>(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;ILjava/lang/String;)V

    .line 2234
    iget-boolean v9, v10, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->a:Z

    if-eqz v9, :cond_1

    if-eqz v5, :cond_0

    .line 2235
    invoke-virtual {v10, v5}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->a(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;)I

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

    .line 2245
    :cond_4
    new-instance p0, Landroidx/media2/exoplayer/external/trackselection/e$a;

    const/4 p1, 0x1

    new-array p1, p1, [I

    aput v2, p1, v0

    invoke-direct {p0, v4, p1}, Landroidx/media2/exoplayer/external/trackselection/e$a;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V

    .line 2247
    invoke-static {v5}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;

    .line 2245
    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroidx/media2/exoplayer/external/source/TrackGroupArray;[[ILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;Z)Landroid/util/Pair;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/source/TrackGroupArray;",
            "[[I",
            "Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;",
            "Z)",
            "Landroid/util/Pair<",
            "Landroidx/media2/exoplayer/external/trackselection/e$a;",
            "Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, -0x1

    const/4 v3, 0x0

    move-object v7, v3

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v8, -0x1

    .line 2046
    :goto_0
    iget v9, v0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    if-ge v5, v9, :cond_4

    .line 2047
    invoke-virtual {v0, v5}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v9

    .line 2048
    aget-object v10, p1, v5

    const/4 v11, 0x0

    .line 2049
    :goto_1
    iget v12, v9, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    if-ge v11, v12, :cond_3

    .line 2050
    aget v12, v10, v11

    iget-boolean v13, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {v12, v13}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->a(IZ)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 2052
    invoke-virtual {v9, v11}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v12

    .line 2053
    new-instance v13, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;

    aget v14, v10, v11

    invoke-direct {v13, v12, v1, v14}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;-><init>(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;I)V

    .line 2055
    iget-boolean v12, v13, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;->a:Z

    if-nez v12, :cond_0

    iget-boolean v12, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->exceedAudioConstraintsIfNecessary:Z

    if-eqz v12, :cond_2

    :cond_0
    if-eqz v7, :cond_1

    .line 2059
    invoke-virtual {v13, v7}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;->a(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;)I

    move-result v12

    if-lez v12, :cond_2

    :cond_1
    move v6, v5

    move v8, v11

    move-object v7, v13

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    if-ne v6, v2, :cond_5

    return-object v3

    .line 2072
    :cond_5
    invoke-virtual {v0, v6}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v0

    .line 2075
    iget-boolean v2, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->forceHighestSupportedBitrate:Z

    const/4 v5, 0x1

    if-nez v2, :cond_c

    iget-boolean v2, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->forceLowestBitrate:Z

    if-nez v2, :cond_c

    if-eqz p3, :cond_c

    .line 2079
    aget-object v2, p1, v6

    iget v6, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->maxAudioBitrate:I

    iget-boolean v15, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedMimeTypeAdaptiveness:Z

    iget-boolean v14, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedSampleRateAdaptiveness:Z

    iget-boolean v1, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedChannelCountAdaptiveness:Z

    .line 12108
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v16, v3

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 12109
    :goto_2
    iget v9, v0, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    if-ge v12, v9, :cond_8

    .line 12110
    invoke-virtual {v0, v12}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v9

    .line 12111
    new-instance v10, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioConfigurationTuple;

    iget v3, v9, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    iget v4, v9, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    iget-object v9, v9, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    invoke-direct {v10, v3, v4, v9}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioConfigurationTuple;-><init>(IILjava/lang/String;)V

    .line 12114
    invoke-virtual {v13, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v9, v0

    move-object v3, v10

    move-object v10, v2

    move v4, v11

    move-object v11, v3

    move/from16 v17, v12

    move v12, v6

    move-object/from16 v18, v13

    move v13, v15

    move/from16 v19, v14

    move/from16 v20, v15

    move v15, v1

    .line 12116
    invoke-static/range {v9 .. v15}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->a(Landroidx/media2/exoplayer/external/source/TrackGroup;[ILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioConfigurationTuple;IZZZ)I

    move-result v11

    if-le v11, v4, :cond_7

    move-object/from16 v16, v3

    goto :goto_3

    :cond_6
    move v4, v11

    move/from16 v17, v12

    move-object/from16 v18, v13

    move/from16 v19, v14

    move/from16 v20, v15

    :cond_7
    move v11, v4

    :goto_3
    add-int/lit8 v12, v17, 0x1

    move-object/from16 v13, v18

    move/from16 v14, v19

    move/from16 v15, v20

    const/4 v3, 0x0

    goto :goto_2

    :cond_8
    move v4, v11

    move/from16 v19, v14

    move/from16 v20, v15

    if-le v4, v5, :cond_a

    .line 12132
    invoke-static/range {v16 .. v16}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12133
    new-array v3, v4, [I

    const/4 v4, 0x0

    const/16 v17, 0x0

    .line 12135
    :goto_4
    iget v9, v0, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    if-ge v4, v9, :cond_b

    .line 12136
    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v9

    .line 12137
    aget v10, v2, v4

    move-object/from16 v11, v16

    move v12, v6

    move/from16 v13, v20

    move/from16 v14, v19

    move v15, v1

    invoke-static/range {v9 .. v15}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->a(Landroidx/media2/exoplayer/external/Format;ILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioConfigurationTuple;IZZZ)Z

    move-result v9

    if-eqz v9, :cond_9

    add-int/lit8 v9, v17, 0x1

    .line 12145
    aput v4, v3, v17

    move/from16 v17, v9

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 12150
    :cond_a
    sget-object v3, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->d:[I

    .line 2087
    :cond_b
    array-length v1, v3

    if-lez v1, :cond_c

    .line 2088
    new-instance v1, Landroidx/media2/exoplayer/external/trackselection/e$a;

    invoke-direct {v1, v0, v3}, Landroidx/media2/exoplayer/external/trackselection/e$a;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V

    move-object v3, v1

    goto :goto_5

    :cond_c
    const/4 v3, 0x0

    :goto_5
    if-nez v3, :cond_d

    .line 2093
    new-instance v3, Landroidx/media2/exoplayer/external/trackselection/e$a;

    new-array v1, v5, [I

    const/4 v2, 0x0

    aput v8, v1, v2

    invoke-direct {v3, v0, v1}, Landroidx/media2/exoplayer/external/trackselection/e$a;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V

    .line 2096
    :cond_d
    invoke-static {v7}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;

    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroidx/media2/exoplayer/external/source/TrackGroupArray;[[ILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)Landroidx/media2/exoplayer/external/trackselection/e$a;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    .line 1957
    :goto_0
    iget v11, v0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    if-ge v5, v11, :cond_11

    .line 1958
    invoke-virtual {v0, v5}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v11

    .line 1959
    iget v13, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    iget v14, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    iget-boolean v15, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->viewportOrientationMayChange:Z

    invoke-static {v11, v13, v14, v15}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->a(Landroidx/media2/exoplayer/external/source/TrackGroup;IIZ)Ljava/util/List;

    move-result-object v13

    .line 1961
    aget-object v14, p1, v5

    const/4 v15, 0x0

    .line 1962
    :goto_1
    iget v12, v11, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    if-ge v15, v12, :cond_10

    .line 1963
    aget v12, v14, v15

    iget-boolean v2, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {v12, v2}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->a(IZ)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1965
    invoke-virtual {v11, v15}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v2

    .line 1967
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v13, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    iget v12, v2, Landroidx/media2/exoplayer/external/Format;->width:I

    if-eq v12, v3, :cond_0

    iget v12, v2, Landroidx/media2/exoplayer/external/Format;->width:I

    iget v4, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    if-gt v12, v4, :cond_4

    :cond_0
    iget v4, v2, Landroidx/media2/exoplayer/external/Format;->height:I

    if-eq v4, v3, :cond_1

    iget v4, v2, Landroidx/media2/exoplayer/external/Format;->height:I

    iget v12, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    if-gt v4, v12, :cond_4

    :cond_1
    iget v4, v2, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    const/high16 v12, -0x40800000    # -1.0f

    cmpl-float v4, v4, v12

    if-eqz v4, :cond_2

    iget v4, v2, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    iget v12, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->maxVideoFrameRate:I

    int-to-float v12, v12

    cmpg-float v4, v4, v12

    if-gtz v4, :cond_4

    :cond_2
    iget v4, v2, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    if-eq v4, v3, :cond_3

    iget v4, v2, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    iget v12, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->maxVideoBitrate:I

    if-gt v4, v12, :cond_4

    :cond_3
    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_5

    .line 1974
    iget-boolean v12, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    if-eqz v12, :cond_e

    :cond_5
    if-eqz v4, :cond_6

    const/4 v12, 0x2

    goto :goto_3

    :cond_6
    const/4 v12, 0x1

    .line 1979
    :goto_3
    aget v3, v14, v15

    const/4 v0, 0x0

    invoke-static {v3, v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->a(IZ)Z

    move-result v3

    if-eqz v3, :cond_7

    add-int/lit16 v12, v12, 0x3e8

    :cond_7
    if-le v12, v8, :cond_8

    const/4 v0, 0x1

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    :goto_4
    if-ne v12, v8, :cond_d

    .line 1985
    iget v0, v2, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    invoke-static {v0, v9}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->c(II)I

    move-result v0

    move-object/from16 v16, v6

    .line 1986
    iget-boolean v6, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->forceLowestBitrate:Z

    if-eqz v6, :cond_a

    if-eqz v0, :cond_a

    if-gez v0, :cond_9

    :goto_5
    const/4 v0, 0x1

    goto :goto_7

    :cond_9
    const/4 v0, 0x0

    goto :goto_7

    .line 1994
    :cond_a
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/Format;->getPixelCount()I

    move-result v0

    if-eq v0, v10, :cond_b

    .line 1996
    invoke-static {v0, v10}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->c(II)I

    move-result v0

    goto :goto_6

    .line 1997
    :cond_b
    iget v0, v2, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    invoke-static {v0, v9}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->c(II)I

    move-result v0

    :goto_6
    if-eqz v3, :cond_c

    if-eqz v4, :cond_c

    if-lez v0, :cond_9

    goto :goto_5

    :cond_c
    if-gez v0, :cond_9

    goto :goto_5

    :cond_d
    move-object/from16 v16, v6

    :goto_7
    if-eqz v0, :cond_f

    .line 2006
    iget v0, v2, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    .line 2007
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/Format;->getPixelCount()I

    move-result v2

    move v9, v0

    move v10, v2

    move-object v6, v11

    move v8, v12

    move v7, v15

    goto :goto_8

    :cond_e
    move-object/from16 v16, v6

    :cond_f
    move-object/from16 v6, v16

    :goto_8
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    const/4 v3, -0x1

    goto/16 :goto_1

    :cond_10
    move-object/from16 v16, v6

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    const/4 v3, -0x1

    goto/16 :goto_0

    :cond_11
    if-nez v6, :cond_12

    const/4 v0, 0x0

    return-object v0

    .line 2014
    :cond_12
    new-instance v0, Landroidx/media2/exoplayer/external/trackselection/e$a;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v7, v1, v2

    invoke-direct {v0, v6, v1}, Landroidx/media2/exoplayer/external/trackselection/e$a;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V

    return-object v0
.end method

.method protected static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2425
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

.method private static a(Landroidx/media2/exoplayer/external/source/TrackGroup;IIZ)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/source/TrackGroup;",
            "IIZ)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2470
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2471
    :goto_0
    iget v3, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    if-ge v2, v3, :cond_0

    .line 2472
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

    .line 2481
    :goto_1
    iget v4, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    if-ge v1, v4, :cond_3

    .line 2482
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v4

    .line 2486
    iget v5, v4, Landroidx/media2/exoplayer/external/Format;->width:I

    if-lez v5, :cond_2

    iget v5, v4, Landroidx/media2/exoplayer/external/Format;->height:I

    if-lez v5, :cond_2

    .line 2487
    iget v5, v4, Landroidx/media2/exoplayer/external/Format;->width:I

    iget v6, v4, Landroidx/media2/exoplayer/external/Format;->height:I

    invoke-static {p3, p1, p2, v5, v6}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->a(ZIIII)Landroid/graphics/Point;

    move-result-object v5

    .line 2489
    iget v6, v4, Landroidx/media2/exoplayer/external/Format;->width:I

    iget v7, v4, Landroidx/media2/exoplayer/external/Format;->height:I

    mul-int v6, v6, v7

    .line 2490
    iget v7, v4, Landroidx/media2/exoplayer/external/Format;->width:I

    iget v8, v5, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    const v9, 0x3f7ae148    # 0.98f

    mul-float v8, v8, v9

    float-to-int v8, v8

    if-lt v7, v8, :cond_2

    iget v4, v4, Landroidx/media2/exoplayer/external/Format;->height:I

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

    .line 2502
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_2
    if-ltz p1, :cond_6

    .line 2503
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object p2

    .line 2504
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/Format;->getPixelCount()I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_4

    if-le p2, v3, :cond_5

    .line 2506
    :cond_4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_5
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_6
    :goto_3
    return-object v0
.end method

.method private static a(Landroidx/media2/exoplayer/external/trackselection/d$a;[[[I[Landroidx/media2/exoplayer/external/RendererConfiguration;[Landroidx/media2/exoplayer/external/trackselection/e;I)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p4

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    .line 13130
    :goto_0
    iget v7, v0, Landroidx/media2/exoplayer/external/trackselection/d$a;->b:I

    const/4 v8, 0x1

    if-ge v4, v7, :cond_9

    .line 13141
    iget-object v7, v0, Landroidx/media2/exoplayer/external/trackselection/d$a;->c:[I

    aget v7, v7, v4

    .line 2326
    aget-object v9, p3, v4

    if-eq v7, v8, :cond_1

    const/4 v10, 0x2

    if-ne v7, v10, :cond_8

    :cond_1
    if-eqz v9, :cond_8

    .line 2329
    aget-object v10, p1, v4

    .line 13151
    iget-object v11, v0, Landroidx/media2/exoplayer/external/trackselection/d$a;->d:[Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    aget-object v11, v11, v4

    if-nez v9, :cond_2

    :goto_1
    const/4 v9, 0x0

    goto :goto_3

    .line 13372
    :cond_2
    invoke-interface {v9}, Landroidx/media2/exoplayer/external/trackselection/e;->e()Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->indexOf(Landroidx/media2/exoplayer/external/source/TrackGroup;)I

    move-result v11

    const/4 v12, 0x0

    .line 13373
    :goto_2
    invoke-interface {v9}, Landroidx/media2/exoplayer/external/trackselection/e;->f()I

    move-result v13

    if-ge v12, v13, :cond_4

    .line 13374
    aget-object v13, v10, v11

    invoke-interface {v9, v12}, Landroidx/media2/exoplayer/external/trackselection/e;->b(I)I

    move-result v14

    aget v13, v13, v14

    const/16 v14, 0x20

    and-int/2addr v13, v14

    if-eq v13, v14, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_4
    const/4 v9, 0x1

    :goto_3
    if-eqz v9, :cond_8

    if-ne v7, v8, :cond_6

    if-eq v6, v2, :cond_5

    goto :goto_4

    :cond_5
    move v6, v4

    goto :goto_5

    :cond_6
    if-eq v5, v2, :cond_7

    :goto_4
    const/4 v0, 0x0

    goto :goto_6

    :cond_7
    move v5, v4

    :cond_8
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_9
    const/4 v0, 0x1

    :goto_6
    if-eq v6, v2, :cond_a

    if-eq v5, v2, :cond_a

    const/4 v3, 0x1

    :cond_a
    and-int/2addr v0, v3

    if-eqz v0, :cond_b

    .line 2351
    new-instance v0, Landroidx/media2/exoplayer/external/RendererConfiguration;

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/RendererConfiguration;-><init>(I)V

    .line 2353
    aput-object v0, p2, v6

    .line 2354
    aput-object v0, p2, v5

    :cond_b
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

.method private static a(Landroidx/media2/exoplayer/external/Format;ILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioConfigurationTuple;IZZZ)Z
    .locals 2

    const/4 v0, 0x0

    .line 2185
    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->a(IZ)Z

    move-result p1

    if-eqz p1, :cond_4

    iget p1, p0, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    iget p1, p0, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    if-gt p1, p3, :cond_4

    :cond_0
    if-nez p6, :cond_1

    iget p1, p0, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    if-eq p1, v1, :cond_4

    iget p1, p0, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    iget p3, p2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->channelCount:I

    if-ne p1, p3, :cond_4

    :cond_1
    if-nez p4, :cond_2

    iget-object p1, p0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    iget-object p3, p2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->mimeType:Ljava/lang/String;

    .line 2192
    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_2
    if-nez p5, :cond_3

    iget p1, p0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    if-eq p1, v1, :cond_4

    iget p0, p0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    iget p1, p2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->sampleRate:I

    if-ne p0, p1, :cond_4

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    return v0
.end method

.method private static a(Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;IIIIII)Z
    .locals 2

    const/4 v0, 0x0

    .line 1940
    invoke-static {p2, v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->a(IZ)Z

    move-result v1

    if-eqz v1, :cond_5

    and-int/2addr p2, p3

    if-eqz p2, :cond_5

    if-eqz p1, :cond_0

    iget-object p2, p0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 1942
    invoke-static {p2, p1}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_0
    iget p1, p0, Landroidx/media2/exoplayer/external/Format;->width:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    iget p1, p0, Landroidx/media2/exoplayer/external/Format;->width:I

    if-gt p1, p4, :cond_5

    :cond_1
    iget p1, p0, Landroidx/media2/exoplayer/external/Format;->height:I

    if-eq p1, p2, :cond_2

    iget p1, p0, Landroidx/media2/exoplayer/external/Format;->height:I

    if-gt p1, p5, :cond_5

    :cond_2
    iget p1, p0, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    const/high16 p3, -0x40800000    # -1.0f

    cmpl-float p1, p1, p3

    if-eqz p1, :cond_3

    iget p1, p0, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    int-to-float p3, p6

    cmpg-float p1, p1, p3

    if-gtz p1, :cond_5

    :cond_3
    iget p1, p0, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    if-eq p1, p2, :cond_4

    iget p0, p0, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    if-gt p0, p7, :cond_5

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    return v0
.end method

.method static synthetic b(II)I
    .locals 0

    .line 160
    invoke-static {p0, p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->c(II)I

    move-result p0

    return p0
.end method

.method private static b(Landroidx/media2/exoplayer/external/source/TrackGroupArray;[[ILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)Landroidx/media2/exoplayer/external/trackselection/e$a;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2271
    :goto_0
    iget v6, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    const/4 v7, 0x1

    if-ge v2, v6, :cond_5

    .line 2272
    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v6

    .line 2273
    aget-object v8, p1, v2

    const/4 v9, 0x0

    .line 2274
    :goto_1
    iget v10, v6, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    if-ge v9, v10, :cond_4

    .line 2275
    aget v10, v8, v9

    iget-boolean v11, p2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {v10, v11}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->a(IZ)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2277
    invoke-virtual {v6, v9}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v10

    .line 2278
    iget v10, v10, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    and-int/2addr v10, v7

    if-eqz v10, :cond_0

    const/4 v10, 0x1

    goto :goto_2

    :cond_0
    const/4 v10, 0x0

    :goto_2
    if-eqz v10, :cond_1

    const/4 v10, 0x2

    goto :goto_3

    :cond_1
    const/4 v10, 0x1

    .line 2280
    :goto_3
    aget v11, v8, v9

    invoke-static {v11, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->a(IZ)Z

    move-result v11

    if-eqz v11, :cond_2

    add-int/lit16 v10, v10, 0x3e8

    :cond_2
    if-le v10, v5, :cond_3

    move-object v3, v6

    move v4, v9

    move v5, v10

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    if-nez v3, :cond_6

    return-object v0

    .line 2293
    :cond_6
    new-instance p0, Landroidx/media2/exoplayer/external/trackselection/e$a;

    new-array p1, v7, [I

    aput v4, p1, v1

    invoke-direct {p0, v3, p1}, Landroidx/media2/exoplayer/external/trackselection/e$a;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V

    return-object p0
.end method

.method private static b(Landroidx/media2/exoplayer/external/source/TrackGroup;[IILjava/lang/String;IIIILjava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/source/TrackGroup;",
            "[II",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p8

    .line 1915
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 1916
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object v3, p0

    .line 1918
    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v4

    aget v6, p1, v2

    move-object v5, p3

    move v7, p2

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    .line 1917
    invoke-static/range {v4 .. v11}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->a(Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;IIIIII)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1926
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static c(II)I
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0

    :cond_1
    if-ne p1, v0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    sub-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method protected final a(Landroidx/media2/exoplayer/external/trackselection/d$a;[[[I[I)Landroid/util/Pair;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/trackselection/d$a;",
            "[[[I[I)",
            "Landroid/util/Pair<",
            "[",
            "Landroidx/media2/exoplayer/external/RendererConfiguration;",
            "[",
            "Landroidx/media2/exoplayer/external/trackselection/e;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1564
    iget-object v3, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    .line 4130
    iget v4, v1, Landroidx/media2/exoplayer/external/trackselection/d$a;->b:I

    .line 5130
    iget v5, v1, Landroidx/media2/exoplayer/external/trackselection/d$a;->b:I

    .line 4646
    new-array v6, v5, [Landroidx/media2/exoplayer/external/trackselection/e$a;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    const/4 v11, 0x2

    if-ge v8, v5, :cond_10

    .line 5141
    iget-object v14, v1, Landroidx/media2/exoplayer/external/trackselection/d$a;->c:[I

    aget v14, v14, v8

    if-ne v11, v14, :cond_f

    if-nez v9, :cond_d

    .line 5151
    iget-object v9, v1, Landroidx/media2/exoplayer/external/trackselection/d$a;->d:[Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    aget-object v9, v9, v8

    .line 4656
    aget-object v14, v2, v8

    aget v15, p3, v8

    .line 5765
    iget-boolean v7, v3, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->forceHighestSupportedBitrate:Z

    if-nez v7, :cond_a

    iget-boolean v7, v3, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->forceLowestBitrate:Z

    if-nez v7, :cond_a

    .line 5784
    iget-boolean v7, v3, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->allowVideoNonSeamlessAdaptiveness:Z

    if-eqz v7, :cond_0

    const/16 v7, 0x18

    goto :goto_1

    :cond_0
    const/16 v7, 0x10

    .line 5787
    :goto_1
    iget-boolean v12, v3, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedMimeTypeAdaptiveness:Z

    if-eqz v12, :cond_1

    and-int v12, v15, v7

    if-eqz v12, :cond_1

    const/4 v12, 0x1

    goto :goto_2

    :cond_1
    const/4 v12, 0x0

    :goto_2
    const/4 v15, 0x0

    .line 5790
    :goto_3
    iget v13, v9, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    if-ge v15, v13, :cond_a

    .line 5791
    invoke-virtual {v9, v15}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v13

    .line 5792
    aget-object v25, v14, v15

    iget v11, v3, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    move/from16 v26, v4

    iget v4, v3, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    iget v2, v3, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->maxVideoFrameRate:I

    iget v0, v3, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->maxVideoBitrate:I

    move/from16 v27, v5

    iget v5, v3, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    move/from16 v28, v10

    iget v10, v3, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    iget-boolean v1, v3, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->viewportOrientationMayChange:Z

    move-object/from16 v29, v6

    .line 5824
    iget v6, v13, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    move/from16 v30, v8

    const/4 v8, 0x2

    if-ge v6, v8, :cond_2

    .line 5825
    sget-object v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->d:[I

    goto/16 :goto_7

    .line 5828
    :cond_2
    invoke-static {v13, v5, v10, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->a(Landroidx/media2/exoplayer/external/source/TrackGroup;IIZ)Ljava/util/List;

    move-result-object v1

    .line 5830
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v8, :cond_3

    .line 5831
    sget-object v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->d:[I

    goto/16 :goto_7

    :cond_3
    if-nez v12, :cond_7

    .line 5837
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/16 v31, 0x0

    .line 5839
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v8, v6, :cond_6

    .line 5840
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 5841
    invoke-virtual {v13, v6}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v6

    iget-object v6, v6, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 5842
    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    move-object/from16 v16, v13

    move-object/from16 v17, v25

    move/from16 v18, v7

    move-object/from16 v19, v6

    move/from16 v20, v11

    move/from16 v21, v4

    move/from16 v22, v2

    move/from16 v23, v0

    move-object/from16 v24, v1

    move-object/from16 v32, v5

    .line 5844
    invoke-static/range {v16 .. v24}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->a(Landroidx/media2/exoplayer/external/source/TrackGroup;[IILjava/lang/String;IIIILjava/util/List;)I

    move-result v5

    if-le v5, v10, :cond_5

    move v10, v5

    move-object/from16 v31, v6

    goto :goto_5

    :cond_4
    move-object/from16 v32, v5

    :cond_5
    :goto_5
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v5, v32

    goto :goto_4

    :cond_6
    move-object/from16 v19, v31

    goto :goto_6

    :cond_7
    const/16 v19, 0x0

    :goto_6
    move-object/from16 v16, v13

    move-object/from16 v17, v25

    move/from16 v18, v7

    move/from16 v20, v11

    move/from16 v21, v4

    move/from16 v22, v2

    move/from16 v23, v0

    move-object/from16 v24, v1

    .line 5863
    invoke-static/range {v16 .. v24}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->b(Landroidx/media2/exoplayer/external/source/TrackGroup;[IILjava/lang/String;IIIILjava/util/List;)V

    .line 5874
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_8

    sget-object v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->d:[I

    goto :goto_7

    :cond_8
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/util/List;)[I

    move-result-object v0

    .line 5805
    :goto_7
    array-length v1, v0

    if-lez v1, :cond_9

    .line 5806
    new-instance v1, Landroidx/media2/exoplayer/external/trackselection/e$a;

    invoke-direct {v1, v13, v0}, Landroidx/media2/exoplayer/external/trackselection/e$a;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V

    move-object v12, v1

    goto :goto_8

    :cond_9
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, v26

    move/from16 v5, v27

    move/from16 v10, v28

    move-object/from16 v6, v29

    move/from16 v8, v30

    const/4 v11, 0x2

    goto/16 :goto_3

    :cond_a
    move/from16 v26, v4

    move/from16 v27, v5

    move-object/from16 v29, v6

    move/from16 v30, v8

    move/from16 v28, v10

    const/4 v12, 0x0

    :goto_8
    if-nez v12, :cond_b

    .line 5772
    invoke-static {v9, v14, v3}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->a(Landroidx/media2/exoplayer/external/source/TrackGroupArray;[[ILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)Landroidx/media2/exoplayer/external/trackselection/e$a;

    move-result-object v12

    .line 4655
    :cond_b
    aput-object v12, v29, v30

    .line 4661
    aget-object v0, v29, v30

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_9

    :cond_c
    const/4 v0, 0x0

    :goto_9
    move v9, v0

    goto :goto_a

    :cond_d
    move/from16 v26, v4

    move/from16 v27, v5

    move-object/from16 v29, v6

    move/from16 v30, v8

    move/from16 v28, v10

    :goto_a
    move-object/from16 v0, p1

    .line 6151
    iget-object v1, v0, Landroidx/media2/exoplayer/external/trackselection/d$a;->d:[Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    aget-object v1, v1, v30

    .line 4663
    iget v1, v1, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    if-lez v1, :cond_e

    const/4 v13, 0x1

    goto :goto_b

    :cond_e
    const/4 v13, 0x0

    :goto_b
    or-int v10, v28, v13

    goto :goto_c

    :cond_f
    move-object v0, v1

    move/from16 v26, v4

    move/from16 v27, v5

    move-object/from16 v29, v6

    move/from16 v30, v8

    move/from16 v28, v10

    :goto_c
    add-int/lit8 v8, v30, 0x1

    move-object/from16 v2, p2

    move-object v1, v0

    move/from16 v4, v26

    move/from16 v5, v27

    move-object/from16 v6, v29

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_10
    move-object v0, v1

    move/from16 v26, v4

    move/from16 v27, v5

    move-object/from16 v29, v6

    move/from16 v28, v10

    const/4 v1, -0x1

    move/from16 v2, v27

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    :goto_d
    if-ge v4, v2, :cond_17

    .line 7141
    iget-object v8, v0, Landroidx/media2/exoplayer/external/trackselection/d$a;->c:[I

    aget v8, v8, v4

    const/4 v9, 0x1

    if-ne v9, v8, :cond_15

    move-object/from16 v8, p0

    .line 4672
    iget-boolean v9, v8, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->g:Z

    if-nez v9, :cond_12

    if-nez v28, :cond_11

    goto :goto_e

    :cond_11
    const/4 v9, 0x0

    goto :goto_f

    :cond_12
    :goto_e
    const/4 v9, 0x1

    .line 7151
    :goto_f
    iget-object v10, v0, Landroidx/media2/exoplayer/external/trackselection/d$a;->d:[Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    aget-object v10, v10, v4

    move-object/from16 v11, p2

    .line 4676
    aget-object v12, v11, v4

    .line 4675
    invoke-static {v10, v12, v3, v9}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->a(Landroidx/media2/exoplayer/external/source/TrackGroupArray;[[ILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;Z)Landroid/util/Pair;

    move-result-object v9

    if-eqz v9, :cond_16

    if-eqz v6, :cond_13

    .line 4681
    iget-object v10, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;

    .line 4683
    invoke-virtual {v10, v6}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;->a(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;)I

    move-result v10

    if-lez v10, :cond_16

    :cond_13
    if-eq v7, v1, :cond_14

    const/4 v5, 0x0

    .line 4687
    aput-object v5, v29, v7

    .line 4689
    :cond_14
    iget-object v5, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroidx/media2/exoplayer/external/trackselection/e$a;

    .line 4690
    aput-object v5, v29, v4

    .line 4692
    iget-object v6, v5, Landroidx/media2/exoplayer/external/trackselection/e$a;->a:Landroidx/media2/exoplayer/external/source/TrackGroup;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/trackselection/e$a;->b:[I

    const/4 v10, 0x0

    aget v5, v5, v10

    invoke-virtual {v6, v5}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v5

    iget-object v5, v5, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    .line 4693
    iget-object v6, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;

    move v7, v4

    goto :goto_10

    :cond_15
    move-object/from16 v8, p0

    move-object/from16 v11, p2

    :cond_16
    const/4 v10, 0x0

    :goto_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_17
    move-object/from16 v8, p0

    move-object/from16 v11, p2

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    :goto_11
    if-ge v6, v2, :cond_1c

    .line 8141
    iget-object v9, v0, Landroidx/media2/exoplayer/external/trackselection/d$a;->c:[I

    aget v9, v9, v6

    const/4 v12, 0x1

    const/4 v13, 0x2

    if-eq v9, v12, :cond_1b

    if-eq v9, v13, :cond_1b

    const/4 v14, 0x3

    if-eq v9, v14, :cond_18

    .line 9151
    iget-object v9, v0, Landroidx/media2/exoplayer/external/trackselection/d$a;->d:[Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    aget-object v9, v9, v6

    .line 4731
    aget-object v14, v11, v6

    .line 4730
    invoke-static {v9, v14, v3}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->b(Landroidx/media2/exoplayer/external/source/TrackGroupArray;[[ILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)Landroidx/media2/exoplayer/external/trackselection/e$a;

    move-result-object v9

    aput-object v9, v29, v6

    goto :goto_12

    .line 8151
    :cond_18
    iget-object v9, v0, Landroidx/media2/exoplayer/external/trackselection/d$a;->d:[Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    aget-object v9, v9, v6

    .line 4711
    aget-object v14, v11, v6

    .line 4710
    invoke-static {v9, v14, v3, v5}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->a(Landroidx/media2/exoplayer/external/source/TrackGroupArray;[[ILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v9

    if-eqz v9, :cond_1b

    if-eqz v4, :cond_19

    .line 4715
    iget-object v14, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;

    .line 4717
    invoke-virtual {v14, v4}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->a(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;)I

    move-result v14

    if-lez v14, :cond_1b

    :cond_19
    const/4 v14, 0x0

    if-eq v7, v1, :cond_1a

    .line 4721
    aput-object v14, v29, v7

    .line 4723
    :cond_1a
    iget-object v4, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroidx/media2/exoplayer/external/trackselection/e$a;

    aput-object v4, v29, v6

    .line 4724
    iget-object v4, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;

    move v7, v6

    goto :goto_13

    :cond_1b
    :goto_12
    const/4 v14, 0x0

    :goto_13
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    :cond_1c
    const/4 v12, 0x1

    const/4 v14, 0x0

    move/from16 v1, v26

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_20

    .line 1575
    invoke-virtual {v3, v2}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->getRendererDisabled(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    :goto_15
    move-object v5, v14

    goto :goto_16

    .line 10151
    :cond_1d
    iget-object v4, v0, Landroidx/media2/exoplayer/external/trackselection/d$a;->d:[Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    aget-object v4, v4, v2

    .line 1580
    invoke-virtual {v3, v2, v4}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->hasSelectionOverride(ILandroidx/media2/exoplayer/external/source/TrackGroupArray;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 1581
    invoke-virtual {v3, v2, v4}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->getSelectionOverride(ILandroidx/media2/exoplayer/external/source/TrackGroupArray;)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;

    move-result-object v5

    if-nez v5, :cond_1e

    goto :goto_15

    .line 1585
    :cond_1e
    new-instance v6, Landroidx/media2/exoplayer/external/trackselection/e$a;

    iget v7, v5, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;->groupIndex:I

    .line 1586
    invoke-virtual {v4, v7}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v4

    iget-object v7, v5, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    iget v9, v5, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;->reason:I

    iget v5, v5, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;->data:I

    .line 1589
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v6, v4, v7, v9, v5}, Landroidx/media2/exoplayer/external/trackselection/e$a;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[IILjava/lang/Object;)V

    move-object v5, v6

    :goto_16
    aput-object v5, v29, v2

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1594
    :cond_20
    iget-object v2, v8, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->e:Landroidx/media2/exoplayer/external/trackselection/e$b;

    .line 10163
    iget-object v4, v8, Landroidx/media2/exoplayer/external/trackselection/g;->c:Landroidx/media2/exoplayer/external/upstream/c;

    invoke-static {v4}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/exoplayer/external/upstream/c;

    move-object/from16 v5, v29

    .line 1595
    invoke-interface {v2, v5, v4}, Landroidx/media2/exoplayer/external/trackselection/e$b;->a([Landroidx/media2/exoplayer/external/trackselection/e$a;Landroidx/media2/exoplayer/external/upstream/c;)[Landroidx/media2/exoplayer/external/trackselection/e;

    move-result-object v2

    .line 1599
    new-array v4, v1, [Landroidx/media2/exoplayer/external/RendererConfiguration;

    const/4 v5, 0x0

    :goto_17
    if-ge v5, v1, :cond_24

    .line 1602
    invoke-virtual {v3, v5}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->getRendererDisabled(I)Z

    move-result v6

    if-nez v6, :cond_22

    .line 11141
    iget-object v6, v0, Landroidx/media2/exoplayer/external/trackselection/d$a;->c:[I

    aget v6, v6, v5

    const/4 v7, 0x6

    if-eq v6, v7, :cond_21

    .line 1605
    aget-object v6, v2, v5

    if-eqz v6, :cond_22

    :cond_21
    const/4 v9, 0x1

    goto :goto_18

    :cond_22
    const/4 v9, 0x0

    :goto_18
    if-eqz v9, :cond_23

    .line 1607
    sget-object v6, Landroidx/media2/exoplayer/external/RendererConfiguration;->DEFAULT:Landroidx/media2/exoplayer/external/RendererConfiguration;

    goto :goto_19

    :cond_23
    move-object v6, v14

    :goto_19
    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .line 1611
    :cond_24
    iget v1, v3, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->tunnelingAudioSessionId:I

    invoke-static {v0, v11, v4, v2, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->a(Landroidx/media2/exoplayer/external/trackselection/d$a;[[[I[Landroidx/media2/exoplayer/external/RendererConfiguration;[Landroidx/media2/exoplayer/external/trackselection/e;I)V

    .line 1618
    invoke-static {v4, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public final a()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;
    .locals 1

    .line 3479
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    .line 1484
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)V
    .locals 1

    .line 1458
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1459
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3153
    iget-object p1, p0, Landroidx/media2/exoplayer/external/trackselection/g;->b:Landroidx/media2/exoplayer/external/trackselection/g$a;

    if-eqz p1, :cond_0

    .line 3154
    iget-object p1, p0, Landroidx/media2/exoplayer/external/trackselection/g;->b:Landroidx/media2/exoplayer/external/trackselection/g$a;

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/trackselection/g$a;->b()V

    :cond_0
    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;)V
    .locals 0

    .line 1470
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->a()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->a(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)V

    return-void
.end method
