.class public final Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$e;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Z

.field private final b:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

.field private final c:Z

.field private final d:Z

.field private final e:I

.field private final f:I

.field private final g:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;IZ)V
    .locals 6

    .line 2664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2665
    iput-object p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$e;->b:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz p4, :cond_4

    .line 2666
    iget v4, p1, Lcom/google/android/exoplayer2/Format;->width:I

    if-eq v4, v3, :cond_0

    iget v4, p1, Lcom/google/android/exoplayer2/Format;->width:I

    iget v5, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    if-gt v4, v5, :cond_4

    :cond_0
    iget v4, p1, Lcom/google/android/exoplayer2/Format;->height:I

    if-eq v4, v3, :cond_1

    iget v4, p1, Lcom/google/android/exoplayer2/Format;->height:I

    iget v5, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    if-gt v4, v5, :cond_4

    :cond_1
    iget v4, p1, Lcom/google/android/exoplayer2/Format;->frameRate:F

    cmpl-float v4, v4, v0

    if-eqz v4, :cond_2

    iget v4, p1, Lcom/google/android/exoplayer2/Format;->frameRate:F

    iget v5, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoFrameRate:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_4

    :cond_2
    iget v4, p1, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-eq v4, v3, :cond_3

    iget v4, p1, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget v5, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoBitrate:I

    if-gt v4, v5, :cond_4

    :cond_3
    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$e;->a:Z

    if-eqz p4, :cond_8

    .line 2674
    iget p4, p1, Lcom/google/android/exoplayer2/Format;->width:I

    if-eq p4, v3, :cond_5

    iget p4, p1, Lcom/google/android/exoplayer2/Format;->width:I

    iget v4, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->minVideoWidth:I

    if-lt p4, v4, :cond_8

    :cond_5
    iget p4, p1, Lcom/google/android/exoplayer2/Format;->height:I

    if-eq p4, v3, :cond_6

    iget p4, p1, Lcom/google/android/exoplayer2/Format;->height:I

    iget v4, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->minVideoHeight:I

    if-lt p4, v4, :cond_8

    :cond_6
    iget p4, p1, Lcom/google/android/exoplayer2/Format;->frameRate:F

    cmpl-float p4, p4, v0

    if-eqz p4, :cond_7

    iget p4, p1, Lcom/google/android/exoplayer2/Format;->frameRate:F

    iget v0, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->minVideoFrameRate:I

    int-to-float v0, v0

    cmpl-float p4, p4, v0

    if-ltz p4, :cond_8

    :cond_7
    iget p4, p1, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-eq p4, v3, :cond_9

    iget p4, p1, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget v0, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->minVideoBitrate:I

    if-lt p4, v0, :cond_8

    goto :goto_1

    :cond_8
    const/4 v1, 0x0

    :cond_9
    :goto_1
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$e;->c:Z

    .line 2683
    invoke-static {p3, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->a(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$e;->d:Z

    .line 2684
    iget p3, p1, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iput p3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$e;->e:I

    .line 2685
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Format;->getPixelCount()I

    move-result p3

    iput p3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$e;->f:I

    const p3, 0x7fffffff

    .line 2687
    :goto_2
    iget-object p4, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredVideoMimeTypes:Lcom/google/common/collect/v;

    invoke-virtual {p4}, Lcom/google/common/collect/v;->size()I

    move-result p4

    if-ge v2, p4, :cond_b

    .line 2688
    iget-object p4, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz p4, :cond_a

    iget-object p4, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v0, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredVideoMimeTypes:Lcom/google/common/collect/v;

    .line 2689
    invoke-virtual {v0, v2}, Lcom/google/common/collect/v;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_a

    move p3, v2

    goto :goto_3

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2694
    :cond_b
    :goto_3
    iput p3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$e;->g:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$e;)I
    .locals 5

    .line 2708
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$e;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$e;->d:Z

    if-eqz v0, :cond_0

    .line 2709
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->b()Lcom/google/common/collect/an;

    move-result-object v0

    goto :goto_0

    .line 2710
    :cond_0
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->b()Lcom/google/common/collect/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/an;->a()Lcom/google/common/collect/an;

    move-result-object v0

    .line 2711
    :goto_0
    invoke-static {}, Lcom/google/common/collect/n;->a()Lcom/google/common/collect/n;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$e;->d:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$e;->d:Z

    .line 2712
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/n;->b(ZZ)Lcom/google/common/collect/n;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$e;->a:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$e;->a:Z

    .line 2713
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/n;->b(ZZ)Lcom/google/common/collect/n;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$e;->c:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$e;->c:Z

    .line 2714
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/n;->b(ZZ)Lcom/google/common/collect/n;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$e;->g:I

    .line 2716
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$e;->g:I

    .line 2717
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2718
    invoke-static {}, Lcom/google/common/collect/an;->b()Lcom/google/common/collect/an;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/an;->a()Lcom/google/common/collect/an;

    move-result-object v4

    .line 2715
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/collect/n;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/n;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$e;->e:I

    .line 2720
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$e;->e:I

    .line 2721
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2722
    iget-object v4, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$e;->b:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v4, v4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->forceLowestBitrate:Z

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->b()Lcom/google/common/collect/an;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/an;->a()Lcom/google/common/collect/an;

    move-result-object v4

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->c()Lcom/google/common/collect/an;

    move-result-object v4

    .line 2719
    :goto_1
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/collect/n;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/n;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$e;->f:I

    .line 2723
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$e;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/common/collect/n;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/n;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$e;->e:I

    .line 2724
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$e;->e:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/common/collect/n;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/n;

    move-result-object p1

    .line 2725
    invoke-virtual {p1}, Lcom/google/common/collect/n;->b()I

    move-result p1

    return p1
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 2645
    check-cast p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$e;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$e;->a(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$e;)I

    move-result p1

    return p1
.end method
