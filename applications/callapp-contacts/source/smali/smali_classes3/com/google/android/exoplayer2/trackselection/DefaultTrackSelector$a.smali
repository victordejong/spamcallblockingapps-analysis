.class public final Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;
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
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Z

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

.field private final d:Z

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:Z

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;I)V
    .locals 5

    .line 2752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2753
    iput-object p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;->c:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 2754
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2756
    invoke-static {p3, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->a(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;->d:Z

    const/4 p3, 0x0

    .line 2759
    :goto_0
    iget-object v1, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguages:Lcom/google/common/collect/v;

    invoke-virtual {v1}, Lcom/google/common/collect/v;->size()I

    move-result v1

    const v2, 0x7fffffff

    if-ge p3, v1, :cond_1

    .line 2760
    iget-object v1, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguages:Lcom/google/common/collect/v;

    .line 2763
    invoke-virtual {v1, p3}, Lcom/google/common/collect/v;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2761
    invoke-static {p1, v1, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->a(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;Z)I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    const p3, 0x7fffffff

    const/4 v1, 0x0

    .line 2771
    :goto_1
    iput p3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;->f:I

    .line 2772
    iput v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;->e:I

    .line 2773
    iget p3, p1, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    iget v1, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioRoleFlags:I

    and-int/2addr p3, v1

    .line 2774
    invoke-static {p3}, Ljava/lang/Integer;->bitCount(I)I

    move-result p3

    iput p3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;->g:I

    .line 2775
    iget p3, p1, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    const/4 v1, 0x1

    and-int/2addr p3, v1

    if-eqz p3, :cond_2

    const/4 p3, 0x1

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    :goto_2
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;->j:Z

    .line 2776
    iget p3, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    iput p3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;->k:I

    .line 2777
    iget p3, p1, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    iput p3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;->l:I

    .line 2778
    iget p3, p1, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iput p3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;->m:I

    .line 2779
    iget p3, p1, Lcom/google/android/exoplayer2/Format;->bitrate:I

    const/4 v3, -0x1

    if-eq p3, v3, :cond_3

    iget p3, p1, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget v4, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxAudioBitrate:I

    if-gt p3, v4, :cond_4

    :cond_3
    iget p3, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    if-eq p3, v3, :cond_5

    iget p3, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    iget v3, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxAudioChannelCount:I

    if-gt p3, v3, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_3
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;->a:Z

    .line 2783
    invoke-static {}, Lcom/google/android/exoplayer2/util/af;->d()[Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x0

    .line 2786
    :goto_4
    array-length v3, p3

    if-ge v1, v3, :cond_7

    .line 2787
    aget-object v3, p3, v1

    .line 2788
    invoke-static {p1, v3, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->a(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;Z)I

    move-result v3

    if-lez v3, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    const v1, 0x7fffffff

    const/4 v3, 0x0

    .line 2796
    :goto_5
    iput v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;->h:I

    .line 2797
    iput v3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;->i:I

    .line 2799
    :goto_6
    iget-object p3, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioMimeTypes:Lcom/google/common/collect/v;

    invoke-virtual {p3}, Lcom/google/common/collect/v;->size()I

    move-result p3

    if-ge v0, p3, :cond_9

    .line 2800
    iget-object p3, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz p3, :cond_8

    iget-object p3, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v1, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioMimeTypes:Lcom/google/common/collect/v;

    .line 2801
    invoke-virtual {v1, v0}, Lcom/google/common/collect/v;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    move v2, v0

    goto :goto_7

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 2806
    :cond_9
    :goto_7
    iput v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;->n:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;)I
    .locals 5

    .line 2821
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;->d:Z

    if-eqz v0, :cond_0

    .line 2822
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->b()Lcom/google/common/collect/an;

    move-result-object v0

    goto :goto_0

    .line 2823
    :cond_0
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->b()Lcom/google/common/collect/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/an;->a()Lcom/google/common/collect/an;

    move-result-object v0

    .line 2824
    :goto_0
    invoke-static {}, Lcom/google/common/collect/n;->a()Lcom/google/common/collect/n;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;->d:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;->d:Z

    .line 2825
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/n;->b(ZZ)Lcom/google/common/collect/n;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;->f:I

    .line 2827
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;->f:I

    .line 2828
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2829
    invoke-static {}, Lcom/google/common/collect/an;->b()Lcom/google/common/collect/an;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/an;->a()Lcom/google/common/collect/an;

    move-result-object v4

    .line 2826
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/collect/n;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/n;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;->e:I

    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;->e:I

    .line 2830
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/n;->a(II)Lcom/google/common/collect/n;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;->g:I

    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;->g:I

    .line 2831
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/n;->a(II)Lcom/google/common/collect/n;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;->a:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;->a:Z

    .line 2832
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/n;->b(ZZ)Lcom/google/common/collect/n;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;->n:I

    .line 2834
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;->n:I

    .line 2835
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2836
    invoke-static {}, Lcom/google/common/collect/an;->b()Lcom/google/common/collect/an;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/an;->a()Lcom/google/common/collect/an;

    move-result-object v4

    .line 2833
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/collect/n;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/n;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;->m:I

    .line 2838
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;->m:I

    .line 2839
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2840
    iget-object v4, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;->c:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

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

    .line 2837
    :goto_1
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/collect/n;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/n;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;->j:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;->j:Z

    .line 2841
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/n;->b(ZZ)Lcom/google/common/collect/n;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;->h:I

    .line 2843
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;->h:I

    .line 2844
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2845
    invoke-static {}, Lcom/google/common/collect/an;->b()Lcom/google/common/collect/an;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/an;->a()Lcom/google/common/collect/an;

    move-result-object v4

    .line 2842
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/collect/n;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/n;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;->i:I

    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;->i:I

    .line 2846
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/n;->a(II)Lcom/google/common/collect/n;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;->k:I

    .line 2847
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;->k:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/common/collect/n;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/n;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;->l:I

    .line 2848
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;->l:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/common/collect/n;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/n;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;->m:I

    .line 2850
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;->m:I

    .line 2851
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2853
    iget-object v4, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;->b:Ljava/lang/String;

    invoke-static {v4, p1}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->c()Lcom/google/common/collect/an;

    move-result-object v0

    .line 2849
    :goto_2
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/common/collect/n;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/n;

    move-result-object p1

    .line 2854
    invoke-virtual {p1}, Lcom/google/common/collect/n;->b()I

    move-result p1

    return p1
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 2730
    check-cast p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;->a(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;)I

    move-result p1

    return p1
.end method
