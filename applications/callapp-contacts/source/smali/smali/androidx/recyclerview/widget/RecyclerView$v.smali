.class public abstract Landroidx/recyclerview/widget/RecyclerView$v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "v"
.end annotation


# static fields
.field private static final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field b:I

.field c:I

.field c_:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field d:J

.field e:I

.field f:I

.field g:Landroidx/recyclerview/widget/RecyclerView$v;

.field h:Landroidx/recyclerview/widget/RecyclerView$v;

.field i:I

.field public final itemView:Landroid/view/View;

.field j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field l:Landroidx/recyclerview/widget/RecyclerView$o;

.field m:Z

.field n:I

.field o:I

.field p:Landroidx/recyclerview/widget/RecyclerView;

.field q:Landroidx/recyclerview/widget/RecyclerView$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/RecyclerView$a<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$v;",
            ">;"
        }
    .end annotation
.end field

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11328
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/recyclerview/widget/RecyclerView$v;->r:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 11358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 11222
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->b:I

    .line 11223
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->c:I

    const-wide/16 v1, -0x1

    .line 11224
    iput-wide v1, p0, Landroidx/recyclerview/widget/RecyclerView$v;->d:J

    .line 11225
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->e:I

    .line 11226
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->f:I

    const/4 v1, 0x0

    .line 11229
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$v;->g:Landroidx/recyclerview/widget/RecyclerView$v;

    .line 11231
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$v;->h:Landroidx/recyclerview/widget/RecyclerView$v;

    .line 11330
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$v;->j:Ljava/util/List;

    .line 11331
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$v;->k:Ljava/util/List;

    const/4 v2, 0x0

    .line 11333
    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView$v;->s:I

    .line 11337
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$v;->l:Landroidx/recyclerview/widget/RecyclerView$o;

    .line 11339
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView$v;->m:Z

    .line 11343
    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView$v;->n:I

    .line 11346
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->o:I

    if-eqz p1, :cond_0

    .line 11362
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$v;->itemView:Landroid/view/View;

    return-void

    .line 11360
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "itemView may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private l()V
    .locals 1

    .line 11670
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->j:Ljava/util/List;

    if-nez v0, :cond_0

    .line 11671
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->j:Ljava/util/List;

    .line 11672
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->k:Ljava/util/List;

    :cond_0
    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    const/4 v0, -0x1

    .line 11388
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->c:I

    .line 11389
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->f:I

    return-void
.end method

.method final a(IZ)V
    .locals 2

    .line 11372
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 11373
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->b:I

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->c:I

    .line 11375
    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->f:I

    if-ne v0, v1, :cond_1

    .line 11376
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->b:I

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->f:I

    :cond_1
    if-eqz p2, :cond_2

    .line 11379
    iget p2, p0, Landroidx/recyclerview/widget/RecyclerView$v;->f:I

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView$v;->f:I

    .line 11381
    :cond_2
    iget p2, p0, Landroidx/recyclerview/widget/RecyclerView$v;->b:I

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView$v;->b:I

    .line 11382
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$v;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 11383
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$v;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->e:Z

    :cond_3
    return-void
.end method

.method final a(Landroidx/recyclerview/widget/RecyclerView$o;Z)V
    .locals 0

    .line 11616
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$v;->l:Landroidx/recyclerview/widget/RecyclerView$o;

    .line 11617
    iput-boolean p2, p0, Landroidx/recyclerview/widget/RecyclerView$v;->m:Z

    return-void
.end method

.method final a(Ljava/lang/Object;)V
    .locals 2

    const/16 v0, 0x400

    if-nez p1, :cond_0

    .line 11662
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$v;->b(I)V

    return-void

    .line 11663
    :cond_0
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$v;->i:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 11664
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$v;->l()V

    .line 11665
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method final a(I)Z
    .locals 1

    .line 11637
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->i:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final b()V
    .locals 2

    .line 11393
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 11394
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->b:I

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->c:I

    :cond_0
    return-void
.end method

.method final b(I)V
    .locals 1

    .line 11657
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->i:I

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$v;->i:I

    return-void
.end method

.method final c()Z
    .locals 1

    .line 11399
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->i:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final d()V
    .locals 1

    .line 11596
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->l:Landroidx/recyclerview/widget/RecyclerView$o;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$o;->b(Landroidx/recyclerview/widget/RecyclerView$v;)V

    return-void
.end method

.method final e()Z
    .locals 1

    .line 11600
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->i:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final f()V
    .locals 1

    .line 11604
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->i:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->i:I

    return-void
.end method

.method final g()V
    .locals 1

    .line 11608
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->i:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->i:I

    return-void
.end method

.method public final getAbsoluteAdapterPosition()I
    .locals 1

    .line 11541
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->p:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 11544
    :cond_0
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->d(Landroidx/recyclerview/widget/RecyclerView$v;)I

    move-result v0

    return v0
.end method

.method public final getAdapterPosition()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11453
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$v;->getBindingAdapterPosition()I

    move-result v0

    return v0
.end method

.method public final getBindingAdapter()Landroidx/recyclerview/widget/RecyclerView$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/RecyclerView$a<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$v;",
            ">;"
        }
    .end annotation

    .line 11556
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->q:Landroidx/recyclerview/widget/RecyclerView$a;

    return-object v0
.end method

.method public final getBindingAdapterPosition()I
    .locals 3

    .line 11488
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->q:Landroidx/recyclerview/widget/RecyclerView$a;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 11491
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->p:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1

    return v1

    .line 11495
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 11499
    :cond_2
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$v;->p:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p0}, Landroidx/recyclerview/widget/RecyclerView;->d(Landroidx/recyclerview/widget/RecyclerView$v;)I

    move-result v2

    if-ne v2, v1, :cond_3

    return v1

    .line 11503
    :cond_3
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$v;->q:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v0, v1, p0, v2}, Landroidx/recyclerview/widget/RecyclerView$a;->findRelativeAdapterPositionIn(Landroidx/recyclerview/widget/RecyclerView$a;Landroidx/recyclerview/widget/RecyclerView$v;I)I

    move-result v0

    return v0
.end method

.method public final getItemId()J
    .locals 2

    .line 11581
    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->d:J

    return-wide v0
.end method

.method public final getItemViewType()I
    .locals 1

    .line 11588
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->e:I

    return v0
.end method

.method public final getLayoutPosition()I
    .locals 2

    .line 11440
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->b:I

    :cond_0
    return v0
.end method

.method public final getOldPosition()I
    .locals 1

    .line 11571
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->c:I

    return v0
.end method

.method public final getPosition()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11413
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->b:I

    :cond_0
    return v0
.end method

.method getUnmodifiedPayloads()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 11684
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->i:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_2

    .line 11685
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->j:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 11690
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->k:Ljava/util/List;

    return-object v0

    .line 11687
    :cond_1
    :goto_0
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView$v;->r:Ljava/util/List;

    return-object v0

    .line 11693
    :cond_2
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView$v;->r:Ljava/util/List;

    return-object v0
.end method

.method final h()Z
    .locals 1

    .line 11625
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->i:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final i()V
    .locals 1

    .line 11677
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->j:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 11678
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11680
    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->i:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->i:I

    return-void
.end method

.method isAdapterPositionUnknown()Z
    .locals 1

    .line 11649
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->i:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$v;->isInvalid()Z

    move-result v0

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

.method isAttachedToTransitionOverlay()Z
    .locals 2

    .line 11645
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$v;->p:Landroidx/recyclerview/widget/RecyclerView;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isBound()Z
    .locals 2

    .line 11629
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->i:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isInvalid()Z
    .locals 1

    .line 11621
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->i:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isRecyclable()Z
    .locals 1

    .line 11798
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->i:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->itemView:Landroid/view/View;

    .line 11799
    invoke-static {v0}, Landroidx/core/view/v;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isRemoved()Z
    .locals 1

    .line 11633
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->i:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isScrap()Z
    .locals 1

    .line 11592
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->l:Landroidx/recyclerview/widget/RecyclerView$o;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isTmpDetached()Z
    .locals 1

    .line 11641
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->i:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isUpdated()Z
    .locals 1

    .line 11819
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->i:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final j()V
    .locals 4

    const/4 v0, 0x0

    .line 11698
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->i:I

    const/4 v1, -0x1

    .line 11699
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$v;->b:I

    .line 11700
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$v;->c:I

    const-wide/16 v2, -0x1

    .line 11701
    iput-wide v2, p0, Landroidx/recyclerview/widget/RecyclerView$v;->d:J

    .line 11702
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$v;->f:I

    .line 11703
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->s:I

    const/4 v2, 0x0

    .line 11704
    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$v;->g:Landroidx/recyclerview/widget/RecyclerView$v;

    .line 11705
    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$v;->h:Landroidx/recyclerview/widget/RecyclerView$v;

    .line 11706
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$v;->i()V

    .line 11707
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->n:I

    .line 11708
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$v;->o:I

    .line 11709
    invoke-static {p0}, Landroidx/recyclerview/widget/RecyclerView;->c(Landroidx/recyclerview/widget/RecyclerView$v;)V

    return-void
.end method

.method final k()Z
    .locals 1

    .line 11815
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->i:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/v;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method setFlags(II)V
    .locals 2

    .line 11653
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->i:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int/2addr p1, p2

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$v;->i:I

    return-void
.end method

.method public final setIsRecyclable(Z)V
    .locals 2

    const/4 v0, 0x1

    .line 11774
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$v;->s:I

    if-eqz p1, :cond_0

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_0
    add-int/2addr v1, v0

    :goto_0
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$v;->s:I

    if-gez v1, :cond_1

    const/4 p1, 0x0

    .line 11776
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$v;->s:I

    .line 11781
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "View"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-nez p1, :cond_2

    if-ne v1, v0, :cond_2

    .line 11784
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$v;->i:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$v;->i:I

    return-void

    :cond_2
    if-eqz p1, :cond_3

    if-nez v1, :cond_3

    .line 11786
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$v;->i:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$v;->i:I

    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 11739
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ViewHolder"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 11740
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "{"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11741
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " position="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->b:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " id="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Landroidx/recyclerview/widget/RecyclerView$v;->d:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", oldPos="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->c:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", pLpos:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->f:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11743
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$v;->isScrap()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, " scrap "

    .line 11744
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11745
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->m:Z

    if-eqz v0, :cond_1

    const-string v0, "[changeScrap]"

    goto :goto_1

    :cond_1
    const-string v0, "[attachedScrap]"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11747
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$v;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, " invalid"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11748
    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$v;->isBound()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, " unbound"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11749
    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$v;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, " update"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11750
    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$v;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, " removed"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11751
    :cond_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$v;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, " ignored"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11752
    :cond_7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$v;->isTmpDetached()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, " tmpDetached"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11753
    :cond_8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$v;->isRecyclable()Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " not recyclable("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView$v;->s:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11754
    :cond_9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$v;->isAdapterPositionUnknown()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, " undefined adapter position"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11756
    :cond_a
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$v;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_b

    const-string v0, " no parent"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const-string v0, "}"

    .line 11757
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11758
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
