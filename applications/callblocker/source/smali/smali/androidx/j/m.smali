.class public abstract Landroidx/j/m;
.super Ljava/lang/Object;
.source "Transition.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/j/m$b;,
        Landroidx/j/m$a;,
        Landroidx/j/m$c;
    }
.end annotation


# static fields
.field private static A:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroidx/b/a",
            "<",
            "Landroid/animation/Animator;",
            "Landroidx/j/m$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final h:[I

.field private static final i:Landroidx/j/g;


# instance fields
.field private B:Landroid/view/ViewGroup;

.field private C:I

.field private D:Z

.field private E:Z

.field private F:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/j/m$c;",
            ">;"
        }
    .end annotation
.end field

.field private G:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private H:Landroidx/j/m$b;

.field private I:Landroidx/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private J:Landroidx/j/g;

.field a:J

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field d:Landroidx/j/q;

.field e:Z

.field f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field g:Landroidx/j/p;

.field private j:Ljava/lang/String;

.field private k:J

.field private l:Landroid/animation/TimeInterpolator;

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private v:Landroidx/j/t;

.field private w:Landroidx/j/t;

.field private x:[I

.field private y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/j/s;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/j/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/j/m;->h:[I

    .line 171
    new-instance v0, Landroidx/j/m$1;

    invoke-direct {v0}, Landroidx/j/m$1;-><init>()V

    sput-object v0, Landroidx/j/m;->i:Landroidx/j/g;

    .line 205
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/j/m;->A:Ljava/lang/ThreadLocal;

    return-void

    .line 164
    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/j/m;->j:Ljava/lang/String;

    .line 183
    iput-wide v4, p0, Landroidx/j/m;->k:J

    .line 184
    iput-wide v4, p0, Landroidx/j/m;->a:J

    .line 185
    iput-object v1, p0, Landroidx/j/m;->l:Landroid/animation/TimeInterpolator;

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/j/m;->b:Ljava/util/ArrayList;

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/j/m;->c:Ljava/util/ArrayList;

    .line 188
    iput-object v1, p0, Landroidx/j/m;->m:Ljava/util/ArrayList;

    .line 189
    iput-object v1, p0, Landroidx/j/m;->n:Ljava/util/ArrayList;

    .line 190
    iput-object v1, p0, Landroidx/j/m;->o:Ljava/util/ArrayList;

    .line 191
    iput-object v1, p0, Landroidx/j/m;->p:Ljava/util/ArrayList;

    .line 192
    iput-object v1, p0, Landroidx/j/m;->q:Ljava/util/ArrayList;

    .line 193
    iput-object v1, p0, Landroidx/j/m;->r:Ljava/util/ArrayList;

    .line 194
    iput-object v1, p0, Landroidx/j/m;->s:Ljava/util/ArrayList;

    .line 195
    iput-object v1, p0, Landroidx/j/m;->t:Ljava/util/ArrayList;

    .line 196
    iput-object v1, p0, Landroidx/j/m;->u:Ljava/util/ArrayList;

    .line 197
    new-instance v0, Landroidx/j/t;

    invoke-direct {v0}, Landroidx/j/t;-><init>()V

    iput-object v0, p0, Landroidx/j/m;->v:Landroidx/j/t;

    .line 198
    new-instance v0, Landroidx/j/t;

    invoke-direct {v0}, Landroidx/j/t;-><init>()V

    iput-object v0, p0, Landroidx/j/m;->w:Landroidx/j/t;

    .line 199
    iput-object v1, p0, Landroidx/j/m;->d:Landroidx/j/q;

    .line 200
    sget-object v0, Landroidx/j/m;->h:[I

    iput-object v0, p0, Landroidx/j/m;->x:[I

    .line 209
    iput-object v1, p0, Landroidx/j/m;->B:Landroid/view/ViewGroup;

    .line 217
    iput-boolean v2, p0, Landroidx/j/m;->e:Z

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/j/m;->f:Ljava/util/ArrayList;

    .line 226
    iput v2, p0, Landroidx/j/m;->C:I

    .line 229
    iput-boolean v2, p0, Landroidx/j/m;->D:Z

    .line 233
    iput-boolean v2, p0, Landroidx/j/m;->E:Z

    .line 236
    iput-object v1, p0, Landroidx/j/m;->F:Ljava/util/ArrayList;

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/j/m;->G:Ljava/util/ArrayList;

    .line 255
    sget-object v0, Landroidx/j/m;->i:Landroidx/j/g;

    iput-object v0, p0, Landroidx/j/m;->J:Landroidx/j/g;

    .line 264
    return-void
.end method

.method private a(Landroid/animation/Animator;Landroidx/b/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            "Landroidx/b/a",
            "<",
            "Landroid/animation/Animator;",
            "Landroidx/j/m$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 896
    if-eqz p1, :cond_0

    .line 898
    new-instance v0, Landroidx/j/m$2;

    invoke-direct {v0, p0, p2}, Landroidx/j/m$2;-><init>(Landroidx/j/m;Landroidx/b/a;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 910
    invoke-virtual {p0, p1}, Landroidx/j/m;->a(Landroid/animation/Animator;)V

    .line 912
    :cond_0
    return-void
.end method

.method private a(Landroidx/b/a;Landroidx/b/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/b/a",
            "<",
            "Landroid/view/View;",
            "Landroidx/j/s;",
            ">;",
            "Landroidx/b/a",
            "<",
            "Landroid/view/View;",
            "Landroidx/j/s;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 546
    invoke-virtual {p1}, Landroidx/b/a;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_1

    .line 547
    invoke-virtual {p1, v2}, Landroidx/b/a;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 548
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/j/m;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 549
    invoke-virtual {p2, v0}, Landroidx/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/j/s;

    .line 550
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroidx/j/s;->b:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroidx/j/m;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 551
    invoke-virtual {p1, v2}, Landroidx/b/a;->d(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/j/s;

    .line 552
    iget-object v3, p0, Landroidx/j/m;->y:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    iget-object v1, p0, Landroidx/j/m;->z:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    :cond_0
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 557
    :cond_1
    return-void
.end method

.method private a(Landroidx/b/a;Landroidx/b/a;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/b/a",
            "<",
            "Landroid/view/View;",
            "Landroidx/j/s;",
            ">;",
            "Landroidx/b/a",
            "<",
            "Landroid/view/View;",
            "Landroidx/j/s;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 594
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 595
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v5, :cond_1

    .line 596
    invoke-virtual {p3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 597
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/j/m;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 598
    invoke-virtual {p3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 599
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroidx/j/m;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 600
    invoke-virtual {p1, v0}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/j/s;

    .line 601
    invoke-virtual {p2, v1}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/j/s;

    .line 602
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 603
    iget-object v6, p0, Landroidx/j/m;->y:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    iget-object v2, p0, Landroidx/j/m;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    invoke-virtual {p1, v0}, Landroidx/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    invoke-virtual {p2, v1}, Landroidx/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 611
    :cond_1
    return-void
.end method

.method private a(Landroidx/b/a;Landroidx/b/a;Landroidx/b/a;Landroidx/b/a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/b/a",
            "<",
            "Landroid/view/View;",
            "Landroidx/j/s;",
            ">;",
            "Landroidx/b/a",
            "<",
            "Landroid/view/View;",
            "Landroidx/j/s;",
            ">;",
            "Landroidx/b/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroidx/b/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 621
    invoke-virtual {p3}, Landroidx/b/a;->size()I

    move-result v5

    .line 622
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v5, :cond_1

    .line 623
    invoke-virtual {p3, v4}, Landroidx/b/a;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 624
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/j/m;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 625
    invoke-virtual {p3, v4}, Landroidx/b/a;->b(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 626
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroidx/j/m;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 627
    invoke-virtual {p1, v0}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/j/s;

    .line 628
    invoke-virtual {p2, v1}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/j/s;

    .line 629
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 630
    iget-object v6, p0, Landroidx/j/m;->y:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    iget-object v2, p0, Landroidx/j/m;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    invoke-virtual {p1, v0}, Landroidx/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    invoke-virtual {p2, v1}, Landroidx/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 638
    :cond_1
    return-void
.end method

.method private a(Landroidx/b/a;Landroidx/b/a;Landroidx/b/d;Landroidx/b/d;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/b/a",
            "<",
            "Landroid/view/View;",
            "Landroidx/j/s;",
            ">;",
            "Landroidx/b/a",
            "<",
            "Landroid/view/View;",
            "Landroidx/j/s;",
            ">;",
            "Landroidx/b/d",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroidx/b/d",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 567
    invoke-virtual {p3}, Landroidx/b/d;->b()I

    move-result v5

    .line 568
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v5, :cond_1

    .line 569
    invoke-virtual {p3, v4}, Landroidx/b/d;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 570
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/j/m;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 571
    invoke-virtual {p3, v4}, Landroidx/b/d;->b(I)J

    move-result-wide v2

    invoke-virtual {p4, v2, v3}, Landroidx/b/d;->a(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 572
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroidx/j/m;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 573
    invoke-virtual {p1, v0}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/j/s;

    .line 574
    invoke-virtual {p2, v1}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/j/s;

    .line 575
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 576
    iget-object v6, p0, Landroidx/j/m;->y:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    iget-object v2, p0, Landroidx/j/m;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    invoke-virtual {p1, v0}, Landroidx/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    invoke-virtual {p2, v1}, Landroidx/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 584
    :cond_1
    return-void
.end method

.method private static a(Landroidx/j/t;Landroid/view/View;Landroidx/j/s;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1532
    iget-object v0, p0, Landroidx/j/t;->a:Landroidx/b/a;

    invoke-virtual {v0, p1, p2}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1533
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1534
    if-ltz v0, :cond_0

    .line 1535
    iget-object v1, p0, Landroidx/j/t;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_3

    .line 1537
    iget-object v1, p0, Landroidx/j/t;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1542
    :cond_0
    :goto_0
    invoke-static {p1}, Landroidx/core/h/u;->o(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 1543
    if-eqz v0, :cond_1

    .line 1544
    iget-object v1, p0, Landroidx/j/t;->d:Landroidx/b/a;

    invoke-virtual {v1, v0}, Landroidx/b/a;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1546
    iget-object v1, p0, Landroidx/j/t;->d:Landroidx/b/a;

    invoke-virtual {v1, v0, v4}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1551
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 1552
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 1553
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1554
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 1555
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v2

    .line 1556
    iget-object v0, p0, Landroidx/j/t;->c:Landroidx/b/d;

    invoke-virtual {v0, v2, v3}, Landroidx/b/d;->d(J)I

    move-result v0

    if-ltz v0, :cond_5

    .line 1558
    iget-object v0, p0, Landroidx/j/t;->c:Landroidx/b/d;

    invoke-virtual {v0, v2, v3}, Landroidx/b/d;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1559
    if-eqz v0, :cond_2

    .line 1560
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/h/u;->a(Landroid/view/View;Z)V

    .line 1561
    iget-object v0, p0, Landroidx/j/t;->c:Landroidx/b/d;

    invoke-virtual {v0, v2, v3, v4}, Landroidx/b/d;->b(JLjava/lang/Object;)V

    .line 1569
    :cond_2
    :goto_2
    return-void

    .line 1539
    :cond_3
    iget-object v1, p0, Landroidx/j/t;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1548
    :cond_4
    iget-object v1, p0, Landroidx/j/t;->d:Landroidx/b/a;

    invoke-virtual {v1, v0, p1}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1564
    :cond_5
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroidx/core/h/u;->a(Landroid/view/View;Z)V

    .line 1565
    iget-object v0, p0, Landroidx/j/t;->c:Landroidx/b/d;

    invoke-virtual {v0, v2, v3, p1}, Landroidx/b/d;->b(JLjava/lang/Object;)V

    goto :goto_2
.end method

.method private a(Landroidx/j/t;Landroidx/j/t;)V
    .locals 5

    .prologue
    .line 667
    new-instance v1, Landroidx/b/a;

    iget-object v0, p1, Landroidx/j/t;->a:Landroidx/b/a;

    invoke-direct {v1, v0}, Landroidx/b/a;-><init>(Landroidx/b/g;)V

    .line 668
    new-instance v2, Landroidx/b/a;

    iget-object v0, p2, Landroidx/j/t;->a:Landroidx/b/a;

    invoke-direct {v2, v0}, Landroidx/b/a;-><init>(Landroidx/b/g;)V

    .line 670
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Landroidx/j/m;->x:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 671
    iget-object v3, p0, Landroidx/j/m;->x:[I

    aget v3, v3, v0

    packed-switch v3, :pswitch_data_0

    .line 670
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 673
    :pswitch_0
    invoke-direct {p0, v1, v2}, Landroidx/j/m;->a(Landroidx/b/a;Landroidx/b/a;)V

    goto :goto_1

    .line 676
    :pswitch_1
    iget-object v3, p1, Landroidx/j/t;->d:Landroidx/b/a;

    iget-object v4, p2, Landroidx/j/t;->d:Landroidx/b/a;

    invoke-direct {p0, v1, v2, v3, v4}, Landroidx/j/m;->a(Landroidx/b/a;Landroidx/b/a;Landroidx/b/a;Landroidx/b/a;)V

    goto :goto_1

    .line 680
    :pswitch_2
    iget-object v3, p1, Landroidx/j/t;->b:Landroid/util/SparseArray;

    iget-object v4, p2, Landroidx/j/t;->b:Landroid/util/SparseArray;

    invoke-direct {p0, v1, v2, v3, v4}, Landroidx/j/m;->a(Landroidx/b/a;Landroidx/b/a;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    goto :goto_1

    .line 684
    :pswitch_3
    iget-object v3, p1, Landroidx/j/t;->c:Landroidx/b/d;

    iget-object v4, p2, Landroidx/j/t;->c:Landroidx/b/d;

    invoke-direct {p0, v1, v2, v3, v4}, Landroidx/j/m;->a(Landroidx/b/a;Landroidx/b/a;Landroidx/b/d;Landroidx/b/d;)V

    goto :goto_1

    .line 689
    :cond_0
    invoke-direct {p0, v1, v2}, Landroidx/j/m;->b(Landroidx/b/a;Landroidx/b/a;)V

    .line 690
    return-void

    .line 671
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static a(Landroidx/j/s;Landroidx/j/s;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1866
    iget-object v2, p0, Landroidx/j/s;->a:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1867
    iget-object v3, p1, Landroidx/j/s;->a:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1869
    if-nez v2, :cond_1

    if-nez v3, :cond_1

    move v0, v1

    .line 1884
    :cond_0
    :goto_0
    return v0

    .line 1872
    :cond_1
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 1877
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private b(Landroidx/b/a;Landroidx/b/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/b/a",
            "<",
            "Landroid/view/View;",
            "Landroidx/j/s;",
            ">;",
            "Landroidx/b/a",
            "<",
            "Landroid/view/View;",
            "Landroidx/j/s;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 647
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Landroidx/b/a;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 648
    invoke-virtual {p1, v1}, Landroidx/b/a;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/j/s;

    .line 649
    iget-object v3, v0, Landroidx/j/s;->b:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroidx/j/m;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 650
    iget-object v3, p0, Landroidx/j/m;->y:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    iget-object v0, p0, Landroidx/j/m;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 656
    :cond_1
    :goto_1
    invoke-virtual {p2}, Landroidx/b/a;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 657
    invoke-virtual {p2, v2}, Landroidx/b/a;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/j/s;

    .line 658
    iget-object v1, v0, Landroidx/j/s;->b:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroidx/j/m;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 659
    iget-object v1, p0, Landroidx/j/m;->z:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    iget-object v0, p0, Landroidx/j/m;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 663
    :cond_3
    return-void
.end method

.method private c(Landroid/view/View;Z)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1599
    if-nez p1, :cond_1

    .line 1653
    :cond_0
    return-void

    .line 1602
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 1603
    iget-object v0, p0, Landroidx/j/m;->o:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/j/m;->o:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1606
    :cond_2
    iget-object v0, p0, Landroidx/j/m;->p:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/j/m;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1609
    :cond_3
    iget-object v0, p0, Landroidx/j/m;->q:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 1610
    iget-object v0, p0, Landroidx/j/m;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    .line 1611
    :goto_0
    if-ge v2, v4, :cond_4

    .line 1612
    iget-object v0, p0, Landroidx/j/m;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1611
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1617
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 1618
    new-instance v0, Landroidx/j/s;

    invoke-direct {v0, p1}, Landroidx/j/s;-><init>(Landroid/view/View;)V

    .line 1619
    if-eqz p2, :cond_8

    .line 1620
    invoke-virtual {p0, v0}, Landroidx/j/m;->a(Landroidx/j/s;)V

    .line 1624
    :goto_1
    iget-object v2, v0, Landroidx/j/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1625
    invoke-virtual {p0, v0}, Landroidx/j/m;->c(Landroidx/j/s;)V

    .line 1626
    if-eqz p2, :cond_9

    .line 1627
    iget-object v2, p0, Landroidx/j/m;->v:Landroidx/j/t;

    invoke-static {v2, p1, v0}, Landroidx/j/m;->a(Landroidx/j/t;Landroid/view/View;Landroidx/j/s;)V

    .line 1632
    :cond_5
    :goto_2
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1634
    iget-object v0, p0, Landroidx/j/m;->s:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/j/m;->s:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1637
    :cond_6
    iget-object v0, p0, Landroidx/j/m;->t:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroidx/j/m;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1640
    :cond_7
    iget-object v0, p0, Landroidx/j/m;->u:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    .line 1641
    iget-object v0, p0, Landroidx/j/m;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 1642
    :goto_3
    if-ge v2, v3, :cond_a

    .line 1643
    iget-object v0, p0, Landroidx/j/m;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1642
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 1622
    :cond_8
    invoke-virtual {p0, v0}, Landroidx/j/m;->b(Landroidx/j/s;)V

    goto :goto_1

    .line 1629
    :cond_9
    iget-object v2, p0, Landroidx/j/m;->w:Landroidx/j/t;

    invoke-static {v2, p1, v0}, Landroidx/j/m;->a(Landroidx/j/t;Landroid/view/View;Landroidx/j/s;)V

    goto :goto_2

    .line 1648
    :cond_a
    check-cast p1, Landroid/view/ViewGroup;

    move v0, v1

    .line 1649
    :goto_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1650
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Landroidx/j/m;->c(Landroid/view/View;Z)V

    .line 1649
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method private static r()Landroidx/b/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/b/a",
            "<",
            "Landroid/animation/Animator;",
            "Landroidx/j/m$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 859
    sget-object v0, Landroidx/j/m;->A:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/b/a;

    .line 860
    if-nez v0, :cond_0

    .line 861
    new-instance v0, Landroidx/b/a;

    invoke-direct {v0}, Landroidx/b/a;-><init>()V

    .line 862
    sget-object v1, Landroidx/j/m;->A:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 864
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroidx/j/s;Landroidx/j/s;)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 489
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(J)Landroidx/j/m;
    .locals 1

    .prologue
    .line 344
    iput-wide p1, p0, Landroidx/j/m;->a:J

    .line 345
    return-object p0
.end method

.method public a(Landroid/animation/TimeInterpolator;)Landroidx/j/m;
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Landroidx/j/m;->l:Landroid/animation/TimeInterpolator;

    .line 399
    return-object p0
.end method

.method public a(Landroidx/j/m$c;)Landroidx/j/m;
    .locals 1

    .prologue
    .line 2042
    iget-object v0, p0, Landroidx/j/m;->F:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2043
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/j/m;->F:Ljava/util/ArrayList;

    .line 2045
    :cond_0
    iget-object v0, p0, Landroidx/j/m;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2046
    return-object p0
.end method

.method public a(Landroid/view/View;Z)Landroidx/j/s;
    .locals 1

    .prologue
    .line 1663
    iget-object v0, p0, Landroidx/j/m;->d:Landroidx/j/q;

    if-eqz v0, :cond_0

    .line 1664
    iget-object v0, p0, Landroidx/j/m;->d:Landroidx/j/q;

    invoke-virtual {v0, p1, p2}, Landroidx/j/q;->a(Landroid/view/View;Z)Landroidx/j/s;

    move-result-object v0

    .line 1667
    :goto_0
    return-object v0

    .line 1666
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroidx/j/m;->v:Landroidx/j/t;

    .line 1667
    :goto_1
    iget-object v0, v0, Landroidx/j/t;->a:Landroidx/b/a;

    invoke-virtual {v0, p1}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/j/s;

    goto :goto_0

    .line 1666
    :cond_1
    iget-object v0, p0, Landroidx/j/m;->w:Landroidx/j/t;

    goto :goto_1
.end method

.method a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v1, 0x0

    .line 2254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2255
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2256
    iget-wide v2, p0, Landroidx/j/m;->a:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 2257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "dur("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroidx/j/m;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2259
    :cond_0
    iget-wide v2, p0, Landroidx/j/m;->k:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 2260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "dly("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroidx/j/m;->k:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2262
    :cond_1
    iget-object v2, p0, Landroidx/j/m;->l:Landroid/animation/TimeInterpolator;

    if-eqz v2, :cond_2

    .line 2263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "interp("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroidx/j/m;->l:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2265
    :cond_2
    iget-object v2, p0, Landroidx/j/m;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_3

    iget-object v2, p0, Landroidx/j/m;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 2266
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "tgts("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2267
    iget-object v0, p0, Landroidx/j/m;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    move v0, v1

    .line 2268
    :goto_0
    iget-object v3, p0, Landroidx/j/m;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 2269
    if-lez v0, :cond_4

    .line 2270
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2272
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroidx/j/m;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2268
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2275
    :cond_5
    iget-object v0, p0, Landroidx/j/m;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 2276
    :goto_1
    iget-object v0, p0, Landroidx/j/m;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 2277
    if-lez v1, :cond_6

    .line 2278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2280
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroidx/j/m;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2276
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2283
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2285
    :cond_8
    return-object v0
.end method

.method protected a(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 1899
    if-nez p1, :cond_0

    .line 1900
    invoke-virtual {p0}, Landroidx/j/m;->k()V

    .line 1920
    :goto_0
    return-void

    .line 1902
    :cond_0
    invoke-virtual {p0}, Landroidx/j/m;->b()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 1903
    invoke-virtual {p0}, Landroidx/j/m;->b()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1905
    :cond_1
    invoke-virtual {p0}, Landroidx/j/m;->c()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 1906
    invoke-virtual {p0}, Landroidx/j/m;->c()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1908
    :cond_2
    invoke-virtual {p0}, Landroidx/j/m;->d()Landroid/animation/TimeInterpolator;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1909
    invoke-virtual {p0}, Landroidx/j/m;->d()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1911
    :cond_3
    new-instance v0, Landroidx/j/m$3;

    invoke-direct {v0, p0}, Landroidx/j/m$3;-><init>(Landroidx/j/m;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1918
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method a(Landroid/view/ViewGroup;)V
    .locals 10

    .prologue
    const/4 v3, 0x1

    .line 1782
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/j/m;->y:Ljava/util/ArrayList;

    .line 1783
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/j/m;->z:Ljava/util/ArrayList;

    .line 1784
    iget-object v0, p0, Landroidx/j/m;->v:Landroidx/j/t;

    iget-object v1, p0, Landroidx/j/m;->w:Landroidx/j/t;

    invoke-direct {p0, v0, v1}, Landroidx/j/m;->a(Landroidx/j/t;Landroidx/j/t;)V

    .line 1786
    invoke-static {}, Landroidx/j/m;->r()Landroidx/b/a;

    move-result-object v5

    .line 1787
    invoke-virtual {v5}, Landroidx/b/a;->size()I

    move-result v0

    .line 1788
    invoke-static {p1}, Landroidx/j/ac;->b(Landroid/view/View;)Landroidx/j/am;

    move-result-object v6

    .line 1789
    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_0
    if-ltz v4, :cond_6

    .line 1790
    invoke-virtual {v5, v4}, Landroidx/b/a;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 1791
    if-eqz v0, :cond_3

    .line 1792
    invoke-virtual {v5, v0}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/j/m$a;

    .line 1793
    if-eqz v1, :cond_3

    iget-object v2, v1, Landroidx/j/m$a;->a:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, v1, Landroidx/j/m$a;->d:Landroidx/j/am;

    .line 1794
    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1795
    iget-object v7, v1, Landroidx/j/m$a;->c:Landroidx/j/s;

    .line 1796
    iget-object v8, v1, Landroidx/j/m$a;->a:Landroid/view/View;

    .line 1797
    invoke-virtual {p0, v8, v3}, Landroidx/j/m;->a(Landroid/view/View;Z)Landroidx/j/s;

    move-result-object v9

    .line 1798
    invoke-virtual {p0, v8, v3}, Landroidx/j/m;->b(Landroid/view/View;Z)Landroidx/j/s;

    move-result-object v2

    .line 1799
    if-nez v9, :cond_0

    if-nez v2, :cond_0

    .line 1800
    iget-object v2, p0, Landroidx/j/m;->w:Landroidx/j/t;

    iget-object v2, v2, Landroidx/j/t;->a:Landroidx/b/a;

    invoke-virtual {v2, v8}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/j/s;

    .line 1802
    :cond_0
    if-nez v9, :cond_1

    if-eqz v2, :cond_4

    :cond_1
    iget-object v1, v1, Landroidx/j/m$a;->e:Landroidx/j/m;

    .line 1803
    invoke-virtual {v1, v7, v2}, Landroidx/j/m;->a(Landroidx/j/s;Landroidx/j/s;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v3

    .line 1804
    :goto_1
    if-eqz v1, :cond_3

    .line 1805
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1809
    :cond_2
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1789
    :cond_3
    :goto_2
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_0

    .line 1803
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 1814
    :cond_5
    invoke-virtual {v5, v0}, Landroidx/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1821
    :cond_6
    iget-object v2, p0, Landroidx/j/m;->v:Landroidx/j/t;

    iget-object v3, p0, Landroidx/j/m;->w:Landroidx/j/t;

    iget-object v4, p0, Landroidx/j/m;->y:Ljava/util/ArrayList;

    iget-object v5, p0, Landroidx/j/m;->z:Ljava/util/ArrayList;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/j/m;->a(Landroid/view/ViewGroup;Landroidx/j/t;Landroidx/j/t;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1822
    invoke-virtual {p0}, Landroidx/j/m;->e()V

    .line 1823
    return-void
.end method

.method protected a(Landroid/view/ViewGroup;Landroidx/j/t;Landroidx/j/t;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroidx/j/t;",
            "Landroidx/j/t;",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/j/s;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/j/s;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 710
    invoke-static {}, Landroidx/j/m;->r()Landroidx/b/a;

    move-result-object v14

    .line 711
    const-wide v8, 0x7fffffffffffffffL

    .line 712
    new-instance v15, Landroid/util/SparseIntArray;

    invoke-direct {v15}, Landroid/util/SparseIntArray;-><init>()V

    .line 713
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 714
    const/4 v2, 0x0

    move v13, v2

    :goto_0
    move/from16 v0, v16

    if-ge v13, v0, :cond_9

    .line 715
    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/j/s;

    .line 716
    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/j/s;

    .line 717
    if-eqz v2, :cond_d

    iget-object v4, v2, Landroidx/j/s;->c:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 718
    const/4 v2, 0x0

    move-object v12, v2

    .line 720
    :goto_1
    if-eqz v3, :cond_c

    iget-object v2, v3, Landroidx/j/s;->c:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 721
    const/4 v3, 0x0

    move-object v11, v3

    .line 723
    :goto_2
    if-nez v12, :cond_1

    if-nez v11, :cond_1

    .line 714
    :cond_0
    :goto_3
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto :goto_0

    .line 727
    :cond_1
    if-eqz v12, :cond_2

    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11}, Landroidx/j/m;->a(Landroidx/j/s;Landroidx/j/s;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    .line 728
    :goto_4
    if-eqz v2, :cond_0

    .line 747
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12, v11}, Landroidx/j/m;->a(Landroid/view/ViewGroup;Landroidx/j/s;Landroidx/j/s;)Landroid/animation/Animator;

    move-result-object v5

    .line 748
    if-eqz v5, :cond_0

    .line 751
    const/4 v2, 0x0

    .line 752
    if-eqz v11, :cond_8

    .line 753
    iget-object v6, v11, Landroidx/j/s;->b:Landroid/view/View;

    .line 754
    invoke-virtual/range {p0 .. p0}, Landroidx/j/m;->a()[Ljava/lang/String;

    move-result-object v7

    .line 755
    if-eqz v7, :cond_5

    array-length v3, v7

    if-lez v3, :cond_5

    .line 756
    new-instance v4, Landroidx/j/s;

    invoke-direct {v4, v6}, Landroidx/j/s;-><init>(Landroid/view/View;)V

    .line 757
    move-object/from16 v0, p3

    iget-object v2, v0, Landroidx/j/t;->a:Landroidx/b/a;

    invoke-virtual {v2, v6}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/j/s;

    .line 758
    if-eqz v2, :cond_4

    .line 759
    const/4 v3, 0x0

    :goto_5
    array-length v10, v7

    if-ge v3, v10, :cond_4

    .line 760
    iget-object v10, v4, Landroidx/j/s;->a:Ljava/util/Map;

    aget-object v17, v7, v3

    iget-object v0, v2, Landroidx/j/s;->a:Ljava/util/Map;

    move-object/from16 v18, v0

    aget-object v19, v7, v3

    .line 761
    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 760
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 727
    :cond_3
    const/4 v2, 0x0

    goto :goto_4

    .line 764
    :cond_4
    invoke-virtual {v14}, Landroidx/b/a;->size()I

    move-result v7

    .line 765
    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v3, v7, :cond_b

    .line 766
    invoke-virtual {v14, v3}, Landroidx/b/a;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 767
    invoke-virtual {v14, v2}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/j/m$a;

    .line 768
    iget-object v10, v2, Landroidx/j/m$a;->c:Landroidx/j/s;

    if-eqz v10, :cond_7

    iget-object v10, v2, Landroidx/j/m$a;->a:Landroid/view/View;

    if-ne v10, v6, :cond_7

    iget-object v10, v2, Landroidx/j/m$a;->b:Ljava/lang/String;

    .line 769
    invoke-virtual/range {p0 .. p0}, Landroidx/j/m;->q()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 770
    iget-object v2, v2, Landroidx/j/m$a;->c:Landroidx/j/s;

    invoke-virtual {v2, v4}, Landroidx/j/s;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 772
    const/4 v3, 0x0

    move-object v2, v4

    move-object v5, v3

    :cond_5
    :goto_7
    move-object v7, v2

    move-object v3, v6

    move-object v10, v5

    .line 781
    :goto_8
    if-eqz v10, :cond_0

    .line 782
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/j/m;->g:Landroidx/j/p;

    if-eqz v2, :cond_6

    .line 783
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/j/m;->g:Landroidx/j/p;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v2, v0, v1, v12, v11}, Landroidx/j/p;->a(Landroid/view/ViewGroup;Landroidx/j/m;Landroidx/j/s;Landroidx/j/s;)J

    move-result-wide v4

    .line 784
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/j/m;->G:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    long-to-int v6, v4

    invoke-virtual {v15, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 785
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-wide v8, v4

    .line 787
    :cond_6
    new-instance v2, Landroidx/j/m$a;

    invoke-virtual/range {p0 .. p0}, Landroidx/j/m;->q()Ljava/lang/String;

    move-result-object v4

    .line 788
    invoke-static/range {p1 .. p1}, Landroidx/j/ac;->b(Landroid/view/View;)Landroidx/j/am;

    move-result-object v6

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v7}, Landroidx/j/m$a;-><init>(Landroid/view/View;Ljava/lang/String;Landroidx/j/m;Landroidx/j/am;Landroidx/j/s;)V

    .line 789
    invoke-virtual {v14, v10, v2}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/j/m;->G:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 765
    :cond_7
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_6

    .line 779
    :cond_8
    iget-object v3, v12, Landroidx/j/s;->b:Landroid/view/View;

    move-object v7, v2

    move-object v10, v5

    goto :goto_8

    .line 795
    :cond_9
    invoke-virtual {v15}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-eqz v2, :cond_a

    .line 796
    const/4 v2, 0x0

    move v3, v2

    :goto_9
    invoke-virtual {v15}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v3, v2, :cond_a

    .line 797
    invoke-virtual {v15, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 798
    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/j/m;->G:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 799
    invoke-virtual {v15, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v4, v8

    invoke-virtual {v2}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 800
    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 796
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_9

    .line 803
    :cond_a
    return-void

    :cond_b
    move-object v2, v4

    goto :goto_7

    :cond_c
    move-object v11, v3

    goto/16 :goto_2

    :cond_d
    move-object v12, v2

    goto/16 :goto_1
.end method

.method a(Landroid/view/ViewGroup;Z)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1471
    invoke-virtual {p0, p2}, Landroidx/j/m;->a(Z)V

    .line 1472
    iget-object v0, p0, Landroidx/j/m;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Landroidx/j/m;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    :cond_0
    iget-object v0, p0, Landroidx/j/m;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/j/m;->m:Ljava/util/ArrayList;

    .line 1473
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_1
    iget-object v0, p0, Landroidx/j/m;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/j/m;->n:Ljava/util/ArrayList;

    .line 1474
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_2
    move v1, v2

    .line 1475
    :goto_0
    iget-object v0, p0, Landroidx/j/m;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 1476
    iget-object v0, p0, Landroidx/j/m;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1477
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1478
    if-eqz v0, :cond_3

    .line 1479
    new-instance v3, Landroidx/j/s;

    invoke-direct {v3, v0}, Landroidx/j/s;-><init>(Landroid/view/View;)V

    .line 1480
    if-eqz p2, :cond_4

    .line 1481
    invoke-virtual {p0, v3}, Landroidx/j/m;->a(Landroidx/j/s;)V

    .line 1485
    :goto_1
    iget-object v4, v3, Landroidx/j/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1486
    invoke-virtual {p0, v3}, Landroidx/j/m;->c(Landroidx/j/s;)V

    .line 1487
    if-eqz p2, :cond_5

    .line 1488
    iget-object v4, p0, Landroidx/j/m;->v:Landroidx/j/t;

    invoke-static {v4, v0, v3}, Landroidx/j/m;->a(Landroidx/j/t;Landroid/view/View;Landroidx/j/s;)V

    .line 1475
    :cond_3
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1483
    :cond_4
    invoke-virtual {p0, v3}, Landroidx/j/m;->b(Landroidx/j/s;)V

    goto :goto_1

    .line 1490
    :cond_5
    iget-object v4, p0, Landroidx/j/m;->w:Landroidx/j/t;

    invoke-static {v4, v0, v3}, Landroidx/j/m;->a(Landroidx/j/t;Landroid/view/View;Landroidx/j/s;)V

    goto :goto_2

    :cond_6
    move v1, v2

    .line 1494
    :goto_3
    iget-object v0, p0, Landroidx/j/m;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    .line 1495
    iget-object v0, p0, Landroidx/j/m;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1496
    new-instance v3, Landroidx/j/s;

    invoke-direct {v3, v0}, Landroidx/j/s;-><init>(Landroid/view/View;)V

    .line 1497
    if-eqz p2, :cond_7

    .line 1498
    invoke-virtual {p0, v3}, Landroidx/j/m;->a(Landroidx/j/s;)V

    .line 1502
    :goto_4
    iget-object v4, v3, Landroidx/j/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1503
    invoke-virtual {p0, v3}, Landroidx/j/m;->c(Landroidx/j/s;)V

    .line 1504
    if-eqz p2, :cond_8

    .line 1505
    iget-object v4, p0, Landroidx/j/m;->v:Landroidx/j/t;

    invoke-static {v4, v0, v3}, Landroidx/j/m;->a(Landroidx/j/t;Landroid/view/View;Landroidx/j/s;)V

    .line 1494
    :goto_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 1500
    :cond_7
    invoke-virtual {p0, v3}, Landroidx/j/m;->b(Landroidx/j/s;)V

    goto :goto_4

    .line 1507
    :cond_8
    iget-object v4, p0, Landroidx/j/m;->w:Landroidx/j/t;

    invoke-static {v4, v0, v3}, Landroidx/j/m;->a(Landroidx/j/t;Landroid/view/View;Landroidx/j/s;)V

    goto :goto_5

    .line 1511
    :cond_9
    invoke-direct {p0, p1, p2}, Landroidx/j/m;->c(Landroid/view/View;Z)V

    .line 1513
    :cond_a
    if-nez p2, :cond_d

    iget-object v0, p0, Landroidx/j/m;->I:Landroidx/b/a;

    if-eqz v0, :cond_d

    .line 1514
    iget-object v0, p0, Landroidx/j/m;->I:Landroidx/b/a;

    invoke-virtual {v0}, Landroidx/b/a;->size()I

    move-result v3

    .line 1515
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v2

    .line 1516
    :goto_6
    if-ge v1, v3, :cond_b

    .line 1517
    iget-object v0, p0, Landroidx/j/m;->I:Landroidx/b/a;

    invoke-virtual {v0, v1}, Landroidx/b/a;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1518
    iget-object v5, p0, Landroidx/j/m;->v:Landroidx/j/t;

    iget-object v5, v5, Landroidx/j/t;->d:Landroidx/b/a;

    invoke-virtual {v5, v0}, Landroidx/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1516
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 1520
    :cond_b
    :goto_7
    if-ge v2, v3, :cond_d

    .line 1521
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1522
    if-eqz v0, :cond_c

    .line 1523
    iget-object v1, p0, Landroidx/j/m;->I:Landroidx/b/a;

    invoke-virtual {v1, v2}, Landroidx/b/a;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1524
    iget-object v5, p0, Landroidx/j/m;->v:Landroidx/j/t;

    iget-object v5, v5, Landroidx/j/t;->d:Landroidx/b/a;

    invoke-virtual {v5, v1, v0}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1520
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1528
    :cond_d
    return-void
.end method

.method public a(Landroidx/j/g;)V
    .locals 1

    .prologue
    .line 2085
    if-nez p1, :cond_0

    .line 2086
    sget-object v0, Landroidx/j/m;->i:Landroidx/j/g;

    iput-object v0, p0, Landroidx/j/m;->J:Landroidx/j/g;

    .line 2090
    :goto_0
    return-void

    .line 2088
    :cond_0
    iput-object p1, p0, Landroidx/j/m;->J:Landroidx/j/g;

    goto :goto_0
.end method

.method public a(Landroidx/j/m$b;)V
    .locals 0

    .prologue
    .line 2118
    iput-object p1, p0, Landroidx/j/m;->H:Landroidx/j/m$b;

    .line 2119
    return-void
.end method

.method public a(Landroidx/j/p;)V
    .locals 0

    .prologue
    .line 2164
    iput-object p1, p0, Landroidx/j/m;->g:Landroidx/j/p;

    .line 2165
    return-void
.end method

.method public abstract a(Landroidx/j/s;)V
.end method

.method a(Z)V
    .locals 1

    .prologue
    .line 1577
    if-eqz p1, :cond_0

    .line 1578
    iget-object v0, p0, Landroidx/j/m;->v:Landroidx/j/t;

    iget-object v0, v0, Landroidx/j/t;->a:Landroidx/b/a;

    invoke-virtual {v0}, Landroidx/b/a;->clear()V

    .line 1579
    iget-object v0, p0, Landroidx/j/m;->v:Landroidx/j/t;

    iget-object v0, v0, Landroidx/j/t;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1580
    iget-object v0, p0, Landroidx/j/m;->v:Landroidx/j/t;

    iget-object v0, v0, Landroidx/j/t;->c:Landroidx/b/d;

    invoke-virtual {v0}, Landroidx/b/d;->d()V

    .line 1586
    :goto_0
    return-void

    .line 1582
    :cond_0
    iget-object v0, p0, Landroidx/j/m;->w:Landroidx/j/t;

    iget-object v0, v0, Landroidx/j/t;->a:Landroidx/b/a;

    invoke-virtual {v0}, Landroidx/b/a;->clear()V

    .line 1583
    iget-object v0, p0, Landroidx/j/m;->w:Landroidx/j/t;

    iget-object v0, v0, Landroidx/j/t;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1584
    iget-object v0, p0, Landroidx/j/m;->w:Landroidx/j/t;

    iget-object v0, v0, Landroidx/j/t;->c:Landroidx/b/d;

    invoke-virtual {v0}, Landroidx/b/d;->d()V

    goto :goto_0
.end method

.method a(Landroid/view/View;)Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 816
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    .line 817
    iget-object v0, p0, Landroidx/j/m;->o:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/j/m;->o:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 855
    :cond_0
    :goto_0
    return v2

    .line 820
    :cond_1
    iget-object v0, p0, Landroidx/j/m;->p:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/j/m;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 823
    :cond_2
    iget-object v0, p0, Landroidx/j/m;->q:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 824
    iget-object v0, p0, Landroidx/j/m;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v1, v2

    .line 825
    :goto_1
    if-ge v1, v5, :cond_3

    .line 826
    iget-object v0, p0, Landroidx/j/m;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 827
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 825
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 832
    :cond_3
    iget-object v0, p0, Landroidx/j/m;->r:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-static {p1}, Landroidx/core/h/u;->o(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 833
    iget-object v0, p0, Landroidx/j/m;->r:Ljava/util/ArrayList;

    invoke-static {p1}, Landroidx/core/h/u;->o(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 837
    :cond_4
    iget-object v0, p0, Landroidx/j/m;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Landroidx/j/m;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Landroidx/j/m;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/j/m;->n:Ljava/util/ArrayList;

    .line 838
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    iget-object v0, p0, Landroidx/j/m;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/j/m;->m:Ljava/util/ArrayList;

    .line 839
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    move v2, v3

    .line 840
    goto :goto_0

    .line 842
    :cond_7
    iget-object v0, p0, Landroidx/j/m;->b:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Landroidx/j/m;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    move v2, v3

    .line 843
    goto/16 :goto_0

    .line 845
    :cond_9
    iget-object v0, p0, Landroidx/j/m;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroidx/j/m;->m:Ljava/util/ArrayList;

    invoke-static {p1}, Landroidx/core/h/u;->o(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v2, v3

    .line 846
    goto/16 :goto_0

    .line 848
    :cond_a
    iget-object v0, p0, Landroidx/j/m;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    move v1, v2

    .line 849
    :goto_2
    iget-object v0, p0, Landroidx/j/m;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 850
    iget-object v0, p0, Landroidx/j/m;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v2, v3

    .line 851
    goto/16 :goto_0

    .line 849
    :cond_b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public a(Landroidx/j/s;Landroidx/j/s;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1840
    .line 1843
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1844
    invoke-virtual {p0}, Landroidx/j/m;->a()[Ljava/lang/String;

    move-result-object v3

    .line 1845
    if-eqz v3, :cond_2

    .line 1846
    array-length v4, v3

    move v0, v2

    :goto_0
    if-ge v0, v4, :cond_4

    aget-object v5, v3, v0

    .line 1847
    invoke-static {p1, p2, v5}, Landroidx/j/m;->a(Landroidx/j/s;Landroidx/j/s;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v1

    :goto_1
    move v2, v0

    .line 1861
    :cond_0
    :goto_2
    return v2

    .line 1846
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1853
    :cond_2
    iget-object v0, p1, Landroidx/j/s;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1854
    invoke-static {p1, p2, v0}, Landroidx/j/m;->a(Landroidx/j/s;Landroidx/j/s;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v2, v1

    .line 1856
    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public a()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 438
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 357
    iget-wide v0, p0, Landroidx/j/m;->a:J

    return-wide v0
.end method

.method public b(J)Landroidx/j/m;
    .locals 1

    .prologue
    .line 371
    iput-wide p1, p0, Landroidx/j/m;->k:J

    .line 372
    return-object p0
.end method

.method public b(Landroid/view/View;)Landroidx/j/m;
    .locals 1

    .prologue
    .line 1000
    iget-object v0, p0, Landroidx/j/m;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1001
    return-object p0
.end method

.method public b(Landroidx/j/m$c;)Landroidx/j/m;
    .locals 1

    .prologue
    .line 2058
    iget-object v0, p0, Landroidx/j/m;->F:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 2065
    :cond_0
    :goto_0
    return-object p0

    .line 2061
    :cond_1
    iget-object v0, p0, Landroidx/j/m;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2062
    iget-object v0, p0, Landroidx/j/m;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2063
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/j/m;->F:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method b(Landroid/view/View;Z)Landroidx/j/s;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1682
    iget-object v0, p0, Landroidx/j/m;->d:Landroidx/j/q;

    if-eqz v0, :cond_1

    .line 1683
    iget-object v0, p0, Landroidx/j/m;->d:Landroidx/j/q;

    invoke-virtual {v0, p1, p2}, Landroidx/j/q;->b(Landroid/view/View;Z)Landroidx/j/s;

    move-result-object v1

    .line 1707
    :cond_0
    :goto_0
    return-object v1

    .line 1685
    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Landroidx/j/m;->y:Ljava/util/ArrayList;

    move-object v4, v0

    .line 1686
    :goto_1
    if-eqz v4, :cond_0

    .line 1689
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1690
    const/4 v3, -0x1

    .line 1691
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v5, :cond_6

    .line 1692
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/j/s;

    .line 1693
    if-eqz v0, :cond_0

    .line 1697
    iget-object v0, v0, Landroidx/j/s;->b:Landroid/view/View;

    if-ne v0, p1, :cond_3

    .line 1703
    :goto_3
    if-ltz v2, :cond_5

    .line 1704
    if-eqz p2, :cond_4

    iget-object v0, p0, Landroidx/j/m;->z:Ljava/util/ArrayList;

    .line 1705
    :goto_4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/j/s;

    :goto_5
    move-object v1, v0

    .line 1707
    goto :goto_0

    .line 1685
    :cond_2
    iget-object v0, p0, Landroidx/j/m;->z:Ljava/util/ArrayList;

    move-object v4, v0

    goto :goto_1

    .line 1691
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1704
    :cond_4
    iget-object v0, p0, Landroidx/j/m;->y:Ljava/util/ArrayList;

    goto :goto_4

    :cond_5
    move-object v0, v1

    goto :goto_5

    :cond_6
    move v2, v3

    goto :goto_3
.end method

.method public abstract b(Landroidx/j/s;)V
.end method

.method public c()J
    .locals 2

    .prologue
    .line 384
    iget-wide v0, p0, Landroidx/j/m;->k:J

    return-wide v0
.end method

.method public c(Landroid/view/View;)Landroidx/j/m;
    .locals 1

    .prologue
    .line 1098
    iget-object v0, p0, Landroidx/j/m;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1099
    return-object p0
.end method

.method c(Landroidx/j/s;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2189
    iget-object v0, p0, Landroidx/j/m;->g:Landroidx/j/p;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/j/s;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2190
    iget-object v0, p0, Landroidx/j/m;->g:Landroidx/j/p;

    invoke-virtual {v0}, Landroidx/j/p;->a()[Ljava/lang/String;

    move-result-object v3

    .line 2191
    if-nez v3, :cond_1

    .line 2205
    :cond_0
    :goto_0
    return-void

    .line 2194
    :cond_1
    const/4 v2, 0x1

    move v0, v1

    .line 2195
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_3

    .line 2196
    iget-object v4, p1, Landroidx/j/s;->a:Ljava/util/Map;

    aget-object v5, v3, v0

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2201
    :goto_2
    if-nez v1, :cond_0

    .line 2202
    iget-object v0, p0, Landroidx/j/m;->g:Landroidx/j/p;

    invoke-virtual {v0, p1}, Landroidx/j/p;->a(Landroidx/j/s;)V

    goto :goto_0

    .line 2195
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, Landroidx/j/m;->p()Landroidx/j/m;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroid/animation/TimeInterpolator;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Landroidx/j/m;->l:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public d(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 1719
    iget-boolean v0, p0, Landroidx/j/m;->E:Z

    if-nez v0, :cond_3

    .line 1720
    invoke-static {}, Landroidx/j/m;->r()Landroidx/b/a;

    move-result-object v2

    .line 1721
    invoke-virtual {v2}, Landroidx/b/a;->size()I

    move-result v0

    .line 1722
    invoke-static {p1}, Landroidx/j/ac;->b(Landroid/view/View;)Landroidx/j/am;

    move-result-object v3

    .line 1723
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 1724
    invoke-virtual {v2, v1}, Landroidx/b/a;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/j/m$a;

    .line 1725
    iget-object v4, v0, Landroidx/j/m$a;->a:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v0, v0, Landroidx/j/m$a;->d:Landroidx/j/am;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1726
    invoke-virtual {v2, v1}, Landroidx/b/a;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 1727
    invoke-static {v0}, Landroidx/j/a;->a(Landroid/animation/Animator;)V

    .line 1723
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1730
    :cond_1
    iget-object v0, p0, Landroidx/j/m;->F:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/j/m;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1731
    iget-object v0, p0, Landroidx/j/m;->F:Ljava/util/ArrayList;

    .line 1732
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1733
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1734
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_2

    .line 1735
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/j/m$c;

    invoke-interface {v1, p0}, Landroidx/j/m$c;->c(Landroidx/j/m;)V

    .line 1734
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 1738
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/j/m;->D:Z

    .line 1740
    :cond_3
    return-void
.end method

.method protected e()V
    .locals 4

    .prologue
    .line 878
    invoke-virtual {p0}, Landroidx/j/m;->j()V

    .line 879
    invoke-static {}, Landroidx/j/m;->r()Landroidx/b/a;

    move-result-object v1

    .line 881
    iget-object v0, p0, Landroidx/j/m;->G:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 885
    invoke-virtual {v1, v0}, Landroidx/b/a;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 886
    invoke-virtual {p0}, Landroidx/j/m;->j()V

    .line 887
    invoke-direct {p0, v0, v1}, Landroidx/j/m;->a(Landroid/animation/Animator;Landroidx/b/a;)V

    goto :goto_0

    .line 890
    :cond_1
    iget-object v0, p0, Landroidx/j/m;->G:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 891
    invoke-virtual {p0}, Landroidx/j/m;->k()V

    .line 892
    return-void
.end method

.method public e(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1751
    iget-boolean v0, p0, Landroidx/j/m;->D:Z

    if-eqz v0, :cond_3

    .line 1752
    iget-boolean v0, p0, Landroidx/j/m;->E:Z

    if-nez v0, :cond_2

    .line 1753
    invoke-static {}, Landroidx/j/m;->r()Landroidx/b/a;

    move-result-object v2

    .line 1754
    invoke-virtual {v2}, Landroidx/b/a;->size()I

    move-result v0

    .line 1755
    invoke-static {p1}, Landroidx/j/ac;->b(Landroid/view/View;)Landroidx/j/am;

    move-result-object v4

    .line 1756
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 1757
    invoke-virtual {v2, v1}, Landroidx/b/a;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/j/m$a;

    .line 1758
    iget-object v5, v0, Landroidx/j/m$a;->a:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v0, v0, Landroidx/j/m$a;->d:Landroidx/j/am;

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1759
    invoke-virtual {v2, v1}, Landroidx/b/a;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 1760
    invoke-static {v0}, Landroidx/j/a;->b(Landroid/animation/Animator;)V

    .line 1756
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1763
    :cond_1
    iget-object v0, p0, Landroidx/j/m;->F:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/j/m;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1764
    iget-object v0, p0, Landroidx/j/m;->F:Ljava/util/ArrayList;

    .line 1765
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1766
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v3

    .line 1767
    :goto_1
    if-ge v2, v4, :cond_2

    .line 1768
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/j/m$c;

    invoke-interface {v1, p0}, Landroidx/j/m$c;->d(Landroidx/j/m;)V

    .line 1767
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 1772
    :cond_2
    iput-boolean v3, p0, Landroidx/j/m;->D:Z

    .line 1774
    :cond_3
    return-void
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1415
    iget-object v0, p0, Landroidx/j/m;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1429
    iget-object v0, p0, Landroidx/j/m;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1444
    iget-object v0, p0, Landroidx/j/m;->m:Ljava/util/ArrayList;

    return-object v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 1459
    iget-object v0, p0, Landroidx/j/m;->n:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected j()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1931
    iget v0, p0, Landroidx/j/m;->C:I

    if-nez v0, :cond_1

    .line 1932
    iget-object v0, p0, Landroidx/j/m;->F:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/j/m;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1933
    iget-object v0, p0, Landroidx/j/m;->F:Ljava/util/ArrayList;

    .line 1934
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1935
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v3

    .line 1936
    :goto_0
    if-ge v2, v4, :cond_0

    .line 1937
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/j/m$c;

    invoke-interface {v1, p0}, Landroidx/j/m$c;->e(Landroidx/j/m;)V

    .line 1936
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 1940
    :cond_0
    iput-boolean v3, p0, Landroidx/j/m;->E:Z

    .line 1942
    :cond_1
    iget v0, p0, Landroidx/j/m;->C:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/j/m;->C:I

    .line 1943
    return-void
.end method

.method protected k()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1958
    iget v0, p0, Landroidx/j/m;->C:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/j/m;->C:I

    .line 1959
    iget v0, p0, Landroidx/j/m;->C:I

    if-nez v0, :cond_5

    .line 1960
    iget-object v0, p0, Landroidx/j/m;->F:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/j/m;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1961
    iget-object v0, p0, Landroidx/j/m;->F:Ljava/util/ArrayList;

    .line 1962
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1963
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    .line 1964
    :goto_0
    if-ge v3, v4, :cond_0

    .line 1965
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/j/m$c;

    invoke-interface {v1, p0}, Landroidx/j/m$c;->b(Landroidx/j/m;)V

    .line 1964
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1968
    :goto_1
    iget-object v0, p0, Landroidx/j/m;->v:Landroidx/j/t;

    iget-object v0, v0, Landroidx/j/t;->c:Landroidx/b/d;

    invoke-virtual {v0}, Landroidx/b/d;->b()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1969
    iget-object v0, p0, Landroidx/j/m;->v:Landroidx/j/t;

    iget-object v0, v0, Landroidx/j/t;->c:Landroidx/b/d;

    invoke-virtual {v0, v1}, Landroidx/b/d;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1970
    if-eqz v0, :cond_1

    .line 1971
    invoke-static {v0, v2}, Landroidx/core/h/u;->a(Landroid/view/View;Z)V

    .line 1968
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, v2

    .line 1974
    :goto_2
    iget-object v0, p0, Landroidx/j/m;->w:Landroidx/j/t;

    iget-object v0, v0, Landroidx/j/t;->c:Landroidx/b/d;

    invoke-virtual {v0}, Landroidx/b/d;->b()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1975
    iget-object v0, p0, Landroidx/j/m;->w:Landroidx/j/t;

    iget-object v0, v0, Landroidx/j/t;->c:Landroidx/b/d;

    invoke-virtual {v0, v1}, Landroidx/b/d;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1976
    if-eqz v0, :cond_3

    .line 1977
    invoke-static {v0, v2}, Landroidx/core/h/u;->a(Landroid/view/View;Z)V

    .line 1974
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1980
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/j/m;->E:Z

    .line 1982
    :cond_5
    return-void
.end method

.method protected l()V
    .locals 4

    .prologue
    .line 2017
    iget-object v0, p0, Landroidx/j/m;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2018
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 2019
    iget-object v0, p0, Landroidx/j/m;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 2020
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2018
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 2022
    :cond_0
    iget-object v0, p0, Landroidx/j/m;->F:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/j/m;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2023
    iget-object v0, p0, Landroidx/j/m;->F:Ljava/util/ArrayList;

    .line 2024
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2025
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2026
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_1

    .line 2027
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/j/m$c;

    invoke-interface {v1, p0}, Landroidx/j/m$c;->a(Landroidx/j/m;)V

    .line 2026
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 2030
    :cond_1
    return-void
.end method

.method public m()Landroidx/j/g;
    .locals 1

    .prologue
    .line 2103
    iget-object v0, p0, Landroidx/j/m;->J:Landroidx/j/g;

    return-object v0
.end method

.method public n()Landroidx/j/m$b;
    .locals 1

    .prologue
    .line 2133
    iget-object v0, p0, Landroidx/j/m;->H:Landroidx/j/m$b;

    return-object v0
.end method

.method public o()Landroidx/j/p;
    .locals 1

    .prologue
    .line 2181
    iget-object v0, p0, Landroidx/j/m;->g:Landroidx/j/p;

    return-object v0
.end method

.method public p()Landroidx/j/m;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2224
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/j/m;

    .line 2225
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Landroidx/j/m;->G:Ljava/util/ArrayList;

    .line 2226
    new-instance v2, Landroidx/j/t;

    invoke-direct {v2}, Landroidx/j/t;-><init>()V

    iput-object v2, v0, Landroidx/j/m;->v:Landroidx/j/t;

    .line 2227
    new-instance v2, Landroidx/j/t;

    invoke-direct {v2}, Landroidx/j/t;-><init>()V

    iput-object v2, v0, Landroidx/j/m;->w:Landroidx/j/t;

    .line 2228
    const/4 v2, 0x0

    iput-object v2, v0, Landroidx/j/m;->y:Ljava/util/ArrayList;

    .line 2229
    const/4 v2, 0x0

    iput-object v2, v0, Landroidx/j/m;->z:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2232
    :goto_0
    return-object v0

    .line 2231
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 2232
    goto :goto_0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2250
    iget-object v0, p0, Landroidx/j/m;->j:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2218
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Landroidx/j/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
