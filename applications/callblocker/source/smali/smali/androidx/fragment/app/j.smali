.class final Landroidx/fragment/app/j;
.super Landroidx/fragment/app/i;
.source "FragmentManagerImpl.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/j$b;,
        Landroidx/fragment/app/j$a;,
        Landroidx/fragment/app/j$g;,
        Landroidx/fragment/app/j$f;,
        Landroidx/fragment/app/j$e;,
        Landroidx/fragment/app/j$d;,
        Landroidx/fragment/app/j$c;
    }
.end annotation


# static fields
.field static final D:Landroid/view/animation/Interpolator;

.field static final E:Landroid/view/animation/Interpolator;

.field static b:Z


# instance fields
.field A:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/j$g;",
            ">;"
        }
    .end annotation
.end field

.field C:Ljava/lang/Runnable;

.field private F:Landroidx/activity/OnBackPressedDispatcher;

.field private final G:Landroidx/activity/c;

.field private final H:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroidx/fragment/app/j$c;",
            ">;"
        }
    .end annotation
.end field

.field private I:Landroidx/fragment/app/l;

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/j$e;",
            ">;"
        }
    .end annotation
.end field

.field d:Z

.field e:I

.field final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/a;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/a;",
            ">;"
        }
    .end annotation
.end field

.field k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/i$b;",
            ">;"
        }
    .end annotation
.end field

.field m:I

.field n:Landroidx/fragment/app/h;

.field o:Landroidx/fragment/app/e;

.field p:Landroidx/fragment/app/Fragment;

.field q:Landroidx/fragment/app/Fragment;

.field r:Z

.field s:Z

.field t:Z

.field u:Z

.field v:Z

.field w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/a;",
            ">;"
        }
    .end annotation
.end field

.field x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field z:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 76
    const/4 v0, 0x0

    sput-boolean v0, Landroidx/fragment/app/j;->b:Z

    .line 574
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroidx/fragment/app/j;->D:Landroid/view/animation/Interpolator;

    .line 575
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroidx/fragment/app/j;->E:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Landroidx/fragment/app/i;-><init>()V

    .line 97
    iput v1, p0, Landroidx/fragment/app/j;->e:I

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    .line 104
    new-instance v0, Landroidx/fragment/app/j$1;

    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/j$1;-><init>(Landroidx/fragment/app/j;Z)V

    iput-object v0, p0, Landroidx/fragment/app/j;->G:Landroidx/activity/c;

    .line 117
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/j;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 120
    iput v1, p0, Landroidx/fragment/app/j;->m:I

    .line 139
    iput-object v2, p0, Landroidx/fragment/app/j;->z:Landroid/os/Bundle;

    .line 140
    iput-object v2, p0, Landroidx/fragment/app/j;->A:Landroid/util/SparseArray;

    .line 147
    new-instance v0, Landroidx/fragment/app/j$2;

    invoke-direct {v0, p0}, Landroidx/fragment/app/j$2;-><init>(Landroidx/fragment/app/j;)V

    iput-object v0, p0, Landroidx/fragment/app/j;->C:Ljava/lang/Runnable;

    return-void
.end method

.method private C()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 192
    iget-object v1, p0, Landroidx/fragment/app/j;->c:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/fragment/app/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    iget-object v1, p0, Landroidx/fragment/app/j;->G:Landroidx/activity/c;

    invoke-virtual {v1, v0}, Landroidx/activity/c;->a(Z)V

    .line 201
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/j;->G:Landroidx/activity/c;

    invoke-virtual {p0}, Landroidx/fragment/app/j;->h()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/Fragment;

    .line 200
    invoke-virtual {p0, v2}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/Fragment;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    :goto_1
    invoke-virtual {v1, v0}, Landroidx/activity/c;->a(Z)V

    goto :goto_0

    .line 200
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private D()V
    .locals 2

    .prologue
    .line 1535
    invoke-virtual {p0}, Landroidx/fragment/app/j;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1536
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1539
    :cond_0
    return-void
.end method

.method private E()V
    .locals 1

    .prologue
    .line 1712
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/j;->d:Z

    .line 1713
    iget-object v0, p0, Landroidx/fragment/app/j;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1714
    iget-object v0, p0, Landroidx/fragment/app/j;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1715
    return-void
.end method

.method private F()V
    .locals 2

    .prologue
    .line 2113
    iget-object v0, p0, Landroidx/fragment/app/j;->B:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2114
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/j;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2115
    iget-object v0, p0, Landroidx/fragment/app/j;->B:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/j$g;

    invoke-virtual {v0}, Landroidx/fragment/app/j$g;->d()V

    goto :goto_0

    .line 2118
    :cond_0
    return-void
.end method

.method private G()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 2125
    iget-object v0, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 2126
    if-eqz v1, :cond_0

    .line 2127
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->an()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2129
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->ap()I

    move-result v2

    .line 2130
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->an()Landroid/view/View;

    move-result-object v0

    .line 2131
    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    .line 2132
    if-eqz v4, :cond_1

    .line 2133
    invoke-virtual {v4}, Landroid/view/animation/Animation;->cancel()V

    .line 2136
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 2138
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->a(Landroid/view/View;)V

    move-object v0, p0

    move v4, v3

    move v5, v3

    .line 2139
    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/Fragment;IIIZ)V

    goto :goto_0

    .line 2140
    :cond_2
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->ao()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2141
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->ao()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    goto :goto_0

    .line 2145
    :cond_3
    return-void
.end method

.method private H()V
    .locals 2

    .prologue
    .line 2555
    iget-object v0, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 2558
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 2559
    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroidx/b/b;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;II",
            "Landroidx/b/b",
            "<",
            "Landroidx/fragment/app/Fragment;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1935
    .line 1936
    add-int/lit8 v0, p4, -0x1

    move v4, v0

    move v2, p4

    :goto_0
    if-lt v4, p3, :cond_4

    .line 1937
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/a;

    .line 1938
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 1939
    invoke-virtual {v0}, Landroidx/fragment/app/a;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v1, v4, 0x1

    .line 1940
    invoke-virtual {v0, p1, v1, p4}, Landroidx/fragment/app/a;->a(Ljava/util/ArrayList;II)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 1941
    :goto_1
    if-eqz v1, :cond_5

    .line 1942
    iget-object v1, p0, Landroidx/fragment/app/j;->B:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 1943
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/j;->B:Ljava/util/ArrayList;

    .line 1945
    :cond_0
    new-instance v1, Landroidx/fragment/app/j$g;

    invoke-direct {v1, v0, v5}, Landroidx/fragment/app/j$g;-><init>(Landroidx/fragment/app/a;Z)V

    .line 1947
    iget-object v6, p0, Landroidx/fragment/app/j;->B:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1948
    invoke-virtual {v0, v1}, Landroidx/fragment/app/a;->a(Landroidx/fragment/app/Fragment$b;)V

    .line 1951
    if-eqz v5, :cond_3

    .line 1952
    invoke-virtual {v0}, Landroidx/fragment/app/a;->f()V

    .line 1958
    :goto_2
    add-int/lit8 v1, v2, -0x1

    .line 1959
    if-eq v4, v1, :cond_1

    .line 1960
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1961
    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1965
    :cond_1
    invoke-direct {p0, p5}, Landroidx/fragment/app/j;->b(Landroidx/b/b;)V

    move v0, v1

    .line 1936
    :goto_3
    add-int/lit8 v1, v4, -0x1

    move v4, v1

    move v2, v0

    goto :goto_0

    :cond_2
    move v1, v3

    .line 1940
    goto :goto_1

    .line 1954
    :cond_3
    invoke-virtual {v0, v3}, Landroidx/fragment/app/a;->b(Z)V

    goto :goto_2

    .line 1968
    :cond_4
    return v2

    :cond_5
    move v0, v2

    goto :goto_3
.end method

.method static a(FF)Landroidx/fragment/app/j$a;
    .locals 4

    .prologue
    .line 595
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p0, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 596
    sget-object v1, Landroidx/fragment/app/j;->E:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 597
    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 598
    new-instance v1, Landroidx/fragment/app/j$a;

    invoke-direct {v1, v0}, Landroidx/fragment/app/j$a;-><init>(Landroid/view/animation/Animation;)V

    return-object v1
.end method

.method static a(FFFF)Landroidx/fragment/app/j$a;
    .locals 12

    .prologue
    const-wide/16 v10, 0xdc

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    .line 581
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 582
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v1, p0

    move v2, p1

    move v3, p0

    move v4, p1

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 584
    sget-object v1, Landroidx/fragment/app/j;->D:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 585
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 586
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 587
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 588
    sget-object v1, Landroidx/fragment/app/j;->E:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 589
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 590
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 591
    new-instance v0, Landroidx/fragment/app/j$a;

    invoke-direct {v0, v9}, Landroidx/fragment/app/j$a;-><init>(Landroid/view/animation/Animation;)V

    return-object v0
.end method

.method private a(Landroidx/b/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/b/b",
            "<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1909
    invoke-virtual {p1}, Landroidx/b/b;->size()I

    move-result v2

    .line 1910
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 1911
    invoke-virtual {p1, v1}, Landroidx/b/b;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 1912
    iget-boolean v3, v0, Landroidx/fragment/app/Fragment;->t:Z

    if-nez v3, :cond_0

    .line 1913
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->H()Landroid/view/View;

    move-result-object v3

    .line 1914
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v4

    iput v4, v0, Landroidx/fragment/app/Fragment;->W:F

    .line 1915
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1910
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1918
    :cond_1
    return-void
.end method

.method private a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/j$a;I)V
    .locals 4

    .prologue
    .line 1076
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    .line 1077
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->N:Landroid/view/ViewGroup;

    .line 1078
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 1079
    invoke-virtual {p1, p3}, Landroidx/fragment/app/Fragment;->d(I)V

    .line 1080
    iget-object v2, p2, Landroidx/fragment/app/j$a;->a:Landroid/view/animation/Animation;

    if-eqz v2, :cond_0

    .line 1081
    new-instance v2, Landroidx/fragment/app/j$b;

    iget-object v3, p2, Landroidx/fragment/app/j$a;->a:Landroid/view/animation/Animation;

    invoke-direct {v2, v3, v1, v0}, Landroidx/fragment/app/j$b;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 1083
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->a(Landroid/view/View;)V

    .line 1084
    new-instance v0, Landroidx/fragment/app/j$3;

    invoke-direct {v0, p0, v1, p1}, Landroidx/fragment/app/j$3;-><init>(Landroidx/fragment/app/j;Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1110
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1130
    :goto_0
    return-void

    .line 1112
    :cond_0
    iget-object v2, p2, Landroidx/fragment/app/j$a;->b:Landroid/animation/Animator;

    .line 1113
    iget-object v3, p2, Landroidx/fragment/app/j$a;->b:Landroid/animation/Animator;

    invoke-virtual {p1, v3}, Landroidx/fragment/app/Fragment;->a(Landroid/animation/Animator;)V

    .line 1114
    new-instance v3, Landroidx/fragment/app/j$4;

    invoke-direct {v3, p0, v1, v0, p1}, Landroidx/fragment/app/j$4;-><init>(Landroidx/fragment/app/j;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1127
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1128
    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method private a(Ljava/lang/RuntimeException;)V
    .locals 5

    .prologue
    .line 155
    const-string/jumbo v0, "FragmentManager"

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-string/jumbo v0, "FragmentManager"

    const-string/jumbo v1, "Activity state:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v0, Landroidx/core/g/b;

    const-string/jumbo v1, "FragmentManager"

    invoke-direct {v0, v1}, Landroidx/core/g/b;-><init>(Ljava/lang/String;)V

    .line 158
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 159
    iget-object v0, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    if-eqz v0, :cond_0

    .line 161
    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    const-string/jumbo v2, "  "

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1, v4}, Landroidx/fragment/app/h;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    throw p1

    .line 162
    :catch_0
    move-exception v0

    .line 163
    const-string/jumbo v1, "FragmentManager"

    const-string/jumbo v2, "Failed dumping state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 167
    :cond_0
    :try_start_1
    const-string/jumbo v0, "  "

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v1, v3}, Landroidx/fragment/app/j;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 168
    :catch_1
    move-exception v0

    .line 169
    const-string/jumbo v1, "FragmentManager"

    const-string/jumbo v2, "Failed dumping state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 1747
    iget-object v0, p0, Landroidx/fragment/app/j;->B:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    move v3, v2

    move v4, v0

    .line 1748
    :goto_1
    if-ge v3, v4, :cond_5

    .line 1749
    iget-object v0, p0, Landroidx/fragment/app/j;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/j$g;

    .line 1750
    if-eqz p1, :cond_1

    iget-boolean v1, v0, Landroidx/fragment/app/j$g;->a:Z

    if-nez v1, :cond_1

    .line 1751
    iget-object v1, v0, Landroidx/fragment/app/j$g;->b:Landroidx/fragment/app/a;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1752
    if-eq v1, v6, :cond_1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1753
    iget-object v1, p0, Landroidx/fragment/app/j;->B:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1754
    add-int/lit8 v1, v3, -0x1

    .line 1755
    add-int/lit8 v3, v4, -0x1

    .line 1756
    invoke-virtual {v0}, Landroidx/fragment/app/j$g;->e()V

    move v0, v1

    move v4, v3

    .line 1748
    :goto_2
    add-int/lit8 v3, v0, 0x1

    goto :goto_1

    .line 1747
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 1760
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/j$g;->c()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_4

    iget-object v1, v0, Landroidx/fragment/app/j$g;->b:Landroidx/fragment/app/a;

    .line 1761
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v1, p1, v2, v5}, Landroidx/fragment/app/a;->a(Ljava/util/ArrayList;II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1762
    :cond_2
    iget-object v1, p0, Landroidx/fragment/app/j;->B:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1763
    add-int/lit8 v3, v3, -0x1

    .line 1764
    add-int/lit8 v4, v4, -0x1

    .line 1766
    if-eqz p1, :cond_3

    iget-boolean v1, v0, Landroidx/fragment/app/j$g;->a:Z

    if-nez v1, :cond_3

    iget-object v1, v0, Landroidx/fragment/app/j$g;->b:Landroidx/fragment/app/a;

    .line 1767
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v6, :cond_3

    .line 1768
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1770
    invoke-virtual {v0}, Landroidx/fragment/app/j$g;->e()V

    move v0, v3

    goto :goto_2

    .line 1772
    :cond_3
    invoke-virtual {v0}, Landroidx/fragment/app/j$g;->d()V

    :cond_4
    move v0, v3

    goto :goto_2

    .line 1776
    :cond_5
    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1844
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/a;

    iget-boolean v8, v0, Landroidx/fragment/app/a;->t:Z

    .line 1846
    iget-object v0, p0, Landroidx/fragment/app/j;->y:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1847
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/j;->y:Ljava/util/ArrayList;

    .line 1851
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/j;->y:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1852
    invoke-virtual {p0}, Landroidx/fragment/app/j;->z()Landroidx/fragment/app/Fragment;

    move-result-object v1

    move v2, p3

    move-object v3, v1

    move v7, v5

    .line 1853
    :goto_1
    if-ge v2, p4, :cond_4

    .line 1854
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/a;

    .line 1855
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1856
    if-nez v1, :cond_2

    .line 1857
    iget-object v1, p0, Landroidx/fragment/app/j;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v3}, Landroidx/fragment/app/a;->a(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 1861
    :goto_2
    if-nez v7, :cond_0

    iget-boolean v0, v0, Landroidx/fragment/app/a;->k:Z

    if-eqz v0, :cond_3

    :cond_0
    move v0, v6

    .line 1853
    :goto_3
    add-int/lit8 v2, v2, 0x1

    move-object v3, v1

    move v7, v0

    goto :goto_1

    .line 1849
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/j;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 1859
    :cond_2
    iget-object v1, p0, Landroidx/fragment/app/j;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v3}, Landroidx/fragment/app/a;->b(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    goto :goto_2

    :cond_3
    move v0, v5

    .line 1861
    goto :goto_3

    .line 1863
    :cond_4
    iget-object v0, p0, Landroidx/fragment/app/j;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1865
    if-nez v8, :cond_5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 1866
    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/p;->a(Landroidx/fragment/app/j;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 1869
    :cond_5
    invoke-static {p1, p2, p3, p4}, Landroidx/fragment/app/j;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 1872
    if-eqz v8, :cond_a

    .line 1873
    new-instance v5, Landroidx/b/b;

    invoke-direct {v5}, Landroidx/b/b;-><init>()V

    .line 1874
    invoke-direct {p0, v5}, Landroidx/fragment/app/j;->b(Landroidx/b/b;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 1875
    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/j;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroidx/b/b;)I

    move-result v4

    .line 1877
    invoke-direct {p0, v5}, Landroidx/fragment/app/j;->a(Landroidx/b/b;)V

    .line 1880
    :goto_4
    if-eq v4, p3, :cond_6

    if-eqz v8, :cond_6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, v6

    .line 1882
    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/p;->a(Landroidx/fragment/app/j;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 1884
    iget v0, p0, Landroidx/fragment/app/j;->m:I

    invoke-virtual {p0, v0, v6}, Landroidx/fragment/app/j;->a(IZ)V

    .line 1887
    :cond_6
    :goto_5
    if-ge p3, p4, :cond_8

    .line 1888
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/a;

    .line 1889
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1890
    if-eqz v1, :cond_7

    iget v1, v0, Landroidx/fragment/app/a;->c:I

    if-ltz v1, :cond_7

    .line 1891
    iget v1, v0, Landroidx/fragment/app/a;->c:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/j;->c(I)V

    .line 1892
    const/4 v1, -0x1

    iput v1, v0, Landroidx/fragment/app/a;->c:I

    .line 1894
    :cond_7
    invoke-virtual {v0}, Landroidx/fragment/app/a;->a()V

    .line 1887
    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    .line 1896
    :cond_8
    if-eqz v7, :cond_9

    .line 1897
    invoke-virtual {p0}, Landroidx/fragment/app/j;->m()V

    .line 1899
    :cond_9
    return-void

    :cond_a
    move v4, p4

    goto :goto_4
.end method

.method private a(Ljava/lang/String;II)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 293
    invoke-virtual {p0}, Landroidx/fragment/app/j;->k()Z

    .line 294
    invoke-direct {p0, v6}, Landroidx/fragment/app/j;->c(Z)V

    .line 296
    iget-object v0, p0, Landroidx/fragment/app/j;->q:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    if-gez p2, :cond_0

    if-nez p1, :cond_0

    .line 299
    iget-object v0, p0, Landroidx/fragment/app/j;->q:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->x()Landroidx/fragment/app/i;

    move-result-object v0

    .line 300
    invoke-virtual {v0}, Landroidx/fragment/app/i;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    .line 319
    :goto_0
    return v0

    .line 306
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/j;->w:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/j;->x:Ljava/util/ArrayList;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/j;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result v0

    .line 307
    if-eqz v0, :cond_1

    .line 308
    iput-boolean v6, p0, Landroidx/fragment/app/j;->d:Z

    .line 310
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/j;->w:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/j;->x:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Landroidx/fragment/app/j;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    invoke-direct {p0}, Landroidx/fragment/app/j;->E()V

    .line 316
    :cond_1
    invoke-direct {p0}, Landroidx/fragment/app/j;->C()V

    .line 317
    invoke-virtual {p0}, Landroidx/fragment/app/j;->l()V

    .line 318
    invoke-direct {p0}, Landroidx/fragment/app/j;->H()V

    goto :goto_0

    .line 312
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroidx/fragment/app/j;->E()V

    .line 313
    throw v0
.end method

.method public static b(IZ)I
    .locals 1

    .prologue
    .line 3137
    const/4 v0, -0x1

    .line 3138
    sparse-switch p0, :sswitch_data_0

    .line 3149
    :goto_0
    return v0

    .line 3140
    :sswitch_0
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 3143
    :sswitch_1
    if-eqz p1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    .line 3146
    :sswitch_2
    if-eqz p1, :cond_2

    const/4 v0, 0x5

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    goto :goto_0

    .line 3138
    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method

.method private b(Landroidx/b/b;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/b/b",
            "<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2091
    iget v0, p0, Landroidx/fragment/app/j;->m:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 2107
    :cond_0
    return-void

    .line 2095
    :cond_1
    iget v0, p0, Landroidx/fragment/app/j;->m:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2096
    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v6, v5

    .line 2097
    :goto_0
    if-ge v6, v7, :cond_0

    .line 2098
    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 2099
    iget v0, v1, Landroidx/fragment/app/Fragment;->k:I

    if-ge v0, v2, :cond_2

    .line 2100
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->ai()I

    move-result v3

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->aj()I

    move-result v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 2102
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-boolean v0, v1, Landroidx/fragment/app/Fragment;->H:Z

    if-nez v0, :cond_2

    iget-boolean v0, v1, Landroidx/fragment/app/Fragment;->U:Z

    if-eqz v0, :cond_2

    .line 2103
    invoke-virtual {p1, v1}, Landroidx/b/b;->add(Ljava/lang/Object;)Z

    .line 2097
    :cond_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0
.end method

.method private b(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1794
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1832
    :cond_0
    :goto_0
    return-void

    .line 1798
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 1799
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Internal error with the back stack records"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1803
    :cond_3
    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/j;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1805
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v0

    move v3, v0

    .line 1807
    :goto_1
    if-ge v2, v4, :cond_6

    .line 1808
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/a;

    iget-boolean v0, v0, Landroidx/fragment/app/a;->t:Z

    .line 1809
    if-nez v0, :cond_7

    .line 1811
    if-eq v3, v2, :cond_4

    .line 1812
    invoke-direct {p0, p1, p2, v3, v2}, Landroidx/fragment/app/j;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 1816
    :cond_4
    add-int/lit8 v1, v2, 0x1

    .line 1817
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1818
    :goto_2
    if-ge v1, v4, :cond_5

    .line 1819
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1820
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/a;

    iget-boolean v0, v0, Landroidx/fragment/app/a;->t:Z

    if-nez v0, :cond_5

    .line 1821
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    move v0, v1

    .line 1824
    invoke-direct {p0, p1, p2, v2, v0}, Landroidx/fragment/app/j;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 1826
    add-int/lit8 v1, v0, -0x1

    .line 1807
    :goto_3
    add-int/lit8 v2, v1, 0x1

    move v3, v0

    goto :goto_1

    .line 1829
    :cond_6
    if-eq v3, v4, :cond_0

    .line 1830
    invoke-direct {p0, p1, p2, v3, v4}, Landroidx/fragment/app/j;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    goto :goto_0

    :cond_7
    move v1, v2

    move v0, v3

    goto :goto_3
.end method

.method private static b(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 2068
    :goto_0
    if-ge p2, p3, :cond_2

    .line 2069
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/a;

    .line 2070
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2071
    if-eqz v1, :cond_1

    .line 2072
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/a;->a(I)V

    .line 2075
    add-int/lit8 v1, p3, -0x1

    if-ne p2, v1, :cond_0

    move v1, v2

    .line 2076
    :goto_1
    invoke-virtual {v0, v1}, Landroidx/fragment/app/a;->b(Z)V

    .line 2068
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 2075
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 2078
    :cond_1
    invoke-virtual {v0, v2}, Landroidx/fragment/app/a;->a(I)V

    .line 2079
    invoke-virtual {v0}, Landroidx/fragment/app/a;->f()V

    goto :goto_2

    .line 2082
    :cond_2
    return-void
.end method

.method private c(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1659
    iget-boolean v0, p0, Landroidx/fragment/app/j;->d:Z

    if-eqz v0, :cond_0

    .line 1660
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "FragmentManager is already executing transactions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1663
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    if-nez v0, :cond_1

    .line 1664
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Fragment host has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1667
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {v1}, Landroidx/fragment/app/h;->m()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 1668
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must be called from main thread of fragment host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1671
    :cond_2
    if-nez p1, :cond_3

    .line 1672
    invoke-direct {p0}, Landroidx/fragment/app/j;->D()V

    .line 1675
    :cond_3
    iget-object v0, p0, Landroidx/fragment/app/j;->w:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    .line 1676
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/j;->w:Ljava/util/ArrayList;

    .line 1677
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/j;->x:Ljava/util/ArrayList;

    .line 1679
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/j;->d:Z

    .line 1681
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1}, Landroidx/fragment/app/j;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1683
    iput-boolean v2, p0, Landroidx/fragment/app/j;->d:Z

    .line 1685
    return-void

    .line 1683
    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Landroidx/fragment/app/j;->d:Z

    .line 1684
    throw v0
.end method

.method private c(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2159
    .line 2160
    monitor-enter p0

    .line 2161
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/j;->c:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/fragment/app/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 2162
    :cond_0
    monitor-exit p0

    .line 2172
    :goto_0
    return v0

    .line 2165
    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v0

    move v1, v0

    .line 2166
    :goto_1
    if-ge v2, v3, :cond_2

    .line 2167
    iget-object v0, p0, Landroidx/fragment/app/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/j$e;

    invoke-interface {v0, p1, p2}, Landroidx/fragment/app/j$e;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    or-int/2addr v1, v0

    .line 2166
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 2169
    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2170
    iget-object v0, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->m()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Landroidx/fragment/app/j;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2171
    monitor-exit p0

    move v0, v1

    .line 2172
    goto :goto_0

    .line 2171
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static d(I)I
    .locals 1

    .prologue
    .line 3113
    const/4 v0, 0x0

    .line 3114
    sparse-switch p0, :sswitch_data_0

    .line 3125
    :goto_0
    return v0

    .line 3116
    :sswitch_0
    const/16 v0, 0x2002

    .line 3117
    goto :goto_0

    .line 3119
    :sswitch_1
    const/16 v0, 0x1001

    .line 3120
    goto :goto_0

    .line 3122
    :sswitch_2
    const/16 v0, 0x1003

    goto :goto_0

    .line 3114
    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method

.method private e(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2658
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroidx/fragment/app/j;->d:Z

    .line 2659
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/j;->a(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2661
    iput-boolean v1, p0, Landroidx/fragment/app/j;->d:Z

    .line 2663
    invoke-virtual {p0}, Landroidx/fragment/app/j;->k()Z

    .line 2664
    return-void

    .line 2661
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Landroidx/fragment/app/j;->d:Z

    .line 2662
    throw v0
.end method

.method private u(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2040
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->N:Landroid/view/ViewGroup;

    .line 2041
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    .line 2043
    if-eqz v3, :cond_0

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v1

    .line 2055
    :cond_1
    :goto_0
    return-object v0

    .line 2047
    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2048
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_4

    .line 2049
    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 2050
    iget-object v4, v0, Landroidx/fragment/app/Fragment;->N:Landroid/view/ViewGroup;

    if-ne v4, v3, :cond_3

    iget-object v4, v0, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    if-nez v4, :cond_1

    .line 2048
    :cond_3
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 2055
    goto :goto_0
.end method

.method private v(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .prologue
    .line 2807
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 2808
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->ab()V

    .line 2810
    :cond_0
    return-void
.end method

.method private w(Landroidx/fragment/app/Fragment;)Z
    .locals 1

    .prologue
    .line 3109
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->L:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->M:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->A()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method A()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 3096
    .line 3097
    iget-object v0, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 3098
    if-eqz v0, :cond_2

    .line 3099
    invoke-direct {p0, v0}, Landroidx/fragment/app/j;->w(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    .line 3101
    :goto_1
    if-eqz v0, :cond_1

    .line 3102
    const/4 v2, 0x1

    .line 3105
    :cond_0
    return v2

    :cond_1
    move v1, v0

    .line 3104
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method B()Landroid/view/LayoutInflater$Factory2;
    .locals 0

    .prologue
    .line 3252
    return-object p0
.end method

.method public a(Landroidx/fragment/app/a;)I
    .locals 4

    .prologue
    .line 1597
    monitor-enter p0

    .line 1598
    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/j;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/j;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 1599
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j;->j:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1600
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/j;->j:Ljava/util/ArrayList;

    .line 1602
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/j;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1603
    sget-boolean v1, Landroidx/fragment/app/j;->b:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Setting back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    :cond_2
    iget-object v1, p0, Landroidx/fragment/app/j;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1605
    monitor-exit p0

    .line 1611
    :goto_0
    return v0

    .line 1608
    :cond_3
    iget-object v0, p0, Landroidx/fragment/app/j;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/j;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1609
    sget-boolean v1, Landroidx/fragment/app/j;->b:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Adding back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    :cond_4
    iget-object v1, p0, Landroidx/fragment/app/j;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1611
    monitor-exit p0

    goto :goto_0

    .line 1613
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 5

    .prologue
    .line 359
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 360
    if-nez v1, :cond_1

    .line 361
    const/4 v0, 0x0

    .line 368
    :cond_0
    :goto_0
    return-object v0

    .line 363
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 364
    if-nez v0, :cond_0

    .line 365
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fragment no longer exists for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": unique id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroidx/fragment/app/j;->a(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 3

    .prologue
    .line 1505
    if-eqz p1, :cond_1

    .line 1507
    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 1508
    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 1509
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroidx/fragment/app/Fragment;->G:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1522
    :goto_1
    return-object v0

    .line 1507
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1514
    :cond_1
    if-eqz p1, :cond_3

    .line 1516
    iget-object v0, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 1517
    if-eqz v0, :cond_2

    iget-object v2, v0, Landroidx/fragment/app/Fragment;->G:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 1522
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method a(Landroidx/fragment/app/Fragment;IZI)Landroidx/fragment/app/j$a;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const v8, 0x3f79999a    # 0.975f

    const/4 v0, 0x0

    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 603
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->ai()I

    move-result v3

    .line 605
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->c(I)V

    .line 607
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->N:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->N:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 702
    :cond_0
    :goto_0
    return-object v0

    .line 610
    :cond_1
    invoke-virtual {p1, p2, p3, v3}, Landroidx/fragment/app/Fragment;->a(IZI)Landroid/view/animation/Animation;

    move-result-object v1

    .line 611
    if-eqz v1, :cond_2

    .line 612
    new-instance v0, Landroidx/fragment/app/j$a;

    invoke-direct {v0, v1}, Landroidx/fragment/app/j$a;-><init>(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 615
    :cond_2
    invoke-virtual {p1, p2, p3, v3}, Landroidx/fragment/app/Fragment;->b(IZI)Landroid/animation/Animator;

    move-result-object v1

    .line 616
    if-eqz v1, :cond_3

    .line 617
    new-instance v0, Landroidx/fragment/app/j$a;

    invoke-direct {v0, v1}, Landroidx/fragment/app/j$a;-><init>(Landroid/animation/Animator;)V

    goto :goto_0

    .line 620
    :cond_3
    if-eqz v3, :cond_6

    .line 621
    iget-object v1, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {v1}, Landroidx/fragment/app/h;->l()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 622
    const-string/jumbo v4, "anim"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 624
    if-eqz v4, :cond_8

    .line 627
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {v1}, Landroidx/fragment/app/h;->l()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    .line 628
    if-eqz v5, :cond_4

    .line 629
    new-instance v1, Landroidx/fragment/app/j$a;

    invoke-direct {v1, v5}, Landroidx/fragment/app/j$a;-><init>(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    goto :goto_0

    .line 632
    :cond_4
    const/4 v1, 0x1

    .line 639
    :goto_1
    if-nez v1, :cond_6

    .line 642
    :try_start_1
    iget-object v1, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {v1}, Landroidx/fragment/app/h;->l()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    .line 643
    if-eqz v2, :cond_6

    .line 644
    new-instance v1, Landroidx/fragment/app/j$a;

    invoke-direct {v1, v2}, Landroidx/fragment/app/j$a;-><init>(Landroid/animation/Animator;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v0, v1

    goto :goto_0

    .line 633
    :catch_0
    move-exception v0

    .line 634
    throw v0

    .line 635
    :catch_1
    move-exception v1

    move v1, v2

    goto :goto_1

    .line 646
    :catch_2
    move-exception v1

    .line 647
    if-eqz v4, :cond_5

    .line 649
    throw v1

    .line 652
    :cond_5
    iget-object v1, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {v1}, Landroidx/fragment/app/h;->l()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 653
    if-eqz v1, :cond_6

    .line 654
    new-instance v0, Landroidx/fragment/app/j$a;

    invoke-direct {v0, v1}, Landroidx/fragment/app/j$a;-><init>(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 660
    :cond_6
    if-eqz p2, :cond_0

    .line 664
    invoke-static {p2, p3}, Landroidx/fragment/app/j;->b(IZ)I

    move-result v1

    .line 665
    if-ltz v1, :cond_0

    .line 669
    packed-switch v1, :pswitch_data_0

    .line 685
    if-nez p4, :cond_7

    iget-object v1, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {v1}, Landroidx/fragment/app/h;->h()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 686
    iget-object v1, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {v1}, Landroidx/fragment/app/h;->i()I

    move-result p4

    .line 688
    :cond_7
    if-nez p4, :cond_0

    goto/16 :goto_0

    .line 671
    :pswitch_0
    const/high16 v0, 0x3f900000    # 1.125f

    invoke-static {v0, v6, v7, v6}, Landroidx/fragment/app/j;->a(FFFF)Landroidx/fragment/app/j$a;

    move-result-object v0

    goto/16 :goto_0

    .line 673
    :pswitch_1
    invoke-static {v6, v8, v6, v7}, Landroidx/fragment/app/j;->a(FFFF)Landroidx/fragment/app/j$a;

    move-result-object v0

    goto/16 :goto_0

    .line 675
    :pswitch_2
    invoke-static {v8, v6, v7, v6}, Landroidx/fragment/app/j;->a(FFFF)Landroidx/fragment/app/j$a;

    move-result-object v0

    goto/16 :goto_0

    .line 677
    :pswitch_3
    const v0, 0x3f89999a    # 1.075f

    invoke-static {v6, v0, v6, v7}, Landroidx/fragment/app/j;->a(FFFF)Landroidx/fragment/app/j$a;

    move-result-object v0

    goto/16 :goto_0

    .line 679
    :pswitch_4
    invoke-static {v7, v6}, Landroidx/fragment/app/j;->a(FF)Landroidx/fragment/app/j$a;

    move-result-object v0

    goto/16 :goto_0

    .line 681
    :pswitch_5
    invoke-static {v6, v7}, Landroidx/fragment/app/j;->a(FF)Landroidx/fragment/app/j$a;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    move v1, v2

    goto :goto_1

    .line 669
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public a()Landroidx/fragment/app/o;
    .locals 1

    .prologue
    .line 178
    new-instance v0, Landroidx/fragment/app/a;

    invoke-direct {v0, p0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/j;)V

    return-object v0
.end method

.method public a(II)V
    .locals 3

    .prologue
    .line 269
    if-gez p1, :cond_0

    .line 270
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_0
    new-instance v0, Landroidx/fragment/app/j$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Landroidx/fragment/app/j$f;-><init>(Landroidx/fragment/app/j;Ljava/lang/String;II)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/j$e;Z)V

    .line 273
    return-void
.end method

.method public a(ILandroidx/fragment/app/a;)V
    .locals 4

    .prologue
    .line 1617
    monitor-enter p0

    .line 1618
    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/j;->j:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1619
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/j;->j:Ljava/util/ArrayList;

    .line 1621
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1622
    if-ge p1, v0, :cond_2

    .line 1623
    sget-boolean v0, Landroidx/fragment/app/j;->b:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/j;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1638
    :goto_0
    monitor-exit p0

    .line 1639
    return-void

    .line 1626
    :cond_2
    :goto_1
    if-ge v0, p1, :cond_5

    .line 1627
    iget-object v1, p0, Landroidx/fragment/app/j;->j:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1628
    iget-object v1, p0, Landroidx/fragment/app/j;->k:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 1629
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/j;->k:Ljava/util/ArrayList;

    .line 1631
    :cond_3
    sget-boolean v1, Landroidx/fragment/app/j;->b:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Adding available back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    :cond_4
    iget-object v1, p0, Landroidx/fragment/app/j;->k:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1633
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1635
    :cond_5
    sget-boolean v0, Landroidx/fragment/app/j;->b:Z

    if-eqz v0, :cond_6

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Adding back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    :cond_6
    iget-object v0, p0, Landroidx/fragment/app/j;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1638
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a(IZ)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1289
    iget-object v0, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1290
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1293
    :cond_0
    if-nez p2, :cond_2

    iget v0, p0, Landroidx/fragment/app/j;->m:I

    if-ne p1, v0, :cond_2

    .line 1320
    :cond_1
    :goto_0
    return-void

    .line 1297
    :cond_2
    iput p1, p0, Landroidx/fragment/app/j;->m:I

    .line 1300
    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 1301
    :goto_1
    if-ge v1, v3, :cond_3

    .line 1302
    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 1303
    invoke-virtual {p0, v0}, Landroidx/fragment/app/j;->j(Landroidx/fragment/app/Fragment;)V

    .line 1301
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1308
    :cond_3
    iget-object v0, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 1309
    if-eqz v0, :cond_4

    iget-boolean v3, v0, Landroidx/fragment/app/Fragment;->u:Z

    if-nez v3, :cond_5

    iget-boolean v3, v0, Landroidx/fragment/app/Fragment;->I:Z

    if-eqz v3, :cond_4

    :cond_5
    iget-boolean v3, v0, Landroidx/fragment/app/Fragment;->U:Z

    if-nez v3, :cond_4

    .line 1310
    invoke-virtual {p0, v0}, Landroidx/fragment/app/j;->j(Landroidx/fragment/app/Fragment;)V

    goto :goto_2

    .line 1314
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/j;->i()V

    .line 1316
    iget-boolean v0, p0, Landroidx/fragment/app/j;->r:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/fragment/app/j;->m:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1317
    iget-object v0, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->g()V

    .line 1318
    iput-boolean v2, p0, Landroidx/fragment/app/j;->r:Z

    goto :goto_0
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 2685
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 2686
    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 2687
    if-eqz v0, :cond_0

    .line 2688
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->a(Landroid/content/res/Configuration;)V

    .line 2685
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2691
    :cond_1
    return-void
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V
    .locals 3

    .prologue
    .line 349
    iget-object v0, p3, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/j;

    if-eq v0, p0, :cond_0

    .line 350
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not currently in the FragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroidx/fragment/app/j;->a(Ljava/lang/RuntimeException;)V

    .line 353
    :cond_0
    iget-object v0, p3, Landroidx/fragment/app/Fragment;->o:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method a(Landroid/os/Parcelable;)V
    .locals 12

    .prologue
    const/4 v2, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 2440
    if-nez p1, :cond_1

    .line 2547
    :cond_0
    :goto_0
    return-void

    .line 2441
    :cond_1
    check-cast p1, Landroidx/fragment/app/k;

    .line 2442
    iget-object v0, p1, Landroidx/fragment/app/k;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2446
    iget-object v0, p0, Landroidx/fragment/app/j;->I:Landroidx/fragment/app/l;

    invoke-virtual {v0}, Landroidx/fragment/app/l;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 2447
    sget-boolean v0, Landroidx/fragment/app/j;->b:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restoreSaveState: re-attaching retained "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2449
    :cond_3
    iget-object v0, p1, Landroidx/fragment/app/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/n;

    .line 2450
    iget-object v5, v0, Landroidx/fragment/app/n;->b:Ljava/lang/String;

    iget-object v6, v1, Landroidx/fragment/app/Fragment;->o:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v4, v0

    .line 2455
    :goto_2
    if-nez v4, :cond_6

    .line 2456
    sget-boolean v0, Landroidx/fragment/app/j;->b:Z

    if-eqz v0, :cond_5

    .line 2457
    const-string/jumbo v0, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Discarding retained Fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " that was not found in the set of active Fragments "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroidx/fragment/app/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object v0, p0

    move v4, v3

    move v5, v3

    .line 2463
    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 2464
    iput-boolean v2, v1, Landroidx/fragment/app/Fragment;->u:Z

    move-object v4, p0

    move-object v5, v1

    move v6, v3

    move v7, v3

    move v8, v3

    move v9, v3

    .line 2465
    invoke-virtual/range {v4 .. v9}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/Fragment;IIIZ)V

    goto/16 :goto_1

    .line 2468
    :cond_6
    iput-object v1, v4, Landroidx/fragment/app/n;->n:Landroidx/fragment/app/Fragment;

    .line 2469
    iput-object v10, v1, Landroidx/fragment/app/Fragment;->m:Landroid/util/SparseArray;

    .line 2470
    iput v3, v1, Landroidx/fragment/app/Fragment;->z:I

    .line 2471
    iput-boolean v3, v1, Landroidx/fragment/app/Fragment;->w:Z

    .line 2472
    iput-boolean v3, v1, Landroidx/fragment/app/Fragment;->t:Z

    .line 2473
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->q:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_7

    iget-object v0, v1, Landroidx/fragment/app/Fragment;->q:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->o:Ljava/lang/String;

    :goto_3
    iput-object v0, v1, Landroidx/fragment/app/Fragment;->r:Ljava/lang/String;

    .line 2474
    iput-object v10, v1, Landroidx/fragment/app/Fragment;->q:Landroidx/fragment/app/Fragment;

    .line 2475
    iget-object v0, v4, Landroidx/fragment/app/n;->m:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 2476
    iget-object v0, v4, Landroidx/fragment/app/n;->m:Landroid/os/Bundle;

    iget-object v5, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {v5}, Landroidx/fragment/app/h;->l()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 2477
    iget-object v0, v4, Landroidx/fragment/app/n;->m:Landroid/os/Bundle;

    const-string/jumbo v5, "android:view_state"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, v1, Landroidx/fragment/app/Fragment;->m:Landroid/util/SparseArray;

    .line 2479
    iget-object v0, v4, Landroidx/fragment/app/n;->m:Landroid/os/Bundle;

    iput-object v0, v1, Landroidx/fragment/app/Fragment;->l:Landroid/os/Bundle;

    goto/16 :goto_1

    :cond_7
    move-object v0, v10

    .line 2473
    goto :goto_3

    .line 2485
    :cond_8
    iget-object v0, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2486
    iget-object v0, p1, Landroidx/fragment/app/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/n;

    .line 2487
    if-eqz v0, :cond_9

    .line 2488
    iget-object v4, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {v4}, Landroidx/fragment/app/h;->l()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 2489
    invoke-virtual {p0}, Landroidx/fragment/app/j;->e()Landroidx/fragment/app/g;

    move-result-object v5

    .line 2488
    invoke-virtual {v0, v4, v5}, Landroidx/fragment/app/n;->a(Ljava/lang/ClassLoader;Landroidx/fragment/app/g;)Landroidx/fragment/app/Fragment;

    move-result-object v4

    .line 2490
    iput-object p0, v4, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/j;

    .line 2491
    sget-boolean v5, Landroidx/fragment/app/j;->b:Z

    if-eqz v5, :cond_a

    const-string/jumbo v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "restoreSaveState: active ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroidx/fragment/app/Fragment;->o:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2492
    :cond_a
    iget-object v5, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    iget-object v6, v4, Landroidx/fragment/app/Fragment;->o:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2496
    iput-object v10, v0, Landroidx/fragment/app/n;->n:Landroidx/fragment/app/Fragment;

    goto :goto_4

    .line 2501
    :cond_b
    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2502
    iget-object v0, p1, Landroidx/fragment/app/k;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    .line 2503
    iget-object v0, p1, Landroidx/fragment/app/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2504
    iget-object v1, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 2505
    if-nez v1, :cond_c

    .line 2506
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "No instantiated fragment for ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Landroidx/fragment/app/j;->a(Ljava/lang/RuntimeException;)V

    .line 2509
    :cond_c
    iput-boolean v2, v1, Landroidx/fragment/app/Fragment;->t:Z

    .line 2510
    sget-boolean v5, Landroidx/fragment/app/j;->b:Z

    if-eqz v5, :cond_d

    const-string/jumbo v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "restoreSaveState: added ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, "): "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2511
    :cond_d
    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2512
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Already added "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2514
    :cond_e
    iget-object v5, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    monitor-enter v5

    .line 2515
    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2516
    monitor-exit v5

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2521
    :cond_f
    iget-object v0, p1, Landroidx/fragment/app/k;->c:[Landroidx/fragment/app/b;

    if-eqz v0, :cond_12

    .line 2522
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroidx/fragment/app/k;->c:[Landroidx/fragment/app/b;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/fragment/app/j;->h:Ljava/util/ArrayList;

    move v0, v3

    .line 2523
    :goto_6
    iget-object v1, p1, Landroidx/fragment/app/k;->c:[Landroidx/fragment/app/b;

    array-length v1, v1

    if-ge v0, v1, :cond_13

    .line 2524
    iget-object v1, p1, Landroidx/fragment/app/k;->c:[Landroidx/fragment/app/b;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroidx/fragment/app/b;->a(Landroidx/fragment/app/j;)Landroidx/fragment/app/a;

    move-result-object v1

    .line 2525
    sget-boolean v2, Landroidx/fragment/app/j;->b:Z

    if-eqz v2, :cond_10

    .line 2526
    const-string/jumbo v2, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restoreAllState: back stack #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " (index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroidx/fragment/app/a;->c:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2528
    new-instance v2, Landroidx/core/g/b;

    const-string/jumbo v4, "FragmentManager"

    invoke-direct {v2, v4}, Landroidx/core/g/b;-><init>(Ljava/lang/String;)V

    .line 2529
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 2530
    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2, v4, v3}, Landroidx/fragment/app/a;->a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 2531
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    .line 2533
    :cond_10
    iget-object v2, p0, Landroidx/fragment/app/j;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2534
    iget v2, v1, Landroidx/fragment/app/a;->c:I

    if-ltz v2, :cond_11

    .line 2535
    iget v2, v1, Landroidx/fragment/app/a;->c:I

    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/j;->a(ILandroidx/fragment/app/a;)V

    .line 2523
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 2539
    :cond_12
    iput-object v10, p0, Landroidx/fragment/app/j;->h:Ljava/util/ArrayList;

    .line 2542
    :cond_13
    iget-object v0, p1, Landroidx/fragment/app/k;->d:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 2543
    iget-object v0, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/k;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    iput-object v0, p0, Landroidx/fragment/app/j;->q:Landroidx/fragment/app/Fragment;

    .line 2544
    iget-object v0, p0, Landroidx/fragment/app/j;->q:Landroidx/fragment/app/Fragment;

    invoke-direct {p0, v0}, Landroidx/fragment/app/j;->v(Landroidx/fragment/app/Fragment;)V

    .line 2546
    :cond_14
    iget v0, p1, Landroidx/fragment/app/k;->e:I

    iput v0, p0, Landroidx/fragment/app/j;->e:I

    goto/16 :goto_0

    :cond_15
    move-object v4, v10

    goto/16 :goto_2
.end method

.method a(Landroidx/fragment/app/Fragment;IIIZ)V
    .locals 7

    .prologue
    .line 725
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->t:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->I:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    if-le p2, v0, :cond_1

    .line 726
    const/4 p2, 0x1

    .line 728
    :cond_1
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->u:Z

    if-eqz v0, :cond_2

    iget v0, p1, Landroidx/fragment/app/Fragment;->k:I

    if-le p2, v0, :cond_2

    .line 729
    iget v0, p1, Landroidx/fragment/app/Fragment;->k:I

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->l()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 731
    const/4 p2, 0x1

    .line 739
    :cond_2
    :goto_0
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->Q:Z

    if-eqz v0, :cond_3

    iget v0, p1, Landroidx/fragment/app/Fragment;->k:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_3

    const/4 v0, 0x2

    if-le p2, v0, :cond_3

    .line 740
    const/4 p2, 0x2

    .line 744
    :cond_3
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->Z:Landroidx/lifecycle/e$b;

    sget-object v1, Landroidx/lifecycle/e$b;->c:Landroidx/lifecycle/e$b;

    if-ne v0, v1, :cond_6

    .line 745
    const/4 v0, 0x1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v6, v0

    .line 749
    :goto_1
    iget v0, p1, Landroidx/fragment/app/Fragment;->k:I

    if-gt v0, v6, :cond_27

    .line 753
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->v:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->w:Z

    if-nez v0, :cond_7

    .line 1064
    :cond_4
    :goto_2
    return-void

    .line 734
    :cond_5
    iget p2, p1, Landroidx/fragment/app/Fragment;->k:I

    goto :goto_0

    .line 747
    :cond_6
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->Z:Landroidx/lifecycle/e$b;

    invoke-virtual {v0}, Landroidx/lifecycle/e$b;->ordinal()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v6, v0

    goto :goto_1

    .line 756
    :cond_7
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->an()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->ao()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 761
    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->a(Landroid/view/View;)V

    .line 762
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->a(Landroid/animation/Animator;)V

    .line 763
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->ap()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 765
    :cond_9
    iget v0, p1, Landroidx/fragment/app/Fragment;->k:I

    packed-switch v0, :pswitch_data_0

    .line 1059
    :cond_a
    :goto_3
    iget v0, p1, Landroidx/fragment/app/Fragment;->k:I

    if-eq v0, v6, :cond_4

    .line 1060
    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveToState: Fragment state for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not updated inline; expected state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroidx/fragment/app/Fragment;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    iput v6, p1, Landroidx/fragment/app/Fragment;->k:I

    goto :goto_2

    .line 767
    :pswitch_0
    if-lez v6, :cond_16

    .line 768
    sget-boolean v0, Landroidx/fragment/app/j;->b:Z

    if-eqz v0, :cond_b

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveto CREATED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    :cond_b
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->l:Landroid/os/Bundle;

    if-eqz v0, :cond_d

    .line 770
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->l:Landroid/os/Bundle;

    iget-object v1, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {v1}, Landroidx/fragment/app/h;->l()Landroid/content/Context;

    move-result-object v1

    .line 771
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 770
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 772
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->l:Landroid/os/Bundle;

    const-string/jumbo v1, "android:view_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->m:Landroid/util/SparseArray;

    .line 774
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->l:Landroid/os/Bundle;

    const-string/jumbo v1, "android:target_state"

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/j;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 776
    if-eqz v0, :cond_e

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->o:Ljava/lang/String;

    :goto_4
    iput-object v0, p1, Landroidx/fragment/app/Fragment;->r:Ljava/lang/String;

    .line 777
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->r:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 778
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->l:Landroid/os/Bundle;

    const-string/jumbo v1, "android:target_req_state"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroidx/fragment/app/Fragment;->s:I

    .line 781
    :cond_c
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->n:Ljava/lang/Boolean;

    if-eqz v0, :cond_f

    .line 782
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->n:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->R:Z

    .line 783
    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->n:Ljava/lang/Boolean;

    .line 788
    :goto_5
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->R:Z

    if-nez v0, :cond_d

    .line 789
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->Q:Z

    .line 790
    const/4 v0, 0x2

    if-le v6, v0, :cond_d

    .line 791
    const/4 v6, 0x2

    .line 796
    :cond_d
    iget-object v0, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/h;

    .line 797
    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/Fragment;

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/Fragment;

    .line 798
    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/j;

    :goto_6
    iput-object v0, p1, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/j;

    .line 803
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->q:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_13

    .line 804
    iget-object v0, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->q:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->q:Landroidx/fragment/app/Fragment;

    if-eq v0, v1, :cond_11

    .line 805
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " declared target fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->q:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " that does not belong to this FragmentManager!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 776
    :cond_e
    const/4 v0, 0x0

    goto :goto_4

    .line 785
    :cond_f
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->l:Landroid/os/Bundle;

    const-string/jumbo v1, "android:user_visible_hint"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->R:Z

    goto :goto_5

    .line 798
    :cond_10
    iget-object v0, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    iget-object v0, v0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/j;

    goto :goto_6

    .line 809
    :cond_11
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->q:Landroidx/fragment/app/Fragment;

    iget v0, v0, Landroidx/fragment/app/Fragment;->k:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_12

    .line 810
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->q:Landroidx/fragment/app/Fragment;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 812
    :cond_12
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->q:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->o:Ljava/lang/String;

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->r:Ljava/lang/String;

    .line 813
    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->q:Landroidx/fragment/app/Fragment;

    .line 815
    :cond_13
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->r:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 816
    iget-object v0, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 817
    if-nez v1, :cond_14

    .line 818
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " declared target fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " that does not belong to this FragmentManager!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 822
    :cond_14
    iget v0, v1, Landroidx/fragment/app/Fragment;->k:I

    const/4 v2, 0x1

    if-ge v0, v2, :cond_15

    .line 823
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 827
    :cond_15
    iget-object v0, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->l()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V

    .line 828
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->X()V

    .line 829
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_23

    .line 830
    iget-object v0, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/h;->b(Landroidx/fragment/app/Fragment;)V

    .line 834
    :goto_7
    iget-object v0, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->l()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroidx/fragment/app/j;->b(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V

    .line 836
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->Y:Z

    if-nez v0, :cond_24

    .line 837
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->l:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 838
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->l:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->l(Landroid/os/Bundle;)V

    .line 839
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->l:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroidx/fragment/app/j;->b(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 850
    :cond_16
    :goto_8
    :pswitch_1
    if-lez v6, :cond_17

    .line 851
    invoke-virtual {p0, p1}, Landroidx/fragment/app/j;->h(Landroidx/fragment/app/Fragment;)V

    .line 854
    :cond_17
    const/4 v0, 0x1

    if-le v6, v0, :cond_1f

    .line 855
    sget-boolean v0, Landroidx/fragment/app/j;->b:Z

    if-eqz v0, :cond_18

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveto ACTIVITY_CREATED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :cond_18
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->v:Z

    if-nez v0, :cond_1d

    .line 857
    const/4 v0, 0x0

    .line 858
    iget v1, p1, Landroidx/fragment/app/Fragment;->F:I

    if-eqz v1, :cond_1a

    .line 859
    iget v0, p1, Landroidx/fragment/app/Fragment;->F:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_19

    .line 860
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot create fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for a container view with no id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroidx/fragment/app/j;->a(Ljava/lang/RuntimeException;)V

    .line 865
    :cond_19
    iget-object v0, p0, Landroidx/fragment/app/j;->o:Landroidx/fragment/app/e;

    iget v1, p1, Landroidx/fragment/app/Fragment;->F:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/e;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 866
    if-nez v0, :cond_1a

    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->x:Z

    if-nez v1, :cond_1a

    .line 869
    :try_start_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->u()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Landroidx/fragment/app/Fragment;->F:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 873
    :goto_9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No view found for id 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroidx/fragment/app/Fragment;->F:I

    .line 875
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ") for fragment "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 873
    invoke-direct {p0, v2}, Landroidx/fragment/app/j;->a(Ljava/lang/RuntimeException;)V

    .line 880
    :cond_1a
    iput-object v0, p1, Landroidx/fragment/app/Fragment;->N:Landroid/view/ViewGroup;

    .line 881
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->l:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->h(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->l:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v0, v2}, Landroidx/fragment/app/Fragment;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 883
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    if-eqz v1, :cond_26

    .line 884
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    iput-object v1, p1, Landroidx/fragment/app/Fragment;->P:Landroid/view/View;

    .line 885
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 886
    if-eqz v0, :cond_1b

    .line 887
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 889
    :cond_1b
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->H:Z

    if-eqz v0, :cond_1c

    .line 890
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 892
    :cond_1c
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->l:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/Fragment;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 893
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->l:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 897
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->N:Landroid/view/ViewGroup;

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    :goto_a
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->U:Z

    .line 904
    :cond_1d
    :goto_b
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->l:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->m(Landroid/os/Bundle;)V

    .line 905
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->l:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroidx/fragment/app/j;->c(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 906
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    if-eqz v0, :cond_1e

    .line 907
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->l:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->f(Landroid/os/Bundle;)V

    .line 909
    :cond_1e
    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->l:Landroid/os/Bundle;

    .line 913
    :cond_1f
    :pswitch_2
    const/4 v0, 0x2

    if-le v6, v0, :cond_21

    .line 914
    sget-boolean v0, Landroidx/fragment/app/j;->b:Z

    if-eqz v0, :cond_20

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveto STARTED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :cond_20
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->Y()V

    .line 916
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/j;->b(Landroidx/fragment/app/Fragment;Z)V

    .line 920
    :cond_21
    :pswitch_3
    const/4 v0, 0x3

    if-le v6, v0, :cond_a

    .line 921
    sget-boolean v0, Landroidx/fragment/app/j;->b:Z

    if-eqz v0, :cond_22

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveto RESUMED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    :cond_22
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->Z()V

    .line 923
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/j;->c(Landroidx/fragment/app/Fragment;Z)V

    .line 924
    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->l:Landroid/os/Bundle;

    .line 925
    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->m:Landroid/util/SparseArray;

    goto/16 :goto_3

    .line 832
    :cond_23
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->a(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_7

    .line 841
    :cond_24
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->l:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->j(Landroid/os/Bundle;)V

    .line 842
    const/4 v0, 0x1

    iput v0, p1, Landroidx/fragment/app/Fragment;->k:I

    goto/16 :goto_8

    .line 870
    :catch_0
    move-exception v1

    .line 871
    const-string/jumbo v1, "unknown"

    goto/16 :goto_9

    .line 897
    :cond_25
    const/4 v0, 0x0

    goto/16 :goto_a

    .line 900
    :cond_26
    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->P:Landroid/view/View;

    goto/16 :goto_b

    .line 928
    :cond_27
    iget v0, p1, Landroidx/fragment/app/Fragment;->k:I

    if-le v0, v6, :cond_a

    .line 929
    iget v0, p1, Landroidx/fragment/app/Fragment;->k:I

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_3

    .line 987
    :cond_28
    :goto_c
    :pswitch_4
    const/4 v0, 0x1

    if-ge v6, v0, :cond_a

    .line 988
    iget-boolean v0, p0, Landroidx/fragment/app/j;->u:Z

    if-eqz v0, :cond_29

    .line 995
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->an()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 996
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->an()Landroid/view/View;

    move-result-object v0

    .line 997
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->a(Landroid/view/View;)V

    .line 998
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1005
    :cond_29
    :goto_d
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->an()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2a

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->ao()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 1010
    :cond_2a
    invoke-virtual {p1, v6}, Landroidx/fragment/app/Fragment;->d(I)V

    .line 1011
    const/4 v6, 0x1

    goto/16 :goto_3

    .line 931
    :pswitch_5
    const/4 v0, 0x4

    if-ge v6, v0, :cond_2c

    .line 932
    sget-boolean v0, Landroidx/fragment/app/j;->b:Z

    if-eqz v0, :cond_2b

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "movefrom RESUMED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    :cond_2b
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->ad()V

    .line 934
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/j;->d(Landroidx/fragment/app/Fragment;Z)V

    .line 938
    :cond_2c
    :pswitch_6
    const/4 v0, 0x3

    if-ge v6, v0, :cond_2e

    .line 939
    sget-boolean v0, Landroidx/fragment/app/j;->b:Z

    if-eqz v0, :cond_2d

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "movefrom STARTED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    :cond_2d
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->ae()V

    .line 941
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/j;->e(Landroidx/fragment/app/Fragment;Z)V

    .line 945
    :cond_2e
    :pswitch_7
    const/4 v0, 0x2

    if-ge v6, v0, :cond_28

    .line 946
    sget-boolean v0, Landroidx/fragment/app/j;->b:Z

    if-eqz v0, :cond_2f

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :cond_2f
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    if-eqz v0, :cond_30

    .line 950
    iget-object v0, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/h;->a(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->m:Landroid/util/SparseArray;

    if-nez v0, :cond_30

    .line 951
    invoke-virtual {p0, p1}, Landroidx/fragment/app/j;->r(Landroidx/fragment/app/Fragment;)V

    .line 954
    :cond_30
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->af()V

    .line 955
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/j;->f(Landroidx/fragment/app/Fragment;Z)V

    .line 956
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    if-eqz v0, :cond_34

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->N:Landroid/view/ViewGroup;

    if-eqz v0, :cond_34

    .line 958
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->N:Landroid/view/ViewGroup;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 959
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 960
    const/4 v0, 0x0

    .line 962
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->y()Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_31

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->y()Landroidx/fragment/app/Fragment;

    move-result-object v1

    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->u:Z

    if-nez v1, :cond_34

    .line 963
    :cond_31
    iget v1, p0, Landroidx/fragment/app/j;->m:I

    if-lez v1, :cond_32

    iget-boolean v1, p0, Landroidx/fragment/app/j;->u:Z

    if-nez v1, :cond_32

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    .line 964
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_32

    iget v1, p1, Landroidx/fragment/app/Fragment;->W:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_32

    .line 966
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v0, p4}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/Fragment;IZI)Landroidx/fragment/app/j$a;

    move-result-object v0

    .line 969
    :cond_32
    const/4 v1, 0x0

    iput v1, p1, Landroidx/fragment/app/Fragment;->W:F

    .line 970
    if-eqz v0, :cond_33

    .line 971
    invoke-direct {p0, p1, v0, v6}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/j$a;I)V

    .line 973
    :cond_33
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->N:Landroid/view/ViewGroup;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 976
    :cond_34
    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->N:Landroid/view/ViewGroup;

    .line 977
    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    .line 980
    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->ab:Landroidx/fragment/app/s;

    .line 981
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->ac:Landroidx/lifecycle/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/n;->b(Ljava/lang/Object;)V

    .line 982
    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->P:Landroid/view/View;

    .line 983
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->w:Z

    goto/16 :goto_c

    .line 999
    :cond_35
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->ao()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 1000
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->ao()Landroid/animation/Animator;

    move-result-object v0

    .line 1001
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->a(Landroid/animation/Animator;)V

    .line 1002
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    goto/16 :goto_d

    .line 1013
    :cond_36
    sget-boolean v0, Landroidx/fragment/app/j;->b:Z

    if-eqz v0, :cond_37

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "movefrom CREATED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    :cond_37
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->u:Z

    if-eqz v0, :cond_3c

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->l()Z

    move-result v0

    if-nez v0, :cond_3c

    const/4 v0, 0x1

    move v1, v0

    .line 1015
    :goto_e
    if-nez v1, :cond_38

    iget-object v0, p0, Landroidx/fragment/app/j;->I:Landroidx/fragment/app/l;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/l;->b(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1017
    :cond_38
    iget-object v0, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    instance-of v0, v0, Landroidx/lifecycle/v;

    if-eqz v0, :cond_3d

    .line 1018
    iget-object v0, p0, Landroidx/fragment/app/j;->I:Landroidx/fragment/app/l;

    invoke-virtual {v0}, Landroidx/fragment/app/l;->b()Z

    move-result v0

    .line 1025
    :goto_f
    if-nez v1, :cond_39

    if-eqz v0, :cond_3a

    .line 1026
    :cond_39
    iget-object v0, p0, Landroidx/fragment/app/j;->I:Landroidx/fragment/app/l;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/l;->f(Landroidx/fragment/app/Fragment;)V

    .line 1028
    :cond_3a
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->ag()V

    .line 1029
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/j;->g(Landroidx/fragment/app/Fragment;Z)V

    .line 1034
    :goto_10
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->ah()V

    .line 1035
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/j;->h(Landroidx/fragment/app/Fragment;Z)V

    .line 1036
    if-nez p5, :cond_a

    .line 1037
    if-nez v1, :cond_3b

    iget-object v0, p0, Landroidx/fragment/app/j;->I:Landroidx/fragment/app/l;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/l;->b(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1038
    :cond_3b
    invoke-virtual {p0, p1}, Landroidx/fragment/app/j;->l(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_3

    .line 1014
    :cond_3c
    const/4 v0, 0x0

    move v1, v0

    goto :goto_e

    .line 1019
    :cond_3d
    iget-object v0, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->l()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_3f

    .line 1020
    iget-object v0, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->l()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1021
    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_3e

    const/4 v0, 0x1

    goto :goto_f

    :cond_3e
    const/4 v0, 0x0

    goto :goto_f

    .line 1023
    :cond_3f
    const/4 v0, 0x1

    goto :goto_f

    .line 1031
    :cond_40
    const/4 v0, 0x0

    iput v0, p1, Landroidx/fragment/app/Fragment;->k:I

    goto :goto_10

    .line 1040
    :cond_41
    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/h;

    .line 1041
    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/Fragment;

    .line 1042
    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/j;

    .line 1043
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->r:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 1044
    iget-object v0, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 1045
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->E()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1049
    iput-object v0, p1, Landroidx/fragment/app/Fragment;->q:Landroidx/fragment/app/Fragment;

    goto/16 :goto_3

    .line 765
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 929
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method a(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V
    .locals 3

    .prologue
    .line 2878
    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2879
    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->v()Landroidx/fragment/app/i;

    move-result-object v0

    .line 2880
    instance-of v1, v0, Landroidx/fragment/app/j;

    if-eqz v1, :cond_0

    .line 2881
    check-cast v0, Landroidx/fragment/app/j;

    const/4 v1, 0x1

    .line 2882
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V

    .line 2885
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/j$c;

    .line 2886
    if-eqz p3, :cond_2

    iget-boolean v2, v0, Landroidx/fragment/app/j$c;->b:Z

    if-eqz v2, :cond_1

    .line 2887
    :cond_2
    iget-object v0, v0, Landroidx/fragment/app/j$c;->a:Landroidx/fragment/app/i$a;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/fragment/app/i$a;->a(Landroidx/fragment/app/i;Landroidx/fragment/app/Fragment;Landroid/content/Context;)V

    goto :goto_0

    .line 2890
    :cond_3
    return-void
.end method

.method a(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 3

    .prologue
    .line 2910
    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2911
    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->v()Landroidx/fragment/app/i;

    move-result-object v0

    .line 2912
    instance-of v1, v0, Landroidx/fragment/app/j;

    if-eqz v1, :cond_0

    .line 2913
    check-cast v0, Landroidx/fragment/app/j;

    const/4 v1, 0x1

    .line 2914
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 2917
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/j$c;

    .line 2918
    if-eqz p3, :cond_2

    iget-boolean v2, v0, Landroidx/fragment/app/j$c;->b:Z

    if-eqz v2, :cond_1

    .line 2919
    :cond_2
    iget-object v0, v0, Landroidx/fragment/app/j$c;->a:Landroidx/fragment/app/i$a;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/fragment/app/i$a;->a(Landroidx/fragment/app/i;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_0

    .line 2922
    :cond_3
    return-void
.end method

.method a(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 3

    .prologue
    .line 2958
    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2959
    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->v()Landroidx/fragment/app/i;

    move-result-object v0

    .line 2960
    instance-of v1, v0, Landroidx/fragment/app/j;

    if-eqz v1, :cond_0

    .line 2961
    check-cast v0, Landroidx/fragment/app/j;

    const/4 v1, 0x1

    .line 2962
    invoke-virtual {v0, p1, p2, p3, v1}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 2965
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/j$c;

    .line 2966
    if-eqz p4, :cond_2

    iget-boolean v2, v0, Landroidx/fragment/app/j$c;->b:Z

    if-eqz v2, :cond_1

    .line 2967
    :cond_2
    iget-object v0, v0, Landroidx/fragment/app/j$c;->a:Landroidx/fragment/app/i$a;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/fragment/app/i$a;->a(Landroidx/fragment/app/i;Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V

    goto :goto_0

    .line 2970
    :cond_3
    return-void
.end method

.method public a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/e$b;)V
    .locals 3

    .prologue
    .line 2825
    iget-object v0, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/h;

    if-eqz v0, :cond_1

    .line 2826
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->v()Landroidx/fragment/app/i;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 2827
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2830
    :cond_1
    iput-object p2, p1, Landroidx/fragment/app/Fragment;->Z:Landroidx/lifecycle/e$b;

    .line 2831
    return-void
.end method

.method public a(Landroidx/fragment/app/Fragment;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1375
    sget-boolean v0, Landroidx/fragment/app/j;->b:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "add: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/j;->k(Landroidx/fragment/app/Fragment;)V

    .line 1377
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->I:Z

    if-nez v0, :cond_4

    .line 1378
    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1379
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1381
    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1382
    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1383
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1384
    iput-boolean v4, p1, Landroidx/fragment/app/Fragment;->t:Z

    .line 1385
    iput-boolean v3, p1, Landroidx/fragment/app/Fragment;->u:Z

    .line 1386
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    if-nez v0, :cond_2

    .line 1387
    iput-boolean v3, p1, Landroidx/fragment/app/Fragment;->V:Z

    .line 1389
    :cond_2
    invoke-direct {p0, p1}, Landroidx/fragment/app/j;->w(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1390
    iput-boolean v4, p0, Landroidx/fragment/app/j;->r:Z

    .line 1392
    :cond_3
    if-eqz p2, :cond_4

    .line 1393
    invoke-virtual {p0, p1}, Landroidx/fragment/app/j;->g(Landroidx/fragment/app/Fragment;)V

    .line 1396
    :cond_4
    return-void

    .line 1383
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method a(Landroidx/fragment/app/a;ZZZ)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 1989
    if-eqz p2, :cond_4

    .line 1990
    invoke-virtual {p1, p4}, Landroidx/fragment/app/a;->b(Z)V

    .line 1994
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1995
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1996
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1997
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1998
    if-eqz p3, :cond_0

    move-object v0, p0

    move v5, v4

    .line 1999
    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/p;->a(Landroidx/fragment/app/j;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 2001
    :cond_0
    if-eqz p4, :cond_1

    .line 2002
    iget v0, p0, Landroidx/fragment/app/j;->m:I

    invoke-virtual {p0, v0, v4}, Landroidx/fragment/app/j;->a(IZ)V

    .line 2005
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 2008
    if-eqz v0, :cond_2

    iget-object v2, v0, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-boolean v2, v0, Landroidx/fragment/app/Fragment;->U:Z

    if-eqz v2, :cond_2

    iget v2, v0, Landroidx/fragment/app/Fragment;->F:I

    .line 2009
    invoke-virtual {p1, v2}, Landroidx/fragment/app/a;->b(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2010
    iget v2, v0, Landroidx/fragment/app/Fragment;->W:F

    cmpl-float v2, v2, v6

    if-lez v2, :cond_3

    .line 2011
    iget-object v2, v0, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    iget v4, v0, Landroidx/fragment/app/Fragment;->W:F

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2013
    :cond_3
    if-eqz p4, :cond_5

    .line 2014
    iput v6, v0, Landroidx/fragment/app/Fragment;->W:F

    goto :goto_1

    .line 1992
    :cond_4
    invoke-virtual {p1}, Landroidx/fragment/app/a;->f()V

    goto :goto_0

    .line 2016
    :cond_5
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v0, Landroidx/fragment/app/Fragment;->W:F

    .line 2017
    iput-boolean v3, v0, Landroidx/fragment/app/Fragment;->U:Z

    goto :goto_1

    .line 2021
    :cond_6
    return-void
.end method

.method public a(Landroidx/fragment/app/h;Landroidx/fragment/app/e;Landroidx/fragment/app/Fragment;)V
    .locals 3

    .prologue
    .line 2563
    iget-object v0, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2564
    :cond_0
    iput-object p1, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    .line 2565
    iput-object p2, p0, Landroidx/fragment/app/j;->o:Landroidx/fragment/app/e;

    .line 2566
    iput-object p3, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/Fragment;

    .line 2567
    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    .line 2571
    invoke-direct {p0}, Landroidx/fragment/app/j;->C()V

    .line 2574
    :cond_1
    instance-of v0, p1, Landroidx/activity/d;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 2575
    check-cast v0, Landroidx/activity/d;

    .line 2576
    invoke-interface {v0}, Landroidx/activity/d;->d()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v1

    iput-object v1, p0, Landroidx/fragment/app/j;->F:Landroidx/activity/OnBackPressedDispatcher;

    .line 2577
    if-eqz p3, :cond_2

    move-object v0, p3

    .line 2578
    :cond_2
    iget-object v1, p0, Landroidx/fragment/app/j;->F:Landroidx/activity/OnBackPressedDispatcher;

    iget-object v2, p0, Landroidx/fragment/app/j;->G:Landroidx/activity/c;

    invoke-virtual {v1, v0, v2}, Landroidx/activity/OnBackPressedDispatcher;->a(Landroidx/lifecycle/h;Landroidx/activity/c;)V

    .line 2582
    :cond_3
    if-eqz p3, :cond_4

    .line 2583
    iget-object v0, p3, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/j;

    invoke-virtual {v0, p3}, Landroidx/fragment/app/j;->c(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/l;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/j;->I:Landroidx/fragment/app/l;

    .line 2590
    :goto_0
    return-void

    .line 2584
    :cond_4
    instance-of v0, p1, Landroidx/lifecycle/v;

    if-eqz v0, :cond_5

    .line 2585
    check-cast p1, Landroidx/lifecycle/v;

    invoke-interface {p1}, Landroidx/lifecycle/v;->c()Landroidx/lifecycle/u;

    move-result-object v0

    .line 2586
    invoke-static {v0}, Landroidx/fragment/app/l;->a(Landroidx/lifecycle/u;)Landroidx/fragment/app/l;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/j;->I:Landroidx/fragment/app/l;

    goto :goto_0

    .line 2588
    :cond_5
    new-instance v0, Landroidx/fragment/app/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/fragment/app/l;-><init>(Z)V

    iput-object v0, p0, Landroidx/fragment/app/j;->I:Landroidx/fragment/app/l;

    goto :goto_0
.end method

.method public a(Landroidx/fragment/app/i$a;)V
    .locals 4

    .prologue
    .line 2866
    iget-object v2, p0, Landroidx/fragment/app/j;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v2

    .line 2867
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/j;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 2868
    iget-object v0, p0, Landroidx/fragment/app/j;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/j$c;

    iget-object v0, v0, Landroidx/fragment/app/j$c;->a:Landroidx/fragment/app/i$a;

    if-ne v0, p1, :cond_1

    .line 2869
    iget-object v0, p0, Landroidx/fragment/app/j;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 2873
    :cond_0
    monitor-exit v2

    .line 2874
    return-void

    .line 2867
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2873
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Landroidx/fragment/app/i$a;Z)V
    .locals 2

    .prologue
    .line 2861
    iget-object v0, p0, Landroidx/fragment/app/j;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroidx/fragment/app/j$c;

    invoke-direct {v1, p1, p2}, Landroidx/fragment/app/j$c;-><init>(Landroidx/fragment/app/i$a;Z)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 2862
    return-void
.end method

.method public a(Landroidx/fragment/app/j$e;Z)V
    .locals 2

    .prologue
    .line 1557
    if-nez p2, :cond_0

    .line 1558
    invoke-direct {p0}, Landroidx/fragment/app/j;->D()V

    .line 1560
    :cond_0
    monitor-enter p0

    .line 1561
    :try_start_0
    iget-boolean v0, p0, Landroidx/fragment/app/j;->u:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    if-nez v0, :cond_3

    .line 1562
    :cond_1
    if-eqz p2, :cond_2

    .line 1564
    monitor-exit p0

    .line 1574
    :goto_0
    return-void

    .line 1566
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Activity has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1573
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1568
    :cond_3
    :try_start_1
    iget-object v0, p0, Landroidx/fragment/app/j;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    .line 1569
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/j;->c:Ljava/util/ArrayList;

    .line 1571
    :cond_4
    iget-object v0, p0, Landroidx/fragment/app/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1572
    invoke-virtual {p0}, Landroidx/fragment/app/j;->j()V

    .line 1573
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 477
    iget-object v0, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 478
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Active Fragments in "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 479
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 480
    const-string/jumbo v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 482
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 483
    if-eqz v0, :cond_0

    .line 484
    invoke-virtual {v0, v3, p2, p3, p4}, Landroidx/fragment/app/Fragment;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    .line 489
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 490
    if-lez v4, :cond_2

    .line 491
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Added Fragments:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 492
    :goto_1
    if-ge v2, v4, :cond_2

    .line 493
    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 494
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 495
    const-string/jumbo v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 496
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 497
    const-string/jumbo v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 498
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 492
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 502
    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/j;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 503
    iget-object v0, p0, Landroidx/fragment/app/j;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 504
    if-lez v4, :cond_3

    .line 505
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Fragments Created Menus:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 506
    :goto_2
    if-ge v2, v4, :cond_3

    .line 507
    iget-object v0, p0, Landroidx/fragment/app/j;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 508
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 509
    const-string/jumbo v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 506
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 514
    :cond_3
    iget-object v0, p0, Landroidx/fragment/app/j;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 515
    iget-object v0, p0, Landroidx/fragment/app/j;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 516
    if-lez v4, :cond_4

    .line 517
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Back Stack:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 518
    :goto_3
    if-ge v2, v4, :cond_4

    .line 519
    iget-object v0, p0, Landroidx/fragment/app/j;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/a;

    .line 520
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 521
    const-string/jumbo v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/a;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 522
    invoke-virtual {v0, v3, p3}, Landroidx/fragment/app/a;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 518
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 527
    :cond_4
    monitor-enter p0

    .line 528
    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/j;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 529
    iget-object v0, p0, Landroidx/fragment/app/j;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 530
    if-lez v3, :cond_5

    .line 531
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Back Stack Indices:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 532
    :goto_4
    if-ge v2, v3, :cond_5

    .line 533
    iget-object v0, p0, Landroidx/fragment/app/j;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/a;

    .line 534
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 535
    const-string/jumbo v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 532
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 540
    :cond_5
    iget-object v0, p0, Landroidx/fragment/app/j;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/fragment/app/j;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 541
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAvailBackStackIndices: "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Landroidx/fragment/app/j;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 544
    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    iget-object v0, p0, Landroidx/fragment/app/j;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 547
    iget-object v0, p0, Landroidx/fragment/app/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 548
    if-lez v2, :cond_7

    .line 549
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Pending Actions:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 550
    :goto_5
    if-ge v1, v2, :cond_7

    .line 551
    iget-object v0, p0, Landroidx/fragment/app/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/j$e;

    .line 552
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 553
    const-string/jumbo v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 550
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 544
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 558
    :cond_7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "FragmentManager misc state:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 559
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "  mHost="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 560
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "  mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/j;->o:Landroidx/fragment/app/e;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 561
    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_8

    .line 562
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "  mParent="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 564
    :cond_8
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "  mCurState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/j;->m:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 565
    const-string/jumbo v0, " mStateSaved="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/j;->s:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 566
    const-string/jumbo v0, " mStopped="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/j;->t:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 567
    const-string/jumbo v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/j;->u:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 568
    iget-boolean v0, p0, Landroidx/fragment/app/j;->r:Z

    if-eqz v0, :cond_9

    .line 569
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "  mNeedMenuInvalidate="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 570
    iget-boolean v0, p0, Landroidx/fragment/app/j;->r:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 572
    :cond_9
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 2667
    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 2668
    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 2669
    if-eqz v0, :cond_0

    .line 2670
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->i(Z)V

    .line 2667
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 2673
    :cond_1
    return-void
.end method

.method a(I)Z
    .locals 1

    .prologue
    .line 718
    iget v0, p0, Landroidx/fragment/app/j;->m:I

    if-lt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 2736
    iget v1, p0, Landroidx/fragment/app/j;->m:I

    if-ge v1, v3, :cond_0

    .line 2748
    :goto_0
    return v0

    :cond_0
    move v1, v0

    move v2, v0

    .line 2740
    :goto_1
    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 2741
    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 2742
    if-eqz v0, :cond_1

    .line 2743
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->c(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v3

    .line 2740
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move v0, v2

    .line 2748
    goto :goto_0
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 2703
    iget v0, p0, Landroidx/fragment/app/j;->m:I

    if-ge v0, v2, :cond_0

    .line 2732
    :goto_0
    return v5

    .line 2707
    :cond_0
    const/4 v1, 0x0

    move v4, v5

    move v3, v5

    .line 2708
    :goto_1
    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_2

    .line 2709
    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 2710
    if-eqz v0, :cond_6

    .line 2711
    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/Fragment;->b(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2713
    if-nez v1, :cond_1

    .line 2714
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2716
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    .line 2708
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v3, v0

    goto :goto_1

    .line 2721
    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/j;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 2722
    :goto_3
    iget-object v0, p0, Landroidx/fragment/app/j;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_5

    .line 2723
    iget-object v0, p0, Landroidx/fragment/app/j;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 2724
    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2725
    :cond_3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->M()V

    .line 2722
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2730
    :cond_5
    iput-object v1, p0, Landroidx/fragment/app/j;->i:Ljava/util/ArrayList;

    move v5, v3

    .line 2732
    goto :goto_0

    :cond_6
    move v0, v3

    goto :goto_2
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2752
    iget v0, p0, Landroidx/fragment/app/j;->m:I

    if-ge v0, v3, :cond_1

    .line 2763
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v1, v2

    .line 2755
    :goto_1
    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 2756
    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 2757
    if-eqz v0, :cond_2

    .line 2758
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->c(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v2, v3

    .line 2759
    goto :goto_0

    .line 2755
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method a(Landroidx/fragment/app/Fragment;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 211
    if-nez p1, :cond_1

    .line 220
    :cond_0
    :goto_0
    return v0

    .line 214
    :cond_1
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/j;

    .line 216
    invoke-virtual {v1}, Landroidx/fragment/app/j;->z()Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 220
    if-ne p1, v2, :cond_2

    iget-object v1, v1, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/Fragment;

    .line 221
    invoke-virtual {p0, v1}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "II)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2200
    iget-object v0, p0, Landroidx/fragment/app/j;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    move v0, v2

    .line 2251
    :goto_0
    return v0

    .line 2203
    :cond_0
    if-nez p3, :cond_3

    if-gez p4, :cond_3

    and-int/lit8 v0, p5, 0x1

    if-nez v0, :cond_3

    .line 2204
    iget-object v0, p0, Landroidx/fragment/app/j;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2205
    if-gez v0, :cond_1

    move v0, v2

    .line 2206
    goto :goto_0

    .line 2208
    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/j;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2209
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    move v0, v3

    .line 2251
    goto :goto_0

    .line 2211
    :cond_3
    const/4 v0, -0x1

    .line 2212
    if-nez p3, :cond_4

    if-ltz p4, :cond_c

    .line 2215
    :cond_4
    iget-object v0, p0, Landroidx/fragment/app/j;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 2216
    :goto_1
    if-ltz v1, :cond_5

    .line 2217
    iget-object v0, p0, Landroidx/fragment/app/j;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/a;

    .line 2218
    if-eqz p3, :cond_6

    invoke-virtual {v0}, Landroidx/fragment/app/a;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2226
    :cond_5
    if-gez v1, :cond_8

    move v0, v2

    .line 2227
    goto :goto_0

    .line 2221
    :cond_6
    if-ltz p4, :cond_7

    iget v0, v0, Landroidx/fragment/app/a;->c:I

    if-eq p4, v0, :cond_5

    .line 2224
    :cond_7
    add-int/lit8 v1, v1, -0x1

    .line 2225
    goto :goto_1

    .line 2229
    :cond_8
    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_b

    .line 2230
    add-int/lit8 v1, v1, -0x1

    .line 2232
    :goto_2
    if-ltz v1, :cond_b

    .line 2233
    iget-object v0, p0, Landroidx/fragment/app/j;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/a;

    .line 2234
    if-eqz p3, :cond_9

    invoke-virtual {v0}, Landroidx/fragment/app/a;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    :cond_9
    if-ltz p4, :cond_b

    iget v0, v0, Landroidx/fragment/app/a;->c:I

    if-ne p4, v0, :cond_b

    .line 2236
    :cond_a
    add-int/lit8 v1, v1, -0x1

    .line 2237
    goto :goto_2

    :cond_b
    move v0, v1

    .line 2243
    :cond_c
    iget-object v1, p0, Landroidx/fragment/app/j;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_d

    move v0, v2

    .line 2244
    goto/16 :goto_0

    .line 2246
    :cond_d
    iget-object v1, p0, Landroidx/fragment/app/j;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_3
    if-le v1, v0, :cond_2

    .line 2247
    iget-object v2, p0, Landroidx/fragment/app/j;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2248
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2246
    add-int/lit8 v1, v1, -0x1

    goto :goto_3
.end method

.method public b(I)Landroidx/fragment/app/Fragment;
    .locals 3

    .prologue
    .line 1487
    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 1488
    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 1489
    if-eqz v0, :cond_0

    iget v2, v0, Landroidx/fragment/app/Fragment;->E:I

    if-ne v2, p1, :cond_0

    .line 1499
    :goto_1
    return-object v0

    .line 1487
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1494
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 1495
    if-eqz v0, :cond_2

    iget v2, v0, Landroidx/fragment/app/Fragment;->E:I

    if-ne v2, p1, :cond_2

    goto :goto_1

    .line 1499
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 2

    .prologue
    .line 1526
    iget-object v0, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 1527
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1531
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/u;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Landroidx/fragment/app/j;->I:Landroidx/fragment/app/l;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/l;->e(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/u;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/view/Menu;)V
    .locals 2

    .prologue
    .line 2782
    iget v0, p0, Landroidx/fragment/app/j;->m:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 2791
    :cond_0
    return-void

    .line 2785
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 2786
    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 2787
    if-eqz v0, :cond_2

    .line 2788
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->d(Landroid/view/Menu;)V

    .line 2785
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method b(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V
    .locals 3

    .prologue
    .line 2894
    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2895
    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->v()Landroidx/fragment/app/i;

    move-result-object v0

    .line 2896
    instance-of v1, v0, Landroidx/fragment/app/j;

    if-eqz v1, :cond_0

    .line 2897
    check-cast v0, Landroidx/fragment/app/j;

    const/4 v1, 0x1

    .line 2898
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/j;->b(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V

    .line 2901
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/j$c;

    .line 2902
    if-eqz p3, :cond_2

    iget-boolean v2, v0, Landroidx/fragment/app/j$c;->b:Z

    if-eqz v2, :cond_1

    .line 2903
    :cond_2
    iget-object v0, v0, Landroidx/fragment/app/j$c;->a:Landroidx/fragment/app/i$a;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/fragment/app/i$a;->b(Landroidx/fragment/app/i;Landroidx/fragment/app/Fragment;Landroid/content/Context;)V

    goto :goto_0

    .line 2906
    :cond_3
    return-void
.end method

.method b(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 3

    .prologue
    .line 2926
    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2927
    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->v()Landroidx/fragment/app/i;

    move-result-object v0

    .line 2928
    instance-of v1, v0, Landroidx/fragment/app/j;

    if-eqz v1, :cond_0

    .line 2929
    check-cast v0, Landroidx/fragment/app/j;

    const/4 v1, 0x1

    .line 2930
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/j;->b(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 2933
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/j$c;

    .line 2934
    if-eqz p3, :cond_2

    iget-boolean v2, v0, Landroidx/fragment/app/j$c;->b:Z

    if-eqz v2, :cond_1

    .line 2935
    :cond_2
    iget-object v0, v0, Landroidx/fragment/app/j$c;->a:Landroidx/fragment/app/i$a;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/fragment/app/i$a;->b(Landroidx/fragment/app/i;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_0

    .line 2938
    :cond_3
    return-void
.end method

.method b(Landroidx/fragment/app/Fragment;Z)V
    .locals 3

    .prologue
    .line 2973
    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2974
    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->v()Landroidx/fragment/app/i;

    move-result-object v0

    .line 2975
    instance-of v1, v0, Landroidx/fragment/app/j;

    if-eqz v1, :cond_0

    .line 2976
    check-cast v0, Landroidx/fragment/app/j;

    const/4 v1, 0x1

    .line 2977
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/j;->b(Landroidx/fragment/app/Fragment;Z)V

    .line 2980
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/j$c;

    .line 2981
    if-eqz p2, :cond_2

    iget-boolean v2, v0, Landroidx/fragment/app/j$c;->b:Z

    if-eqz v2, :cond_1

    .line 2982
    :cond_2
    iget-object v0, v0, Landroidx/fragment/app/j$c;->a:Landroidx/fragment/app/i$a;

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/i$a;->a(Landroidx/fragment/app/i;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 2985
    :cond_3
    return-void
.end method

.method b(Landroidx/fragment/app/a;)V
    .locals 1

    .prologue
    .line 2191
    iget-object v0, p0, Landroidx/fragment/app/j;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/j;->h:Ljava/util/ArrayList;

    .line 2194
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2195
    return-void
.end method

.method public b(Landroidx/fragment/app/j$e;Z)V
    .locals 2

    .prologue
    .line 1688
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/j;->u:Z

    if-eqz v0, :cond_1

    .line 1705
    :cond_0
    :goto_0
    return-void

    .line 1692
    :cond_1
    invoke-direct {p0, p2}, Landroidx/fragment/app/j;->c(Z)V

    .line 1693
    iget-object v0, p0, Landroidx/fragment/app/j;->w:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/j;->x:Ljava/util/ArrayList;

    invoke-interface {p1, v0, v1}, Landroidx/fragment/app/j$e;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1694
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/j;->d:Z

    .line 1696
    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/j;->w:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/j;->x:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Landroidx/fragment/app/j;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1698
    invoke-direct {p0}, Landroidx/fragment/app/j;->E()V

    .line 1702
    :cond_2
    invoke-direct {p0}, Landroidx/fragment/app/j;->C()V

    .line 1703
    invoke-virtual {p0}, Landroidx/fragment/app/j;->l()V

    .line 1704
    invoke-direct {p0}, Landroidx/fragment/app/j;->H()V

    goto :goto_0

    .line 1698
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroidx/fragment/app/j;->E()V

    .line 1699
    throw v0
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 2676
    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 2677
    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 2678
    if-eqz v0, :cond_0

    .line 2679
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->j(Z)V

    .line 2676
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 2682
    :cond_1
    return-void
.end method

.method public b()Z
    .locals 3

    .prologue
    .line 252
    invoke-direct {p0}, Landroidx/fragment/app/j;->D()V

    .line 253
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroidx/fragment/app/j;->a(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2767
    iget v0, p0, Landroidx/fragment/app/j;->m:I

    if-ge v0, v3, :cond_1

    .line 2778
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v1, v2

    .line 2770
    :goto_1
    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 2771
    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 2772
    if-eqz v0, :cond_2

    .line 2773
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->d(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v2, v3

    .line 2774
    goto :goto_0

    .line 2770
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method c(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/l;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Landroidx/fragment/app/j;->I:Landroidx/fragment/app/l;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/l;->d(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/l;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 374
    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 378
    :goto_0
    return-object v0

    .line 377
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    monitor-enter v1

    .line 378
    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    monitor-exit v1

    goto :goto_0

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(I)V
    .locals 3

    .prologue
    .line 1642
    monitor-enter p0

    .line 1643
    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/j;->j:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1644
    iget-object v0, p0, Landroidx/fragment/app/j;->k:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1645
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/j;->k:Ljava/util/ArrayList;

    .line 1647
    :cond_0
    sget-boolean v0, Landroidx/fragment/app/j;->b:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Freeing back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/j;->k:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1649
    monitor-exit p0

    .line 1650
    return-void

    .line 1649
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method c(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 3

    .prologue
    .line 2942
    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2943
    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->v()Landroidx/fragment/app/i;

    move-result-object v0

    .line 2944
    instance-of v1, v0, Landroidx/fragment/app/j;

    if-eqz v1, :cond_0

    .line 2945
    check-cast v0, Landroidx/fragment/app/j;

    const/4 v1, 0x1

    .line 2946
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/j;->c(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 2949
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/j$c;

    .line 2950
    if-eqz p3, :cond_2

    iget-boolean v2, v0, Landroidx/fragment/app/j$c;->b:Z

    if-eqz v2, :cond_1

    .line 2951
    :cond_2
    iget-object v0, v0, Landroidx/fragment/app/j$c;->a:Landroidx/fragment/app/i$a;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/fragment/app/i$a;->c(Landroidx/fragment/app/i;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_0

    .line 2954
    :cond_3
    return-void
.end method

.method c(Landroidx/fragment/app/Fragment;Z)V
    .locals 3

    .prologue
    .line 2988
    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2989
    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->v()Landroidx/fragment/app/i;

    move-result-object v0

    .line 2990
    instance-of v1, v0, Landroidx/fragment/app/j;

    if-eqz v1, :cond_0

    .line 2991
    check-cast v0, Landroidx/fragment/app/j;

    const/4 v1, 0x1

    .line 2992
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/j;->c(Landroidx/fragment/app/Fragment;Z)V

    .line 2995
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/j$c;

    .line 2996
    if-eqz p2, :cond_2

    iget-boolean v2, v0, Landroidx/fragment/app/j$c;->b:Z

    if-eqz v2, :cond_1

    .line 2997
    :cond_2
    iget-object v0, v0, Landroidx/fragment/app/j$c;->a:Landroidx/fragment/app/i$a;

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/i$a;->b(Landroidx/fragment/app/i;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 3000
    :cond_3
    return-void
.end method

.method d(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .prologue
    .line 393
    invoke-virtual {p0}, Landroidx/fragment/app/j;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    sget-boolean v0, Landroidx/fragment/app/j;->b:Z

    if-eqz v0, :cond_0

    .line 395
    const-string/jumbo v0, "FragmentManager"

    const-string/jumbo v1, "Ignoring addRetainedFragment as the state is already saved"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/j;->I:Landroidx/fragment/app/l;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/l;->a(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    .line 400
    if-eqz v0, :cond_0

    sget-boolean v0, Landroidx/fragment/app/j;->b:Z

    if-eqz v0, :cond_0

    .line 401
    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Updating retained Fragments: Added "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method d(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 3

    .prologue
    .line 3034
    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 3035
    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->v()Landroidx/fragment/app/i;

    move-result-object v0

    .line 3036
    instance-of v1, v0, Landroidx/fragment/app/j;

    if-eqz v1, :cond_0

    .line 3037
    check-cast v0, Landroidx/fragment/app/j;

    const/4 v1, 0x1

    .line 3038
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/j;->d(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 3041
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/j$c;

    .line 3042
    if-eqz p3, :cond_2

    iget-boolean v2, v0, Landroidx/fragment/app/j$c;->b:Z

    if-eqz v2, :cond_1

    .line 3043
    :cond_2
    iget-object v0, v0, Landroidx/fragment/app/j$c;->a:Landroidx/fragment/app/i$a;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/fragment/app/i$a;->d(Landroidx/fragment/app/i;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_0

    .line 3046
    :cond_3
    return-void
.end method

.method d(Landroidx/fragment/app/Fragment;Z)V
    .locals 3

    .prologue
    .line 3003
    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 3004
    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->v()Landroidx/fragment/app/i;

    move-result-object v0

    .line 3005
    instance-of v1, v0, Landroidx/fragment/app/j;

    if-eqz v1, :cond_0

    .line 3006
    check-cast v0, Landroidx/fragment/app/j;

    const/4 v1, 0x1

    .line 3007
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/j;->d(Landroidx/fragment/app/Fragment;Z)V

    .line 3010
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/j$c;

    .line 3011
    if-eqz p2, :cond_2

    iget-boolean v2, v0, Landroidx/fragment/app/j$c;->b:Z

    if-eqz v2, :cond_1

    .line 3012
    :cond_2
    iget-object v0, v0, Landroidx/fragment/app/j$c;->a:Landroidx/fragment/app/i$a;

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/i$a;->c(Landroidx/fragment/app/i;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 3015
    :cond_3
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 454
    iget-boolean v0, p0, Landroidx/fragment/app/j;->u:Z

    return v0
.end method

.method public e()Landroidx/fragment/app/g;
    .locals 2

    .prologue
    .line 2836
    invoke-super {p0}, Landroidx/fragment/app/i;->e()Landroidx/fragment/app/g;

    move-result-object v0

    .line 2837
    sget-object v1, Landroidx/fragment/app/j;->a:Landroidx/fragment/app/g;

    if-ne v0, v1, :cond_1

    .line 2838
    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2843
    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->e()Landroidx/fragment/app/g;

    move-result-object v0

    .line 2855
    :goto_0
    return-object v0

    .line 2845
    :cond_0
    new-instance v0, Landroidx/fragment/app/j$6;

    invoke-direct {v0, p0}, Landroidx/fragment/app/j$6;-><init>(Landroidx/fragment/app/j;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/g;)V

    .line 2855
    :cond_1
    invoke-super {p0}, Landroidx/fragment/app/i;->e()Landroidx/fragment/app/g;

    move-result-object v0

    goto :goto_0
.end method

.method e(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .prologue
    .line 406
    invoke-virtual {p0}, Landroidx/fragment/app/j;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 407
    sget-boolean v0, Landroidx/fragment/app/j;->b:Z

    if-eqz v0, :cond_0

    .line 408
    const-string/jumbo v0, "FragmentManager"

    const-string/jumbo v1, "Ignoring removeRetainedFragment as the state is already saved"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/j;->I:Landroidx/fragment/app/l;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/l;->c(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    .line 413
    if-eqz v0, :cond_0

    sget-boolean v0, Landroidx/fragment/app/j;->b:Z

    if-eqz v0, :cond_0

    .line 414
    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Updating retained Fragments: Removed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method e(Landroidx/fragment/app/Fragment;Z)V
    .locals 3

    .prologue
    .line 3018
    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 3019
    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->v()Landroidx/fragment/app/i;

    move-result-object v0

    .line 3020
    instance-of v1, v0, Landroidx/fragment/app/j;

    if-eqz v1, :cond_0

    .line 3021
    check-cast v0, Landroidx/fragment/app/j;

    const/4 v1, 0x1

    .line 3022
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/j;->e(Landroidx/fragment/app/Fragment;Z)V

    .line 3025
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/j$c;

    .line 3026
    if-eqz p2, :cond_2

    iget-boolean v2, v0, Landroidx/fragment/app/j$c;->b:Z

    if-eqz v2, :cond_1

    .line 3027
    :cond_2
    iget-object v0, v0, Landroidx/fragment/app/j$c;->a:Landroidx/fragment/app/i$a;

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/i$a;->d(Landroidx/fragment/app/i;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 3030
    :cond_3
    return-void
.end method

.method public f(Landroidx/fragment/app/Fragment;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 706
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->Q:Z

    if-eqz v0, :cond_0

    .line 707
    iget-boolean v0, p0, Landroidx/fragment/app/j;->d:Z

    if-eqz v0, :cond_1

    .line 709
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/j;->v:Z

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 712
    :cond_1
    iput-boolean v3, p1, Landroidx/fragment/app/Fragment;->Q:Z

    .line 713
    iget v2, p0, Landroidx/fragment/app/j;->m:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/Fragment;IIIZ)V

    goto :goto_0
.end method

.method f(Landroidx/fragment/app/Fragment;Z)V
    .locals 3

    .prologue
    .line 3049
    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 3050
    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->v()Landroidx/fragment/app/i;

    move-result-object v0

    .line 3051
    instance-of v1, v0, Landroidx/fragment/app/j;

    if-eqz v1, :cond_0

    .line 3052
    check-cast v0, Landroidx/fragment/app/j;

    const/4 v1, 0x1

    .line 3053
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/j;->f(Landroidx/fragment/app/Fragment;Z)V

    .line 3056
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/j$c;

    .line 3057
    if-eqz p2, :cond_2

    iget-boolean v2, v0, Landroidx/fragment/app/j$c;->b:Z

    if-eqz v2, :cond_1

    .line 3058
    :cond_2
    iget-object v0, v0, Landroidx/fragment/app/j$c;->a:Landroidx/fragment/app/i$a;

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/i$a;->e(Landroidx/fragment/app/i;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 3061
    :cond_3
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 1546
    iget-boolean v0, p0, Landroidx/fragment/app/j;->s:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/j;->t:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method g()V
    .locals 1

    .prologue
    .line 230
    invoke-virtual {p0}, Landroidx/fragment/app/j;->k()Z

    .line 231
    iget-object v0, p0, Landroidx/fragment/app/j;->G:Landroidx/activity/c;

    invoke-virtual {v0}, Landroidx/activity/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p0}, Landroidx/fragment/app/j;->b()Z

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j;->F:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->a()V

    goto :goto_0
.end method

.method g(Landroidx/fragment/app/Fragment;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1133
    iget v2, p0, Landroidx/fragment/app/j;->m:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 1134
    return-void
.end method

.method g(Landroidx/fragment/app/Fragment;Z)V
    .locals 3

    .prologue
    .line 3064
    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 3065
    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->v()Landroidx/fragment/app/i;

    move-result-object v0

    .line 3066
    instance-of v1, v0, Landroidx/fragment/app/j;

    if-eqz v1, :cond_0

    .line 3067
    check-cast v0, Landroidx/fragment/app/j;

    const/4 v1, 0x1

    .line 3068
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/j;->g(Landroidx/fragment/app/Fragment;Z)V

    .line 3071
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/j$c;

    .line 3072
    if-eqz p2, :cond_2

    iget-boolean v2, v0, Landroidx/fragment/app/j$c;->b:Z

    if-eqz v2, :cond_1

    .line 3073
    :cond_2
    iget-object v0, v0, Landroidx/fragment/app/j$c;->a:Landroidx/fragment/app/i$a;

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/i$a;->f(Landroidx/fragment/app/i;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 3076
    :cond_3
    return-void
.end method

.method public h()I
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Landroidx/fragment/app/j;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/j;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method h(Landroidx/fragment/app/Fragment;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1137
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->v:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->y:Z

    if-nez v0, :cond_1

    .line 1138
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->l:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->h(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->l:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v3, v1}, Landroidx/fragment/app/Fragment;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 1140
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1141
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->P:Landroid/view/View;

    .line 1142
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 1143
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->H:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1144
    :cond_0
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->l:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/Fragment;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1145
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->l:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0, v1, v2}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 1150
    :cond_1
    :goto_0
    return-void

    .line 1147
    :cond_2
    iput-object v3, p1, Landroidx/fragment/app/Fragment;->P:Landroid/view/View;

    goto :goto_0
.end method

.method h(Landroidx/fragment/app/Fragment;Z)V
    .locals 3

    .prologue
    .line 3079
    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 3080
    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->v()Landroidx/fragment/app/i;

    move-result-object v0

    .line 3081
    instance-of v1, v0, Landroidx/fragment/app/j;

    if-eqz v1, :cond_0

    .line 3082
    check-cast v0, Landroidx/fragment/app/j;

    const/4 v1, 0x1

    .line 3083
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/j;->h(Landroidx/fragment/app/Fragment;Z)V

    .line 3086
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/j$c;

    .line 3087
    if-eqz p2, :cond_2

    iget-boolean v2, v0, Landroidx/fragment/app/j$c;->b:Z

    if-eqz v2, :cond_1

    .line 3088
    :cond_2
    iget-object v0, v0, Landroidx/fragment/app/j$c;->a:Landroidx/fragment/app/i$a;

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/i$a;->g(Landroidx/fragment/app/i;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 3091
    :cond_3
    return-void
.end method

.method i()V
    .locals 2

    .prologue
    .line 1323
    iget-object v0, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 1324
    if-eqz v0, :cond_0

    .line 1325
    invoke-virtual {p0, v0}, Landroidx/fragment/app/j;->f(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 1328
    :cond_1
    return-void
.end method

.method i(Landroidx/fragment/app/Fragment;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1163
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1164
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->aj()I

    move-result v3

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->H:Z

    if-nez v0, :cond_2

    move v0, v1

    .line 1165
    :goto_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->ak()I

    move-result v4

    .line 1164
    invoke-virtual {p0, p1, v3, v0, v4}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/Fragment;IZI)Landroidx/fragment/app/j$a;

    move-result-object v0

    .line 1166
    if-eqz v0, :cond_5

    iget-object v3, v0, Landroidx/fragment/app/j$a;->b:Landroid/animation/Animator;

    if-eqz v3, :cond_5

    .line 1167
    iget-object v3, v0, Landroidx/fragment/app/j$a;->b:Landroid/animation/Animator;

    iget-object v4, p1, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1168
    iget-boolean v3, p1, Landroidx/fragment/app/Fragment;->H:Z

    if-eqz v3, :cond_4

    .line 1169
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->ar()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1170
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->k(Z)V

    .line 1191
    :goto_1
    iget-object v0, v0, Landroidx/fragment/app/j$a;->b:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1206
    :cond_0
    :goto_2
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->t:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Landroidx/fragment/app/j;->w(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1207
    iput-boolean v1, p0, Landroidx/fragment/app/j;->r:Z

    .line 1209
    :cond_1
    iput-boolean v2, p1, Landroidx/fragment/app/Fragment;->V:Z

    .line 1210
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->H:Z

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->b(Z)V

    .line 1211
    return-void

    :cond_2
    move v0, v2

    .line 1164
    goto :goto_0

    .line 1172
    :cond_3
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->N:Landroid/view/ViewGroup;

    .line 1173
    iget-object v4, p1, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    .line 1174
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 1177
    iget-object v5, v0, Landroidx/fragment/app/j$a;->b:Landroid/animation/Animator;

    new-instance v6, Landroidx/fragment/app/j$5;

    invoke-direct {v6, p0, v3, v4, p1}, Landroidx/fragment/app/j$5;-><init>(Landroidx/fragment/app/j;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    .line 1189
    :cond_4
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1193
    :cond_5
    if-eqz v0, :cond_6

    .line 1194
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    iget-object v4, v0, Landroidx/fragment/app/j$a;->a:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1195
    iget-object v0, v0, Landroidx/fragment/app/j$a;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 1197
    :cond_6
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->H:Z

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->ar()Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x8

    .line 1200
    :goto_3
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1201
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->ar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1202
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->k(Z)V

    goto :goto_2

    :cond_7
    move v0, v2

    .line 1197
    goto :goto_3
.end method

.method j()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1584
    monitor-enter p0

    .line 1585
    :try_start_0
    iget-object v2, p0, Landroidx/fragment/app/j;->B:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/fragment/app/j;->B:Ljava/util/ArrayList;

    .line 1586
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v0

    .line 1587
    :goto_0
    iget-object v3, p0, Landroidx/fragment/app/j;->c:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroidx/fragment/app/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v0, :cond_3

    .line 1588
    :goto_1
    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    .line 1589
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->m()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/j;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1590
    iget-object v0, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->m()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/j;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1591
    invoke-direct {p0}, Landroidx/fragment/app/j;->C()V

    .line 1593
    :cond_1
    monitor-exit p0

    .line 1594
    return-void

    :cond_2
    move v2, v1

    .line 1586
    goto :goto_0

    :cond_3
    move v0, v1

    .line 1587
    goto :goto_1

    .line 1593
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method j(Landroidx/fragment/app/Fragment;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1220
    if-nez p1, :cond_1

    .line 1277
    :cond_0
    :goto_0
    return-void

    .line 1223
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1224
    sget-boolean v0, Landroidx/fragment/app/j;->b:Z

    if-eqz v0, :cond_0

    .line 1225
    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ignoring moving "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/fragment/app/j;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "since it is not added to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1230
    :cond_2
    iget v2, p0, Landroidx/fragment/app/j;->m:I

    .line 1231
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->u:Z

    if-eqz v0, :cond_3

    .line 1232
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->l()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1233
    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1238
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->aj()I

    move-result v3

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->ak()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 1240
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 1242
    invoke-direct {p0, p1}, Landroidx/fragment/app/j;->u(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 1243
    if-eqz v0, :cond_4

    .line 1244
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    .line 1246
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->N:Landroid/view/ViewGroup;

    .line 1247
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1248
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 1249
    if-ge v2, v0, :cond_4

    .line 1250
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1251
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1254
    :cond_4
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->U:Z

    if-eqz v0, :cond_6

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->N:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    .line 1256
    iget v0, p1, Landroidx/fragment/app/Fragment;->W:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_5

    .line 1257
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    iget v1, p1, Landroidx/fragment/app/Fragment;->W:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1259
    :cond_5
    iput v6, p1, Landroidx/fragment/app/Fragment;->W:F

    .line 1260
    iput-boolean v5, p1, Landroidx/fragment/app/Fragment;->U:Z

    .line 1262
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->aj()I

    move-result v0

    .line 1263
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->ak()I

    move-result v1

    .line 1262
    invoke-virtual {p0, p1, v0, v7, v1}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/Fragment;IZI)Landroidx/fragment/app/j$a;

    move-result-object v0

    .line 1264
    if-eqz v0, :cond_6

    .line 1265
    iget-object v1, v0, Landroidx/fragment/app/j$a;->a:Landroid/view/animation/Animation;

    if-eqz v1, :cond_8

    .line 1266
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    iget-object v0, v0, Landroidx/fragment/app/j$a;->a:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1274
    :cond_6
    :goto_2
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->V:Z

    if-eqz v0, :cond_0

    .line 1275
    invoke-virtual {p0, p1}, Landroidx/fragment/app/j;->i(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 1235
    :cond_7
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1

    .line 1268
    :cond_8
    iget-object v1, v0, Landroidx/fragment/app/j$a;->b:Landroid/animation/Animator;

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1269
    iget-object v0, v0, Landroidx/fragment/app/j$a;->b:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_2
.end method

.method k(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .prologue
    .line 1331
    iget-object v0, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1345
    :cond_0
    :goto_0
    return-void

    .line 1335
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1336
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->K:Z

    if-eqz v0, :cond_2

    .line 1337
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->J:Z

    if-eqz v0, :cond_3

    .line 1338
    invoke-virtual {p0, p1}, Landroidx/fragment/app/j;->d(Landroidx/fragment/app/Fragment;)V

    .line 1342
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->K:Z

    .line 1344
    :cond_2
    sget-boolean v0, Landroidx/fragment/app/j;->b:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Added fragment to active set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1340
    :cond_3
    invoke-virtual {p0, p1}, Landroidx/fragment/app/j;->e(Landroidx/fragment/app/Fragment;)V

    goto :goto_1
.end method

.method public k()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1721
    invoke-direct {p0, v1}, Landroidx/fragment/app/j;->c(Z)V

    .line 1723
    const/4 v0, 0x0

    .line 1724
    :goto_0
    iget-object v2, p0, Landroidx/fragment/app/j;->w:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/j;->x:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3}, Landroidx/fragment/app/j;->c(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1725
    iput-boolean v1, p0, Landroidx/fragment/app/j;->d:Z

    .line 1727
    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/j;->w:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/j;->x:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2}, Landroidx/fragment/app/j;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1729
    invoke-direct {p0}, Landroidx/fragment/app/j;->E()V

    move v0, v1

    .line 1731
    goto :goto_0

    .line 1729
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroidx/fragment/app/j;->E()V

    .line 1730
    throw v0

    .line 1734
    :cond_0
    invoke-direct {p0}, Landroidx/fragment/app/j;->C()V

    .line 1735
    invoke-virtual {p0}, Landroidx/fragment/app/j;->l()V

    .line 1736
    invoke-direct {p0}, Landroidx/fragment/app/j;->H()V

    .line 1738
    return v0
.end method

.method l()V
    .locals 1

    .prologue
    .line 2176
    iget-boolean v0, p0, Landroidx/fragment/app/j;->v:Z

    if-eqz v0, :cond_0

    .line 2177
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/j;->v:Z

    .line 2178
    invoke-virtual {p0}, Landroidx/fragment/app/j;->i()V

    .line 2180
    :cond_0
    return-void
.end method

.method l(Landroidx/fragment/app/Fragment;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1348
    iget-object v0, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1372
    :goto_0
    return-void

    .line 1352
    :cond_0
    sget-boolean v0, Landroidx/fragment/app/j;->b:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Removed fragment from active set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 1356
    if-eqz v0, :cond_2

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->o:Ljava/lang/String;

    iget-object v3, v0, Landroidx/fragment/app/Fragment;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1357
    iput-object p1, v0, Landroidx/fragment/app/Fragment;->q:Landroidx/fragment/app/Fragment;

    .line 1358
    iput-object v4, v0, Landroidx/fragment/app/Fragment;->r:Ljava/lang/String;

    goto :goto_1

    .line 1363
    :cond_3
    iget-object v0, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1364
    invoke-virtual {p0, p1}, Landroidx/fragment/app/j;->e(Landroidx/fragment/app/Fragment;)V

    .line 1366
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->r:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1369
    iget-object v0, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->q:Landroidx/fragment/app/Fragment;

    .line 1371
    :cond_4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->L()V

    goto :goto_0
.end method

.method m()V
    .locals 2

    .prologue
    .line 2183
    iget-object v0, p0, Landroidx/fragment/app/j;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2184
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/j;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 2185
    iget-object v0, p0, Landroidx/fragment/app/j;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/i$b;

    invoke-interface {v0}, Landroidx/fragment/app/i$b;->a()V

    .line 2184
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2188
    :cond_0
    return-void
.end method

.method public m(Landroidx/fragment/app/Fragment;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1399
    sget-boolean v0, Landroidx/fragment/app/j;->b:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "remove: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " nesting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroidx/fragment/app/Fragment;->z:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->l()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 1401
    :goto_0
    iget-boolean v3, p1, Landroidx/fragment/app/Fragment;->I:Z

    if-eqz v3, :cond_1

    if-eqz v0, :cond_3

    .line 1402
    :cond_1
    iget-object v3, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1403
    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1404
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1405
    invoke-direct {p0, p1}, Landroidx/fragment/app/j;->w(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1406
    iput-boolean v1, p0, Landroidx/fragment/app/j;->r:Z

    .line 1408
    :cond_2
    iput-boolean v2, p1, Landroidx/fragment/app/Fragment;->t:Z

    .line 1409
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->u:Z

    .line 1411
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 1400
    goto :goto_0

    .line 1404
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method n()Landroid/os/Parcelable;
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 2320
    invoke-direct {p0}, Landroidx/fragment/app/j;->F()V

    .line 2321
    invoke-direct {p0}, Landroidx/fragment/app/j;->G()V

    .line 2322
    invoke-virtual {p0}, Landroidx/fragment/app/j;->k()Z

    .line 2324
    iput-boolean v3, p0, Landroidx/fragment/app/j;->s:Z

    .line 2326
    iget-object v0, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2426
    :cond_0
    :goto_0
    return-object v4

    .line 2331
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 2332
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2334
    iget-object v0, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 2335
    if-eqz v0, :cond_11

    .line 2336
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/j;

    if-eq v1, p0, :cond_2

    .line 2337
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failure saving state: active "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " was removed from the FragmentManager"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroidx/fragment/app/j;->a(Ljava/lang/RuntimeException;)V

    .line 2344
    :cond_2
    new-instance v7, Landroidx/fragment/app/n;

    invoke-direct {v7, v0}, Landroidx/fragment/app/n;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 2345
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2347
    iget v1, v0, Landroidx/fragment/app/Fragment;->k:I

    if-lez v1, :cond_7

    iget-object v1, v7, Landroidx/fragment/app/n;->m:Landroid/os/Bundle;

    if-nez v1, :cond_7

    .line 2348
    invoke-virtual {p0, v0}, Landroidx/fragment/app/j;->s(Landroidx/fragment/app/Fragment;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v7, Landroidx/fragment/app/n;->m:Landroid/os/Bundle;

    .line 2350
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->r:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 2351
    iget-object v1, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    iget-object v8, v0, Landroidx/fragment/app/Fragment;->r:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 2352
    if-nez v1, :cond_3

    .line 2353
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failure saving state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " has target not in fragment manager: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Landroidx/fragment/app/Fragment;->r:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v8}, Landroidx/fragment/app/j;->a(Ljava/lang/RuntimeException;)V

    .line 2358
    :cond_3
    iget-object v8, v7, Landroidx/fragment/app/n;->m:Landroid/os/Bundle;

    if-nez v8, :cond_4

    .line 2359
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    iput-object v8, v7, Landroidx/fragment/app/n;->m:Landroid/os/Bundle;

    .line 2361
    :cond_4
    iget-object v8, v7, Landroidx/fragment/app/n;->m:Landroid/os/Bundle;

    const-string/jumbo v9, "android:target_state"

    invoke-virtual {p0, v8, v9, v1}, Landroidx/fragment/app/j;->a(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 2363
    iget v1, v0, Landroidx/fragment/app/Fragment;->s:I

    if-eqz v1, :cond_5

    .line 2364
    iget-object v1, v7, Landroidx/fragment/app/n;->m:Landroid/os/Bundle;

    const-string/jumbo v8, "android:target_req_state"

    iget v9, v0, Landroidx/fragment/app/Fragment;->s:I

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2374
    :cond_5
    :goto_2
    sget-boolean v1, Landroidx/fragment/app/j;->b:Z

    if-eqz v1, :cond_6

    const-string/jumbo v1, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Saved state of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v8, ": "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, v7, Landroidx/fragment/app/n;->m:Landroid/os/Bundle;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v0, v3

    :goto_3
    move v1, v0

    .line 2377
    goto/16 :goto_1

    .line 2371
    :cond_7
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->l:Landroid/os/Bundle;

    iput-object v1, v7, Landroidx/fragment/app/n;->m:Landroid/os/Bundle;

    goto :goto_2

    .line 2379
    :cond_8
    if-nez v1, :cond_9

    .line 2380
    sget-boolean v0, Landroidx/fragment/app/j;->b:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FragmentManager"

    const-string/jumbo v1, "saveAllState: no fragments!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2388
    :cond_9
    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2389
    if-lez v0, :cond_c

    .line 2390
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2391
    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 2392
    iget-object v6, v0, Landroidx/fragment/app/Fragment;->o:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2393
    iget-object v6, v0, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/j;

    if-eq v6, p0, :cond_b

    .line 2394
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failure saving state: active "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " was removed from the FragmentManager"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v6}, Landroidx/fragment/app/j;->a(Ljava/lang/RuntimeException;)V

    .line 2398
    :cond_b
    sget-boolean v6, Landroidx/fragment/app/j;->b:Z

    if-eqz v6, :cond_a

    .line 2399
    const-string/jumbo v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "saveAllState: adding fragment ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroidx/fragment/app/Fragment;->o:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_c
    move-object v1, v4

    .line 2406
    :cond_d
    iget-object v0, p0, Landroidx/fragment/app/j;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    .line 2407
    iget-object v0, p0, Landroidx/fragment/app/j;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2408
    if-lez v3, :cond_f

    .line 2409
    new-array v4, v3, [Landroidx/fragment/app/b;

    .line 2410
    :goto_5
    if-ge v2, v3, :cond_f

    .line 2411
    new-instance v6, Landroidx/fragment/app/b;

    iget-object v0, p0, Landroidx/fragment/app/j;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/a;

    invoke-direct {v6, v0}, Landroidx/fragment/app/b;-><init>(Landroidx/fragment/app/a;)V

    aput-object v6, v4, v2

    .line 2412
    sget-boolean v0, Landroidx/fragment/app/j;->b:Z

    if-eqz v0, :cond_e

    const-string/jumbo v0, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saveAllState: adding back stack #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroidx/fragment/app/j;->h:Ljava/util/ArrayList;

    .line 2413
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2412
    invoke-static {v0, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 2418
    :cond_f
    new-instance v0, Landroidx/fragment/app/k;

    invoke-direct {v0}, Landroidx/fragment/app/k;-><init>()V

    .line 2419
    iput-object v5, v0, Landroidx/fragment/app/k;->a:Ljava/util/ArrayList;

    .line 2420
    iput-object v1, v0, Landroidx/fragment/app/k;->b:Ljava/util/ArrayList;

    .line 2421
    iput-object v4, v0, Landroidx/fragment/app/k;->c:[Landroidx/fragment/app/b;

    .line 2422
    iget-object v1, p0, Landroidx/fragment/app/j;->q:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_10

    .line 2423
    iget-object v1, p0, Landroidx/fragment/app/j;->q:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->o:Ljava/lang/String;

    iput-object v1, v0, Landroidx/fragment/app/k;->d:Ljava/lang/String;

    .line 2425
    :cond_10
    iget v1, p0, Landroidx/fragment/app/j;->e:I

    iput v1, v0, Landroidx/fragment/app/k;->e:I

    move-object v4, v0

    .line 2426
    goto/16 :goto_0

    :cond_11
    move v0, v1

    goto/16 :goto_3
.end method

.method public n(Landroidx/fragment/app/Fragment;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1420
    sget-boolean v1, Landroidx/fragment/app/j;->b:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hide: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    :cond_0
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->H:Z

    if-nez v1, :cond_1

    .line 1422
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->H:Z

    .line 1425
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->V:Z

    if-nez v1, :cond_2

    :goto_0
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->V:Z

    .line 1427
    :cond_1
    return-void

    .line 1425
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2593
    iput-boolean v0, p0, Landroidx/fragment/app/j;->s:Z

    .line 2594
    iput-boolean v0, p0, Landroidx/fragment/app/j;->t:Z

    .line 2595
    iget-object v1, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    .line 2596
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2597
    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 2598
    if-eqz v0, :cond_0

    .line 2599
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->aa()V

    .line 2596
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2602
    :cond_1
    return-void
.end method

.method public o(Landroidx/fragment/app/Fragment;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1436
    sget-boolean v1, Landroidx/fragment/app/j;->b:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "show: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    :cond_0
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->H:Z

    if-eqz v1, :cond_2

    .line 1438
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->H:Z

    .line 1441
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->V:Z

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->V:Z

    .line 1443
    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v2, 0x1

    .line 3156
    const-string/jumbo v0, "fragment"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v4

    .line 3243
    :goto_0
    return-object v0

    .line 3160
    :cond_0
    const-string/jumbo v0, "class"

    invoke-interface {p4, v4, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3161
    sget-object v1, Landroidx/fragment/app/j$d;->a:[I

    invoke-virtual {p3, p4, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 3162
    if-nez v0, :cond_10

    .line 3163
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 3165
    :goto_1
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 3166
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3167
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 3169
    if-eqz v6, :cond_1

    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0, v6}, Landroidx/fragment/app/g;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v4

    .line 3172
    goto :goto_0

    .line 3175
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 3176
    :goto_2
    if-ne v1, v5, :cond_4

    if-ne v7, v5, :cond_4

    if-nez v8, :cond_4

    .line 3177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v1, v3

    .line 3175
    goto :goto_2

    .line 3184
    :cond_4
    if-eq v7, v5, :cond_8

    invoke-virtual {p0, v7}, Landroidx/fragment/app/j;->b(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 3185
    :goto_3
    if-nez v0, :cond_5

    if-eqz v8, :cond_5

    .line 3186
    invoke-virtual {p0, v8}, Landroidx/fragment/app/j;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 3188
    :cond_5
    if-nez v0, :cond_6

    if-eq v1, v5, :cond_6

    .line 3189
    invoke-virtual {p0, v1}, Landroidx/fragment/app/j;->b(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 3192
    :cond_6
    sget-boolean v4, Landroidx/fragment/app/j;->b:Z

    if-eqz v4, :cond_7

    const-string/jumbo v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onCreateView: id=0x"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3193
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, " fname="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, " existing="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3192
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3195
    :cond_7
    if-nez v0, :cond_a

    .line 3196
    invoke-virtual {p0}, Landroidx/fragment/app/j;->e()Landroidx/fragment/app/g;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v0, v4, v6}, Landroidx/fragment/app/g;->c(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v4

    .line 3197
    iput-boolean v2, v4, Landroidx/fragment/app/Fragment;->v:Z

    .line 3198
    if-eqz v7, :cond_9

    move v0, v7

    :goto_4
    iput v0, v4, Landroidx/fragment/app/Fragment;->E:I

    .line 3199
    iput v1, v4, Landroidx/fragment/app/Fragment;->F:I

    .line 3200
    iput-object v8, v4, Landroidx/fragment/app/Fragment;->G:Ljava/lang/String;

    .line 3201
    iput-boolean v2, v4, Landroidx/fragment/app/Fragment;->w:Z

    .line 3202
    iput-object p0, v4, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/j;

    .line 3203
    iget-object v0, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    iput-object v0, v4, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/h;

    .line 3204
    iget-object v0, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->l()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v4, Landroidx/fragment/app/Fragment;->l:Landroid/os/Bundle;

    invoke-virtual {v4, v0, p4, v1}, Landroidx/fragment/app/Fragment;->a(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 3205
    invoke-virtual {p0, v4, v2}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/Fragment;Z)V

    move-object v1, v4

    .line 3227
    :goto_5
    iget v0, p0, Landroidx/fragment/app/j;->m:I

    if-ge v0, v2, :cond_c

    iget-boolean v0, v1, Landroidx/fragment/app/Fragment;->v:Z

    if-eqz v0, :cond_c

    move-object v0, p0

    move v4, v3

    move v5, v3

    .line 3228
    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 3233
    :goto_6
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    if-nez v0, :cond_d

    .line 3234
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not create a view."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object v0, v4

    .line 3184
    goto/16 :goto_3

    :cond_9
    move v0, v1

    .line 3198
    goto :goto_4

    .line 3207
    :cond_a
    iget-boolean v4, v0, Landroidx/fragment/app/Fragment;->w:Z

    if-eqz v4, :cond_b

    .line 3210
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": Duplicate id 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3211
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", or parent id 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3212
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " with another fragment for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3217
    :cond_b
    iput-boolean v2, v0, Landroidx/fragment/app/Fragment;->w:Z

    .line 3218
    iget-object v1, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    iput-object v1, v0, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/h;

    .line 3220
    iget-object v1, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {v1}, Landroidx/fragment/app/h;->l()Landroid/content/Context;

    move-result-object v1

    iget-object v4, v0, Landroidx/fragment/app/Fragment;->l:Landroid/os/Bundle;

    invoke-virtual {v0, v1, p4, v4}, Landroidx/fragment/app/Fragment;->a(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    move-object v1, v0

    goto/16 :goto_5

    .line 3230
    :cond_c
    invoke-virtual {p0, v1}, Landroidx/fragment/app/j;->g(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_6

    .line 3237
    :cond_d
    if-eqz v7, :cond_e

    .line 3238
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setId(I)V

    .line 3240
    :cond_e
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_f

    .line 3241
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3243
    :cond_f
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    goto/16 :goto_0

    :cond_10
    move-object v6, v0

    goto/16 :goto_1
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 3248
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/fragment/app/j;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public p()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2605
    iput-boolean v0, p0, Landroidx/fragment/app/j;->s:Z

    .line 2606
    iput-boolean v0, p0, Landroidx/fragment/app/j;->t:Z

    .line 2607
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/fragment/app/j;->e(I)V

    .line 2608
    return-void
.end method

.method public p(Landroidx/fragment/app/Fragment;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1446
    sget-boolean v0, Landroidx/fragment/app/j;->b:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "detach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    :cond_0
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->I:Z

    if-nez v0, :cond_3

    .line 1448
    iput-boolean v3, p1, Landroidx/fragment/app/Fragment;->I:Z

    .line 1449
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->t:Z

    if-eqz v0, :cond_3

    .line 1451
    sget-boolean v0, Landroidx/fragment/app/j;->b:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove from detach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1453
    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1454
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1455
    invoke-direct {p0, p1}, Landroidx/fragment/app/j;->w(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1456
    iput-boolean v3, p0, Landroidx/fragment/app/j;->r:Z

    .line 1458
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->t:Z

    .line 1461
    :cond_3
    return-void

    .line 1454
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public q()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2611
    iput-boolean v0, p0, Landroidx/fragment/app/j;->s:Z

    .line 2612
    iput-boolean v0, p0, Landroidx/fragment/app/j;->t:Z

    .line 2613
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroidx/fragment/app/j;->e(I)V

    .line 2614
    return-void
.end method

.method public q(Landroidx/fragment/app/Fragment;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1464
    sget-boolean v0, Landroidx/fragment/app/j;->b:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    :cond_0
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->I:Z

    if-eqz v0, :cond_3

    .line 1466
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->I:Z

    .line 1467
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->t:Z

    if-nez v0, :cond_3

    .line 1468
    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1469
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1471
    :cond_1
    sget-boolean v0, Landroidx/fragment/app/j;->b:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "add from attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    :cond_2
    iget-object v1, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1473
    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1474
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1475
    iput-boolean v3, p1, Landroidx/fragment/app/Fragment;->t:Z

    .line 1476
    invoke-direct {p0, p1}, Landroidx/fragment/app/j;->w(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1477
    iput-boolean v3, p0, Landroidx/fragment/app/j;->r:Z

    .line 1481
    :cond_3
    return-void

    .line 1474
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public r()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2617
    iput-boolean v0, p0, Landroidx/fragment/app/j;->s:Z

    .line 2618
    iput-boolean v0, p0, Landroidx/fragment/app/j;->t:Z

    .line 2619
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroidx/fragment/app/j;->e(I)V

    .line 2620
    return-void
.end method

.method r(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .prologue
    .line 2268
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->P:Landroid/view/View;

    if-nez v0, :cond_1

    .line 2281
    :cond_0
    :goto_0
    return-void

    .line 2271
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/j;->A:Landroid/util/SparseArray;

    if-nez v0, :cond_2

    .line 2272
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/j;->A:Landroid/util/SparseArray;

    .line 2276
    :goto_1
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->P:Landroid/view/View;

    iget-object v1, p0, Landroidx/fragment/app/j;->A:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 2277
    iget-object v0, p0, Landroidx/fragment/app/j;->A:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2278
    iget-object v0, p0, Landroidx/fragment/app/j;->A:Landroid/util/SparseArray;

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->m:Landroid/util/SparseArray;

    .line 2279
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/j;->A:Landroid/util/SparseArray;

    goto :goto_0

    .line 2274
    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/j;->A:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_1
.end method

.method s(Landroidx/fragment/app/Fragment;)Landroid/os/Bundle;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2284
    .line 2286
    iget-object v0, p0, Landroidx/fragment/app/j;->z:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 2287
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/j;->z:Landroid/os/Bundle;

    .line 2289
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j;->z:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->n(Landroid/os/Bundle;)V

    .line 2290
    iget-object v0, p0, Landroidx/fragment/app/j;->z:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v2}, Landroidx/fragment/app/j;->d(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 2291
    iget-object v0, p0, Landroidx/fragment/app/j;->z:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2292
    iget-object v0, p0, Landroidx/fragment/app/j;->z:Landroid/os/Bundle;

    .line 2293
    iput-object v1, p0, Landroidx/fragment/app/j;->z:Landroid/os/Bundle;

    .line 2296
    :goto_0
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 2297
    invoke-virtual {p0, p1}, Landroidx/fragment/app/j;->r(Landroidx/fragment/app/Fragment;)V

    .line 2299
    :cond_1
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->m:Landroid/util/SparseArray;

    if-eqz v1, :cond_3

    .line 2300
    if-nez v0, :cond_2

    .line 2301
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2303
    :cond_2
    const-string/jumbo v1, "android:view_state"

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->m:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 2306
    :cond_3
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->R:Z

    if-nez v1, :cond_5

    .line 2307
    if-nez v0, :cond_4

    .line 2308
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2311
    :cond_4
    const-string/jumbo v1, "android:user_visible_hint"

    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->R:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2314
    :cond_5
    return-object v0

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method public s()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2623
    iput-boolean v0, p0, Landroidx/fragment/app/j;->s:Z

    .line 2624
    iput-boolean v0, p0, Landroidx/fragment/app/j;->t:Z

    .line 2625
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroidx/fragment/app/j;->e(I)V

    .line 2626
    return-void
.end method

.method public t()V
    .locals 1

    .prologue
    .line 2629
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroidx/fragment/app/j;->e(I)V

    .line 2630
    return-void
.end method

.method public t(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .prologue
    .line 2795
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/h;

    if-eqz v0, :cond_1

    .line 2796
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->v()Landroidx/fragment/app/i;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 2797
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2800
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/j;->q:Landroidx/fragment/app/Fragment;

    .line 2801
    iput-object p1, p0, Landroidx/fragment/app/j;->q:Landroidx/fragment/app/Fragment;

    .line 2802
    invoke-direct {p0, v0}, Landroidx/fragment/app/j;->v(Landroidx/fragment/app/Fragment;)V

    .line 2803
    iget-object v0, p0, Landroidx/fragment/app/j;->q:Landroidx/fragment/app/Fragment;

    invoke-direct {p0, v0}, Landroidx/fragment/app/j;->v(Landroidx/fragment/app/Fragment;)V

    .line 2804
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 460
    const-string/jumbo v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    const-string/jumbo v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    iget-object v1, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 464
    iget-object v1, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/Fragment;

    invoke-static {v1, v0}, Landroidx/core/g/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 468
    :goto_0
    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 466
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-static {v1, v0}, Landroidx/core/g/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method

.method public u()V
    .locals 1

    .prologue
    .line 2633
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/j;->t:Z

    .line 2634
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroidx/fragment/app/j;->e(I)V

    .line 2635
    return-void
.end method

.method public v()V
    .locals 1

    .prologue
    .line 2638
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/fragment/app/j;->e(I)V

    .line 2639
    return-void
.end method

.method public w()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2642
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/j;->u:Z

    .line 2643
    invoke-virtual {p0}, Landroidx/fragment/app/j;->k()Z

    .line 2644
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/fragment/app/j;->e(I)V

    .line 2645
    iput-object v1, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    .line 2646
    iput-object v1, p0, Landroidx/fragment/app/j;->o:Landroidx/fragment/app/e;

    .line 2647
    iput-object v1, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/Fragment;

    .line 2648
    iget-object v0, p0, Landroidx/fragment/app/j;->F:Landroidx/activity/OnBackPressedDispatcher;

    if-eqz v0, :cond_0

    .line 2651
    iget-object v0, p0, Landroidx/fragment/app/j;->G:Landroidx/activity/c;

    invoke-virtual {v0}, Landroidx/activity/c;->b()V

    .line 2652
    iput-object v1, p0, Landroidx/fragment/app/j;->F:Landroidx/activity/OnBackPressedDispatcher;

    .line 2654
    :cond_0
    return-void
.end method

.method public x()V
    .locals 2

    .prologue
    .line 2694
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 2695
    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 2696
    if-eqz v0, :cond_0

    .line 2697
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->ac()V

    .line 2694
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2700
    :cond_1
    return-void
.end method

.method y()V
    .locals 1

    .prologue
    .line 2813
    invoke-direct {p0}, Landroidx/fragment/app/j;->C()V

    .line 2815
    iget-object v0, p0, Landroidx/fragment/app/j;->q:Landroidx/fragment/app/Fragment;

    invoke-direct {p0, v0}, Landroidx/fragment/app/j;->v(Landroidx/fragment/app/Fragment;)V

    .line 2816
    return-void
.end method

.method public z()Landroidx/fragment/app/Fragment;
    .locals 1

    .prologue
    .line 2821
    iget-object v0, p0, Landroidx/fragment/app/j;->q:Landroidx/fragment/app/Fragment;

    return-object v0
.end method
