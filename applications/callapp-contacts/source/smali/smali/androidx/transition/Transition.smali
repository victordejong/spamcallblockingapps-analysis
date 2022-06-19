.class public abstract Landroidx/transition/Transition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/Transition$b;,
        Landroidx/transition/Transition$a;,
        Landroidx/transition/Transition$c;
    }
.end annotation


# static fields
.field private static A:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroidx/b/a<",
            "Landroid/animation/Animator;",
            "Landroidx/transition/Transition$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final a:[I

.field private static final k:Landroidx/transition/PathMotion;


# instance fields
.field private B:I

.field private C:Z

.field private D:Z

.field private E:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/transition/Transition$c;",
            ">;"
        }
    .end annotation
.end field

.field private F:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private G:Landroidx/transition/Transition$b;

.field private H:Landroidx/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private I:Landroidx/transition/PathMotion;

.field b:J

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field g:Landroidx/transition/TransitionSet;

.field h:Z

.field i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field j:Landroidx/transition/v;

.field private l:Ljava/lang/String;

.field private m:J

.field private n:Landroid/animation/TimeInterpolator;

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private v:Landroidx/transition/y;

.field private w:Landroidx/transition/y;

.field private x:[I

.field private y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/transition/x;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/transition/x;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 164
    fill-array-data v0, :array_0

    sput-object v0, Landroidx/transition/Transition;->a:[I

    .line 171
    new-instance v0, Landroidx/transition/Transition$1;

    invoke-direct {v0}, Landroidx/transition/Transition$1;-><init>()V

    sput-object v0, Landroidx/transition/Transition;->k:Landroidx/transition/PathMotion;

    .line 205
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/transition/Transition;->A:Ljava/lang/ThreadLocal;

    return-void

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
    .locals 3

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/transition/Transition;->l:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 183
    iput-wide v0, p0, Landroidx/transition/Transition;->m:J

    .line 184
    iput-wide v0, p0, Landroidx/transition/Transition;->b:J

    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Landroidx/transition/Transition;->n:Landroid/animation/TimeInterpolator;

    .line 186
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->c:Ljava/util/ArrayList;

    .line 187
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->d:Ljava/util/ArrayList;

    .line 188
    iput-object v0, p0, Landroidx/transition/Transition;->e:Ljava/util/ArrayList;

    .line 189
    iput-object v0, p0, Landroidx/transition/Transition;->f:Ljava/util/ArrayList;

    .line 190
    iput-object v0, p0, Landroidx/transition/Transition;->o:Ljava/util/ArrayList;

    .line 191
    iput-object v0, p0, Landroidx/transition/Transition;->p:Ljava/util/ArrayList;

    .line 192
    iput-object v0, p0, Landroidx/transition/Transition;->q:Ljava/util/ArrayList;

    .line 193
    iput-object v0, p0, Landroidx/transition/Transition;->r:Ljava/util/ArrayList;

    .line 194
    iput-object v0, p0, Landroidx/transition/Transition;->s:Ljava/util/ArrayList;

    .line 195
    iput-object v0, p0, Landroidx/transition/Transition;->t:Ljava/util/ArrayList;

    .line 196
    iput-object v0, p0, Landroidx/transition/Transition;->u:Ljava/util/ArrayList;

    .line 197
    new-instance v1, Landroidx/transition/y;

    invoke-direct {v1}, Landroidx/transition/y;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->v:Landroidx/transition/y;

    .line 198
    new-instance v1, Landroidx/transition/y;

    invoke-direct {v1}, Landroidx/transition/y;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->w:Landroidx/transition/y;

    .line 199
    iput-object v0, p0, Landroidx/transition/Transition;->g:Landroidx/transition/TransitionSet;

    .line 200
    sget-object v1, Landroidx/transition/Transition;->a:[I

    iput-object v1, p0, Landroidx/transition/Transition;->x:[I

    const/4 v1, 0x0

    .line 214
    iput-boolean v1, p0, Landroidx/transition/Transition;->h:Z

    .line 218
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/transition/Transition;->i:Ljava/util/ArrayList;

    .line 223
    iput v1, p0, Landroidx/transition/Transition;->B:I

    .line 226
    iput-boolean v1, p0, Landroidx/transition/Transition;->C:Z

    .line 230
    iput-boolean v1, p0, Landroidx/transition/Transition;->D:Z

    .line 233
    iput-object v0, p0, Landroidx/transition/Transition;->E:Ljava/util/ArrayList;

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/Transition;->F:Ljava/util/ArrayList;

    .line 252
    sget-object v0, Landroidx/transition/Transition;->k:Landroidx/transition/PathMotion;

    iput-object v0, p0, Landroidx/transition/Transition;->I:Landroidx/transition/PathMotion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/transition/Transition;->l:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 183
    iput-wide v0, p0, Landroidx/transition/Transition;->m:J

    .line 184
    iput-wide v0, p0, Landroidx/transition/Transition;->b:J

    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Landroidx/transition/Transition;->n:Landroid/animation/TimeInterpolator;

    .line 186
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->c:Ljava/util/ArrayList;

    .line 187
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->d:Ljava/util/ArrayList;

    .line 188
    iput-object v0, p0, Landroidx/transition/Transition;->e:Ljava/util/ArrayList;

    .line 189
    iput-object v0, p0, Landroidx/transition/Transition;->f:Ljava/util/ArrayList;

    .line 190
    iput-object v0, p0, Landroidx/transition/Transition;->o:Ljava/util/ArrayList;

    .line 191
    iput-object v0, p0, Landroidx/transition/Transition;->p:Ljava/util/ArrayList;

    .line 192
    iput-object v0, p0, Landroidx/transition/Transition;->q:Ljava/util/ArrayList;

    .line 193
    iput-object v0, p0, Landroidx/transition/Transition;->r:Ljava/util/ArrayList;

    .line 194
    iput-object v0, p0, Landroidx/transition/Transition;->s:Ljava/util/ArrayList;

    .line 195
    iput-object v0, p0, Landroidx/transition/Transition;->t:Ljava/util/ArrayList;

    .line 196
    iput-object v0, p0, Landroidx/transition/Transition;->u:Ljava/util/ArrayList;

    .line 197
    new-instance v1, Landroidx/transition/y;

    invoke-direct {v1}, Landroidx/transition/y;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->v:Landroidx/transition/y;

    .line 198
    new-instance v1, Landroidx/transition/y;

    invoke-direct {v1}, Landroidx/transition/y;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->w:Landroidx/transition/y;

    .line 199
    iput-object v0, p0, Landroidx/transition/Transition;->g:Landroidx/transition/TransitionSet;

    .line 200
    sget-object v1, Landroidx/transition/Transition;->a:[I

    iput-object v1, p0, Landroidx/transition/Transition;->x:[I

    const/4 v1, 0x0

    .line 214
    iput-boolean v1, p0, Landroidx/transition/Transition;->h:Z

    .line 218
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/transition/Transition;->i:Ljava/util/ArrayList;

    .line 223
    iput v1, p0, Landroidx/transition/Transition;->B:I

    .line 226
    iput-boolean v1, p0, Landroidx/transition/Transition;->C:Z

    .line 230
    iput-boolean v1, p0, Landroidx/transition/Transition;->D:Z

    .line 233
    iput-object v0, p0, Landroidx/transition/Transition;->E:Ljava/util/ArrayList;

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/Transition;->F:Ljava/util/ArrayList;

    .line 252
    sget-object v0, Landroidx/transition/Transition;->k:Landroidx/transition/PathMotion;

    iput-object v0, p0, Landroidx/transition/Transition;->I:Landroidx/transition/PathMotion;

    .line 275
    sget-object v0, Landroidx/transition/s;->c:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 276
    check-cast p2, Landroid/content/res/XmlResourceParser;

    const-string v2, "duration"

    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 277
    invoke-static {v0, p2, v2, v3, v4}, Landroidx/core/content/res/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-ltz v7, :cond_0

    .line 280
    invoke-virtual {p0, v2, v3}, Landroidx/transition/Transition;->a(J)Landroidx/transition/Transition;

    :cond_0
    const/4 v2, 0x2

    const-string v3, "startDelay"

    .line 282
    invoke-static {v0, p2, v3, v2, v4}, Landroidx/core/content/res/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v2, v5

    if-lez v4, :cond_1

    .line 285
    invoke-virtual {p0, v2, v3}, Landroidx/transition/Transition;->b(J)Landroidx/transition/Transition;

    :cond_1
    const-string v2, "interpolator"

    .line 287
    invoke-static {v0, p2, v2, v1}, Landroidx/core/content/res/g;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_2

    .line 290
    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/transition/Transition;->a(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;

    :cond_2
    const/4 p1, 0x3

    const-string v1, "matchOrder"

    .line 292
    invoke-static {v0, p2, v1, p1}, Landroidx/core/content/res/g;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 295
    invoke-static {p1}, Landroidx/transition/Transition;->b(Ljava/lang/String;)[I

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/transition/Transition;->a([I)V

    .line 297
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static a(Landroidx/transition/y;Landroid/view/View;Landroidx/transition/x;)V
    .locals 3

    .line 1529
    iget-object v0, p0, Landroidx/transition/y;->a:Landroidx/b/a;

    invoke-virtual {v0, p1, p2}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1530
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const/4 v0, 0x0

    if-ltz p2, :cond_1

    .line 1532
    iget-object v1, p0, Landroidx/transition/y;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 1534
    iget-object v1, p0, Landroidx/transition/y;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1536
    :cond_0
    iget-object v1, p0, Landroidx/transition/y;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1539
    :cond_1
    :goto_0
    invoke-static {p1}, Landroidx/core/view/v;->p(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 1541
    iget-object v1, p0, Landroidx/transition/y;->d:Landroidx/b/a;

    invoke-virtual {v1, p2}, Landroidx/b/a;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1543
    iget-object v1, p0, Landroidx/transition/y;->d:Landroidx/b/a;

    invoke-virtual {v1, p2, v0}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1545
    :cond_2
    iget-object v1, p0, Landroidx/transition/y;->d:Landroidx/b/a;

    invoke-virtual {v1, p2, p1}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1548
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Landroid/widget/ListView;

    if-eqz p2, :cond_6

    .line 1549
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    .line 1550
    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1551
    invoke-virtual {p2, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 1552
    invoke-virtual {p2, v1}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v1

    .line 1553
    iget-object p2, p0, Landroidx/transition/y;->c:Landroidx/b/d;

    invoke-virtual {p2, v1, v2}, Landroidx/b/d;->b(J)I

    move-result p2

    if-ltz p2, :cond_5

    .line 1555
    iget-object p1, p0, Landroidx/transition/y;->c:Landroidx/b/d;

    .line 13109
    invoke-virtual {p1, v1, v2, v0}, Landroidx/b/d;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1555
    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_4

    const/4 p2, 0x0

    .line 1557
    invoke-static {p1, p2}, Landroidx/core/view/v;->a(Landroid/view/View;Z)V

    .line 1558
    iget-object p0, p0, Landroidx/transition/y;->c:Landroidx/b/d;

    invoke-virtual {p0, v1, v2, v0}, Landroidx/b/d;->b(JLjava/lang/Object;)V

    :cond_4
    return-void

    :cond_5
    const/4 p2, 0x1

    .line 1561
    invoke-static {p1, p2}, Landroidx/core/view/v;->a(Landroid/view/View;Z)V

    .line 1562
    iget-object p0, p0, Landroidx/transition/y;->c:Landroidx/b/d;

    invoke-virtual {p0, v1, v2, p1}, Landroidx/b/d;->b(JLjava/lang/Object;)V

    :cond_6
    return-void
.end method

.method private a(Landroidx/transition/y;Landroidx/transition/y;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 664
    new-instance v3, Landroidx/b/a;

    iget-object v4, v1, Landroidx/transition/y;->a:Landroidx/b/a;

    invoke-direct {v3, v4}, Landroidx/b/a;-><init>(Landroidx/b/g;)V

    .line 665
    new-instance v4, Landroidx/b/a;

    iget-object v5, v2, Landroidx/transition/y;->a:Landroidx/b/a;

    invoke-direct {v4, v5}, Landroidx/b/a;-><init>(Landroidx/b/g;)V

    const/4 v6, 0x0

    .line 667
    :goto_0
    iget-object v7, v0, Landroidx/transition/Transition;->x:[I

    array-length v8, v7

    const/4 v9, 0x0

    if-ge v6, v8, :cond_9

    .line 668
    aget v7, v7, v6

    const/4 v8, 0x1

    if-eq v7, v8, :cond_6

    const/4 v8, 0x2

    if-eq v7, v8, :cond_4

    const/4 v8, 0x3

    if-eq v7, v8, :cond_2

    const/4 v8, 0x4

    if-eq v7, v8, :cond_0

    goto/16 :goto_5

    .line 681
    :cond_0
    iget-object v7, v1, Landroidx/transition/y;->c:Landroidx/b/d;

    iget-object v8, v2, Landroidx/transition/y;->c:Landroidx/b/d;

    .line 4564
    invoke-virtual {v7}, Landroidx/b/d;->b()I

    move-result v10

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_8

    .line 4566
    invoke-virtual {v7, v11}, Landroidx/b/d;->c(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    if-eqz v12, :cond_1

    .line 4567
    invoke-virtual {v0, v12}, Landroidx/transition/Transition;->b(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 4568
    invoke-virtual {v7, v11}, Landroidx/b/d;->b(I)J

    move-result-wide v13

    .line 5109
    invoke-virtual {v8, v13, v14, v9}, Landroidx/b/d;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 4568
    check-cast v13, Landroid/view/View;

    if-eqz v13, :cond_1

    .line 4569
    invoke-virtual {v0, v13}, Landroidx/transition/Transition;->b(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 4570
    invoke-virtual {v3, v12}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/transition/x;

    .line 4571
    invoke-virtual {v4, v13}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/transition/x;

    if-eqz v14, :cond_1

    if-eqz v15, :cond_1

    .line 4573
    iget-object v5, v0, Landroidx/transition/Transition;->y:Ljava/util/ArrayList;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4574
    iget-object v5, v0, Landroidx/transition/Transition;->z:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4575
    invoke-virtual {v3, v12}, Landroidx/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4576
    invoke-virtual {v4, v13}, Landroidx/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 677
    :cond_2
    iget-object v5, v1, Landroidx/transition/y;->b:Landroid/util/SparseArray;

    iget-object v7, v2, Landroidx/transition/y;->b:Landroid/util/SparseArray;

    .line 3591
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_8

    .line 3593
    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    if-eqz v10, :cond_3

    .line 3594
    invoke-virtual {v0, v10}, Landroidx/transition/Transition;->b(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 3595
    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    if-eqz v11, :cond_3

    .line 3596
    invoke-virtual {v0, v11}, Landroidx/transition/Transition;->b(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 3597
    invoke-virtual {v3, v10}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/transition/x;

    .line 3598
    invoke-virtual {v4, v11}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/transition/x;

    if-eqz v12, :cond_3

    if-eqz v13, :cond_3

    .line 3600
    iget-object v14, v0, Landroidx/transition/Transition;->y:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3601
    iget-object v12, v0, Landroidx/transition/Transition;->z:Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3602
    invoke-virtual {v3, v10}, Landroidx/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3603
    invoke-virtual {v4, v11}, Landroidx/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 673
    :cond_4
    iget-object v5, v1, Landroidx/transition/y;->d:Landroidx/b/a;

    iget-object v7, v2, Landroidx/transition/y;->d:Landroidx/b/a;

    .line 2618
    invoke-virtual {v5}, Landroidx/b/a;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v8, :cond_8

    .line 2620
    invoke-virtual {v5, v9}, Landroidx/b/a;->c(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    if-eqz v10, :cond_5

    .line 2621
    invoke-virtual {v0, v10}, Landroidx/transition/Transition;->b(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 2622
    invoke-virtual {v5, v9}, Landroidx/b/a;->b(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    if-eqz v11, :cond_5

    .line 2623
    invoke-virtual {v0, v11}, Landroidx/transition/Transition;->b(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 2624
    invoke-virtual {v3, v10}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/transition/x;

    .line 2625
    invoke-virtual {v4, v11}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/transition/x;

    if-eqz v12, :cond_5

    if-eqz v13, :cond_5

    .line 2627
    iget-object v14, v0, Landroidx/transition/Transition;->y:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2628
    iget-object v12, v0, Landroidx/transition/Transition;->z:Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2629
    invoke-virtual {v3, v10}, Landroidx/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2630
    invoke-virtual {v4, v11}, Landroidx/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 2543
    :cond_6
    invoke-virtual {v3}, Landroidx/b/a;->size()I

    move-result v5

    sub-int/2addr v5, v8

    :goto_4
    if-ltz v5, :cond_8

    .line 2544
    invoke-virtual {v3, v5}, Landroidx/b/a;->b(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    if-eqz v7, :cond_7

    .line 2545
    invoke-virtual {v0, v7}, Landroidx/transition/Transition;->b(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2546
    invoke-virtual {v4, v7}, Landroidx/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/transition/x;

    if-eqz v7, :cond_7

    .line 2547
    iget-object v8, v7, Landroidx/transition/x;->b:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroidx/transition/Transition;->b(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2548
    invoke-virtual {v3, v5}, Landroidx/b/a;->d(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/transition/x;

    .line 2549
    iget-object v9, v0, Landroidx/transition/Transition;->y:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2550
    iget-object v8, v0, Landroidx/transition/Transition;->z:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    :cond_8
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_9
    const/4 v1, 0x0

    .line 5644
    :goto_6
    invoke-virtual {v3}, Landroidx/b/a;->size()I

    move-result v2

    if-ge v1, v2, :cond_b

    .line 5645
    invoke-virtual {v3, v1}, Landroidx/b/a;->c(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/x;

    .line 5646
    iget-object v5, v2, Landroidx/transition/x;->b:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroidx/transition/Transition;->b(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 5647
    iget-object v5, v0, Landroidx/transition/Transition;->y:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5648
    iget-object v2, v0, Landroidx/transition/Transition;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_b
    const/4 v5, 0x0

    .line 5653
    :goto_7
    invoke-virtual {v4}, Landroidx/b/a;->size()I

    move-result v1

    if-ge v5, v1, :cond_d

    .line 5654
    invoke-virtual {v4, v5}, Landroidx/b/a;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/x;

    .line 5655
    iget-object v2, v1, Landroidx/transition/x;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroidx/transition/Transition;->b(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 5656
    iget-object v2, v0, Landroidx/transition/Transition;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5657
    iget-object v1, v0, Landroidx/transition/Transition;->y:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_d
    return-void
.end method

.method private varargs a([I)V
    .locals 4

    if-eqz p1, :cond_5

    .line 507
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 510
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 511
    aget v2, p1, v1

    if-lez v2, :cond_1

    const/4 v3, 0x4

    if-gt v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    .line 515
    invoke-static {p1, v1}, Landroidx/transition/Transition;->a([II)Z

    move-result v2

    if-nez v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 516
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "matches contains a duplicate value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 513
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "matches contains invalid value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 519
    :cond_4
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Landroidx/transition/Transition;->x:[I

    return-void

    .line 508
    :cond_5
    :goto_2
    sget-object p1, Landroidx/transition/Transition;->a:[I

    iput-object p1, p0, Landroidx/transition/Transition;->x:[I

    return-void
.end method

.method private static a(Landroidx/transition/x;Landroidx/transition/x;Ljava/lang/String;)Z
    .locals 0

    .line 1853
    iget-object p0, p0, Landroidx/transition/x;->a:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1854
    iget-object p1, p1, Landroidx/transition/x;->a:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p0, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    const/4 p2, 0x1

    if-eqz p0, :cond_3

    if-nez p1, :cond_1

    goto :goto_0

    .line 1864
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return p2

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    return p2
.end method

.method private static a([II)Z
    .locals 4

    .line 528
    aget v0, p0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    .line 530
    aget v3, p0, v2

    if-ne v3, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static b(Ljava/lang/String;)[I
    .locals 6

    .line 302
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p0

    new-array p0, p0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 306
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 307
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    .line 308
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    const/4 v3, 0x3

    .line 309
    aput v3, p0, v2

    goto :goto_1

    :cond_0
    const-string v4, "instance"

    .line 310
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 311
    aput v5, p0, v2

    goto :goto_1

    :cond_1
    const-string v4, "name"

    .line 312
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x2

    .line 313
    aput v3, p0, v2

    goto :goto_1

    :cond_2
    const-string v4, "itemId"

    .line 314
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x4

    .line 315
    aput v3, p0, v2

    goto :goto_1

    .line 316
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 318
    array-length v3, p0

    sub-int/2addr v3, v5

    new-array v3, v3, [I

    .line 319
    invoke-static {p0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, -0x1

    move-object p0, v3

    :goto_1
    add-int/2addr v2, v5

    goto :goto_0

    .line 323
    :cond_4
    new-instance p0, Landroid/view/InflateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown match type in matchOrder: \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return-object p0
.end method

.method private c(Landroid/view/View;Z)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1599
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1600
    iget-object v1, p0, Landroidx/transition/Transition;->o:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 1603
    :cond_1
    iget-object v1, p0, Landroidx/transition/Transition;->p:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 1606
    :cond_2
    iget-object v1, p0, Landroidx/transition/Transition;->q:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 1607
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    .line 1609
    iget-object v4, p0, Landroidx/transition/Transition;->q:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-void

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1614
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_7

    .line 1615
    new-instance v1, Landroidx/transition/x;

    invoke-direct {v1, p1}, Landroidx/transition/x;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_5

    .line 1617
    invoke-virtual {p0, v1}, Landroidx/transition/Transition;->a(Landroidx/transition/x;)V

    goto :goto_1

    .line 1619
    :cond_5
    invoke-virtual {p0, v1}, Landroidx/transition/Transition;->b(Landroidx/transition/x;)V

    .line 1621
    :goto_1
    iget-object v3, v1, Landroidx/transition/x;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1622
    invoke-virtual {p0, v1}, Landroidx/transition/Transition;->c(Landroidx/transition/x;)V

    if-eqz p2, :cond_6

    .line 1624
    iget-object v3, p0, Landroidx/transition/Transition;->v:Landroidx/transition/y;

    invoke-static {v3, p1, v1}, Landroidx/transition/Transition;->a(Landroidx/transition/y;Landroid/view/View;Landroidx/transition/x;)V

    goto :goto_2

    .line 1626
    :cond_6
    iget-object v3, p0, Landroidx/transition/Transition;->w:Landroidx/transition/y;

    invoke-static {v3, p1, v1}, Landroidx/transition/Transition;->a(Landroidx/transition/y;Landroid/view/View;Landroidx/transition/x;)V

    .line 1629
    :cond_7
    :goto_2
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_c

    .line 1631
    iget-object v1, p0, Landroidx/transition/Transition;->s:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 1634
    :cond_8
    iget-object v0, p0, Landroidx/transition/Transition;->t:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 1637
    :cond_9
    iget-object v0, p0, Landroidx/transition/Transition;->u:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 1638
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_b

    .line 1640
    iget-object v3, p0, Landroidx/transition/Transition;->u:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    return-void

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1645
    :cond_b
    check-cast p1, Landroid/view/ViewGroup;

    .line 1646
    :goto_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_c

    .line 1647
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroidx/transition/Transition;->c(Landroid/view/View;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_c
    return-void
.end method

.method private static l()Landroidx/b/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/b/a<",
            "Landroid/animation/Animator;",
            "Landroidx/transition/Transition$a;",
            ">;"
        }
    .end annotation

    .line 856
    sget-object v0, Landroidx/transition/Transition;->A:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/b/a;

    if-nez v0, :cond_0

    .line 858
    new-instance v0, Landroidx/b/a;

    invoke-direct {v0}, Landroidx/b/a;-><init>()V

    .line 859
    sget-object v1, Landroidx/transition/Transition;->A:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroidx/transition/x;Landroidx/transition/x;)Landroid/animation/Animator;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(J)Landroidx/transition/Transition;
    .locals 0

    .line 341
    iput-wide p1, p0, Landroidx/transition/Transition;->b:J

    return-object p0
.end method

.method public a(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;
    .locals 0

    .line 395
    iput-object p1, p0, Landroidx/transition/Transition;->n:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method public a(Landroidx/transition/Transition$c;)Landroidx/transition/Transition;
    .locals 1

    .line 2029
    iget-object v0, p0, Landroidx/transition/Transition;->E:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2030
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/Transition;->E:Ljava/util/ArrayList;

    .line 2032
    :cond_0
    iget-object v0, p0, Landroidx/transition/Transition;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final a(Landroid/view/View;Z)Landroidx/transition/x;
    .locals 2

    move-object v0, p0

    .line 1660
    :goto_0
    iget-object v1, v0, Landroidx/transition/Transition;->g:Landroidx/transition/TransitionSet;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 1663
    iget-object p2, v0, Landroidx/transition/Transition;->v:Landroidx/transition/y;

    goto :goto_1

    :cond_1
    iget-object p2, v0, Landroidx/transition/Transition;->w:Landroidx/transition/y;

    .line 1664
    :goto_1
    iget-object p2, p2, Landroidx/transition/y;->a:Landroidx/b/a;

    invoke-virtual {p2, p1}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/transition/x;

    return-object p1
.end method

.method a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 2236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "@"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2237
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2238
    iget-wide v0, p0, Landroidx/transition/Transition;->b:J

    const-wide/16 v2, -0x1

    const-string v4, ") "

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    .line 2239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "dur("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Landroidx/transition/Transition;->b:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2241
    :cond_0
    iget-wide v0, p0, Landroidx/transition/Transition;->m:J

    cmp-long v5, v0, v2

    if-eqz v5, :cond_1

    .line 2242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "dly("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/transition/Transition;->m:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2244
    :cond_1
    iget-object v0, p0, Landroidx/transition/Transition;->n:Landroid/animation/TimeInterpolator;

    if-eqz v0, :cond_2

    .line 2245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "interp("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/transition/Transition;->n:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2247
    :cond_2
    iget-object v0, p0, Landroidx/transition/Transition;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    iget-object v0, p0, Landroidx/transition/Transition;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 2248
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "tgts("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2249
    iget-object v0, p0, Landroidx/transition/Transition;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, ", "

    const/4 v2, 0x0

    if-lez v0, :cond_5

    const/4 v0, 0x0

    .line 2250
    :goto_0
    iget-object v3, p0, Landroidx/transition/Transition;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    if-lez v0, :cond_4

    .line 2252
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2254
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/transition/Transition;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2257
    :cond_5
    iget-object v0, p0, Landroidx/transition/Transition;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 2258
    :goto_1
    iget-object v0, p0, Landroidx/transition/Transition;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    if-lez v2, :cond_6

    .line 2260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2262
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/transition/Transition;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2265
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_8
    return-object p1
.end method

.method final a(Landroid/view/ViewGroup;)V
    .locals 10

    .line 1769
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/Transition;->y:Ljava/util/ArrayList;

    .line 1770
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/Transition;->z:Ljava/util/ArrayList;

    .line 1771
    iget-object v0, p0, Landroidx/transition/Transition;->v:Landroidx/transition/y;

    iget-object v1, p0, Landroidx/transition/Transition;->w:Landroidx/transition/y;

    invoke-direct {p0, v0, v1}, Landroidx/transition/Transition;->a(Landroidx/transition/y;Landroidx/transition/y;)V

    .line 1773
    invoke-static {}, Landroidx/transition/Transition;->l()Landroidx/b/a;

    move-result-object v0

    .line 1774
    invoke-virtual {v0}, Landroidx/b/a;->size()I

    move-result v1

    .line 1775
    invoke-static {p1}, Landroidx/transition/ai;->b(Landroid/view/View;)Landroidx/transition/as;

    move-result-object v2

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    :goto_0
    if-ltz v1, :cond_6

    .line 1777
    invoke-virtual {v0, v1}, Landroidx/b/a;->b(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    if-eqz v4, :cond_5

    .line 1779
    invoke-virtual {v0, v4}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/transition/Transition$a;

    if-eqz v5, :cond_5

    .line 1780
    iget-object v6, v5, Landroidx/transition/Transition$a;->a:Landroid/view/View;

    if-eqz v6, :cond_5

    iget-object v6, v5, Landroidx/transition/Transition$a;->d:Landroidx/transition/as;

    .line 1781
    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1782
    iget-object v6, v5, Landroidx/transition/Transition$a;->c:Landroidx/transition/x;

    .line 1783
    iget-object v7, v5, Landroidx/transition/Transition$a;->a:Landroid/view/View;

    .line 1784
    invoke-virtual {p0, v7, v3}, Landroidx/transition/Transition;->a(Landroid/view/View;Z)Landroidx/transition/x;

    move-result-object v8

    .line 1785
    invoke-virtual {p0, v7, v3}, Landroidx/transition/Transition;->b(Landroid/view/View;Z)Landroidx/transition/x;

    move-result-object v9

    if-nez v8, :cond_0

    if-nez v9, :cond_0

    .line 1787
    iget-object v9, p0, Landroidx/transition/Transition;->w:Landroidx/transition/y;

    iget-object v9, v9, Landroidx/transition/y;->a:Landroidx/b/a;

    invoke-virtual {v9, v7}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Landroidx/transition/x;

    :cond_0
    if-nez v8, :cond_1

    if-eqz v9, :cond_2

    .line 1789
    :cond_1
    iget-object v5, v5, Landroidx/transition/Transition$a;->e:Landroidx/transition/Transition;

    .line 1790
    invoke-virtual {v5, v6, v9}, Landroidx/transition/Transition;->a(Landroidx/transition/x;Landroidx/transition/x;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_5

    .line 1792
    invoke-virtual {v4}, Landroid/animation/Animator;->isRunning()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4}, Landroid/animation/Animator;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    .line 1801
    :cond_3
    invoke-virtual {v0, v4}, Landroidx/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1796
    :cond_4
    :goto_2
    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1808
    :cond_6
    iget-object v6, p0, Landroidx/transition/Transition;->v:Landroidx/transition/y;

    iget-object v7, p0, Landroidx/transition/Transition;->w:Landroidx/transition/y;

    iget-object v8, p0, Landroidx/transition/Transition;->y:Ljava/util/ArrayList;

    iget-object v9, p0, Landroidx/transition/Transition;->z:Ljava/util/ArrayList;

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Landroidx/transition/Transition;->a(Landroid/view/ViewGroup;Landroidx/transition/y;Landroidx/transition/y;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1809
    invoke-virtual {p0}, Landroidx/transition/Transition;->d()V

    return-void
.end method

.method protected a(Landroid/view/ViewGroup;Landroidx/transition/y;Landroidx/transition/y;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroidx/transition/y;",
            "Landroidx/transition/y;",
            "Ljava/util/ArrayList<",
            "Landroidx/transition/x;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroidx/transition/x;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 707
    invoke-static {}, Landroidx/transition/Transition;->l()Landroidx/b/a;

    move-result-object v8

    .line 709
    new-instance v9, Landroid/util/SparseIntArray;

    invoke-direct {v9}, Landroid/util/SparseIntArray;-><init>()V

    .line 710
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v10

    const-wide v0, 0x7fffffffffffffffL

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v10, :cond_d

    move-object/from16 v13, p4

    .line 712
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/x;

    move-object/from16 v14, p5

    .line 713
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/transition/x;

    if-eqz v2, :cond_0

    .line 714
    iget-object v5, v2, Landroidx/transition/x;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v2, 0x0

    :cond_0
    if-eqz v3, :cond_1

    .line 717
    iget-object v5, v3, Landroidx/transition/x;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v3, 0x0

    :cond_1
    if-nez v2, :cond_3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move/from16 v16, v10

    move/from16 v18, v12

    goto/16 :goto_8

    :cond_3
    :goto_1
    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    .line 724
    invoke-virtual {v6, v2, v3}, Landroidx/transition/Transition;->a(Landroidx/transition/x;Landroidx/transition/x;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v5, 0x1

    :goto_3
    if-eqz v5, :cond_2

    .line 744
    invoke-virtual {v6, v7, v2, v3}, Landroidx/transition/Transition;->a(Landroid/view/ViewGroup;Landroidx/transition/x;Landroidx/transition/x;)Landroid/animation/Animator;

    move-result-object v5

    if-eqz v5, :cond_2

    if-eqz v3, :cond_a

    .line 750
    iget-object v15, v3, Landroidx/transition/x;->b:Landroid/view/View;

    .line 751
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/Transition;->a()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 752
    array-length v11, v4

    if-lez v11, :cond_9

    .line 753
    new-instance v11, Landroidx/transition/x;

    invoke-direct {v11, v15}, Landroidx/transition/x;-><init>(Landroid/view/View;)V

    move-object/from16 v17, v5

    move/from16 v16, v10

    move-object/from16 v10, p3

    .line 754
    iget-object v5, v10, Landroidx/transition/y;->a:Landroidx/b/a;

    invoke-virtual {v5, v15}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/transition/x;

    if-eqz v5, :cond_6

    const/4 v10, 0x0

    .line 756
    :goto_4
    array-length v13, v4

    if-ge v10, v13, :cond_6

    .line 757
    iget-object v13, v11, Landroidx/transition/x;->a:Ljava/util/Map;

    aget-object v14, v4, v10

    move/from16 v18, v12

    iget-object v12, v5, Landroidx/transition/x;->a:Ljava/util/Map;

    move-object/from16 v19, v5

    aget-object v5, v4, v10

    .line 758
    invoke-interface {v12, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 757
    invoke-interface {v13, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v14, p5

    move/from16 v12, v18

    move-object/from16 v5, v19

    goto :goto_4

    :cond_6
    move/from16 v18, v12

    .line 761
    invoke-virtual {v8}, Landroidx/b/a;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v4, :cond_8

    .line 763
    invoke-virtual {v8, v5}, Landroidx/b/a;->b(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/Animator;

    .line 764
    invoke-virtual {v8, v10}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/transition/Transition$a;

    .line 765
    iget-object v12, v10, Landroidx/transition/Transition$a;->c:Landroidx/transition/x;

    if-eqz v12, :cond_7

    iget-object v12, v10, Landroidx/transition/Transition$a;->a:Landroid/view/View;

    if-ne v12, v15, :cond_7

    iget-object v12, v10, Landroidx/transition/Transition$a;->b:Ljava/lang/String;

    .line 6232
    iget-object v13, v6, Landroidx/transition/Transition;->l:Ljava/lang/String;

    .line 766
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 767
    iget-object v10, v10, Landroidx/transition/Transition$a;->c:Landroidx/transition/x;

    invoke-virtual {v10, v11}, Landroidx/transition/x;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    move-object v5, v11

    const/4 v10, 0x0

    goto :goto_7

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_8
    move-object v4, v11

    goto :goto_6

    :cond_9
    move-object/from16 v17, v5

    move/from16 v16, v10

    move/from16 v18, v12

    const/4 v4, 0x0

    :goto_6
    move-object v5, v4

    move-object/from16 v10, v17

    goto :goto_7

    :cond_a
    move-object/from16 v17, v5

    move/from16 v16, v10

    move/from16 v18, v12

    .line 776
    iget-object v4, v2, Landroidx/transition/x;->b:Landroid/view/View;

    move-object v15, v4

    move-object/from16 v10, v17

    const/4 v5, 0x0

    :goto_7
    if-eqz v10, :cond_c

    .line 779
    iget-object v4, v6, Landroidx/transition/Transition;->j:Landroidx/transition/v;

    if-eqz v4, :cond_b

    .line 780
    invoke-virtual {v4, v7, v6, v2, v3}, Landroidx/transition/v;->a(Landroid/view/ViewGroup;Landroidx/transition/Transition;Landroidx/transition/x;Landroidx/transition/x;)J

    move-result-wide v2

    .line 781
    iget-object v4, v6, Landroidx/transition/Transition;->F:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    long-to-int v11, v2

    invoke-virtual {v9, v4, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 782
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_b
    move-wide v11, v0

    .line 784
    new-instance v13, Landroidx/transition/Transition$a;

    .line 7232
    iget-object v2, v6, Landroidx/transition/Transition;->l:Ljava/lang/String;

    .line 785
    invoke-static/range {p1 .. p1}, Landroidx/transition/ai;->b(Landroid/view/View;)Landroidx/transition/as;

    move-result-object v4

    move-object v0, v13

    move-object v1, v15

    move-object/from16 v3, p0

    invoke-direct/range {v0 .. v5}, Landroidx/transition/Transition$a;-><init>(Landroid/view/View;Ljava/lang/String;Landroidx/transition/Transition;Landroidx/transition/as;Landroidx/transition/x;)V

    .line 786
    invoke-virtual {v8, v10, v13}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    iget-object v0, v6, Landroidx/transition/Transition;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide v0, v11

    :cond_c
    :goto_8
    add-int/lit8 v12, v18, 0x1

    move/from16 v10, v16

    goto/16 :goto_0

    .line 792
    :cond_d
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-eqz v2, :cond_e

    const/4 v11, 0x0

    .line 793
    :goto_9
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v11, v2, :cond_e

    .line 794
    invoke-virtual {v9, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 795
    iget-object v3, v6, Landroidx/transition/Transition;->F:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 796
    invoke-virtual {v9, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v3, v0

    invoke-virtual {v2}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v7

    add-long/2addr v3, v7

    .line 797
    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_e
    return-void
.end method

.method final a(Landroid/view/ViewGroup;Z)V
    .locals 5

    .line 1468
    invoke-virtual {p0, p2}, Landroidx/transition/Transition;->a(Z)V

    .line 1469
    iget-object v0, p0, Landroidx/transition/Transition;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    iget-object v0, p0, Landroidx/transition/Transition;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroidx/transition/Transition;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1470
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Landroidx/transition/Transition;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 1471
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1508
    :cond_2
    invoke-direct {p0, p1, p2}, Landroidx/transition/Transition;->c(Landroid/view/View;Z)V

    goto/16 :goto_7

    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 1472
    :goto_1
    iget-object v2, p0, Landroidx/transition/Transition;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 1473
    iget-object v2, p0, Landroidx/transition/Transition;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1474
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1476
    new-instance v3, Landroidx/transition/x;

    invoke-direct {v3, v2}, Landroidx/transition/x;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_4

    .line 1478
    invoke-virtual {p0, v3}, Landroidx/transition/Transition;->a(Landroidx/transition/x;)V

    goto :goto_2

    .line 1480
    :cond_4
    invoke-virtual {p0, v3}, Landroidx/transition/Transition;->b(Landroidx/transition/x;)V

    .line 1482
    :goto_2
    iget-object v4, v3, Landroidx/transition/x;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1483
    invoke-virtual {p0, v3}, Landroidx/transition/Transition;->c(Landroidx/transition/x;)V

    if-eqz p2, :cond_5

    .line 1485
    iget-object v4, p0, Landroidx/transition/Transition;->v:Landroidx/transition/y;

    invoke-static {v4, v2, v3}, Landroidx/transition/Transition;->a(Landroidx/transition/y;Landroid/view/View;Landroidx/transition/x;)V

    goto :goto_3

    .line 1487
    :cond_5
    iget-object v4, p0, Landroidx/transition/Transition;->w:Landroidx/transition/y;

    invoke-static {v4, v2, v3}, Landroidx/transition/Transition;->a(Landroidx/transition/y;Landroid/view/View;Landroidx/transition/x;)V

    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    const/4 p1, 0x0

    .line 1491
    :goto_4
    iget-object v0, p0, Landroidx/transition/Transition;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_a

    .line 1492
    iget-object v0, p0, Landroidx/transition/Transition;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1493
    new-instance v2, Landroidx/transition/x;

    invoke-direct {v2, v0}, Landroidx/transition/x;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_8

    .line 1495
    invoke-virtual {p0, v2}, Landroidx/transition/Transition;->a(Landroidx/transition/x;)V

    goto :goto_5

    .line 1497
    :cond_8
    invoke-virtual {p0, v2}, Landroidx/transition/Transition;->b(Landroidx/transition/x;)V

    .line 1499
    :goto_5
    iget-object v3, v2, Landroidx/transition/x;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1500
    invoke-virtual {p0, v2}, Landroidx/transition/Transition;->c(Landroidx/transition/x;)V

    if-eqz p2, :cond_9

    .line 1502
    iget-object v3, p0, Landroidx/transition/Transition;->v:Landroidx/transition/y;

    invoke-static {v3, v0, v2}, Landroidx/transition/Transition;->a(Landroidx/transition/y;Landroid/view/View;Landroidx/transition/x;)V

    goto :goto_6

    .line 1504
    :cond_9
    iget-object v3, p0, Landroidx/transition/Transition;->w:Landroidx/transition/y;

    invoke-static {v3, v0, v2}, Landroidx/transition/Transition;->a(Landroidx/transition/y;Landroid/view/View;Landroidx/transition/x;)V

    :goto_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_a
    :goto_7
    if-nez p2, :cond_d

    .line 1510
    iget-object p1, p0, Landroidx/transition/Transition;->H:Landroidx/b/a;

    if-eqz p1, :cond_d

    .line 1511
    invoke-virtual {p1}, Landroidx/b/a;->size()I

    move-result p1

    .line 1512
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_8
    if-ge v0, p1, :cond_b

    .line 1514
    iget-object v2, p0, Landroidx/transition/Transition;->H:Landroidx/b/a;

    invoke-virtual {v2, v0}, Landroidx/b/a;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1515
    iget-object v3, p0, Landroidx/transition/Transition;->v:Landroidx/transition/y;

    iget-object v3, v3, Landroidx/transition/y;->d:Landroidx/b/a;

    invoke-virtual {v3, v2}, Landroidx/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_b
    :goto_9
    if-ge v1, p1, :cond_d

    .line 1518
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_c

    .line 1520
    iget-object v2, p0, Landroidx/transition/Transition;->H:Landroidx/b/a;

    invoke-virtual {v2, v1}, Landroidx/b/a;->c(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1521
    iget-object v3, p0, Landroidx/transition/Transition;->v:Landroidx/transition/y;

    iget-object v3, v3, Landroidx/transition/y;->d:Landroidx/b/a;

    invoke-virtual {v3, v2, v0}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_d
    return-void
.end method

.method public a(Landroidx/transition/PathMotion;)V
    .locals 0

    if-nez p1, :cond_0

    .line 2073
    sget-object p1, Landroidx/transition/Transition;->k:Landroidx/transition/PathMotion;

    iput-object p1, p0, Landroidx/transition/Transition;->I:Landroidx/transition/PathMotion;

    return-void

    .line 2075
    :cond_0
    iput-object p1, p0, Landroidx/transition/Transition;->I:Landroidx/transition/PathMotion;

    return-void
.end method

.method public a(Landroidx/transition/Transition$b;)V
    .locals 0

    .line 2105
    iput-object p1, p0, Landroidx/transition/Transition;->G:Landroidx/transition/Transition$b;

    return-void
.end method

.method public a(Landroidx/transition/v;)V
    .locals 0

    .line 2151
    iput-object p1, p0, Landroidx/transition/Transition;->j:Landroidx/transition/v;

    return-void
.end method

.method public abstract a(Landroidx/transition/x;)V
.end method

.method final a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1575
    iget-object p1, p0, Landroidx/transition/Transition;->v:Landroidx/transition/y;

    iget-object p1, p1, Landroidx/transition/y;->a:Landroidx/b/a;

    invoke-virtual {p1}, Landroidx/b/a;->clear()V

    .line 1576
    iget-object p1, p0, Landroidx/transition/Transition;->v:Landroidx/transition/y;

    iget-object p1, p1, Landroidx/transition/y;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 1577
    iget-object p1, p0, Landroidx/transition/Transition;->v:Landroidx/transition/y;

    iget-object p1, p1, Landroidx/transition/y;->c:Landroidx/b/d;

    invoke-virtual {p1}, Landroidx/b/d;->d()V

    return-void

    .line 1579
    :cond_0
    iget-object p1, p0, Landroidx/transition/Transition;->w:Landroidx/transition/y;

    iget-object p1, p1, Landroidx/transition/y;->a:Landroidx/b/a;

    invoke-virtual {p1}, Landroidx/b/a;->clear()V

    .line 1580
    iget-object p1, p0, Landroidx/transition/Transition;->w:Landroidx/transition/y;

    iget-object p1, p1, Landroidx/transition/y;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 1581
    iget-object p1, p0, Landroidx/transition/Transition;->w:Landroidx/transition/y;

    iget-object p1, p1, Landroidx/transition/y;->c:Landroidx/b/d;

    invoke-virtual {p1}, Landroidx/b/d;->d()V

    return-void
.end method

.method public a(Landroidx/transition/x;Landroidx/transition/x;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 1831
    invoke-virtual {p0}, Landroidx/transition/Transition;->a()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1833
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 1834
    invoke-static {p1, p2, v5}, Landroidx/transition/Transition;->a(Landroidx/transition/x;Landroidx/transition/x;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1840
    :cond_1
    iget-object v2, p1, Landroidx/transition/x;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1841
    invoke-static {p1, p2, v3}, Landroidx/transition/Transition;->a(Landroidx/transition/x;Landroidx/transition/x;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public a()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()J
    .locals 2

    .line 381
    iget-wide v0, p0, Landroidx/transition/Transition;->m:J

    return-wide v0
.end method

.method public b(J)Landroidx/transition/Transition;
    .locals 0

    .line 368
    iput-wide p1, p0, Landroidx/transition/Transition;->m:J

    return-object p0
.end method

.method public b(Landroidx/transition/Transition$c;)Landroidx/transition/Transition;
    .locals 1

    .line 2045
    iget-object v0, p0, Landroidx/transition/Transition;->E:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-object p0

    .line 2048
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2049
    iget-object p1, p0, Landroidx/transition/Transition;->E:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 2050
    iput-object p1, p0, Landroidx/transition/Transition;->E:Ljava/util/ArrayList;

    :cond_1
    return-object p0
.end method

.method final b(Landroid/view/View;Z)Landroidx/transition/x;
    .locals 7

    move-object v0, p0

    .line 1679
    :goto_0
    iget-object v1, v0, Landroidx/transition/Transition;->g:Landroidx/transition/TransitionSet;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 1682
    iget-object v1, v0, Landroidx/transition/Transition;->y:Ljava/util/ArrayList;

    goto :goto_1

    :cond_1
    iget-object v1, v0, Landroidx/transition/Transition;->z:Ljava/util/ArrayList;

    :goto_1
    const/4 v2, 0x0

    if-nez v1, :cond_2

    return-object v2

    .line 1686
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_5

    .line 1689
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/transition/x;

    if-nez v6, :cond_3

    return-object v2

    .line 1694
    :cond_3
    iget-object v6, v6, Landroidx/transition/x;->b:Landroid/view/View;

    if-ne v6, p1, :cond_4

    move v4, v5

    goto :goto_3

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    if-ltz v4, :cond_7

    if-eqz p2, :cond_6

    .line 1701
    iget-object p1, v0, Landroidx/transition/Transition;->z:Ljava/util/ArrayList;

    goto :goto_4

    :cond_6
    iget-object p1, v0, Landroidx/transition/Transition;->y:Ljava/util/ArrayList;

    .line 1702
    :goto_4
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroidx/transition/x;

    :cond_7
    return-object v2
.end method

.method public abstract b(Landroidx/transition/x;)V
.end method

.method final b(Landroid/view/View;)Z
    .locals 5

    .line 813
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 814
    iget-object v1, p0, Landroidx/transition/Transition;->o:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 817
    :cond_0
    iget-object v1, p0, Landroidx/transition/Transition;->p:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 820
    :cond_1
    iget-object v1, p0, Landroidx/transition/Transition;->q:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 821
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 823
    iget-object v4, p0, Landroidx/transition/Transition;->q:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 824
    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 829
    :cond_3
    iget-object v1, p0, Landroidx/transition/Transition;->r:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    invoke-static {p1}, Landroidx/core/view/v;->p(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 830
    iget-object v1, p0, Landroidx/transition/Transition;->r:Ljava/util/ArrayList;

    invoke-static {p1}, Landroidx/core/view/v;->p(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v2

    .line 834
    :cond_4
    iget-object v1, p0, Landroidx/transition/Transition;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_7

    iget-object v1, p0, Landroidx/transition/Transition;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Landroidx/transition/Transition;->f:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 835
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_5
    iget-object v1, p0, Landroidx/transition/Transition;->e:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    .line 836
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    return v3

    .line 839
    :cond_7
    iget-object v1, p0, Landroidx/transition/Transition;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Landroidx/transition/Transition;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_2

    .line 842
    :cond_8
    iget-object v0, p0, Landroidx/transition/Transition;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    invoke-static {p1}, Landroidx/core/view/v;->p(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v3

    .line 845
    :cond_9
    iget-object v0, p0, Landroidx/transition/Transition;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    .line 846
    :goto_1
    iget-object v1, p0, Landroidx/transition/Transition;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_b

    .line 847
    iget-object v1, p0, Landroidx/transition/Transition;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    return v3

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    return v2

    :cond_c
    :goto_2
    return v3
.end method

.method public final c()Landroid/animation/TimeInterpolator;
    .locals 1

    .line 409
    iget-object v0, p0, Landroidx/transition/Transition;->n:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public c(Landroid/view/View;)Landroidx/transition/Transition;
    .locals 1

    .line 997
    iget-object v0, p0, Landroidx/transition/Transition;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method c(Landroidx/transition/x;)V
    .locals 5

    .line 2176
    iget-object v0, p0, Landroidx/transition/Transition;->j:Landroidx/transition/v;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroidx/transition/x;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2177
    iget-object v0, p0, Landroidx/transition/Transition;->j:Landroidx/transition/v;

    invoke-virtual {v0}, Landroidx/transition/v;->a()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2182
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 2183
    iget-object v3, p1, Landroidx/transition/x;->a:Ljava/util/Map;

    aget-object v4, v0, v2

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_3

    .line 2189
    iget-object v0, p0, Landroidx/transition/Transition;->j:Landroidx/transition/v;

    invoke-virtual {v0, p1}, Landroidx/transition/v;->a(Landroidx/transition/x;)V

    :cond_3
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Landroidx/transition/Transition;->k()Landroidx/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroid/view/View;)Landroidx/transition/Transition;
    .locals 1

    .line 1095
    iget-object v0, p0, Landroidx/transition/Transition;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected d()V
    .locals 8

    .line 875
    invoke-virtual {p0}, Landroidx/transition/Transition;->e()V

    .line 876
    invoke-static {}, Landroidx/transition/Transition;->l()Landroidx/b/a;

    move-result-object v0

    .line 878
    iget-object v1, p0, Landroidx/transition/Transition;->F:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 882
    invoke-virtual {v0, v2}, Landroidx/b/a;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 883
    invoke-virtual {p0}, Landroidx/transition/Transition;->e()V

    if-eqz v2, :cond_0

    .line 7895
    new-instance v3, Landroidx/transition/Transition$2;

    invoke-direct {v3, p0, v0}, Landroidx/transition/Transition$2;-><init>(Landroidx/transition/Transition;Landroidx/b/a;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-nez v2, :cond_1

    .line 8887
    invoke-virtual {p0}, Landroidx/transition/Transition;->f()V

    goto :goto_0

    .line 9354
    :cond_1
    iget-wide v3, p0, Landroidx/transition/Transition;->b:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_2

    .line 8890
    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 10381
    :cond_2
    iget-wide v3, p0, Landroidx/transition/Transition;->m:J

    cmp-long v7, v3, v5

    if-ltz v7, :cond_3

    .line 8893
    invoke-virtual {v2}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 11409
    :cond_3
    iget-object v3, p0, Landroidx/transition/Transition;->n:Landroid/animation/TimeInterpolator;

    if-eqz v3, :cond_4

    .line 8896
    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8898
    :cond_4
    new-instance v3, Landroidx/transition/Transition$3;

    invoke-direct {v3, p0}, Landroidx/transition/Transition$3;-><init>(Landroidx/transition/Transition;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 8905
    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 887
    :cond_5
    iget-object v0, p0, Landroidx/transition/Transition;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 888
    invoke-virtual {p0}, Landroidx/transition/Transition;->f()V

    return-void
.end method

.method protected final e()V
    .locals 5

    .line 1918
    iget v0, p0, Landroidx/transition/Transition;->B:I

    if-nez v0, :cond_1

    .line 1919
    iget-object v0, p0, Landroidx/transition/Transition;->E:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1920
    iget-object v0, p0, Landroidx/transition/Transition;->E:Ljava/util/ArrayList;

    .line 1921
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1922
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 1924
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/Transition$c;

    invoke-interface {v4, p0}, Landroidx/transition/Transition$c;->b(Landroidx/transition/Transition;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1927
    :cond_0
    iput-boolean v1, p0, Landroidx/transition/Transition;->D:Z

    .line 1929
    :cond_1
    iget v0, p0, Landroidx/transition/Transition;->B:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/transition/Transition;->B:I

    return-void
.end method

.method public e(Landroid/view/View;)V
    .locals 7

    .line 1716
    iget-boolean p1, p0, Landroidx/transition/Transition;->D:Z

    if-nez p1, :cond_5

    .line 1717
    iget-object p1, p0, Landroidx/transition/Transition;->i:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    :goto_0
    const/4 v1, 0x0

    if-ltz p1, :cond_3

    .line 1719
    iget-object v2, p0, Landroidx/transition/Transition;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 14037
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_0

    .line 14038
    invoke-virtual {v2}, Landroid/animation/Animator;->pause()V

    goto :goto_2

    .line 14040
    :cond_0
    invoke-virtual {v2}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 14042
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_1
    if-ge v1, v4, :cond_2

    .line 14043
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator$AnimatorListener;

    .line 14044
    instance-of v6, v5, Landroidx/transition/a$a;

    if-eqz v6, :cond_1

    .line 14045
    check-cast v5, Landroidx/transition/a$a;

    invoke-interface {v5, v2}, Landroidx/transition/a$a;->onAnimationPause(Landroid/animation/Animator;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 1722
    :cond_3
    iget-object p1, p0, Landroidx/transition/Transition;->E:Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 1723
    iget-object p1, p0, Landroidx/transition/Transition;->E:Ljava/util/ArrayList;

    .line 1724
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 1725
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_4

    .line 1727
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/transition/Transition$c;

    invoke-interface {v3}, Landroidx/transition/Transition$c;->b()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1730
    :cond_4
    iput-boolean v0, p0, Landroidx/transition/Transition;->C:Z

    :cond_5
    return-void
.end method

.method protected final f()V
    .locals 6

    .line 1945
    iget v0, p0, Landroidx/transition/Transition;->B:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/transition/Transition;->B:I

    if-nez v0, :cond_5

    .line 1947
    iget-object v0, p0, Landroidx/transition/Transition;->E:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1948
    iget-object v0, p0, Landroidx/transition/Transition;->E:Ljava/util/ArrayList;

    .line 1949
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1950
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 1952
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/transition/Transition$c;

    invoke-interface {v5, p0}, Landroidx/transition/Transition$c;->a(Landroidx/transition/Transition;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1955
    :goto_1
    iget-object v3, p0, Landroidx/transition/Transition;->v:Landroidx/transition/y;

    iget-object v3, v3, Landroidx/transition/y;->c:Landroidx/b/d;

    invoke-virtual {v3}, Landroidx/b/d;->b()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1956
    iget-object v3, p0, Landroidx/transition/Transition;->v:Landroidx/transition/y;

    iget-object v3, v3, Landroidx/transition/y;->c:Landroidx/b/d;

    invoke-virtual {v3, v0}, Landroidx/b/d;->c(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_1

    .line 1958
    invoke-static {v3, v2}, Landroidx/core/view/v;->a(Landroid/view/View;Z)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 1961
    :goto_2
    iget-object v3, p0, Landroidx/transition/Transition;->w:Landroidx/transition/y;

    iget-object v3, v3, Landroidx/transition/y;->c:Landroidx/b/d;

    invoke-virtual {v3}, Landroidx/b/d;->b()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 1962
    iget-object v3, p0, Landroidx/transition/Transition;->w:Landroidx/transition/y;

    iget-object v3, v3, Landroidx/transition/y;->c:Landroidx/b/d;

    invoke-virtual {v3, v0}, Landroidx/b/d;->c(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_3

    .line 1964
    invoke-static {v3, v2}, Landroidx/core/view/v;->a(Landroid/view/View;Z)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1967
    :cond_4
    iput-boolean v1, p0, Landroidx/transition/Transition;->D:Z

    :cond_5
    return-void
.end method

.method public f(Landroid/view/View;)V
    .locals 7

    .line 1743
    iget-boolean p1, p0, Landroidx/transition/Transition;->C:Z

    if-eqz p1, :cond_5

    .line 1744
    iget-boolean p1, p0, Landroidx/transition/Transition;->D:Z

    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1745
    iget-object p1, p0, Landroidx/transition/Transition;->i:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_3

    .line 1747
    iget-object v1, p0, Landroidx/transition/Transition;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 14053
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 14054
    invoke-virtual {v1}, Landroid/animation/Animator;->resume()V

    goto :goto_2

    .line 14056
    :cond_0
    invoke-virtual {v1}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 14058
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    .line 14059
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator$AnimatorListener;

    .line 14060
    instance-of v6, v5, Landroidx/transition/a$a;

    if-eqz v6, :cond_1

    .line 14061
    check-cast v5, Landroidx/transition/a$a;

    invoke-interface {v5, v1}, Landroidx/transition/a$a;->onAnimationResume(Landroid/animation/Animator;)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 1750
    :cond_3
    iget-object p1, p0, Landroidx/transition/Transition;->E:Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 1751
    iget-object p1, p0, Landroidx/transition/Transition;->E:Ljava/util/ArrayList;

    .line 1752
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 1753
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_4

    .line 1755
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/transition/Transition$c;

    invoke-interface {v3}, Landroidx/transition/Transition$c;->c()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1759
    :cond_4
    iput-boolean v0, p0, Landroidx/transition/Transition;->C:Z

    :cond_5
    return-void
.end method

.method protected g()V
    .locals 4

    .line 2004
    iget-object v0, p0, Landroidx/transition/Transition;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2006
    iget-object v1, p0, Landroidx/transition/Transition;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 2007
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2009
    :cond_0
    iget-object v0, p0, Landroidx/transition/Transition;->E:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2010
    iget-object v0, p0, Landroidx/transition/Transition;->E:Ljava/util/ArrayList;

    .line 2011
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2012
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 2014
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/transition/Transition$c;

    invoke-interface {v3}, Landroidx/transition/Transition$c;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final h()Landroidx/transition/PathMotion;
    .locals 1

    .line 2090
    iget-object v0, p0, Landroidx/transition/Transition;->I:Landroidx/transition/PathMotion;

    return-object v0
.end method

.method public final i()Landroidx/transition/Transition$b;
    .locals 1

    .line 2120
    iget-object v0, p0, Landroidx/transition/Transition;->G:Landroidx/transition/Transition$b;

    return-object v0
.end method

.method public final j()Landroid/graphics/Rect;
    .locals 1

    .line 2133
    iget-object v0, p0, Landroidx/transition/Transition;->G:Landroidx/transition/Transition$b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2136
    :cond_0
    invoke-virtual {v0}, Landroidx/transition/Transition$b;->a()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public k()Landroidx/transition/Transition;
    .locals 3

    const/4 v0, 0x0

    .line 2206
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/Transition;

    .line 2207
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/transition/Transition;->F:Ljava/util/ArrayList;

    .line 2208
    new-instance v2, Landroidx/transition/y;

    invoke-direct {v2}, Landroidx/transition/y;-><init>()V

    iput-object v2, v1, Landroidx/transition/Transition;->v:Landroidx/transition/y;

    .line 2209
    new-instance v2, Landroidx/transition/y;

    invoke-direct {v2}, Landroidx/transition/y;-><init>()V

    iput-object v2, v1, Landroidx/transition/Transition;->w:Landroidx/transition/y;

    .line 2210
    iput-object v0, v1, Landroidx/transition/Transition;->y:Ljava/util/ArrayList;

    .line 2211
    iput-object v0, v1, Landroidx/transition/Transition;->z:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 2200
    invoke-virtual {p0, v0}, Landroidx/transition/Transition;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
