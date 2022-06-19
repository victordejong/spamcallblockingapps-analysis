.class public final Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Z

.field private final b:Ljava/lang/String;

.field private final c:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

.field private final d:Z

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:Z

.field private final i:I

.field private final j:I

.field private final k:I


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;I)V
    .locals 4

    .line 2568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2569
    iput-object p2, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;->c:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    .line 2570
    iget-object v0, p1, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2571
    invoke-static {p3, v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->a(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;->d:Z

    .line 2572
    iget-object p3, p2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    .line 2573
    invoke-static {p1, p3, v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->a(Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;Z)I

    move-result p3

    iput p3, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;->e:I

    .line 2577
    iget p3, p1, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    const/4 v1, 0x1

    and-int/2addr p3, v1

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-boolean p3, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;->h:Z

    .line 2578
    iget p3, p1, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    iput p3, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;->i:I

    .line 2579
    iget p3, p1, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    iput p3, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;->j:I

    .line 2580
    iget p3, p1, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    iput p3, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;->k:I

    .line 2581
    iget p3, p1, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    const/4 v2, -0x1

    if-eq p3, v2, :cond_1

    iget p3, p1, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    iget v3, p2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->maxAudioBitrate:I

    if-gt p3, v3, :cond_2

    :cond_1
    iget p3, p1, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    if-eq p3, v2, :cond_3

    iget p3, p1, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    iget p2, p2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->maxAudioChannelCount:I

    if-gt p3, p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;->a:Z

    .line 2585
    invoke-static {}, Landroidx/media2/exoplayer/external/util/ac;->b()[Ljava/lang/String;

    move-result-object p2

    const p3, 0x7fffffff

    const/4 v1, 0x0

    .line 2588
    :goto_2
    array-length v2, p2

    if-ge v1, v2, :cond_5

    .line 2589
    aget-object v2, p2, v1

    .line 2590
    invoke-static {p1, v2, v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->a(Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;Z)I

    move-result v2

    if-lez v2, :cond_4

    move p3, v1

    move v0, v2

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2598
    :cond_5
    :goto_3
    iput p3, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;->f:I

    .line 2599
    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;->g:I

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;)I
    .locals 4

    .line 2611
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;->d:Z

    iget-boolean v1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;->d:Z

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    return v2

    :cond_0
    return v3

    .line 2614
    :cond_1
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;->e:I

    iget v1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;->e:I

    if-eq v0, v1, :cond_2

    .line 2615
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->a(II)I

    move-result p1

    return p1

    .line 2617
    :cond_2
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;->a:Z

    iget-boolean v1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;->a:Z

    if-eq v0, v1, :cond_4

    if-eqz v0, :cond_3

    return v2

    :cond_3
    return v3

    .line 2620
    :cond_4
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;->c:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v0, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->forceLowestBitrate:Z

    if-eqz v0, :cond_6

    .line 2621
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;->k:I

    iget v1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;->k:I

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->b(II)I

    move-result v0

    if-eqz v0, :cond_6

    if-lez v0, :cond_5

    return v3

    :cond_5
    return v2

    .line 2626
    :cond_6
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;->h:Z

    iget-boolean v1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;->h:Z

    if-eq v0, v1, :cond_8

    if-eqz v0, :cond_7

    return v2

    :cond_7
    return v3

    .line 2629
    :cond_8
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;->f:I

    iget v1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;->f:I

    if-eq v0, v1, :cond_9

    .line 2630
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->a(II)I

    move-result p1

    neg-int p1, p1

    return p1

    .line 2632
    :cond_9
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;->g:I

    iget v1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;->g:I

    if-eq v0, v1, :cond_a

    .line 2633
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->a(II)I

    move-result p1

    return p1

    .line 2637
    :cond_a
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;->a:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;->d:Z

    if-eqz v0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v2, -0x1

    .line 2638
    :goto_0
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;->i:I

    iget v1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;->i:I

    if-eq v0, v1, :cond_c

    .line 2639
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->a(II)I

    move-result p1

    :goto_1
    mul-int v2, v2, p1

    return v2

    .line 2641
    :cond_c
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;->j:I

    iget v1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;->j:I

    if-eq v0, v1, :cond_d

    .line 2642
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->a(II)I

    move-result p1

    goto :goto_1

    .line 2644
    :cond_d
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;->b:Ljava/lang/String;

    iget-object v1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2646
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;->k:I

    iget p1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;->k:I

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->a(II)I

    move-result p1

    goto :goto_1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 2549
    check-cast p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;->a(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;)I

    move-result p1

    return p1
.end method
