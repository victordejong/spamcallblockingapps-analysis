.class final Landroidx/constraintlayout/motion/widget/MotionLayout$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/MotionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Landroidx/constraintlayout/a/a/f;

.field b:Landroidx/constraintlayout/a/a/f;

.field c:Landroidx/constraintlayout/widget/c;

.field d:Landroidx/constraintlayout/widget/c;

.field e:I

.field f:I

.field final synthetic g:Landroidx/constraintlayout/motion/widget/MotionLayout;


# direct methods
.method constructor <init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 0

    .line 1994
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1995
    new-instance p1, Landroidx/constraintlayout/a/a/f;

    invoke-direct {p1}, Landroidx/constraintlayout/a/a/f;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->a:Landroidx/constraintlayout/a/a/f;

    .line 1996
    new-instance p1, Landroidx/constraintlayout/a/a/f;

    invoke-direct {p1}, Landroidx/constraintlayout/a/a/f;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->b:Landroidx/constraintlayout/a/a/f;

    const/4 p1, 0x0

    .line 1997
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->c:Landroidx/constraintlayout/widget/c;

    .line 1998
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->d:Landroidx/constraintlayout/widget/c;

    return-void
.end method

.method private static a(Landroidx/constraintlayout/a/a/f;Landroid/view/View;)Landroidx/constraintlayout/a/a/e;
    .locals 4

    .line 16065
    iget-object v0, p0, Landroidx/constraintlayout/a/a/e;->aj:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    return-object p0

    .line 16108
    :cond_0
    iget-object p0, p0, Landroidx/constraintlayout/a/a/m;->be:Ljava/util/ArrayList;

    .line 2147
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2149
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/a/a/e;

    .line 17065
    iget-object v3, v2, Landroidx/constraintlayout/a/a/e;->aj:Ljava/lang/Object;

    if-ne v3, p1, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Landroidx/constraintlayout/a/a/f;Landroidx/constraintlayout/a/a/f;)V
    .locals 4

    .line 4108
    iget-object v0, p0, Landroidx/constraintlayout/a/a/m;->be:Ljava/util/ArrayList;

    .line 2004
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2005
    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5108
    iget-object v2, p1, Landroidx/constraintlayout/a/a/m;->be:Ljava/util/ArrayList;

    .line 2006
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2007
    invoke-virtual {p1, p0, v1}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e;Ljava/util/HashMap;)V

    .line 2008
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/a/a/e;

    .line 2010
    instance-of v3, v2, Landroidx/constraintlayout/a/a/a;

    if-eqz v3, :cond_0

    .line 2011
    new-instance v3, Landroidx/constraintlayout/a/a/a;

    invoke-direct {v3}, Landroidx/constraintlayout/a/a/a;-><init>()V

    goto :goto_1

    .line 2012
    :cond_0
    instance-of v3, v2, Landroidx/constraintlayout/a/a/h;

    if-eqz v3, :cond_1

    .line 2013
    new-instance v3, Landroidx/constraintlayout/a/a/h;

    invoke-direct {v3}, Landroidx/constraintlayout/a/a/h;-><init>()V

    goto :goto_1

    .line 2014
    :cond_1
    instance-of v3, v2, Landroidx/constraintlayout/a/a/g;

    if-eqz v3, :cond_2

    .line 2015
    new-instance v3, Landroidx/constraintlayout/a/a/g;

    invoke-direct {v3}, Landroidx/constraintlayout/a/a/g;-><init>()V

    goto :goto_1

    .line 2016
    :cond_2
    instance-of v3, v2, Landroidx/constraintlayout/a/a/i;

    if-eqz v3, :cond_3

    .line 2017
    new-instance v3, Landroidx/constraintlayout/a/a/j;

    invoke-direct {v3}, Landroidx/constraintlayout/a/a/j;-><init>()V

    goto :goto_1

    .line 2019
    :cond_3
    new-instance v3, Landroidx/constraintlayout/a/a/e;

    invoke-direct {v3}, Landroidx/constraintlayout/a/a/e;-><init>()V

    .line 2021
    :goto_1
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e;)V

    .line 2022
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2024
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/a/a/e;

    .line 2025
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v0, p1, v1}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/a/e;Ljava/util/HashMap;)V

    goto :goto_2

    :cond_5
    return-void
.end method

.method private a(Landroidx/constraintlayout/a/a/f;Landroidx/constraintlayout/widget/c;)V
    .locals 8

    .line 2087
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 2088
    new-instance v1, Landroidx/constraintlayout/widget/Constraints$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroidx/constraintlayout/widget/Constraints$LayoutParams;-><init>(II)V

    .line 2090
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v2, 0x0

    .line 2091
    invoke-virtual {v0, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2092
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getId()I

    move-result v3

    invoke-virtual {v0, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10108
    iget-object v3, p1, Landroidx/constraintlayout/a/a/m;->be:Ljava/util/ArrayList;

    .line 2095
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/a/a/e;

    .line 11065
    iget-object v5, v4, Landroidx/constraintlayout/a/a/e;->aj:Ljava/lang/Object;

    .line 2096
    check-cast v5, Landroid/view/View;

    .line 2097
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 11108
    :cond_0
    iget-object v3, p1, Landroidx/constraintlayout/a/a/m;->be:Ljava/util/ArrayList;

    .line 2100
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/a/a/e;

    .line 12065
    iget-object v5, v4, Landroidx/constraintlayout/a/a/e;->aj:Ljava/lang/Object;

    .line 2101
    check-cast v5, Landroid/view/View;

    .line 2102
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {p2, v6, v1}, Landroidx/constraintlayout/widget/c;->a(ILandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 2104
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {p2, v6}, Landroidx/constraintlayout/widget/c;->d(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroidx/constraintlayout/a/a/e;->g(I)V

    .line 2105
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {p2, v6}, Landroidx/constraintlayout/widget/c;->c(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroidx/constraintlayout/a/a/e;->h(I)V

    .line 2106
    instance-of v6, v5, Landroidx/constraintlayout/widget/ConstraintHelper;

    if-eqz v6, :cond_1

    .line 2107
    move-object v6, v5

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintHelper;

    invoke-virtual {p2, v6, v4, v1, v0}, Landroidx/constraintlayout/widget/c;->a(Landroidx/constraintlayout/widget/ConstraintHelper;Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V

    .line 2108
    instance-of v6, v5, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v6, :cond_1

    .line 2109
    move-object v6, v5

    check-cast v6, Landroidx/constraintlayout/widget/Barrier;

    invoke-virtual {v6}, Landroidx/constraintlayout/widget/Barrier;->c()V

    .line 2119
    :cond_1
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-lt v6, v7, :cond_2

    .line 2120
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getLayoutDirection()I

    move-result v6

    invoke-virtual {v1, v6}, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->resolveLayoutDirection(I)V

    goto :goto_2

    .line 2122
    :cond_2
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->resolveLayoutDirection(I)V

    .line 2124
    :goto_2
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-static {v6, v5, v4, v1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroid/view/View;Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V

    .line 2125
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {p2, v6}, Landroidx/constraintlayout/widget/c;->a(I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 2126
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    .line 12705
    iput v5, v4, Landroidx/constraintlayout/a/a/e;->ak:I

    goto :goto_1

    .line 2128
    :cond_3
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {p2, v5}, Landroidx/constraintlayout/widget/c;->b(I)I

    move-result v5

    .line 13705
    iput v5, v4, Landroidx/constraintlayout/a/a/e;->ak:I

    goto :goto_1

    .line 14108
    :cond_4
    iget-object p1, p1, Landroidx/constraintlayout/a/a/m;->be:Ljava/util/ArrayList;

    .line 2131
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/a/a/e;

    .line 2132
    instance-of v1, p2, Landroidx/constraintlayout/a/a/l;

    if-eqz v1, :cond_5

    .line 15065
    iget-object v1, p2, Landroidx/constraintlayout/a/a/e;->aj:Ljava/lang/Object;

    .line 2133
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 2134
    check-cast p2, Landroidx/constraintlayout/a/a/i;

    .line 2135
    invoke-virtual {v1, p2, v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->a(Landroidx/constraintlayout/a/a/i;Landroid/util/SparseArray;)V

    .line 2136
    check-cast p2, Landroidx/constraintlayout/a/a/l;

    .line 2137
    invoke-virtual {p2}, Landroidx/constraintlayout/a/a/l;->d()V

    goto :goto_3

    :cond_6
    return-void
.end method

.method private b(II)V
    .locals 13

    .line 2213
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2214
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 2216
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iput v0, v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:I

    .line 2217
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iput v1, v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:I

    .line 2218
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getOptimizationLevel()I

    move-result v2

    .line 2220
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 17941
    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    if-ne v3, v4, :cond_0

    .line 2221
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->b:Landroidx/constraintlayout/a/a/f;

    invoke-static {v3, v4, v2, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/a/a/f;III)V

    .line 2222
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->c:Landroidx/constraintlayout/widget/c;

    if-eqz v3, :cond_2

    .line 2223
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->a:Landroidx/constraintlayout/a/a/f;

    invoke-static {v3, v4, v2, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->b(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/a/a/f;III)V

    goto :goto_0

    .line 2226
    :cond_0
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->c:Landroidx/constraintlayout/widget/c;

    if-eqz v3, :cond_1

    .line 2227
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->a:Landroidx/constraintlayout/a/a/f;

    invoke-static {v3, v4, v2, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->c(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/a/a/f;III)V

    .line 2229
    :cond_1
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->b:Landroidx/constraintlayout/a/a/f;

    invoke-static {v3, v4, v2, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->d(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/a/a/f;III)V

    .line 2238
    :cond_2
    :goto_0
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroidx/constraintlayout/motion/widget/MotionLayout;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_3

    if-ne v1, v3, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_9

    .line 2242
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iput v0, v3, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:I

    .line 2243
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:I

    .line 2244
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 18941
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    if-ne v0, v1, :cond_4

    .line 2245
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->b:Landroidx/constraintlayout/a/a/f;

    invoke-static {v0, v1, v2, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->e(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/a/a/f;III)V

    .line 2246
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->c:Landroidx/constraintlayout/widget/c;

    if-eqz v0, :cond_6

    .line 2247
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->a:Landroidx/constraintlayout/a/a/f;

    invoke-static {v0, v1, v2, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->f(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/a/a/f;III)V

    goto :goto_2

    .line 2250
    :cond_4
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->c:Landroidx/constraintlayout/widget/c;

    if-eqz v0, :cond_5

    .line 2251
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->a:Landroidx/constraintlayout/a/a/f;

    invoke-static {v0, v1, v2, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->g(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/a/a/f;III)V

    .line 2253
    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->b:Landroidx/constraintlayout/a/a/f;

    invoke-static {v0, v1, v2, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->h(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/a/a/f;III)V

    .line 2256
    :cond_6
    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->a:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/f;->o()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:I

    .line 2257
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->a:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/f;->p()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:I

    .line 2258
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->b:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/f;->o()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:I

    .line 2259
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->b:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/f;->p()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:I

    .line 2260
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:I

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:I

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:I

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:I

    if-eq v1, v2, :cond_7

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v1, 0x1

    :goto_4
    iput-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:Z

    .line 2264
    :cond_9
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:I

    .line 2265
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:I

    .line 2266
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_a

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:I

    if-nez v2, :cond_b

    .line 2267
    :cond_a
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:I

    int-to-float v0, v0

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v6, v6, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:I

    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v7, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float v2, v2, v6

    add-float/2addr v0, v2

    float-to-int v0, v0

    :cond_b
    move v9, v0

    .line 2269
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:I

    if-eq v0, v3, :cond_c

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:I

    if-nez v0, :cond_d

    .line 2270
    :cond_c
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:I

    int-to-float v0, v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:I

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    float-to-int v1, v0

    :cond_d
    move v10, v1

    .line 2273
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->a:Landroidx/constraintlayout/a/a/f;

    .line 19262
    iget-boolean v0, v0, Landroidx/constraintlayout/a/a/f;->aZ:Z

    if-nez v0, :cond_f

    .line 2273
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->b:Landroidx/constraintlayout/a/a/f;

    .line 20262
    iget-boolean v0, v0, Landroidx/constraintlayout/a/a/f;->aZ:Z

    if-eqz v0, :cond_e

    goto :goto_5

    :cond_e
    const/4 v11, 0x0

    goto :goto_6

    :cond_f
    :goto_5
    const/4 v11, 0x1

    .line 2275
    :goto_6
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->a:Landroidx/constraintlayout/a/a/f;

    .line 20269
    iget-boolean v0, v0, Landroidx/constraintlayout/a/a/f;->ba:Z

    if-nez v0, :cond_11

    .line 2275
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->b:Landroidx/constraintlayout/a/a/f;

    .line 21269
    iget-boolean v0, v0, Landroidx/constraintlayout/a/a/f;->ba:Z

    if-eqz v0, :cond_10

    goto :goto_7

    :cond_10
    const/4 v12, 0x0

    goto :goto_8

    :cond_11
    :goto_7
    const/4 v12, 0x1

    .line 2277
    :goto_8
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    move v7, p1

    move v8, p2

    invoke-static/range {v6 .. v12}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;IIIIZZ)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 2208
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->h(Landroidx/constraintlayout/motion/widget/MotionLayout;)I

    move-result v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->i(Landroidx/constraintlayout/motion/widget/MotionLayout;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->b(II)V

    .line 2209
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->j(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    return-void
.end method

.method public final a(II)V
    .locals 0

    .line 2327
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->e:I

    .line 2328
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->f:I

    return-void
.end method

.method final a(Landroidx/constraintlayout/widget/c;Landroidx/constraintlayout/widget/c;)V
    .locals 5

    .line 2030
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->c:Landroidx/constraintlayout/widget/c;

    .line 2031
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->d:Landroidx/constraintlayout/widget/c;

    .line 2032
    new-instance v0, Landroidx/constraintlayout/a/a/f;

    invoke-direct {v0}, Landroidx/constraintlayout/a/a/f;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->a:Landroidx/constraintlayout/a/a/f;

    .line 2033
    new-instance v0, Landroidx/constraintlayout/a/a/f;

    invoke-direct {v0}, Landroidx/constraintlayout/a/a/f;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->b:Landroidx/constraintlayout/a/a/f;

    .line 2034
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->a:Landroidx/constraintlayout/a/a/f;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->b(Landroidx/constraintlayout/motion/widget/MotionLayout;)Landroidx/constraintlayout/a/a/f;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/f;->f()Landroidx/constraintlayout/a/a/a/b$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/a/b$b;)V

    .line 2035
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->b:Landroidx/constraintlayout/a/a/f;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->c(Landroidx/constraintlayout/motion/widget/MotionLayout;)Landroidx/constraintlayout/a/a/f;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/f;->f()Landroidx/constraintlayout/a/a/a/b$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/a/b$b;)V

    .line 2036
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->a:Landroidx/constraintlayout/a/a/f;

    .line 5181
    iget-object v0, v0, Landroidx/constraintlayout/a/a/m;->be:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2037
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->b:Landroidx/constraintlayout/a/a/f;

    .line 6181
    iget-object v0, v0, Landroidx/constraintlayout/a/a/m;->be:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2038
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->d(Landroidx/constraintlayout/motion/widget/MotionLayout;)Landroidx/constraintlayout/a/a/f;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->a:Landroidx/constraintlayout/a/a/f;

    invoke-static {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->a(Landroidx/constraintlayout/a/a/f;Landroidx/constraintlayout/a/a/f;)V

    .line 2039
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->e(Landroidx/constraintlayout/motion/widget/MotionLayout;)Landroidx/constraintlayout/a/a/f;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->b:Landroidx/constraintlayout/a/a/f;

    invoke-static {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->a(Landroidx/constraintlayout/a/a/f;Landroidx/constraintlayout/a/a/f;)V

    .line 2040
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    if-eqz p1, :cond_0

    .line 2042
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->a:Landroidx/constraintlayout/a/a/f;

    invoke-direct {p0, v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->a(Landroidx/constraintlayout/a/a/f;Landroidx/constraintlayout/widget/c;)V

    .line 2044
    :cond_0
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->b:Landroidx/constraintlayout/a/a/f;

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->a(Landroidx/constraintlayout/a/a/f;Landroidx/constraintlayout/widget/c;)V

    goto :goto_0

    .line 2046
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->b:Landroidx/constraintlayout/a/a/f;

    invoke-direct {p0, v0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->a(Landroidx/constraintlayout/a/a/f;Landroidx/constraintlayout/widget/c;)V

    if-eqz p1, :cond_2

    .line 2048
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->a:Landroidx/constraintlayout/a/a/f;

    invoke-direct {p0, p2, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->a(Landroidx/constraintlayout/a/a/f;Landroidx/constraintlayout/widget/c;)V

    .line 2055
    :cond_2
    :goto_0
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->a:Landroidx/constraintlayout/a/a/f;

    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-static {p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->f(Landroidx/constraintlayout/motion/widget/MotionLayout;)Z

    move-result p2

    .line 6464
    iput-boolean p2, p1, Landroidx/constraintlayout/a/a/f;->d:Z

    .line 2056
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->a:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/f;->e()V

    .line 2065
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->b:Landroidx/constraintlayout/a/a/f;

    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-static {p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->g(Landroidx/constraintlayout/motion/widget/MotionLayout;)Z

    move-result p2

    .line 7464
    iput-boolean p2, p1, Landroidx/constraintlayout/a/a/f;->d:Z

    .line 2066
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->b:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/f;->e()V

    .line 2073
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2075
    iget p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v0, -0x2

    if-ne p2, v0, :cond_3

    .line 2076
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->a:Landroidx/constraintlayout/a/a/f;

    sget-object v1, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    .line 8000
    iget-object p2, p2, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    const/4 v2, 0x0

    aput-object v1, p2, v2

    .line 2077
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->b:Landroidx/constraintlayout/a/a/f;

    sget-object v1, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    .line 9000
    iget-object p2, p2, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aput-object v1, p2, v2

    .line 2079
    :cond_3
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne p1, v0, :cond_4

    .line 2080
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->a:Landroidx/constraintlayout/a/a/f;

    sget-object p2, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    .line 9009
    iget-object p1, p1, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    const/4 v0, 0x1

    aput-object p2, p1, v0

    .line 2081
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->b:Landroidx/constraintlayout/a/a/f;

    sget-object p2, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    .line 10009
    iget-object p1, p1, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aput-object p2, p1, v0

    :cond_4
    return-void
.end method

.method public final b()V
    .locals 10

    .line 2288
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    move-result v0

    .line 2289
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->i:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2292
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v3, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2293
    new-instance v4, Landroidx/constraintlayout/motion/widget/m;

    invoke-direct {v4, v3}, Landroidx/constraintlayout/motion/widget/m;-><init>(Landroid/view/View;)V

    .line 2295
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v5, v5, Landroidx/constraintlayout/motion/widget/MotionLayout;->i:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, v0, :cond_5

    .line 2298
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2299
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/MotionLayout;->i:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/m;

    if-eqz v3, :cond_4

    .line 2303
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->c:Landroidx/constraintlayout/widget/c;

    const-string v5, ")"

    const-string v6, " ("

    const-string v7, "no widget for  "

    const-string v8, "MotionLayout"

    if-eqz v4, :cond_2

    .line 2304
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->a:Landroidx/constraintlayout/a/a/f;

    invoke-static {v4, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->a(Landroidx/constraintlayout/a/a/f;Landroid/view/View;)Landroidx/constraintlayout/a/a/e;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2306
    iget-object v9, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->c:Landroidx/constraintlayout/widget/c;

    invoke-virtual {v3, v4, v9}, Landroidx/constraintlayout/motion/widget/m;->a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/widget/c;)V

    goto :goto_2

    .line 2308
    :cond_1
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->p:I

    if-eqz v4, :cond_2

    .line 2309
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroidx/constraintlayout/motion/widget/a;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/a;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2313
    :cond_2
    :goto_2
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->d:Landroidx/constraintlayout/widget/c;

    if-eqz v4, :cond_4

    .line 2314
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->b:Landroidx/constraintlayout/a/a/f;

    invoke-static {v4, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->a(Landroidx/constraintlayout/a/a/f;Landroid/view/View;)Landroidx/constraintlayout/a/a/e;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2316
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->d:Landroidx/constraintlayout/widget/c;

    invoke-virtual {v3, v4, v2}, Landroidx/constraintlayout/motion/widget/m;->b(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/widget/c;)V

    goto :goto_3

    .line 2318
    :cond_3
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionLayout;->p:I

    if-eqz v3, :cond_4

    .line 2319
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroidx/constraintlayout/motion/widget/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/a;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_5
    return-void
.end method
