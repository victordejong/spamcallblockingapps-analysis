.class Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;
    }
.end annotation


# instance fields
.field a:[I

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2838
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(II)V
    .locals 4

    .prologue
    .line 2934
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    if-nez v0, :cond_1

    .line 2949
    :cond_0
    return-void

    .line 2937
    :cond_1
    add-int v2, p1, p2

    .line 2938
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 2939
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;

    .line 2940
    iget v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->a:I

    if-ge v3, p1, :cond_2

    .line 2938
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 2943
    :cond_2
    iget v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->a:I

    if-ge v3, v2, :cond_3

    .line 2944
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 2946
    :cond_3
    iget v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->a:I

    sub-int/2addr v3, p2

    iput v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->a:I

    goto :goto_1
.end method

.method private d(II)V
    .locals 3

    .prologue
    .line 2964
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    if-nez v0, :cond_1

    .line 2974
    :cond_0
    return-void

    .line 2967
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 2968
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;

    .line 2969
    iget v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->a:I

    if-ge v2, p1, :cond_2

    .line 2967
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 2972
    :cond_2
    iget v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->a:I

    add-int/2addr v2, p2

    iput v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->a:I

    goto :goto_1
.end method

.method private g(I)I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 2981
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    if-nez v0, :cond_0

    move v0, v1

    .line 3003
    :goto_0
    return v0

    .line 2984
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->f(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;

    move-result-object v0

    .line 2986
    if-eqz v0, :cond_1

    .line 2987
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2990
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 2991
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_4

    .line 2992
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;

    .line 2993
    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->a:I

    if-lt v0, p1, :cond_2

    .line 2998
    :goto_2
    if-eq v2, v1, :cond_3

    .line 2999
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;

    .line 3000
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3001
    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->a:I

    goto :goto_0

    .line 2991
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 3003
    goto :goto_0

    :cond_4
    move v2, v1

    goto :goto_2
.end method


# virtual methods
.method a(I)I
    .locals 2

    .prologue
    .line 2849
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2850
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 2851
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;

    .line 2852
    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->a:I

    if-lt v0, p1, :cond_0

    .line 2853
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2850
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 2857
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b(I)I

    move-result v0

    return v0
.end method

.method public a(IIIZ)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3051
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    if-nez v0, :cond_1

    move-object v0, v1

    .line 3066
    :cond_0
    :goto_0
    return-object v0

    .line 3054
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 3055
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_4

    .line 3056
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;

    .line 3057
    iget v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->a:I

    if-lt v4, p2, :cond_2

    move-object v0, v1

    .line 3058
    goto :goto_0

    .line 3060
    :cond_2
    iget v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->a:I

    if-lt v4, p1, :cond_3

    if-eqz p3, :cond_0

    iget v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->b:I

    if-eq v4, p3, :cond_0

    if-eqz p4, :cond_3

    iget-boolean v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->d:Z

    if-nez v4, :cond_0

    .line 3055
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 3066
    goto :goto_0
.end method

.method a()V
    .locals 2

    .prologue
    .line 2915
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    if-eqz v0, :cond_0

    .line 2916
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 2918
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    .line 2919
    return-void
.end method

.method a(II)V
    .locals 4

    .prologue
    .line 2922
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 2931
    :cond_0
    :goto_0
    return-void

    .line 2925
    :cond_1
    add-int v0, p1, p2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e(I)V

    .line 2926
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    add-int v1, p1, p2

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    array-length v3, v3

    sub-int/2addr v3, p1

    sub-int/2addr v3, p2

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2928
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    array-length v1, v1

    sub-int/2addr v1, p2

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    array-length v2, v2

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([IIII)V

    .line 2930
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->c(II)V

    goto :goto_0
.end method

.method a(ILandroidx/recyclerview/widget/StaggeredGridLayoutManager$e;)V
    .locals 2

    .prologue
    .line 2890
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e(I)V

    .line 2891
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    iget v1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->e:I

    aput v1, v0, p1

    .line 2892
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;)V
    .locals 5

    .prologue
    .line 3007
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 3008
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    .line 3010
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 3011
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    .line 3012
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;

    .line 3013
    iget v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->a:I

    iget v4, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->a:I

    if-ne v3, v4, :cond_1

    .line 3017
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3020
    :cond_1
    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->a:I

    iget v3, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->a:I

    if-lt v0, v3, :cond_2

    .line 3021
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3027
    :goto_1
    return-void

    .line 3011
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3026
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method b(I)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 2864
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    if-nez v1, :cond_1

    .line 2877
    :cond_0
    :goto_0
    return v0

    .line 2867
    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 2870
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->g(I)I

    move-result v1

    .line 2871
    if-ne v1, v0, :cond_2

    .line 2872
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    array-length v2, v2

    invoke-static {v1, p1, v2, v0}, Ljava/util/Arrays;->fill([IIII)V

    .line 2873
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    array-length v0, v0

    goto :goto_0

    .line 2876
    :cond_2
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    add-int/lit8 v3, v1, 0x1

    invoke-static {v2, p1, v3, v0}, Ljava/util/Arrays;->fill([IIII)V

    .line 2877
    add-int/lit8 v0, v1, 0x1

    goto :goto_0
.end method

.method b(II)V
    .locals 4

    .prologue
    .line 2952
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 2961
    :cond_0
    :goto_0
    return-void

    .line 2955
    :cond_1
    add-int v0, p1, p2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e(I)V

    .line 2956
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    add-int v2, p1, p2

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    array-length v3, v3

    sub-int/2addr v3, p1

    sub-int/2addr v3, p2

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2958
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    add-int v1, p1, p2

    const/4 v2, -0x1

    invoke-static {v0, p1, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 2960
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->d(II)V

    goto :goto_0
.end method

.method c(I)I
    .locals 1

    .prologue
    .line 2882
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 2883
    :cond_0
    const/4 v0, -0x1

    .line 2885
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method d(I)I
    .locals 1

    .prologue
    .line 2895
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    array-length v0, v0

    .line 2896
    :goto_0
    if-gt v0, p1, :cond_0

    .line 2897
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 2899
    :cond_0
    return v0
.end method

.method e(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 2903
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    if-nez v0, :cond_1

    .line 2904
    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    .line 2905
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([II)V

    .line 2912
    :cond_0
    :goto_0
    return-void

    .line 2906
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 2907
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    .line 2908
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->d(I)I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    .line 2909
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    array-length v2, v0

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2910
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    array-length v0, v0

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    array-length v2, v2

    invoke-static {v1, v0, v2, v3}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_0
.end method

.method public f(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3030
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    if-nez v0, :cond_1

    move-object v0, v1

    .line 3039
    :cond_0
    :goto_0
    return-object v0

    .line 3033
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_2

    .line 3034
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;

    .line 3035
    iget v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->a:I

    if-eq v3, p1, :cond_0

    .line 3033
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 3039
    goto :goto_0
.end method
