.class public final Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;
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
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Z

.field private final b:Z

.field private final c:Z

.field private final d:Z

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;ILjava/lang/String;)V
    .locals 6

    .line 2880
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2882
    invoke-static {p3, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->a(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->b:Z

    .line 2883
    iget p3, p1, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    iget v1, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->disabledTextTrackSelectionFlags:I

    not-int v1, v1

    and-int/2addr p3, v1

    and-int/lit8 v1, p3, 0x1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2885
    :goto_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->c:Z

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    .line 2886
    :goto_1
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->d:Z

    const p3, 0x7fffffff

    .line 2892
    iget-object v1, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguages:Lcom/google/common/collect/v;

    invoke-virtual {v1}, Lcom/google/common/collect/v;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    .line 2893
    invoke-static {v1}, Lcom/google/common/collect/v;->a(Ljava/lang/Object;)Lcom/google/common/collect/v;

    move-result-object v1

    goto :goto_2

    .line 2894
    :cond_2
    iget-object v1, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguages:Lcom/google/common/collect/v;

    :goto_2
    const/4 v3, 0x0

    .line 2895
    :goto_3
    invoke-virtual {v1}, Lcom/google/common/collect/v;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 2898
    invoke-virtual {v1, v3}, Lcom/google/common/collect/v;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-boolean v5, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->selectUndeterminedTextLanguage:Z

    .line 2897
    invoke-static {p1, v4, v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->a(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;Z)I

    move-result v4

    if-lez v4, :cond_3

    move p3, v3

    goto :goto_4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    .line 2905
    :goto_4
    iput p3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->e:I

    .line 2906
    iput v4, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->f:I

    .line 2907
    iget p3, p1, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    iget v1, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextRoleFlags:I

    and-int/2addr p3, v1

    .line 2908
    invoke-static {p3}, Ljava/lang/Integer;->bitCount(I)I

    move-result p3

    iput p3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->g:I

    .line 2909
    iget v1, p1, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    and-int/lit16 v1, v1, 0x440

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->i:Z

    .line 2912
    invoke-static {p4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    .line 2914
    :goto_6
    invoke-static {p1, p4, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->a(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;Z)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->h:I

    if-gtz v4, :cond_8

    .line 2915
    iget-object p2, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguages:Lcom/google/common/collect/v;

    .line 2917
    invoke-virtual {p2}, Lcom/google/common/collect/v;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_7

    if-gtz p3, :cond_8

    :cond_7
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->c:Z

    if-nez p2, :cond_8

    iget-boolean p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->d:Z

    if-eqz p2, :cond_9

    if-lez p1, :cond_9

    :cond_8
    const/4 v0, 0x1

    :cond_9
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;)I
    .locals 4

    .line 2932
    invoke-static {}, Lcom/google/common/collect/n;->a()Lcom/google/common/collect/n;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->b:Z

    iget-boolean v2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->b:Z

    .line 2933
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/n;->b(ZZ)Lcom/google/common/collect/n;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->e:I

    .line 2936
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->e:I

    .line 2937
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2938
    invoke-static {}, Lcom/google/common/collect/an;->b()Lcom/google/common/collect/an;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/an;->a()Lcom/google/common/collect/an;

    move-result-object v3

    .line 2935
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/n;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/n;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->f:I

    iget v2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->f:I

    .line 2939
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/n;->a(II)Lcom/google/common/collect/n;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->g:I

    iget v2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->g:I

    .line 2940
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/n;->a(II)Lcom/google/common/collect/n;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->c:Z

    iget-boolean v2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->c:Z

    .line 2941
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/n;->b(ZZ)Lcom/google/common/collect/n;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->d:Z

    .line 2943
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->d:Z

    .line 2944
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 2948
    iget v3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->f:I

    if-nez v3, :cond_0

    invoke-static {}, Lcom/google/common/collect/an;->b()Lcom/google/common/collect/an;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/common/collect/an;->b()Lcom/google/common/collect/an;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/an;->a()Lcom/google/common/collect/an;

    move-result-object v3

    .line 2942
    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/n;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/n;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->h:I

    iget v2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->h:I

    .line 2949
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/n;->a(II)Lcom/google/common/collect/n;

    move-result-object v0

    .line 2950
    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->g:I

    if-nez v1, :cond_1

    .line 2951
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->i:Z

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->i:Z

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/n;->a(ZZ)Lcom/google/common/collect/n;

    move-result-object v0

    .line 2953
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/n;->b()I

    move-result p1

    return p1
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 2859
    check-cast p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->a(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;)I

    move-result p1

    return p1
.end method
