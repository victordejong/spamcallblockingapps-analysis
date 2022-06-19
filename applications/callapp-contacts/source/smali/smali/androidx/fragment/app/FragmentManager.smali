.class public abstract Landroidx/fragment/app/FragmentManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/FragmentManager$b;,
        Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;,
        Landroidx/fragment/app/FragmentManager$f;,
        Landroidx/fragment/app/FragmentManager$e;,
        Landroidx/fragment/app/FragmentManager$d;,
        Landroidx/fragment/app/FragmentManager$c;,
        Landroidx/fragment/app/FragmentManager$a;
    }
.end annotation


# static fields
.field static a:Z = true

.field private static x:Z = false


# instance fields
.field private A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final B:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private C:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final D:Landroidx/fragment/app/t$a;

.field private final E:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/fragment/app/m;",
            ">;"
        }
    .end annotation
.end field

.field private F:Landroidx/fragment/app/g;

.field private G:Landroidx/fragment/app/g;

.field private H:Landroidx/fragment/app/aa;

.field private I:Landroidx/fragment/app/aa;

.field private J:Z

.field private K:Z

.field private L:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;"
        }
    .end annotation
.end field

.field private M:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private N:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private O:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/FragmentManager$f;",
            ">;"
        }
    .end annotation
.end field

.field private P:Ljava/lang/Runnable;

.field public final b:Landroidx/fragment/app/r;

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;"
        }
    .end annotation
.end field

.field final d:Landroidx/fragment/app/i;

.field e:Landroidx/activity/OnBackPressedDispatcher;

.field final f:Landroidx/activity/b;

.field final g:Ljava/util/concurrent/atomic/AtomicInteger;

.field final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/HashSet<",
            "Landroidx/core/os/a;",
            ">;>;"
        }
    .end annotation
.end field

.field public final j:Landroidx/fragment/app/j;

.field k:I

.field l:Landroidx/fragment/app/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/fragment/app/h<",
            "*>;"
        }
    .end annotation
.end field

.field m:Landroidx/fragment/app/e;

.field n:Landroidx/fragment/app/Fragment;

.field o:Landroidx/fragment/app/Fragment;

.field p:Landroidx/activity/result/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/b<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field q:Landroidx/activity/result/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/b<",
            "Landroidx/activity/result/IntentSenderRequest;",
            ">;"
        }
    .end annotation
.end field

.field r:Landroidx/activity/result/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/b<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field s:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;",
            ">;"
        }
    .end annotation
.end field

.field t:Z

.field u:Z

.field public v:Z

.field w:Landroidx/fragment/app/l;

.field private final y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/FragmentManager$d;",
            ">;"
        }
    .end annotation
.end field

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->y:Ljava/util/ArrayList;

    .line 426
    new-instance v0, Landroidx/fragment/app/r;

    invoke-direct {v0}, Landroidx/fragment/app/r;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    .line 429
    new-instance v0, Landroidx/fragment/app/i;

    invoke-direct {v0, p0}, Landroidx/fragment/app/i;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->d:Landroidx/fragment/app/i;

    .line 432
    new-instance v0, Landroidx/fragment/app/FragmentManager$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/FragmentManager$1;-><init>(Landroidx/fragment/app/FragmentManager;Z)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->f:Landroidx/activity/b;

    .line 440
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 442
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 443
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->h:Ljava/util/Map;

    .line 444
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 445
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->B:Ljava/util/Map;

    .line 448
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 449
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->i:Ljava/util/Map;

    .line 450
    new-instance v0, Landroidx/fragment/app/FragmentManager$4;

    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentManager$4;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->D:Landroidx/fragment/app/t$a;

    .line 465
    new-instance v0, Landroidx/fragment/app/j;

    invoke-direct {v0, p0}, Landroidx/fragment/app/j;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->j:Landroidx/fragment/app/j;

    .line 467
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->E:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, -0x1

    .line 470
    iput v0, p0, Landroidx/fragment/app/FragmentManager;->k:I

    const/4 v0, 0x0

    .line 477
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->F:Landroidx/fragment/app/g;

    .line 478
    new-instance v1, Landroidx/fragment/app/FragmentManager$5;

    invoke-direct {v1, p0}, Landroidx/fragment/app/FragmentManager$5;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v1, p0, Landroidx/fragment/app/FragmentManager;->G:Landroidx/fragment/app/g;

    .line 486
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->H:Landroidx/fragment/app/aa;

    .line 487
    new-instance v0, Landroidx/fragment/app/FragmentManager$7;

    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentManager$7;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->I:Landroidx/fragment/app/aa;

    .line 500
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->s:Ljava/util/ArrayDeque;

    .line 521
    new-instance v0, Landroidx/fragment/app/FragmentManager$8;

    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentManager$8;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->P:Ljava/lang/Runnable;

    return-void
.end method

.method private A()Z
    .locals 4

    .line 3445
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    invoke-virtual {v0}, Landroidx/fragment/app/r;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_1

    .line 3447
    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->w(Landroidx/fragment/app/Fragment;)Z

    move-result v2

    :cond_1
    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroidx/b/b;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II",
            "Landroidx/b/b<",
            "Landroidx/fragment/app/Fragment;",
            ">;)I"
        }
    .end annotation

    add-int/lit8 v0, p4, -0x1

    move v1, p4

    :goto_0
    if-lt v0, p3, :cond_7

    .line 2293
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/a;

    .line 2294
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 17660
    :goto_1
    iget-object v6, v2, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v5, v6, :cond_1

    .line 17661
    iget-object v6, v2, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/s$a;

    .line 17662
    invoke-static {v6}, Landroidx/fragment/app/a;->a(Landroidx/fragment/app/s$a;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_2

    add-int/lit8 v5, v0, 0x1

    .line 2296
    invoke-virtual {v2, p1, v5, p4}, Landroidx/fragment/app/a;->a(Ljava/util/ArrayList;II)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_3

    :cond_2
    const/4 v7, 0x0

    :goto_3
    if-eqz v7, :cond_6

    .line 2298
    iget-object v5, p0, Landroidx/fragment/app/FragmentManager;->O:Ljava/util/ArrayList;

    if-nez v5, :cond_3

    .line 2299
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroidx/fragment/app/FragmentManager;->O:Ljava/util/ArrayList;

    .line 2301
    :cond_3
    new-instance v5, Landroidx/fragment/app/FragmentManager$f;

    invoke-direct {v5, v2, v3}, Landroidx/fragment/app/FragmentManager$f;-><init>(Landroidx/fragment/app/a;Z)V

    .line 2303
    iget-object v6, p0, Landroidx/fragment/app/FragmentManager;->O:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2304
    invoke-virtual {v2, v5}, Landroidx/fragment/app/a;->a(Landroidx/fragment/app/Fragment$c;)V

    if-eqz v3, :cond_4

    .line 2308
    invoke-virtual {v2}, Landroidx/fragment/app/a;->f()V

    goto :goto_4

    .line 2310
    :cond_4
    invoke-virtual {v2, v4}, Landroidx/fragment/app/a;->a(Z)V

    :goto_4
    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_5

    .line 2316
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2317
    invoke-virtual {p1, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2321
    :cond_5
    invoke-direct {p0, p5}, Landroidx/fragment/app/FragmentManager;->b(Landroidx/b/b;)V

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_7
    return v1
.end method

.method static a(Landroid/view/View;)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1013
    sget v0, Landroidx/fragment/a$b;->fragment_container_view_tag:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    .line 1014
    instance-of v0, p0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 1015
    check-cast p0, Landroidx/fragment/app/Fragment;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic a(Landroidx/fragment/app/FragmentManager;)Ljava/util/Map;
    .locals 0

    .line 96
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->h:Ljava/util/Map;

    return-object p0
.end method

.method private a(Ljava/util/ArrayList;II)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;II)",
            "Ljava/util/Set<",
            "Landroidx/fragment/app/z;",
            ">;"
        }
    .end annotation

    .line 2240
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_0
    if-ge p2, p3, :cond_2

    .line 2242
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/a;

    .line 2243
    iget-object v1, v1, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/s$a;

    .line 2244
    iget-object v2, v2, Landroidx/fragment/app/s$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_0

    .line 2246
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 2248
    invoke-static {v2, p0}, Landroidx/fragment/app/z;->a(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/z;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static a(Landroidx/b/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/b/b<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 2265
    invoke-virtual {p0}, Landroidx/b/b;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 17335
    iget-object v2, p0, Landroidx/b/b;->a:[Ljava/lang/Object;

    aget-object v2, v2, v1

    .line 2267
    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 2268
    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez v3, :cond_0

    .line 2269
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v3

    .line 2270
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v4

    iput v4, v2, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v2, 0x0

    .line 2271
    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroidx/fragment/app/Fragment;I)V
    .locals 8

    .line 1314
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/r;->c(Ljava/lang/String;)Landroidx/fragment/app/p;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1320
    new-instance v0, Landroidx/fragment/app/p;

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->j:Landroidx/fragment/app/j;

    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    invoke-direct {v0, v2, v3, p1}, Landroidx/fragment/app/p;-><init>(Landroidx/fragment/app/j;Landroidx/fragment/app/r;Landroidx/fragment/app/Fragment;)V

    .line 8159
    iput v1, v0, Landroidx/fragment/app/p;->b:I

    .line 1333
    :cond_0
    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    const/4 v3, 0x2

    if-eqz v2, :cond_1

    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mInLayout:Z

    if-eqz v2, :cond_1

    iget v2, p1, Landroidx/fragment/app/Fragment;->mState:I

    if-ne v2, v3, :cond_1

    .line 1334
    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1336
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/p;->a()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1337
    iget v2, p1, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v4, 0x3

    const/4 v5, 0x5

    const/4 v6, 0x4

    if-gt v2, p2, :cond_a

    .line 1339
    iget v2, p1, Landroidx/fragment/app/Fragment;->mState:I

    if-ge v2, p2, :cond_2

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->i:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1343
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->s(Landroidx/fragment/app/Fragment;)V

    .line 1345
    :cond_2
    iget v2, p1, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v7, -0x1

    if-eq v2, v7, :cond_3

    if-eqz v2, :cond_4

    if-eq v2, v1, :cond_5

    if-eq v2, v3, :cond_7

    if-eq v2, v6, :cond_8

    if-eq v2, v5, :cond_9

    goto/16 :goto_1

    :cond_3
    if-ltz p2, :cond_4

    .line 1348
    invoke-virtual {v0}, Landroidx/fragment/app/p;->d()V

    :cond_4
    if-lez p2, :cond_5

    .line 1353
    invoke-virtual {v0}, Landroidx/fragment/app/p;->e()V

    :cond_5
    if-ltz p2, :cond_6

    .line 1361
    invoke-virtual {v0}, Landroidx/fragment/app/p;->c()V

    :cond_6
    if-le p2, v1, :cond_7

    .line 1365
    invoke-virtual {v0}, Landroidx/fragment/app/p;->f()V

    :cond_7
    if-le p2, v3, :cond_8

    .line 1370
    invoke-virtual {v0}, Landroidx/fragment/app/p;->g()V

    :cond_8
    if-le p2, v6, :cond_9

    .line 1375
    invoke-virtual {v0}, Landroidx/fragment/app/p;->h()V

    :cond_9
    if-le p2, v5, :cond_18

    .line 1380
    invoke-virtual {v0}, Landroidx/fragment/app/p;->i()V

    goto/16 :goto_1

    .line 1383
    :cond_a
    iget v2, p1, Landroidx/fragment/app/Fragment;->mState:I

    if-le v2, p2, :cond_18

    .line 1384
    iget v2, p1, Landroidx/fragment/app/Fragment;->mState:I

    if-eqz v2, :cond_16

    if-eq v2, v1, :cond_14

    if-eq v2, v3, :cond_f

    if-eq v2, v6, :cond_d

    if-eq v2, v5, :cond_c

    const/4 v7, 0x7

    if-eq v2, v7, :cond_b

    goto/16 :goto_1

    :cond_b
    if-ge p2, v7, :cond_c

    .line 1387
    invoke-virtual {v0}, Landroidx/fragment/app/p;->j()V

    :cond_c
    if-ge p2, v5, :cond_d

    .line 1392
    invoke-virtual {v0}, Landroidx/fragment/app/p;->k()V

    :cond_d
    if-ge p2, v6, :cond_f

    .line 1397
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1398
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "movefrom ACTIVITY_CREATED: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1400
    :cond_e
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_f

    .line 1403
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->l:Landroidx/fragment/app/h;

    invoke-virtual {v2}, Landroidx/fragment/app/h;->b()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v2, :cond_f

    .line 1404
    invoke-virtual {v0}, Landroidx/fragment/app/p;->n()V

    :cond_f
    if-ge p2, v3, :cond_14

    const/4 v2, 0x0

    .line 1412
    iget-object v5, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v5, :cond_13

    iget-object v5, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v5, :cond_13

    .line 1414
    iget-object v5, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v6, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 1415
    iget-object v5, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->clearAnimation()V

    .line 1417
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isRemovingParent()Z

    move-result v5

    if-nez v5, :cond_13

    .line 1418
    iget v5, p0, Landroidx/fragment/app/FragmentManager;->k:I

    const/4 v6, 0x0

    if-ltz v5, :cond_10

    iget-boolean v5, p0, Landroidx/fragment/app/FragmentManager;->v:Z

    if-nez v5, :cond_10

    iget-object v5, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1419
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_10

    iget v5, p1, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_10

    .line 1421
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->l:Landroidx/fragment/app/h;

    .line 8247
    iget-object v2, v2, Landroidx/fragment/app/h;->c:Landroid/content/Context;

    const/4 v5, 0x0

    .line 1422
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getPopDirection()Z

    move-result v7

    .line 1421
    invoke-static {v2, p1, v5, v7}, Landroidx/fragment/app/d;->a(Landroid/content/Context;Landroidx/fragment/app/Fragment;ZZ)Landroidx/fragment/app/d$a;

    move-result-object v2

    .line 1424
    :cond_10
    iput v6, p1, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    .line 1428
    iget-object v5, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1429
    iget-object v6, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_11

    .line 1431
    iget-object v7, p0, Landroidx/fragment/app/FragmentManager;->D:Landroidx/fragment/app/t$a;

    invoke-static {p1, v2, v7}, Landroidx/fragment/app/d;->a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/d$a;Landroidx/fragment/app/t$a;)V

    .line 1434
    :cond_11
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1435
    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1436
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Removing view "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1444
    :cond_12
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eq v5, v2, :cond_13

    return-void

    .line 1451
    :cond_13
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->i:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_14

    .line 1452
    invoke-virtual {v0}, Landroidx/fragment/app/p;->o()V

    :cond_14
    if-gtz p2, :cond_16

    .line 1458
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->i:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_15

    goto :goto_0

    .line 1462
    :cond_15
    invoke-virtual {v0}, Landroidx/fragment/app/p;->p()V

    :cond_16
    move v1, p2

    :goto_0
    if-gez v1, :cond_17

    .line 1468
    invoke-virtual {v0}, Landroidx/fragment/app/p;->q()V

    :cond_17
    move p2, v1

    .line 1473
    :cond_18
    :goto_1
    iget v0, p1, Landroidx/fragment/app/Fragment;->mState:I

    if-eq v0, p2, :cond_1a

    .line 1474
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1475
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "moveToState: Fragment state for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not updated inline; expected state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroidx/fragment/app/Fragment;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1478
    :cond_19
    iput p2, p1, Landroidx/fragment/app/Fragment;->mState:I

    :cond_1a
    return-void
.end method

.method private a(Landroidx/fragment/app/m;)V
    .locals 1

    .line 3415
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->E:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Ljava/lang/RuntimeException;)V
    .locals 6

    .line 529
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Activity state:"

    .line 530
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    new-instance v0, Landroidx/fragment/app/y;

    invoke-direct {v0, v1}, Landroidx/fragment/app/y;-><init>(Ljava/lang/String;)V

    .line 532
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 533
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->l:Landroidx/fragment/app/h;

    const-string v3, "Failed dumping state"

    const/4 v4, 0x0

    const-string v5, "  "

    if-eqz v0, :cond_0

    :try_start_0
    new-array v4, v4, [Ljava/lang/String;

    .line 535
    invoke-virtual {v0, v5, v2, v4}, Landroidx/fragment/app/h;->a(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 537
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    new-array v4, v4, [Ljava/lang/String;

    .line 541
    invoke-virtual {p0, v5, v0, v2, v4}, Landroidx/fragment/app/FragmentManager;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 543
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 546
    :goto_0
    throw p1
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 2022
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->O:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_6

    .line 2024
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->O:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/FragmentManager$f;

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eqz p1, :cond_1

    .line 2025
    iget-boolean v6, v3, Landroidx/fragment/app/FragmentManager$f;->a:Z

    if-nez v6, :cond_1

    .line 2026
    iget-object v6, v3, Landroidx/fragment/app/FragmentManager$f;->b:Landroidx/fragment/app/a;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-eq v6, v5, :cond_1

    if-eqz p2, :cond_1

    .line 2027
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2028
    iget-object v5, p0, Landroidx/fragment/app/FragmentManager;->O:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, -0x1

    .line 2031
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager$f;->d()V

    goto :goto_3

    .line 14584
    :cond_1
    iget v6, v3, Landroidx/fragment/app/FragmentManager$f;->c:I

    if-nez v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_3

    if-eqz p1, :cond_5

    .line 2035
    iget-object v6, v3, Landroidx/fragment/app/FragmentManager$f;->b:Landroidx/fragment/app/a;

    .line 2036
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, p1, v1, v7}, Landroidx/fragment/app/a;->a(Ljava/util/ArrayList;II)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2037
    :cond_3
    iget-object v6, p0, Landroidx/fragment/app/FragmentManager;->O:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, -0x1

    if-eqz p1, :cond_4

    .line 2041
    iget-boolean v6, v3, Landroidx/fragment/app/FragmentManager$f;->a:Z

    if-nez v6, :cond_4

    iget-object v6, v3, Landroidx/fragment/app/FragmentManager$f;->b:Landroidx/fragment/app/a;

    .line 2042
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-eq v6, v5, :cond_4

    if-eqz p2, :cond_4

    .line 2044
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2046
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager$f;->d()V

    goto :goto_3

    .line 2048
    :cond_4
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager$f;->c()V

    :cond_5
    :goto_3
    add-int/2addr v2, v4

    goto :goto_1

    :cond_6
    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v15, p1

    move-object/from16 v5, p2

    move/from16 v4, p3

    move/from16 v3, p4

    .line 2120
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/a;

    iget-boolean v2, v0, Landroidx/fragment/app/a;->s:Z

    .line 2122
    iget-object v0, v6, Landroidx/fragment/app/FragmentManager;->N:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Landroidx/fragment/app/FragmentManager;->N:Ljava/util/ArrayList;

    goto :goto_0

    .line 2125
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2127
    :goto_0
    iget-object v0, v6, Landroidx/fragment/app/FragmentManager;->N:Ljava/util/ArrayList;

    iget-object v1, v6, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    invoke-virtual {v1}, Landroidx/fragment/app/r;->f()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 15295
    iget-object v0, v6, Landroidx/fragment/app/FragmentManager;->o:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    move v7, v4

    const/16 v16, 0x0

    :goto_1
    const/4 v14, 0x1

    if-ge v7, v3, :cond_4

    .line 2130
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/a;

    .line 2131
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_1

    .line 2133
    iget-object v9, v6, Landroidx/fragment/app/FragmentManager;->N:Ljava/util/ArrayList;

    invoke-virtual {v8, v9, v0}, Landroidx/fragment/app/a;->a(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_2

    .line 2135
    :cond_1
    iget-object v9, v6, Landroidx/fragment/app/FragmentManager;->N:Ljava/util/ArrayList;

    invoke-virtual {v8, v9, v0}, Landroidx/fragment/app/a;->b(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    :goto_2
    if-nez v16, :cond_3

    .line 2137
    iget-boolean v8, v8, Landroidx/fragment/app/a;->j:Z

    if-eqz v8, :cond_2

    goto :goto_3

    :cond_2
    const/16 v16, 0x0

    goto :goto_4

    :cond_3
    :goto_3
    const/16 v16, 0x1

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2139
    :cond_4
    iget-object v0, v6, Landroidx/fragment/app/FragmentManager;->N:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-nez v2, :cond_8

    .line 2141
    iget v0, v6, Landroidx/fragment/app/FragmentManager;->k:I

    if-lez v0, :cond_8

    .line 2142
    sget-boolean v0, Landroidx/fragment/app/FragmentManager;->a:Z

    if-eqz v0, :cond_7

    move v0, v4

    :goto_5
    if-ge v0, v3, :cond_8

    .line 2146
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/a;

    .line 2147
    iget-object v1, v1, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/s$a;

    .line 2148
    iget-object v7, v7, Landroidx/fragment/app/s$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v7, :cond_5

    .line 2149
    iget-object v8, v7, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v8, :cond_5

    .line 2151
    invoke-virtual {v6, v7}, Landroidx/fragment/app/FragmentManager;->g(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/p;

    move-result-object v7

    .line 2152
    iget-object v8, v6, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    invoke-virtual {v8, v7}, Landroidx/fragment/app/r;->a(Landroidx/fragment/app/p;)V

    goto :goto_6

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2157
    :cond_7
    iget-object v0, v6, Landroidx/fragment/app/FragmentManager;->l:Landroidx/fragment/app/h;

    .line 16247
    iget-object v7, v0, Landroidx/fragment/app/h;->c:Landroid/content/Context;

    .line 2157
    iget-object v8, v6, Landroidx/fragment/app/FragmentManager;->m:Landroidx/fragment/app/e;

    const/4 v13, 0x0

    iget-object v0, v6, Landroidx/fragment/app/FragmentManager;->D:Landroidx/fragment/app/t$a;

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    const/4 v1, 0x1

    move-object v14, v0

    invoke-static/range {v7 .. v14}, Landroidx/fragment/app/t;->a(Landroid/content/Context;Landroidx/fragment/app/e;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZLandroidx/fragment/app/t$a;)V

    goto :goto_7

    :cond_8
    const/4 v1, 0x1

    .line 2162
    :goto_7
    invoke-static/range {p1 .. p4}, Landroidx/fragment/app/FragmentManager;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2164
    sget-boolean v0, Landroidx/fragment/app/FragmentManager;->a:Z

    if-eqz v0, :cond_f

    add-int/lit8 v0, v3, -0x1

    .line 2167
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v2, v4

    :goto_8
    if-ge v2, v3, :cond_d

    .line 2171
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/a;

    if-eqz v0, :cond_a

    .line 2174
    iget-object v8, v7, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v1

    :goto_9
    if-ltz v8, :cond_c

    .line 2175
    iget-object v9, v7, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/fragment/app/s$a;

    .line 2176
    iget-object v9, v9, Landroidx/fragment/app/s$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v9, :cond_9

    .line 2179
    invoke-virtual {v6, v9}, Landroidx/fragment/app/FragmentManager;->g(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/p;

    move-result-object v9

    .line 2180
    invoke-virtual {v9}, Landroidx/fragment/app/p;->b()V

    :cond_9
    add-int/lit8 v8, v8, -0x1

    goto :goto_9

    .line 2184
    :cond_a
    iget-object v7, v7, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_b
    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/s$a;

    .line 2185
    iget-object v8, v8, Landroidx/fragment/app/s$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v8, :cond_b

    .line 2188
    invoke-virtual {v6, v8}, Landroidx/fragment/app/FragmentManager;->g(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/p;

    move-result-object v8

    .line 2189
    invoke-virtual {v8}, Landroidx/fragment/app/p;->b()V

    goto :goto_a

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 2196
    :cond_d
    iget v2, v6, Landroidx/fragment/app/FragmentManager;->k:I

    invoke-virtual {v6, v2, v1}, Landroidx/fragment/app/FragmentManager;->a(IZ)V

    .line 2197
    invoke-direct {v6, v15, v4, v3}, Landroidx/fragment/app/FragmentManager;->a(Ljava/util/ArrayList;II)Ljava/util/Set;

    move-result-object v1

    .line 2199
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/z;

    .line 17225
    iput-boolean v0, v2, Landroidx/fragment/app/z;->c:Z

    .line 2201
    invoke-virtual {v2}, Landroidx/fragment/app/z;->b()V

    .line 2202
    invoke-virtual {v2}, Landroidx/fragment/app/z;->d()V

    goto :goto_b

    :cond_e
    move v0, v3

    move-object v3, v5

    goto/16 :goto_e

    :cond_f
    if-eqz v2, :cond_10

    .line 2207
    new-instance v7, Landroidx/b/b;

    invoke-direct {v7}, Landroidx/b/b;-><init>()V

    .line 2208
    invoke-direct {v6, v7}, Landroidx/fragment/app/FragmentManager;->b(Landroidx/b/b;)V

    move-object/from16 v0, p0

    const/4 v14, 0x1

    move-object/from16 v1, p1

    move v8, v2

    move-object/from16 v2, p2

    move v13, v3

    move/from16 v3, p3

    move v12, v4

    move/from16 v4, p4

    move-object v11, v5

    move-object v5, v7

    .line 2209
    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/FragmentManager;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroidx/b/b;)I

    move-result v0

    .line 2211
    invoke-static {v7}, Landroidx/fragment/app/FragmentManager;->a(Landroidx/b/b;)V

    goto :goto_c

    :cond_10
    move v8, v2

    move v13, v3

    move v12, v4

    move-object v11, v5

    const/4 v14, 0x1

    move v0, v13

    :goto_c
    if-eq v0, v12, :cond_12

    if-eqz v8, :cond_12

    .line 2216
    iget v1, v6, Landroidx/fragment/app/FragmentManager;->k:I

    if-lez v1, :cond_11

    .line 2217
    iget-object v1, v6, Landroidx/fragment/app/FragmentManager;->l:Landroidx/fragment/app/h;

    .line 17247
    iget-object v7, v1, Landroidx/fragment/app/h;->c:Landroid/content/Context;

    .line 2217
    iget-object v8, v6, Landroidx/fragment/app/FragmentManager;->m:Landroidx/fragment/app/e;

    const/4 v1, 0x1

    iget-object v2, v6, Landroidx/fragment/app/FragmentManager;->D:Landroidx/fragment/app/t$a;

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object v3, v11

    move/from16 v11, p3

    move v12, v0

    move v0, v13

    move v13, v1

    const/4 v1, 0x1

    move-object v14, v2

    invoke-static/range {v7 .. v14}, Landroidx/fragment/app/t;->a(Landroid/content/Context;Landroidx/fragment/app/e;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZLandroidx/fragment/app/t$a;)V

    goto :goto_d

    :cond_11
    move-object v3, v11

    move v0, v13

    const/4 v1, 0x1

    .line 2221
    :goto_d
    iget v2, v6, Landroidx/fragment/app/FragmentManager;->k:I

    invoke-virtual {v6, v2, v1}, Landroidx/fragment/app/FragmentManager;->a(IZ)V

    goto :goto_e

    :cond_12
    move-object v3, v11

    move v0, v13

    :goto_e
    move/from16 v1, p3

    :goto_f
    if-ge v1, v0, :cond_14

    .line 2226
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/a;

    .line 2227
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 2228
    iget v4, v2, Landroidx/fragment/app/a;->c:I

    if-ltz v4, :cond_13

    const/4 v4, -0x1

    .line 2229
    iput v4, v2, Landroidx/fragment/app/a;->c:I

    .line 2231
    :cond_13
    invoke-virtual {v2}, Landroidx/fragment/app/a;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_14
    if-eqz v16, :cond_15

    .line 2234
    invoke-direct/range {p0 .. p0}, Landroidx/fragment/app/FragmentManager;->z()V

    :cond_15
    return-void
.end method

.method static a(I)Z
    .locals 1

    .line 141
    sget-boolean v0, Landroidx/fragment/app/FragmentManager;->x:Z

    if-nez v0, :cond_1

    const-string v0, "FragmentManager"

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic b(Landroidx/fragment/app/FragmentManager;)Ljava/util/Map;
    .locals 0

    .line 96
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->B:Ljava/util/Map;

    return-object p0
.end method

.method private b(Landroidx/b/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/b/b<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 2458
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->k:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x5

    .line 2462
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2463
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    invoke-virtual {v1}, Landroidx/fragment/app/r;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 2464
    iget v3, v2, Landroidx/fragment/app/Fragment;->mState:I

    if-ge v3, v0, :cond_1

    .line 2465
    invoke-direct {p0, v2, v0}, Landroidx/fragment/app/FragmentManager;->a(Landroidx/fragment/app/Fragment;I)V

    .line 2466
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v3, :cond_1

    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v3, :cond_1

    .line 2467
    invoke-virtual {p1, v2}, Landroidx/b/b;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private b(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 2070
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2074
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 2079
    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/FragmentManager;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2081
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 2084
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    iget-boolean v3, v3, Landroidx/fragment/app/a;->s:Z

    if-nez v3, :cond_3

    if-eq v2, v1, :cond_1

    .line 2088
    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/fragment/app/FragmentManager;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 2093
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    if-ge v2, v0, :cond_2

    .line 2095
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2096
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    iget-boolean v3, v3, Landroidx/fragment/app/a;->s:Z

    if-nez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2100
    :cond_2
    invoke-direct {p0, p1, p2, v1, v2}, Landroidx/fragment/app/FragmentManager;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    add-int/lit8 v1, v2, -0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eq v2, v0, :cond_5

    .line 2106
    invoke-direct {p0, p1, p2, v2, v0}, Landroidx/fragment/app/FragmentManager;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_5
    return-void

    .line 2075
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Internal error with the back stack records"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static b(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    :goto_0
    if-ge p2, p3, :cond_2

    .line 2394
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/a;

    .line 2395
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    .line 2397
    invoke-virtual {v0, v1}, Landroidx/fragment/app/a;->a(I)V

    add-int/lit8 v1, p3, -0x1

    if-ne p2, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 2401
    :goto_1
    invoke-virtual {v0, v2}, Landroidx/fragment/app/a;->a(Z)V

    goto :goto_2

    .line 2403
    :cond_1
    invoke-virtual {v0, v2}, Landroidx/fragment/app/a;->a(I)V

    .line 2404
    invoke-virtual {v0}, Landroidx/fragment/app/a;->f()V

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method static b(Landroidx/fragment/app/Fragment;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 652
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isMenuVisible()Z

    move-result p0

    return p0
.end method

.method static synthetic c(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/r;
    .locals 0

    .line 96
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    return-object p0
.end method

.method private c(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 2537
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->y:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2538
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2539
    monitor-exit v0

    return v2

    .line 2542
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 2544
    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->y:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/FragmentManager$d;

    invoke-interface {v4, p1, p2}, Landroidx/fragment/app/FragmentManager$d;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v4

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2546
    :cond_1
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->y:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2547
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->l:Landroidx/fragment/app/h;

    .line 19252
    iget-object p1, p1, Landroidx/fragment/app/h;->d:Landroid/os/Handler;

    .line 2547
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->P:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2548
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private d(Z)V
    .locals 2

    .line 1930
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->z:Z

    if-nez v0, :cond_5

    .line 1934
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->l:Landroidx/fragment/app/h;

    if-nez v0, :cond_1

    .line 1935
    iget-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->v:Z

    if-eqz p1, :cond_0

    .line 1936
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager has been destroyed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1938
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager has not been attached to a host."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1942
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->l:Landroidx/fragment/app/h;

    .line 14252
    iget-object v1, v1, Landroidx/fragment/app/h;->d:Landroid/os/Handler;

    .line 1942
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_4

    if-nez p1, :cond_2

    .line 1947
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->t()V

    .line 1950
    :cond_2
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->L:Ljava/util/ArrayList;

    if-nez p1, :cond_3

    .line 1951
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->L:Ljava/util/ArrayList;

    .line 1952
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->M:Ljava/util/ArrayList;

    :cond_3
    const/4 p1, 0x1

    .line 1954
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->z:Z

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 1956
    :try_start_0
    invoke-direct {p0, v0, v0}, Landroidx/fragment/app/FragmentManager;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1958
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->z:Z

    return-void

    :catchall_0
    move-exception v0

    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->z:Z

    .line 1959
    throw v0

    .line 1943
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must be called from main thread of fragment host"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1931
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager is already executing transactions"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static e(I)I
    .locals 3

    const/16 v0, 0x2002

    const/16 v1, 0x1003

    const/16 v2, 0x1001

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x1001

    goto :goto_0

    :cond_1
    const/16 v0, 0x1003

    :cond_2
    :goto_0
    return v0
.end method

.method static k(Landroidx/fragment/app/Fragment;)V
    .locals 2

    const/4 v0, 0x2

    .line 1764
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "show: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1765
    :cond_0
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1766
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 1769
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    :cond_1
    return-void
.end method

.method private r(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/l;
    .locals 3

    .line 1100
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->w:Landroidx/fragment/app/l;

    .line 6168
    iget-object v1, v0, Landroidx/fragment/app/l;->a:Ljava/util/HashMap;

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/l;

    if-nez v1, :cond_0

    .line 6170
    new-instance v1, Landroidx/fragment/app/l;

    iget-boolean v2, v0, Landroidx/fragment/app/l;->c:Z

    invoke-direct {v1, v2}, Landroidx/fragment/app/l;-><init>(Z)V

    .line 6171
    iget-object v0, v0, Landroidx/fragment/app/l;->a:Ljava/util/HashMap;

    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method private s()V
    .locals 2

    .line 1679
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    invoke-virtual {v0}, Landroidx/fragment/app/r;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/p;

    .line 1680
    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->a(Landroidx/fragment/app/p;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private s(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 1485
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-eqz v0, :cond_1

    .line 1487
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/os/a;

    .line 1488
    invoke-virtual {v2}, Landroidx/core/os/a;->b()V

    goto :goto_0

    .line 1490
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1491
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->d(Landroidx/fragment/app/Fragment;)V

    .line 1492
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private t()V
    .locals 2

    .line 1843
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1844
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private t(Landroidx/fragment/app/Fragment;)V
    .locals 6

    .line 1536
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 1537
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->l:Landroidx/fragment/app/h;

    .line 9247
    iget-object v0, v0, Landroidx/fragment/app/h;->c:Landroid/content/Context;

    .line 1538
    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getPopDirection()Z

    move-result v3

    .line 1537
    invoke-static {v0, p1, v2, v3}, Landroidx/fragment/app/d;->a(Landroid/content/Context;Landroidx/fragment/app/Fragment;ZZ)Landroidx/fragment/app/d$a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1539
    iget-object v2, v0, Landroidx/fragment/app/d$a;->b:Landroid/animation/Animator;

    if-eqz v2, :cond_2

    .line 1540
    iget-object v2, v0, Landroidx/fragment/app/d$a;->b:Landroid/animation/Animator;

    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1541
    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v2, :cond_1

    .line 1542
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isHideReplaced()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1543
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setHideReplaced(Z)V

    goto :goto_0

    .line 1545
    :cond_0
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1546
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1547
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 1550
    iget-object v4, v0, Landroidx/fragment/app/d$a;->b:Landroid/animation/Animator;

    new-instance v5, Landroidx/fragment/app/FragmentManager$9;

    invoke-direct {v5, p0, v2, v3, p1}, Landroidx/fragment/app/FragmentManager$9;-><init>(Landroidx/fragment/app/FragmentManager;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 1562
    :cond_1
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1564
    :goto_0
    iget-object v0, v0, Landroidx/fragment/app/d$a;->b:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    .line 1567
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v3, v0, Landroidx/fragment/app/d$a;->a:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1568
    iget-object v0, v0, Landroidx/fragment/app/d$a;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 1570
    :cond_3
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isHideReplaced()Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x8

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 1573
    :goto_1
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1574
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isHideReplaced()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1575
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setHideReplaced(Z)V

    .line 1579
    :cond_5
    :goto_2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->q(Landroidx/fragment/app/Fragment;)V

    .line 1580
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 1581
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    return-void
.end method

.method private u()V
    .locals 1

    const/4 v0, 0x0

    .line 1987
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->z:Z

    .line 1988
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->M:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1989
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->L:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private u(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 2416
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->v(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2418
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterAnim()I

    move-result v1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getExitAnim()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getPopEnterAnim()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getPopExitAnim()I

    move-result v2

    add-int/2addr v1, v2

    if-lez v1, :cond_1

    .line 2420
    sget v1, Landroidx/fragment/a$b;->visible_removing_fragment_view_tag:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2421
    sget v1, Landroidx/fragment/a$b;->visible_removing_fragment_view_tag:I

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 2423
    :cond_0
    sget v1, Landroidx/fragment/a$b;->visible_removing_fragment_view_tag:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 2424
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getPopDirection()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setPopDirection(Z)V

    :cond_1
    return-void
.end method

.method private v(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;
    .locals 2

    .line 2430
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 2431
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    return-object p1

    .line 2434
    :cond_0
    iget v0, p1, Landroidx/fragment/app/Fragment;->mContainerId:I

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    return-object v1

    .line 2441
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->m:Landroidx/fragment/app/e;

    invoke-virtual {v0}, Landroidx/fragment/app/e;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2442
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->m:Landroidx/fragment/app/e;

    iget p1, p1, Landroidx/fragment/app/Fragment;->mContainerId:I

    invoke-virtual {v0, p1}, Landroidx/fragment/app/e;->a(I)Landroid/view/View;

    move-result-object p1

    .line 2444
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 2445
    check-cast p1, Landroid/view/ViewGroup;

    return-object p1

    :cond_2
    return-object v1
.end method

.method private v()V
    .locals 2

    .line 2477
    sget-boolean v0, Landroidx/fragment/app/FragmentManager;->a:Z

    if-eqz v0, :cond_1

    .line 2478
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->x()Ljava/util/Set;

    move-result-object v0

    .line 2479
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/z;

    .line 2480
    invoke-virtual {v1}, Landroidx/fragment/app/z;->c()V

    goto :goto_0

    :cond_0
    return-void

    .line 2483
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->O:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 2484
    :goto_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2485
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->O:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentManager$f;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager$f;->c()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private w()V
    .locals 2

    .line 2496
    sget-boolean v0, Landroidx/fragment/app/FragmentManager;->a:Z

    if-eqz v0, :cond_1

    .line 2497
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->x()Ljava/util/Set;

    move-result-object v0

    .line 2498
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/z;

    .line 2499
    invoke-virtual {v1}, Landroidx/fragment/app/z;->e()V

    goto :goto_0

    :cond_0
    return-void

    .line 2502
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2503
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 2504
    invoke-direct {p0, v1}, Landroidx/fragment/app/FragmentManager;->s(Landroidx/fragment/app/Fragment;)V

    .line 2505
    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->e(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static w(Landroidx/fragment/app/Fragment;)Z
    .locals 1

    .line 3457
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->A()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private x()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/fragment/app/z;",
            ">;"
        }
    .end annotation

    .line 2512
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2514
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    invoke-virtual {v1}, Landroidx/fragment/app/r;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/p;

    .line 19149
    iget-object v2, v2, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    .line 2515
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 2518
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->r()Landroidx/fragment/app/aa;

    move-result-object v3

    .line 2517
    invoke-static {v2, v3}, Landroidx/fragment/app/z;->a(Landroid/view/ViewGroup;Landroidx/fragment/app/aa;)Landroidx/fragment/app/z;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private y()V
    .locals 1

    .line 2553
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->K:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2554
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->K:Z

    .line 2555
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->s()V

    :cond_0
    return-void
.end method

.method private z()V
    .locals 2

    .line 2560
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->C:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2561
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->C:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2562
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->C:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 4

    .line 954
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 958
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1

    .line 960
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fragment no longer exists for key "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": unique id "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroidx/fragment/app/FragmentManager;->a(Ljava/lang/RuntimeException;)V

    :cond_1
    return-object v0
.end method

.method public final a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1830
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/r;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public final a()Landroidx/fragment/app/s;
    .locals 1

    .line 575
    new-instance v0, Landroidx/fragment/app/a;

    invoke-direct {v0, p0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-object v0
.end method

.method final a(IZ)V
    .locals 3

    .line 1636
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->l:Landroidx/fragment/app/h;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1637
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No activity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 1640
    iget p2, p0, Landroidx/fragment/app/FragmentManager;->k:I

    if-ne p1, p2, :cond_2

    return-void

    .line 1644
    :cond_2
    iput p1, p0, Landroidx/fragment/app/FragmentManager;->k:I

    .line 1646
    sget-boolean p1, Landroidx/fragment/app/FragmentManager;->a:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    .line 1647
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    invoke-virtual {p1}, Landroidx/fragment/app/r;->a()V

    goto :goto_4

    .line 1650
    :cond_3
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    invoke-virtual {p1}, Landroidx/fragment/app/r;->f()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 1651
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->f(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 1657
    :cond_4
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    invoke-virtual {p1}, Landroidx/fragment/app/r;->e()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/p;

    .line 11149
    iget-object v1, v0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    .line 1659
    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-nez v2, :cond_6

    .line 1660
    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->f(Landroidx/fragment/app/Fragment;)V

    .line 1662
    :cond_6
    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x1

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_5

    .line 1664
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/r;->b(Landroidx/fragment/app/p;)V

    goto :goto_2

    .line 1669
    :cond_8
    :goto_4
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->s()V

    .line 1671
    iget-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->J:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->l:Landroidx/fragment/app/h;

    if-eqz p1, :cond_9

    iget v0, p0, Landroidx/fragment/app/FragmentManager;->k:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_9

    .line 1672
    invoke-virtual {p1}, Landroidx/fragment/app/h;->d()V

    .line 1673
    iput-boolean p2, p0, Landroidx/fragment/app/FragmentManager;->J:Z

    :cond_9
    return-void
.end method

.method final a(Landroid/content/res/Configuration;)V
    .locals 2

    .line 3156
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    invoke-virtual {v0}, Landroidx/fragment/app/r;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 3158
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 936
    iget-object v0, p3, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eq v0, p0, :cond_0

    .line 937
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not currently in the FragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->a(Ljava/lang/RuntimeException;)V

    .line 940
    :cond_0
    iget-object p3, p3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final a(Landroid/os/Parcelable;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 2708
    :cond_0
    check-cast p1, Landroidx/fragment/app/FragmentManagerState;

    .line 2709
    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->mActive:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    return-void

    .line 2713
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    .line 22051
    iget-object v0, v0, Landroidx/fragment/app/r;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2714
    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "): "

    const/4 v3, 0x2

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/fragment/app/FragmentState;

    if-eqz v9, :cond_2

    .line 2717
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->w:Landroidx/fragment/app/l;

    iget-object v4, v9, Landroidx/fragment/app/FragmentState;->mWho:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroidx/fragment/app/l;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2719
    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2720
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "restoreSaveState: re-attaching retained "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2723
    :cond_3
    new-instance v4, Landroidx/fragment/app/p;

    iget-object v5, p0, Landroidx/fragment/app/FragmentManager;->j:Landroidx/fragment/app/j;

    iget-object v6, p0, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    invoke-direct {v4, v5, v6, v1, v9}, Landroidx/fragment/app/p;-><init>(Landroidx/fragment/app/j;Landroidx/fragment/app/r;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentState;)V

    goto :goto_1

    .line 2726
    :cond_4
    new-instance v1, Landroidx/fragment/app/p;

    iget-object v5, p0, Landroidx/fragment/app/FragmentManager;->j:Landroidx/fragment/app/j;

    iget-object v6, p0, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->l:Landroidx/fragment/app/h;

    .line 22247
    iget-object v4, v4, Landroidx/fragment/app/h;->c:Landroid/content/Context;

    .line 2727
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 2728
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/g;

    move-result-object v8

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Landroidx/fragment/app/p;-><init>(Landroidx/fragment/app/j;Landroidx/fragment/app/r;Ljava/lang/ClassLoader;Landroidx/fragment/app/g;Landroidx/fragment/app/FragmentState;)V

    .line 23149
    :goto_1
    iget-object v1, v4, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    .line 2731
    iput-object p0, v1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 2732
    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2733
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "restoreSaveState: active ("

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2735
    :cond_5
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->l:Landroidx/fragment/app/h;

    .line 23247
    iget-object v1, v1, Landroidx/fragment/app/h;->c:Landroid/content/Context;

    .line 2735
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/fragment/app/p;->a(Ljava/lang/ClassLoader;)V

    .line 2736
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    invoke-virtual {v1, v4}, Landroidx/fragment/app/r;->a(Landroidx/fragment/app/p;)V

    .line 2740
    iget v1, p0, Landroidx/fragment/app/FragmentManager;->k:I

    .line 24159
    iput v1, v4, Landroidx/fragment/app/p;->b:I

    goto :goto_0

    .line 2746
    :cond_6
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->w:Landroidx/fragment/app/l;

    invoke-virtual {v0}, Landroidx/fragment/app/l;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 2747
    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    iget-object v5, v1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroidx/fragment/app/r;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 2748
    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2749
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Discarding retained Fragment "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " that was not found in the set of active Fragments "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroidx/fragment/app/FragmentManagerState;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2752
    :cond_8
    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->w:Landroidx/fragment/app/l;

    invoke-virtual {v4, v1}, Landroidx/fragment/app/l;->c(Landroidx/fragment/app/Fragment;)V

    .line 2756
    iput-object p0, v1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 2757
    new-instance v4, Landroidx/fragment/app/p;

    iget-object v5, p0, Landroidx/fragment/app/FragmentManager;->j:Landroidx/fragment/app/j;

    iget-object v6, p0, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    invoke-direct {v4, v5, v6, v1}, Landroidx/fragment/app/p;-><init>(Landroidx/fragment/app/j;Landroidx/fragment/app/r;Landroidx/fragment/app/Fragment;)V

    const/4 v5, 0x1

    .line 25159
    iput v5, v4, Landroidx/fragment/app/p;->b:I

    .line 2760
    invoke-virtual {v4}, Landroidx/fragment/app/p;->b()V

    .line 2761
    iput-boolean v5, v1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 2762
    invoke-virtual {v4}, Landroidx/fragment/app/p;->b()V

    goto :goto_2

    .line 2767
    :cond_9
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    iget-object v1, p1, Landroidx/fragment/app/FragmentManagerState;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/r;->a(Ljava/util/List;)V

    .line 2770
    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackState;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 2771
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p1, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackState;

    array-length v4, v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 2772
    :goto_3
    iget-object v4, p1, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackState;

    array-length v4, v4

    if-ge v0, v4, :cond_c

    .line 2773
    iget-object v4, p1, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackState;

    aget-object v4, v4, v0

    invoke-virtual {v4, p0}, Landroidx/fragment/app/BackStackState;->instantiate(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    move-result-object v4

    .line 2774
    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2775
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "restoreAllState: back stack #"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " (index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Landroidx/fragment/app/a;->c:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2777
    new-instance v5, Landroidx/fragment/app/y;

    const-string v6, "FragmentManager"

    invoke-direct {v5, v6}, Landroidx/fragment/app/y;-><init>(Ljava/lang/String;)V

    .line 2778
    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v5, "  "

    .line 2779
    invoke-virtual {v4, v5, v6, v1}, Landroidx/fragment/app/a;->a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 2780
    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V

    .line 2782
    :cond_a
    iget-object v5, p0, Landroidx/fragment/app/FragmentManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_b
    const/4 v0, 0x0

    .line 2785
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->c:Ljava/util/ArrayList;

    .line 2787
    :cond_c
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v2, p1, Landroidx/fragment/app/FragmentManagerState;->mBackStackIndex:I

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2789
    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->mPrimaryNavActiveWho:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 2790
    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->mPrimaryNavActiveWho:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->o:Landroidx/fragment/app/Fragment;

    .line 2791
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->o(Landroidx/fragment/app/Fragment;)V

    .line 2794
    :cond_d
    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->mResultKeys:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    .line 2796
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_e

    .line 2797
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->h:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p1, Landroidx/fragment/app/FragmentManagerState;->mResults:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2800
    :cond_e
    new-instance v0, Ljava/util/ArrayDeque;

    iget-object p1, p1, Landroidx/fragment/app/FragmentManagerState;->mLaunchedFragments:Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->s:Ljava/util/ArrayDeque;

    return-void
.end method

.method final a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/j$b;)V
    .locals 2

    .line 3299
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/h;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-ne v0, p0, :cond_1

    .line 3304
    :cond_0
    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/j$b;

    return-void

    .line 3301
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method final a(Landroidx/fragment/app/Fragment;Z)V
    .locals 1

    .line 1501
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->v(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1503
    instance-of v0, p1, Landroidx/fragment/app/FragmentContainerView;

    if-eqz v0, :cond_0

    .line 1504
    check-cast p1, Landroidx/fragment/app/FragmentContainerView;

    xor-int/lit8 p2, p2, 0x1

    .line 8289
    iput-boolean p2, p1, Landroidx/fragment/app/FragmentContainerView;->a:Z

    :cond_0
    return-void
.end method

.method final a(Landroidx/fragment/app/FragmentContainerView;)V
    .locals 5

    .line 1022
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    invoke-virtual {v0}, Landroidx/fragment/app/r;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/p;

    .line 6149
    iget-object v2, v1, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    .line 1024
    iget v3, v2, Landroidx/fragment/app/Fragment;->mContainerId:I

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentContainerView;->getId()I

    move-result v4

    if-ne v3, v4, :cond_0

    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1025
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1027
    iput-object p1, v2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1028
    invoke-virtual {v1}, Landroidx/fragment/app/p;->r()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Landroidx/fragment/app/FragmentManager$c;Z)V
    .locals 2

    .line 3393
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->j:Landroidx/fragment/app/j;

    .line 33068
    iget-object v0, v0, Landroidx/fragment/app/j;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroidx/fragment/app/j$a;

    invoke-direct {v1, p1, p2}, Landroidx/fragment/app/j$a;-><init>(Landroidx/fragment/app/FragmentManager$c;Z)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final a(Landroidx/fragment/app/FragmentManager$d;Z)V
    .locals 2

    if-nez p2, :cond_2

    .line 1876
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->l:Landroidx/fragment/app/h;

    if-nez v0, :cond_1

    .line 1877
    iget-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->v:Z

    if-eqz p1, :cond_0

    .line 1878
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "FragmentManager has been destroyed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1880
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "FragmentManager has not been attached to a host."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1884
    :cond_1
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->t()V

    .line 1886
    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->y:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1887
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->l:Landroidx/fragment/app/h;

    if-nez v1, :cond_4

    if-eqz p2, :cond_3

    .line 1890
    monitor-exit v0

    return-void

    .line 1892
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Activity has been destroyed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1894
    :cond_4
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->y:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1895
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->g()V

    .line 1896
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final a(Landroidx/fragment/app/a;ZZZ)V
    .locals 9

    if-eqz p2, :cond_0

    .line 2346
    invoke-virtual {p1, p4}, Landroidx/fragment/app/a;->a(Z)V

    goto :goto_0

    .line 2348
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/a;->f()V

    .line 2350
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    const/4 v8, 0x1

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 2351
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 2352
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2353
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_1

    .line 2354
    iget p2, p0, Landroidx/fragment/app/FragmentManager;->k:I

    if-lez p2, :cond_1

    .line 2355
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->l:Landroidx/fragment/app/h;

    .line 18247
    iget-object v0, p2, Landroidx/fragment/app/h;->c:Landroid/content/Context;

    .line 2355
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->m:Landroidx/fragment/app/e;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    iget-object v7, p0, Landroidx/fragment/app/FragmentManager;->D:Landroidx/fragment/app/t$a;

    invoke-static/range {v0 .. v7}, Landroidx/fragment/app/t;->a(Landroid/content/Context;Landroidx/fragment/app/e;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZLandroidx/fragment/app/t$a;)V

    :cond_1
    if-eqz p4, :cond_2

    .line 2360
    iget p2, p0, Landroidx/fragment/app/FragmentManager;->k:I

    invoke-virtual {p0, p2, v8}, Landroidx/fragment/app/FragmentManager;->a(IZ)V

    .line 2363
    :cond_2
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    invoke-virtual {p2}, Landroidx/fragment/app/r;->g()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/fragment/app/Fragment;

    if-eqz p3, :cond_3

    .line 2367
    iget-object v0, p3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-boolean v0, p3, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v0, :cond_3

    iget v0, p3, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 2368
    invoke-virtual {p1, v0}, Landroidx/fragment/app/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2369
    iget v0, p3, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 2370
    iget-object v0, p3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget v2, p3, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    if-eqz p4, :cond_5

    .line 2373
    iput v1, p3, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    goto :goto_1

    :cond_5
    const/high16 v0, -0x40800000    # -1.0f

    .line 2375
    iput v0, p3, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v0, 0x0

    .line 2376
    iput-boolean v0, p3, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    goto :goto_1

    :cond_6
    return-void
.end method

.method final a(Landroidx/fragment/app/h;Landroidx/fragment/app/e;Landroidx/fragment/app/Fragment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/h<",
            "*>;",
            "Landroidx/fragment/app/e;",
            "Landroidx/fragment/app/Fragment;",
            ")V"
        }
    .end annotation

    .line 2827
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->l:Landroidx/fragment/app/h;

    if-nez v0, :cond_9

    .line 2828
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->l:Landroidx/fragment/app/h;

    .line 2829
    iput-object p2, p0, Landroidx/fragment/app/FragmentManager;->m:Landroidx/fragment/app/e;

    .line 2830
    iput-object p3, p0, Landroidx/fragment/app/FragmentManager;->n:Landroidx/fragment/app/Fragment;

    if-eqz p3, :cond_0

    .line 2835
    new-instance p2, Landroidx/fragment/app/FragmentManager$10;

    invoke-direct {p2, p0, p3}, Landroidx/fragment/app/FragmentManager$10;-><init>(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentManager;->a(Landroidx/fragment/app/m;)V

    goto :goto_0

    .line 2843
    :cond_0
    instance-of p2, p1, Landroidx/fragment/app/m;

    if-eqz p2, :cond_1

    .line 2844
    move-object p2, p1

    check-cast p2, Landroidx/fragment/app/m;

    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentManager;->a(Landroidx/fragment/app/m;)V

    .line 2847
    :cond_1
    :goto_0
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->n:Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_2

    .line 2851
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->c()V

    .line 2854
    :cond_2
    instance-of p2, p1, Landroidx/activity/c;

    if-eqz p2, :cond_4

    .line 2855
    move-object p2, p1

    check-cast p2, Landroidx/activity/c;

    .line 2856
    invoke-interface {p2}, Landroidx/activity/c;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->e:Landroidx/activity/OnBackPressedDispatcher;

    if-eqz p3, :cond_3

    move-object p2, p3

    .line 2858
    :cond_3
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->f:Landroidx/activity/b;

    invoke-virtual {v0, p2, v1}, Landroidx/activity/OnBackPressedDispatcher;->a(Landroidx/lifecycle/p;Landroidx/activity/b;)V

    :cond_4
    if-eqz p3, :cond_5

    .line 2863
    iget-object p1, p3, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-direct {p1, p3}, Landroidx/fragment/app/FragmentManager;->r(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/l;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->w:Landroidx/fragment/app/l;

    goto :goto_1

    .line 2864
    :cond_5
    instance-of p2, p1, Landroidx/lifecycle/ad;

    if-eqz p2, :cond_6

    .line 2865
    check-cast p1, Landroidx/lifecycle/ad;

    invoke-interface {p1}, Landroidx/lifecycle/ad;->getViewModelStore()Landroidx/lifecycle/ac;

    move-result-object p1

    .line 2866
    invoke-static {p1}, Landroidx/fragment/app/l;->a(Landroidx/lifecycle/ac;)Landroidx/fragment/app/l;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->w:Landroidx/fragment/app/l;

    goto :goto_1

    .line 2868
    :cond_6
    new-instance p1, Landroidx/fragment/app/l;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/fragment/app/l;-><init>(Z)V

    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->w:Landroidx/fragment/app/l;

    .line 2871
    :goto_1
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->w:Landroidx/fragment/app/l;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->f()Z

    move-result p2

    .line 26096
    iput-boolean p2, p1, Landroidx/fragment/app/l;->e:Z

    .line 2872
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->w:Landroidx/fragment/app/l;

    .line 27043
    iput-object p2, p1, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/l;

    .line 2874
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->l:Landroidx/fragment/app/h;

    instance-of p2, p1, Landroidx/activity/result/d;

    if-eqz p2, :cond_8

    .line 2875
    check-cast p1, Landroidx/activity/result/d;

    .line 2876
    invoke-interface {p1}, Landroidx/activity/result/d;->getActivityResultRegistry()Landroidx/activity/result/c;

    move-result-object p1

    if-eqz p3, :cond_7

    .line 2878
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_7
    const-string p2, ""

    .line 2879
    :goto_2
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "FragmentManager:"

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2881
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "StartActivityForResult"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Landroidx/activity/result/a/b$b;

    invoke-direct {v0}, Landroidx/activity/result/a/b$b;-><init>()V

    new-instance v1, Landroidx/fragment/app/FragmentManager$11;

    invoke-direct {v1, p0}, Landroidx/fragment/app/FragmentManager$11;-><init>(Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {p1, p3, v0, v1}, Landroidx/activity/result/c;->a(Ljava/lang/String;Landroidx/activity/result/a/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    move-result-object p3

    iput-object p3, p0, Landroidx/fragment/app/FragmentManager;->p:Landroidx/activity/result/b;

    .line 2908
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "StartIntentSenderForResult"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Landroidx/fragment/app/FragmentManager$b;

    invoke-direct {v0}, Landroidx/fragment/app/FragmentManager$b;-><init>()V

    new-instance v1, Landroidx/fragment/app/FragmentManager$2;

    invoke-direct {v1, p0}, Landroidx/fragment/app/FragmentManager$2;-><init>(Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {p1, p3, v0, v1}, Landroidx/activity/result/c;->a(Ljava/lang/String;Landroidx/activity/result/a/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    move-result-object p3

    iput-object p3, p0, Landroidx/fragment/app/FragmentManager;->q:Landroidx/activity/result/b;

    .line 2935
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "RequestPermissions"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Landroidx/activity/result/a/b$a;

    invoke-direct {p3}, Landroidx/activity/result/a/b$a;-><init>()V

    new-instance v0, Landroidx/fragment/app/FragmentManager$3;

    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentManager$3;-><init>(Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {p1, p2, p3, v0}, Landroidx/activity/result/c;->a(Ljava/lang/String;Landroidx/activity/result/a/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->r:Landroidx/activity/result/b;

    :cond_8
    return-void

    .line 2827
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already attached"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final a(Landroidx/fragment/app/p;)V
    .locals 2

    .line 8149
    iget-object v0, p1, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    .line 1293
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    if-eqz v1, :cond_2

    .line 1294
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->z:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    .line 1296
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->K:Z

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 1299
    iput-boolean v1, v0, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    .line 1300
    sget-boolean v1, Landroidx/fragment/app/FragmentManager;->a:Z

    if-eqz v1, :cond_1

    .line 1301
    invoke-virtual {p1}, Landroidx/fragment/app/p;->b()V

    return-void

    .line 1303
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->e(Landroidx/fragment/app/Fragment;)V

    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1210
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroidx/fragment/app/r;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1213
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->A:Ljava/util/ArrayList;

    const/4 p4, 0x0

    if-eqz p2, :cond_0

    .line 1214
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 1216
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Fragments Created Menus:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 1218
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->A:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 1219
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    .line 1220
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1221
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    .line 1222
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1223
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1228
    :cond_0
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->c:Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    .line 1229
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_1

    .line 1231
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Back Stack:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_1

    .line 1233
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/a;

    .line 1234
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    .line 1235
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1236
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    .line 1237
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1238
    invoke-virtual {v2}, Landroidx/fragment/app/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1239
    invoke-virtual {v2, v0, p3}, Landroidx/fragment/app/a;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1244
    :cond_1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1245
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Back Stack Index: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1247
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->y:Ljava/util/ArrayList;

    monitor-enter p2

    .line 1248
    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1250
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Pending Actions:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2
    if-ge p4, v0, :cond_2

    .line 1252
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->y:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManager$d;

    .line 1253
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  #"

    .line 1254
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1255
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    .line 1256
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1257
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    .line 1260
    :cond_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1262
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "FragmentManager misc state:"

    .line 1263
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1264
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mHost="

    .line 1265
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1266
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->l:Landroidx/fragment/app/h;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1267
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mContainer="

    .line 1268
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1269
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->m:Landroidx/fragment/app/e;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1270
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->n:Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_3

    .line 1271
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mParent="

    .line 1272
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1273
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->n:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1275
    :cond_3
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mCurState="

    .line 1276
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1277
    iget p2, p0, Landroidx/fragment/app/FragmentManager;->k:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " mStateSaved="

    .line 1278
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1279
    iget-boolean p2, p0, Landroidx/fragment/app/FragmentManager;->t:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mStopped="

    .line 1280
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1281
    iget-boolean p2, p0, Landroidx/fragment/app/FragmentManager;->u:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mDestroyed="

    .line 1282
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1283
    iget-boolean p2, p0, Landroidx/fragment/app/FragmentManager;->v:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1284
    iget-boolean p2, p0, Landroidx/fragment/app/FragmentManager;->J:Z

    if-eqz p2, :cond_4

    .line 1285
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  mNeedMenuInvalidate="

    .line 1286
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1287
    iget-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->J:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 1260
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method final a(Landroid/view/Menu;)Z
    .locals 4

    .line 3204
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->k:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 3208
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    invoke-virtual {v0}, Landroidx/fragment/app/r;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_1

    .line 3210
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->b(Landroidx/fragment/app/Fragment;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method final a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 6

    .line 3172
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->k:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 3177
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    invoke-virtual {v2}, Landroidx/fragment/app/r;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    if-eqz v4, :cond_1

    .line 3179
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->b(Landroidx/fragment/app/Fragment;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, p1, p2}, Landroidx/fragment/app/Fragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v0, :cond_2

    .line 3182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3184
    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    goto :goto_0

    .line 3189
    :cond_3
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->A:Ljava/util/ArrayList;

    if-eqz p1, :cond_6

    .line 3190
    :goto_1
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->A:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_6

    .line 3191
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->A:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_4

    .line 3192
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 3193
    :cond_4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->onDestroyOptionsMenu()V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3198
    :cond_6
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->A:Ljava/util/ArrayList;

    return v3
.end method

.method final a(Landroid/view/MenuItem;)Z
    .locals 3

    .line 3219
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->k:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 3222
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    invoke-virtual {v0}, Landroidx/fragment/app/r;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_1

    .line 3224
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method final a(Landroidx/fragment/app/Fragment;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 633
    :cond_0
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 5295
    iget-object v2, v1, Landroidx/fragment/app/FragmentManager;->o:Landroidx/fragment/app/Fragment;

    .line 639
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v1, Landroidx/fragment/app/FragmentManager;->n:Landroidx/fragment/app/Fragment;

    .line 640
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->a(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method final a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "II)Z"
        }
    .end annotation

    .line 2577
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    if-nez p3, :cond_2

    if-gez p4, :cond_2

    and-int/lit8 v3, p5, 0x1

    if-nez v3, :cond_2

    .line 2581
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v2

    if-gez p3, :cond_1

    return v1

    .line 2585
    :cond_1
    iget-object p4, p0, Landroidx/fragment/app/FragmentManager;->c:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2586
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_2
    if-nez p3, :cond_4

    if-ltz p4, :cond_3

    goto :goto_0

    :cond_3
    const/4 p3, -0x1

    goto :goto_3

    .line 2592
    :cond_4
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_1
    if-ltz v0, :cond_7

    .line 2594
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    if-eqz p3, :cond_5

    .line 19687
    iget-object v4, v3, Landroidx/fragment/app/a;->l:Ljava/lang/String;

    .line 2595
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_5
    if-ltz p4, :cond_6

    .line 2598
    iget v3, v3, Landroidx/fragment/app/a;->c:I

    if-eq p4, v3, :cond_7

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_7
    if-gez v0, :cond_8

    return v1

    :cond_8
    and-int/2addr p5, v2

    if-eqz p5, :cond_b

    :cond_9
    :goto_2
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_b

    .line 2610
    iget-object p5, p0, Landroidx/fragment/app/FragmentManager;->c:Ljava/util/ArrayList;

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroidx/fragment/app/a;

    if-eqz p3, :cond_a

    .line 20687
    iget-object v3, p5, Landroidx/fragment/app/a;->l:Ljava/lang/String;

    .line 2611
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_a
    if-ltz p4, :cond_b

    iget p5, p5, Landroidx/fragment/app/a;->c:I

    if-ne p4, p5, :cond_b

    goto :goto_2

    :cond_b
    move p3, v0

    .line 2620
    :goto_3
    iget-object p4, p0, Landroidx/fragment/app/FragmentManager;->c:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    sub-int/2addr p4, v2

    if-ne p3, p4, :cond_c

    return v1

    .line 2623
    :cond_c
    iget-object p4, p0, Landroidx/fragment/app/FragmentManager;->c:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    sub-int/2addr p4, v2

    :goto_4
    if-le p4, p3, :cond_d

    .line 2624
    iget-object p5, p0, Landroidx/fragment/app/FragmentManager;->c:Ljava/util/ArrayList;

    invoke-virtual {p5, p4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2625
    sget-object p5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, -0x1

    goto :goto_4

    :cond_d
    :goto_5
    return v2
.end method

.method final a(Z)Z
    .locals 3

    .line 1996
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->d(Z)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 1999
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->L:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->M:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Landroidx/fragment/app/FragmentManager;->c(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2000
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->z:Z

    .line 2002
    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->L:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->M:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Landroidx/fragment/app/FragmentManager;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2004
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->u()V

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->u()V

    .line 2005
    throw p1

    .line 2009
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->c()V

    .line 2010
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->y()V

    .line 2011
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    invoke-virtual {p1}, Landroidx/fragment/app/r;->b()V

    return v0
.end method

.method final b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1839
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/r;->e(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public final b(I)V
    .locals 3

    if-ltz p1, :cond_0

    .line 740
    new-instance v0, Landroidx/fragment/app/FragmentManager$e;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, p1, v2}, Landroidx/fragment/app/FragmentManager$e;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;II)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentManager;->a(Landroidx/fragment/app/FragmentManager$d;Z)V

    return-void

    .line 738
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Bad id: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final b(Landroid/view/Menu;)V
    .locals 2

    .line 3247
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->k:I

    if-gtz v0, :cond_0

    return-void

    .line 3250
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    invoke-virtual {v0}, Landroidx/fragment/app/r;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1

    .line 3252
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performOptionsMenuClosed(Landroid/view/Menu;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method final b(Landroidx/fragment/app/FragmentManager$d;Z)V
    .locals 1

    if-eqz p2, :cond_1

    .line 1963
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->l:Landroidx/fragment/app/h;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->v:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 1967
    :cond_1
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentManager;->d(Z)V

    .line 1968
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->L:Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->M:Ljava/util/ArrayList;

    invoke-interface {p1, p2, v0}, Landroidx/fragment/app/FragmentManager$d;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 1969
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->z:Z

    .line 1971
    :try_start_0
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->L:Ljava/util/ArrayList;

    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->M:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/FragmentManager;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1973
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->u()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->u()V

    .line 1974
    throw p1

    .line 1977
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->c()V

    .line 1978
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->y()V

    .line 1979
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    invoke-virtual {p1}, Landroidx/fragment/app/r;->b()V

    return-void
.end method

.method final b(Z)V
    .locals 2

    .line 3140
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    invoke-virtual {v0}, Landroidx/fragment/app/r;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 3142
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performMultiWindowModeChanged(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    .line 600
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->a(Z)Z

    move-result v0

    .line 601
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->v()V

    return v0
.end method

.method final b(Landroid/view/MenuItem;)Z
    .locals 3

    .line 3233
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->k:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 3236
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    invoke-virtual {v0}, Landroidx/fragment/app/r;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_1

    .line 3238
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->performContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public final c(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment$SavedState;
    .locals 4

    .line 1155
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/r;->c(Ljava/lang/String;)Landroidx/fragment/app/p;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7149
    iget-object v1, v0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    .line 1157
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1158
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not currently in the FragmentManager"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroidx/fragment/app/FragmentManager;->a(Ljava/lang/RuntimeException;)V

    .line 7673
    :cond_1
    iget-object p1, v0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    iget p1, p1, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v1, 0x0

    if-ltz p1, :cond_2

    .line 7674
    invoke-virtual {v0}, Landroidx/fragment/app/p;->m()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7675
    new-instance v0, Landroidx/fragment/app/Fragment$SavedState;

    invoke-direct {v0, p1}, Landroidx/fragment/app/Fragment$SavedState;-><init>(Landroid/os/Bundle;)V

    return-object v0

    :cond_2
    return-object v1
.end method

.method public final c(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1813
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/r;->b(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method final c()V
    .locals 3

    .line 609
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->y:Ljava/util/ArrayList;

    monitor-enter v0

    .line 610
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 611
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->f:Landroidx/activity/b;

    .line 4071
    iput-boolean v2, v1, Landroidx/activity/b;->a:Z

    .line 612
    monitor-exit v0

    return-void

    .line 614
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->f:Landroidx/activity/b;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->e()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->n:Landroidx/fragment/app/Fragment;

    .line 619
    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->a(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 5071
    :goto_0
    iput-boolean v2, v0, Landroidx/activity/b;->a:Z

    return-void

    :catchall_0
    move-exception v1

    .line 614
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method final c(Z)V
    .locals 2

    .line 3148
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    invoke-virtual {v0}, Landroidx/fragment/app/r;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 3150
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performPictureInPictureModeChanged(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method final d(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3124
    :try_start_0
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->z:Z

    .line 3125
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    invoke-virtual {v2, p1}, Landroidx/fragment/app/r;->a(I)V

    .line 3126
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/FragmentManager;->a(IZ)V

    .line 3127
    sget-boolean p1, Landroidx/fragment/app/FragmentManager;->a:Z

    if-eqz p1, :cond_0

    .line 3128
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->x()Ljava/util/Set;

    move-result-object p1

    .line 3129
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/z;

    .line 3130
    invoke-virtual {v2}, Landroidx/fragment/app/z;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3134
    :cond_0
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->z:Z

    .line 3136
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->a(Z)Z

    return-void

    :catchall_0
    move-exception p1

    .line 3134
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->z:Z

    .line 3135
    throw p1
.end method

.method final d(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 1510
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->performDestroyView()V

    .line 1511
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->j:Landroidx/fragment/app/j;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/Fragment;Z)V

    const/4 v0, 0x0

    .line 1512
    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1513
    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1516
    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/w;

    .line 1517
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/t;

    invoke-virtual {v2, v0}, Landroidx/lifecycle/t;->b(Ljava/lang/Object;)V

    .line 1518
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mInLayout:Z

    return-void
.end method

.method final d()Z
    .locals 8

    const/4 v0, 0x0

    .line 764
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->a(Z)Z

    const/4 v0, 0x1

    .line 765
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->d(Z)V

    .line 767
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->o:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 770
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 5692
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 777
    :cond_0
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->L:Ljava/util/ArrayList;

    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->M:Ljava/util/ArrayList;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroidx/fragment/app/FragmentManager;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 779
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->z:Z

    .line 781
    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->L:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->M:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2}, Landroidx/fragment/app/FragmentManager;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 783
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->u()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->u()V

    .line 784
    throw v0

    .line 787
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->c()V

    .line 788
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->y()V

    .line 789
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    invoke-virtual {v0}, Landroidx/fragment/app/r;->b()V

    return v1
.end method

.method public final e()I
    .locals 1

    .line 797
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final e(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 1522
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->k:I

    invoke-direct {p0, p1, v0}, Landroidx/fragment/app/FragmentManager;->a(Landroidx/fragment/app/Fragment;I)V

    return-void
.end method

.method final f(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 1591
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/r;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    .line 1592
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1593
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring moving "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to state "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Landroidx/fragment/app/FragmentManager;->k:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "since it is not added to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    return-void

    .line 1598
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->e(Landroidx/fragment/app/Fragment;)V

    .line 1600
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 1601
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 1603
    iget v0, p1, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 1604
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget v2, p1, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1606
    :cond_2
    iput v1, p1, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v0, 0x0

    .line 1607
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    .line 1609
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->l:Landroidx/fragment/app/h;

    .line 10247
    iget-object v0, v0, Landroidx/fragment/app/h;->c:Landroid/content/Context;

    const/4 v1, 0x1

    .line 1610
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getPopDirection()Z

    move-result v2

    .line 1609
    invoke-static {v0, p1, v1, v2}, Landroidx/fragment/app/d;->a(Landroid/content/Context;Landroidx/fragment/app/Fragment;ZZ)Landroidx/fragment/app/d$a;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1612
    iget-object v1, v0, Landroidx/fragment/app/d$a;->a:Landroid/view/animation/Animation;

    if-eqz v1, :cond_3

    .line 1613
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v0, v0, Landroidx/fragment/app/d$a;->a:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 1615
    :cond_3
    iget-object v1, v0, Landroidx/fragment/app/d$a;->b:Landroid/animation/Animator;

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1616
    iget-object v0, v0, Landroidx/fragment/app/d$a;->b:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1621
    :cond_4
    :goto_0
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v0, :cond_5

    .line 1622
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->t(Landroidx/fragment/app/Fragment;)V

    :cond_5
    return-void
.end method

.method public final f()Z
    .locals 1

    .line 1864
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->t:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->u:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method final g(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/p;
    .locals 3

    .line 1694
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/r;->c(Ljava/lang/String;)Landroidx/fragment/app/p;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 1698
    :cond_0
    new-instance v0, Landroidx/fragment/app/p;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->j:Landroidx/fragment/app/j;

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    invoke-direct {v0, v1, v2, p1}, Landroidx/fragment/app/p;-><init>(Landroidx/fragment/app/j;Landroidx/fragment/app/r;Landroidx/fragment/app/Fragment;)V

    .line 1701
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->l:Landroidx/fragment/app/h;

    .line 11247
    iget-object p1, p1, Landroidx/fragment/app/h;->c:Landroid/content/Context;

    .line 1701
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/p;->a(Ljava/lang/ClassLoader;)V

    .line 1703
    iget p1, p0, Landroidx/fragment/app/FragmentManager;->k:I

    .line 12159
    iput p1, v0, Landroidx/fragment/app/p;->b:I

    return-object v0
.end method

.method final g()V
    .locals 5

    .line 1907
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->y:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1908
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->O:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 1909
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1910
    :goto_0
    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->y:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 1912
    :cond_2
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->l:Landroidx/fragment/app/h;

    .line 12252
    iget-object v1, v1, Landroidx/fragment/app/h;->d:Landroid/os/Handler;

    .line 1912
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->P:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1913
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->l:Landroidx/fragment/app/h;

    .line 13252
    iget-object v1, v1, Landroidx/fragment/app/h;->d:Landroid/os/Handler;

    .line 1913
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->P:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1914
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->c()V

    .line 1916
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final h()Landroid/os/Parcelable;
    .locals 8

    .line 2647
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->v()V

    .line 2648
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->w()V

    const/4 v0, 0x1

    .line 2649
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->a(Z)Z

    .line 2651
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->t:Z

    .line 2652
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->w:Landroidx/fragment/app/l;

    .line 21096
    iput-boolean v0, v1, Landroidx/fragment/app/l;->e:Z

    .line 2655
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    invoke-virtual {v0}, Landroidx/fragment/app/r;->c()Ljava/util/ArrayList;

    move-result-object v0

    .line 2657
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 2658
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    return-object v3

    .line 2663
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    invoke-virtual {v1}, Landroidx/fragment/app/r;->d()Ljava/util/ArrayList;

    move-result-object v1

    .line 2667
    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->c:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 2668
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 2670
    new-array v3, v4, [Landroidx/fragment/app/BackStackState;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    .line 2672
    new-instance v6, Landroidx/fragment/app/BackStackState;

    iget-object v7, p0, Landroidx/fragment/app/FragmentManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/a;

    invoke-direct {v6, v7}, Landroidx/fragment/app/BackStackState;-><init>(Landroidx/fragment/app/a;)V

    aput-object v6, v3, v5

    .line 2673
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2674
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "saveAllState: adding back stack #"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroidx/fragment/app/FragmentManager;->c:Ljava/util/ArrayList;

    .line 2675
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2681
    :cond_2
    new-instance v2, Landroidx/fragment/app/FragmentManagerState;

    invoke-direct {v2}, Landroidx/fragment/app/FragmentManagerState;-><init>()V

    .line 2682
    iput-object v0, v2, Landroidx/fragment/app/FragmentManagerState;->mActive:Ljava/util/ArrayList;

    .line 2683
    iput-object v1, v2, Landroidx/fragment/app/FragmentManagerState;->mAdded:Ljava/util/ArrayList;

    .line 2684
    iput-object v3, v2, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackState;

    .line 2685
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iput v0, v2, Landroidx/fragment/app/FragmentManagerState;->mBackStackIndex:I

    .line 2686
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->o:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_3

    .line 2687
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    iput-object v0, v2, Landroidx/fragment/app/FragmentManagerState;->mPrimaryNavActiveWho:Ljava/lang/String;

    .line 2689
    :cond_3
    iget-object v0, v2, Landroidx/fragment/app/FragmentManagerState;->mResultKeys:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2690
    iget-object v0, v2, Landroidx/fragment/app/FragmentManagerState;->mResults:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2691
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->s:Ljava/util/ArrayDeque;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v2, Landroidx/fragment/app/FragmentManagerState;->mLaunchedFragments:Ljava/util/ArrayList;

    return-object v2
.end method

.method final h(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/p;
    .locals 3

    const/4 v0, 0x2

    .line 1708
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "add: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1709
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->g(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/p;

    move-result-object v0

    .line 1710
    iput-object p0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 1711
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/r;->a(Landroidx/fragment/app/p;)V

    .line 1712
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-nez v1, :cond_2

    .line 1713
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/r;->a(Landroidx/fragment/app/Fragment;)V

    const/4 v1, 0x0

    .line 1714
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 1715
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 1716
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 1718
    :cond_1
    invoke-static {p1}, Landroidx/fragment/app/FragmentManager;->w(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 1719
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->J:Z

    :cond_2
    return-object v0
.end method

.method final i()V
    .locals 2

    .line 2976
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->l:Landroidx/fragment/app/h;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2979
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->t:Z

    .line 2980
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->u:Z

    .line 2981
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->w:Landroidx/fragment/app/l;

    .line 27096
    iput-boolean v0, v1, Landroidx/fragment/app/l;->e:Z

    .line 2982
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    invoke-virtual {v0}, Landroidx/fragment/app/r;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1

    .line 2984
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->noteStateNotSaved()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method final i(Landroidx/fragment/app/Fragment;)V
    .locals 3

    const/4 v0, 0x2

    .line 1726
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1727
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "remove: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " nesting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1729
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1730
    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_3

    .line 1731
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/r;->b(Landroidx/fragment/app/Fragment;)V

    .line 1732
    invoke-static {p1}, Landroidx/fragment/app/FragmentManager;->w(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1733
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->J:Z

    .line 1735
    :cond_2
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 1736
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->u(Landroidx/fragment/app/Fragment;)V

    :cond_3
    return-void
.end method

.method final j()V
    .locals 2

    const/4 v0, 0x0

    .line 3056
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->t:Z

    .line 3057
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->u:Z

    .line 3058
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->w:Landroidx/fragment/app/l;

    .line 28096
    iput-boolean v0, v1, Landroidx/fragment/app/l;->e:Z

    const/4 v0, 0x1

    .line 3059
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->d(I)V

    return-void
.end method

.method final j(Landroidx/fragment/app/Fragment;)V
    .locals 2

    const/4 v0, 0x2

    .line 1747
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hide: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1748
    :cond_0
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1749
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 1752
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 1753
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->u(Landroidx/fragment/app/Fragment;)V

    :cond_1
    return-void
.end method

.method final k()V
    .locals 2

    const/4 v0, 0x0

    .line 3067
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->t:Z

    .line 3068
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->u:Z

    .line 3069
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->w:Landroidx/fragment/app/l;

    .line 29096
    iput-boolean v0, v1, Landroidx/fragment/app/l;->e:Z

    const/4 v0, 0x4

    .line 3070
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->d(I)V

    return-void
.end method

.method final l()V
    .locals 2

    const/4 v0, 0x0

    .line 3074
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->t:Z

    .line 3075
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->u:Z

    .line 3076
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->w:Landroidx/fragment/app/l;

    .line 30096
    iput-boolean v0, v1, Landroidx/fragment/app/l;->e:Z

    const/4 v0, 0x5

    .line 3077
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->d(I)V

    return-void
.end method

.method final l(Landroidx/fragment/app/Fragment;)V
    .locals 3

    const/4 v0, 0x2

    .line 1774
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "detach: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1775
    :cond_0
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    .line 1776
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 1777
    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v2, :cond_3

    .line 1779
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "remove from detach: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1780
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/r;->b(Landroidx/fragment/app/Fragment;)V

    .line 1781
    invoke-static {p1}, Landroidx/fragment/app/FragmentManager;->w(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1782
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->J:Z

    .line 1784
    :cond_2
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->u(Landroidx/fragment/app/Fragment;)V

    :cond_3
    return-void
.end method

.method final m()V
    .locals 2

    const/4 v0, 0x0

    .line 3081
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->t:Z

    .line 3082
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->u:Z

    .line 3083
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->w:Landroidx/fragment/app/l;

    .line 31096
    iput-boolean v0, v1, Landroidx/fragment/app/l;->e:Z

    const/4 v0, 0x7

    .line 3084
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->d(I)V

    return-void
.end method

.method final m(Landroidx/fragment/app/Fragment;)V
    .locals 3

    const/4 v0, 0x2

    .line 1790
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "attach: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1791
    :cond_0
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 1792
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 1793
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez v1, :cond_2

    .line 1794
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/r;->a(Landroidx/fragment/app/Fragment;)V

    .line 1795
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "add from attach: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1796
    :cond_1
    invoke-static {p1}, Landroidx/fragment/app/FragmentManager;->w(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 1797
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->J:Z

    :cond_2
    return-void
.end method

.method final n()V
    .locals 2

    const/4 v0, 0x1

    .line 3092
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->u:Z

    .line 3093
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->w:Landroidx/fragment/app/l;

    .line 32096
    iput-boolean v0, v1, Landroidx/fragment/app/l;->e:Z

    const/4 v0, 0x4

    .line 3094
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->d(I)V

    return-void
.end method

.method final n(Landroidx/fragment/app/Fragment;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 3258
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/h;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-ne v0, p0, :cond_0

    goto :goto_0

    .line 3260
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3263
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->o:Landroidx/fragment/app/Fragment;

    .line 3264
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->o:Landroidx/fragment/app/Fragment;

    .line 3265
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->o(Landroidx/fragment/app/Fragment;)V

    .line 3266
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->o:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->o(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method final o()V
    .locals 2

    const/4 v0, 0x1

    .line 3102
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->v:Z

    .line 3103
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->a(Z)Z

    .line 3104
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->w()V

    const/4 v0, -0x1

    .line 3105
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->d(I)V

    const/4 v0, 0x0

    .line 3106
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->l:Landroidx/fragment/app/h;

    .line 3107
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->m:Landroidx/fragment/app/e;

    .line 3108
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->n:Landroidx/fragment/app/Fragment;

    .line 3109
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->e:Landroidx/activity/OnBackPressedDispatcher;

    if-eqz v1, :cond_0

    .line 3112
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->f:Landroidx/activity/b;

    invoke-virtual {v1}, Landroidx/activity/b;->a()V

    .line 3113
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->e:Landroidx/activity/OnBackPressedDispatcher;

    .line 3115
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->p:Landroidx/activity/result/b;

    if-eqz v0, :cond_1

    .line 3116
    invoke-virtual {v0}, Landroidx/activity/result/b;->a()V

    .line 3117
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->q:Landroidx/activity/result/b;

    invoke-virtual {v0}, Landroidx/activity/result/b;->a()V

    .line 3118
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->r:Landroidx/activity/result/b;

    invoke-virtual {v0}, Landroidx/activity/result/b;->a()V

    :cond_1
    return-void
.end method

.method final o(Landroidx/fragment/app/Fragment;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3270
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3271
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->performPrimaryNavigationFragmentChanged()V

    :cond_0
    return-void
.end method

.method final p()V
    .locals 2

    .line 3164
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    invoke-virtual {v0}, Landroidx/fragment/app/r;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 3166
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->performLowMemory()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method final p(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 3425
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->E:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/m;

    .line 3426
    invoke-interface {v1, p1}, Landroidx/fragment/app/m;->a(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final q()Landroidx/fragment/app/g;
    .locals 2

    move-object v0, p0

    .line 3332
    :goto_0
    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->F:Landroidx/fragment/app/g;

    if-eqz v1, :cond_0

    return-object v1

    .line 3335
    :cond_0
    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->n:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1

    .line 3340
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    goto :goto_0

    .line 3342
    :cond_1
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->G:Landroidx/fragment/app/g;

    return-object v0
.end method

.method final q(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 3461
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroidx/fragment/app/FragmentManager;->w(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 3462
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->J:Z

    :cond_0
    return-void
.end method

.method final r()Landroidx/fragment/app/aa;
    .locals 2

    move-object v0, p0

    .line 3365
    :goto_0
    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->H:Landroidx/fragment/app/aa;

    if-eqz v1, :cond_0

    return-object v1

    .line 3368
    :cond_0
    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->n:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1

    .line 3373
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    goto :goto_0

    .line 3375
    :cond_1
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->I:Landroidx/fragment/app/aa;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1175
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "FragmentManager{"

    .line 1176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    .line 1178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1179
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->n:Landroidx/fragment/app/Fragment;

    const-string/jumbo v2, "}"

    const-string/jumbo v3, "{"

    if-eqz v1, :cond_0

    .line 1180
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1181
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1182
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1183
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->n:Landroidx/fragment/app/Fragment;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1184
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1185
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->l:Landroidx/fragment/app/h;

    if-eqz v1, :cond_1

    .line 1186
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1187
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1188
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1189
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->l:Landroidx/fragment/app/h;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1190
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "null"

    .line 1192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string/jumbo v1, "}}"

    .line 1194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1195
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
