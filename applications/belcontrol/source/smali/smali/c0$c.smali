.class public abstract Lc0$c;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# instance fields
.field public A:I

.field public B:I

.field public C:Z

.field public D:Landroid/graphics/ColorFilter;

.field public E:Z

.field public F:Landroid/content/res/ColorStateList;

.field public G:Landroid/graphics/PorterDuff$Mode;

.field public H:Z

.field public I:Z

.field public final a:Lc0;

.field public b:Landroid/content/res/Resources;

.field public c:I

.field public d:I

.field public e:I

.field public f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field public g:[Landroid/graphics/drawable/Drawable;

.field public h:I

.field public i:Z

.field public j:Z

.field public k:Landroid/graphics/Rect;

.field public l:Z

.field public m:Z

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:Z

.field public s:I

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:I


# direct methods
.method public constructor <init>(Lc0$c;Lc0;Landroid/content/res/Resources;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/16 v0, 0xa0

    iput v0, p0, Lc0$c;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc0$c;->i:Z

    iput-boolean v0, p0, Lc0$c;->l:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lc0$c;->x:Z

    iput v0, p0, Lc0$c;->A:I

    iput v0, p0, Lc0$c;->B:I

    iput-object p2, p0, Lc0$c;->a:Lc0;

    if-eqz p3, :cond_0

    move-object p2, p3

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p2, p1, Lc0$c;->b:Landroid/content/res/Resources;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lc0$c;->b:Landroid/content/res/Resources;

    if-eqz p1, :cond_2

    iget p2, p1, Lc0$c;->c:I

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    invoke-static {p3, p2}, Lc0;->i(Landroid/content/res/Resources;I)I

    move-result p2

    iput p2, p0, Lc0$c;->c:I

    if-eqz p1, :cond_a

    iget p3, p1, Lc0$c;->d:I

    iput p3, p0, Lc0$c;->d:I

    iget p3, p1, Lc0$c;->e:I

    iput p3, p0, Lc0$c;->e:I

    iput-boolean v1, p0, Lc0$c;->v:Z

    iput-boolean v1, p0, Lc0$c;->w:Z

    iget-boolean p3, p1, Lc0$c;->i:Z

    iput-boolean p3, p0, Lc0$c;->i:Z

    iget-boolean p3, p1, Lc0$c;->l:Z

    iput-boolean p3, p0, Lc0$c;->l:Z

    iget-boolean p3, p1, Lc0$c;->x:Z

    iput-boolean p3, p0, Lc0$c;->x:Z

    iget-boolean p3, p1, Lc0$c;->y:Z

    iput-boolean p3, p0, Lc0$c;->y:Z

    iget p3, p1, Lc0$c;->z:I

    iput p3, p0, Lc0$c;->z:I

    iget p3, p1, Lc0$c;->A:I

    iput p3, p0, Lc0$c;->A:I

    iget p3, p1, Lc0$c;->B:I

    iput p3, p0, Lc0$c;->B:I

    iget-boolean p3, p1, Lc0$c;->C:Z

    iput-boolean p3, p0, Lc0$c;->C:Z

    iget-object p3, p1, Lc0$c;->D:Landroid/graphics/ColorFilter;

    iput-object p3, p0, Lc0$c;->D:Landroid/graphics/ColorFilter;

    iget-boolean p3, p1, Lc0$c;->E:Z

    iput-boolean p3, p0, Lc0$c;->E:Z

    iget-object p3, p1, Lc0$c;->F:Landroid/content/res/ColorStateList;

    iput-object p3, p0, Lc0$c;->F:Landroid/content/res/ColorStateList;

    iget-object p3, p1, Lc0$c;->G:Landroid/graphics/PorterDuff$Mode;

    iput-object p3, p0, Lc0$c;->G:Landroid/graphics/PorterDuff$Mode;

    iget-boolean p3, p1, Lc0$c;->H:Z

    iput-boolean p3, p0, Lc0$c;->H:Z

    iget-boolean p3, p1, Lc0$c;->I:Z

    iput-boolean p3, p0, Lc0$c;->I:Z

    iget p3, p1, Lc0$c;->c:I

    if-ne p3, p2, :cond_4

    iget-boolean p2, p1, Lc0$c;->j:Z

    if-eqz p2, :cond_3

    new-instance p2, Landroid/graphics/Rect;

    iget-object p3, p1, Lc0$c;->k:Landroid/graphics/Rect;

    invoke-direct {p2, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p2, p0, Lc0$c;->k:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lc0$c;->j:Z

    :cond_3
    iget-boolean p2, p1, Lc0$c;->m:Z

    if-eqz p2, :cond_4

    iget p2, p1, Lc0$c;->n:I

    iput p2, p0, Lc0$c;->n:I

    iget p2, p1, Lc0$c;->o:I

    iput p2, p0, Lc0$c;->o:I

    iget p2, p1, Lc0$c;->p:I

    iput p2, p0, Lc0$c;->p:I

    iget p2, p1, Lc0$c;->q:I

    iput p2, p0, Lc0$c;->q:I

    iput-boolean v1, p0, Lc0$c;->m:Z

    :cond_4
    iget-boolean p2, p1, Lc0$c;->r:Z

    if-eqz p2, :cond_5

    iget p2, p1, Lc0$c;->s:I

    iput p2, p0, Lc0$c;->s:I

    iput-boolean v1, p0, Lc0$c;->r:Z

    :cond_5
    iget-boolean p2, p1, Lc0$c;->t:Z

    if-eqz p2, :cond_6

    iget-boolean p2, p1, Lc0$c;->u:Z

    iput-boolean p2, p0, Lc0$c;->u:Z

    iput-boolean v1, p0, Lc0$c;->t:Z

    :cond_6
    iget-object p2, p1, Lc0$c;->g:[Landroid/graphics/drawable/Drawable;

    array-length p3, p2

    new-array p3, p3, [Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lc0$c;->g:[Landroid/graphics/drawable/Drawable;

    iget p3, p1, Lc0$c;->h:I

    iput p3, p0, Lc0$c;->h:I

    iget-object p1, p1, Lc0$c;->f:Landroid/util/SparseArray;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object p1

    goto :goto_2

    :cond_7
    new-instance p1, Landroid/util/SparseArray;

    iget p3, p0, Lc0$c;->h:I

    invoke-direct {p1, p3}, Landroid/util/SparseArray;-><init>(I)V

    :goto_2
    iput-object p1, p0, Lc0$c;->f:Landroid/util/SparseArray;

    iget p1, p0, Lc0$c;->h:I

    :goto_3
    if-ge v0, p1, :cond_b

    aget-object p3, p2, v0

    if-eqz p3, :cond_9

    aget-object p3, p2, v0

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p3

    if-eqz p3, :cond_8

    iget-object v1, p0, Lc0$c;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4

    :cond_8
    iget-object p3, p0, Lc0$c;->g:[Landroid/graphics/drawable/Drawable;

    aget-object v1, p2, v0

    aput-object v1, p3, v0

    :cond_9
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    const/16 p1, 0xa

    new-array p1, p1, [Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lc0$c;->g:[Landroid/graphics/drawable/Drawable;

    iput v0, p0, Lc0$c;->h:I

    :cond_b
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;)I
    .locals 4

    iget v0, p0, Lc0$c;->h:I

    iget-object v1, p0, Lc0$c;->g:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    add-int/lit8 v1, v0, 0xa

    invoke-virtual {p0, v0, v1}, Lc0$c;->o(II)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    iget-object v3, p0, Lc0$c;->a:Lc0;

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v3, p0, Lc0$c;->g:[Landroid/graphics/drawable/Drawable;

    aput-object p1, v3, v0

    iget v3, p0, Lc0$c;->h:I

    add-int/2addr v3, v2

    iput v3, p0, Lc0$c;->h:I

    iget v2, p0, Lc0$c;->e:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result p1

    or-int/2addr p1, v2

    iput p1, p0, Lc0$c;->e:I

    invoke-virtual {p0}, Lc0$c;->p()V

    const/4 p1, 0x0

    iput-object p1, p0, Lc0$c;->k:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lc0$c;->j:Z

    iput-boolean v1, p0, Lc0$c;->m:Z

    iput-boolean v1, p0, Lc0$c;->v:Z

    return v0
.end method

.method public final b(Landroid/content/res/Resources$Theme;)V
    .locals 5

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lc0$c;->e()V

    iget v0, p0, Lc0$c;->h:I

    iget-object v1, p0, Lc0$c;->g:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    if-eqz v3, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    iget v3, p0, Lc0$c;->e:I

    aget-object v4, v1, v2

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v4

    or-int/2addr v3, v4

    iput v3, p0, Lc0$c;->e:I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc0$c;->y(Landroid/content/res/Resources;)V

    :cond_2
    return-void
.end method

.method public declared-synchronized c()Z
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lc0$c;->v:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lc0$c;->w:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lc0$c;->e()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc0$c;->v:Z

    iget v1, p0, Lc0$c;->h:I

    iget-object v2, p0, Lc0$c;->g:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    aget-object v5, v2, v4

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    if-nez v5, :cond_1

    iput-boolean v3, p0, Lc0$c;->w:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :try_start_2
    iput-boolean v0, p0, Lc0$c;->w:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public canApplyTheme()Z
    .locals 6

    iget v0, p0, Lc0$c;->h:I

    iget-object v1, p0, Lc0$c;->g:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, v1, v3

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v4

    if-eqz v4, :cond_1

    return v5

    :cond_0
    iget-object v4, p0, Lc0$c;->f:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v4

    if-eqz v4, :cond_1

    return v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public d()V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc0$c;->m:Z

    invoke-virtual {p0}, Lc0$c;->e()V

    iget v0, p0, Lc0$c;->h:I

    iget-object v1, p0, Lc0$c;->g:[Landroid/graphics/drawable/Drawable;

    const/4 v2, -0x1

    iput v2, p0, Lc0$c;->o:I

    iput v2, p0, Lc0$c;->n:I

    const/4 v2, 0x0

    iput v2, p0, Lc0$c;->q:I

    iput v2, p0, Lc0$c;->p:I

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget v5, p0, Lc0$c;->n:I

    if-le v4, v5, :cond_0

    iput v4, p0, Lc0$c;->n:I

    :cond_0
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iget v5, p0, Lc0$c;->o:I

    if-le v4, v5, :cond_1

    iput v4, p0, Lc0$c;->o:I

    :cond_1
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    iget v5, p0, Lc0$c;->p:I

    if-le v4, v5, :cond_2

    iput v4, p0, Lc0$c;->p:I

    :cond_2
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    iget v4, p0, Lc0$c;->q:I

    if-le v3, v4, :cond_3

    iput v3, p0, Lc0$c;->q:I

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final e()V
    .locals 6

    iget-object v0, p0, Lc0$c;->f:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lc0$c;->f:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lc0$c;->f:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable$ConstantState;

    iget-object v4, p0, Lc0$c;->g:[Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lc0$c;->b:Landroid/content/res/Resources;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lc0$c;->s(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v4, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lc0$c;->f:Landroid/util/SparseArray;

    :cond_1
    return-void
.end method

.method public final f()I
    .locals 1

    iget-object v0, p0, Lc0$c;->g:[Landroid/graphics/drawable/Drawable;

    array-length v0, v0

    return v0
.end method

.method public final g(I)Landroid/graphics/drawable/Drawable;
    .locals 4

    iget-object v0, p0, Lc0$c;->g:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lc0$c;->f:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v2, p0, Lc0$c;->f:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable$ConstantState;

    iget-object v3, p0, Lc0$c;->b:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lc0$c;->s(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lc0$c;->g:[Landroid/graphics/drawable/Drawable;

    aput-object v2, v3, p1

    iget-object p1, p0, Lc0$c;->f:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    iget-object p1, p0, Lc0$c;->f:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_1

    iput-object v1, p0, Lc0$c;->f:Landroid/util/SparseArray;

    :cond_1
    return-object v2

    :cond_2
    return-object v1
.end method

.method public getChangingConfigurations()I
    .locals 2

    iget v0, p0, Lc0$c;->d:I

    iget v1, p0, Lc0$c;->e:I

    or-int/2addr v0, v1

    return v0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lc0$c;->h:I

    return v0
.end method

.method public final i()I
    .locals 1

    iget-boolean v0, p0, Lc0$c;->m:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lc0$c;->d()V

    :cond_0
    iget v0, p0, Lc0$c;->o:I

    return v0
.end method

.method public final j()I
    .locals 1

    iget-boolean v0, p0, Lc0$c;->m:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lc0$c;->d()V

    :cond_0
    iget v0, p0, Lc0$c;->q:I

    return v0
.end method

.method public final k()I
    .locals 1

    iget-boolean v0, p0, Lc0$c;->m:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lc0$c;->d()V

    :cond_0
    iget v0, p0, Lc0$c;->p:I

    return v0
.end method

.method public final l()Landroid/graphics/Rect;
    .locals 8

    iget-boolean v0, p0, Lc0$c;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lc0$c;->k:Landroid/graphics/Rect;

    if-nez v0, :cond_8

    iget-boolean v2, p0, Lc0$c;->j:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lc0$c;->e()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget v2, p0, Lc0$c;->h:I

    iget-object v3, p0, Lc0$c;->g:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_7

    aget-object v6, v3, v5

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_6

    if-nez v1, :cond_2

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_2
    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v1, Landroid/graphics/Rect;->left:I

    if-le v6, v7, :cond_3

    iput v6, v1, Landroid/graphics/Rect;->left:I

    :cond_3
    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget v7, v1, Landroid/graphics/Rect;->top:I

    if-le v6, v7, :cond_4

    iput v6, v1, Landroid/graphics/Rect;->top:I

    :cond_4
    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->right:I

    if-le v6, v7, :cond_5

    iput v6, v1, Landroid/graphics/Rect;->right:I

    :cond_5
    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    if-le v6, v7, :cond_6

    iput v6, v1, Landroid/graphics/Rect;->bottom:I

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc0$c;->j:Z

    iput-object v1, p0, Lc0$c;->k:Landroid/graphics/Rect;

    return-object v1

    :cond_8
    :goto_1
    return-object v0
.end method

.method public final m()I
    .locals 1

    iget-boolean v0, p0, Lc0$c;->m:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lc0$c;->d()V

    :cond_0
    iget v0, p0, Lc0$c;->n:I

    return v0
.end method

.method public final n()I
    .locals 6

    iget-boolean v0, p0, Lc0$c;->r:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lc0$c;->s:I

    return v0

    :cond_0
    invoke-virtual {p0}, Lc0$c;->e()V

    iget v0, p0, Lc0$c;->h:I

    iget-object v1, p0, Lc0$c;->g:[Landroid/graphics/drawable/Drawable;

    if-lez v0, :cond_1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, -0x2

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_1
    if-ge v4, v0, :cond_2

    aget-object v5, v1, v4

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    invoke-static {v2, v5}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iput v2, p0, Lc0$c;->s:I

    iput-boolean v3, p0, Lc0$c;->r:Z

    return v2
.end method

.method public o(II)V
    .locals 2

    new-array p2, p2, [Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lc0$c;->g:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-static {v0, v1, p2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p2, p0, Lc0$c;->g:[Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public p()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc0$c;->r:Z

    iput-boolean v0, p0, Lc0$c;->t:Z

    return-void
.end method

.method public final q()Z
    .locals 1

    iget-boolean v0, p0, Lc0$c;->l:Z

    return v0
.end method

.method public abstract r()V
.end method

.method public final s(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget v0, p0, Lc0$c;->z:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lc0$c;->a:Lc0;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-object p1
.end method

.method public final t(Z)V
    .locals 0

    iput-boolean p1, p0, Lc0$c;->l:Z

    return-void
.end method

.method public final u(I)V
    .locals 0

    iput p1, p0, Lc0$c;->A:I

    return-void
.end method

.method public final v(I)V
    .locals 0

    iput p1, p0, Lc0$c;->B:I

    return-void
.end method

.method public final w(II)Z
    .locals 7

    iget v0, p0, Lc0$c;->h:I

    iget-object v1, p0, Lc0$c;->g:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v5, v1, v3

    if-eqz v5, :cond_1

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_0

    aget-object v5, v1, v3

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result v5

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-ne v3, p2, :cond_1

    move v4, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iput p1, p0, Lc0$c;->z:I

    return v4
.end method

.method public final x(Z)V
    .locals 0

    iput-boolean p1, p0, Lc0$c;->i:Z

    return-void
.end method

.method public final y(Landroid/content/res/Resources;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lc0$c;->b:Landroid/content/res/Resources;

    iget v0, p0, Lc0$c;->c:I

    invoke-static {p1, v0}, Lc0;->i(Landroid/content/res/Resources;I)I

    move-result p1

    iget v0, p0, Lc0$c;->c:I

    iput p1, p0, Lc0$c;->c:I

    if-eq v0, p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lc0$c;->m:Z

    iput-boolean p1, p0, Lc0$c;->j:Z

    :cond_0
    return-void
.end method
