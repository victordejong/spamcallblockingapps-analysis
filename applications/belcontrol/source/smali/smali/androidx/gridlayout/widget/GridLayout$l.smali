.class public final Landroidx/gridlayout/widget/GridLayout$l;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/gridlayout/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "l"
.end annotation


# instance fields
.field public final a:Z

.field public b:I

.field public c:I

.field public d:Landroidx/gridlayout/widget/GridLayout$p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/gridlayout/widget/GridLayout$p<",
            "Landroidx/gridlayout/widget/GridLayout$q;",
            "Landroidx/gridlayout/widget/GridLayout$m;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z

.field public f:Landroidx/gridlayout/widget/GridLayout$p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/gridlayout/widget/GridLayout$p<",
            "Landroidx/gridlayout/widget/GridLayout$n;",
            "Landroidx/gridlayout/widget/GridLayout$o;",
            ">;"
        }
    .end annotation
.end field

.field public g:Z

.field public h:Landroidx/gridlayout/widget/GridLayout$p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/gridlayout/widget/GridLayout$p<",
            "Landroidx/gridlayout/widget/GridLayout$n;",
            "Landroidx/gridlayout/widget/GridLayout$o;",
            ">;"
        }
    .end annotation
.end field

.field public i:Z

.field public j:[I

.field public k:Z

.field public l:[I

.field public m:Z

.field public n:[Landroidx/gridlayout/widget/GridLayout$j;

.field public o:Z

.field public p:[I

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:[I

.field public u:Z

.field public v:Landroidx/gridlayout/widget/GridLayout$o;

.field public w:Landroidx/gridlayout/widget/GridLayout$o;

.field public final synthetic x:Landroidx/gridlayout/widget/GridLayout;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Landroidx/gridlayout/widget/GridLayout;

    return-void
.end method

.method public constructor <init>(Landroidx/gridlayout/widget/GridLayout;Z)V
    .locals 1

    iput-object p1, p0, Landroidx/gridlayout/widget/GridLayout$l;->x:Landroidx/gridlayout/widget/GridLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, -0x80000000

    iput p1, p0, Landroidx/gridlayout/widget/GridLayout$l;->b:I

    iput p1, p0, Landroidx/gridlayout/widget/GridLayout$l;->c:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/gridlayout/widget/GridLayout$l;->e:Z

    iput-boolean p1, p0, Landroidx/gridlayout/widget/GridLayout$l;->g:Z

    iput-boolean p1, p0, Landroidx/gridlayout/widget/GridLayout$l;->i:Z

    iput-boolean p1, p0, Landroidx/gridlayout/widget/GridLayout$l;->k:Z

    iput-boolean p1, p0, Landroidx/gridlayout/widget/GridLayout$l;->m:Z

    iput-boolean p1, p0, Landroidx/gridlayout/widget/GridLayout$l;->o:Z

    iput-boolean p1, p0, Landroidx/gridlayout/widget/GridLayout$l;->q:Z

    iput-boolean p1, p0, Landroidx/gridlayout/widget/GridLayout$l;->s:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->u:Z

    new-instance v0, Landroidx/gridlayout/widget/GridLayout$o;

    invoke-direct {v0, p1}, Landroidx/gridlayout/widget/GridLayout$o;-><init>(I)V

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->v:Landroidx/gridlayout/widget/GridLayout$o;

    new-instance p1, Landroidx/gridlayout/widget/GridLayout$o;

    const v0, -0x186a0

    invoke-direct {p1, v0}, Landroidx/gridlayout/widget/GridLayout$o;-><init>(I)V

    iput-object p1, p0, Landroidx/gridlayout/widget/GridLayout$l;->w:Landroidx/gridlayout/widget/GridLayout$o;

    iput-boolean p2, p0, Landroidx/gridlayout/widget/GridLayout$l;->a:Z

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->s:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$l;->g()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->r:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->s:Z

    :cond_0
    iget-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->r:Z

    return v0
.end method

.method public final B(Ljava/util/List;Landroidx/gridlayout/widget/GridLayout$n;Landroidx/gridlayout/widget/GridLayout$o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/gridlayout/widget/GridLayout$j;",
            ">;",
            "Landroidx/gridlayout/widget/GridLayout$n;",
            "Landroidx/gridlayout/widget/GridLayout$o;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/gridlayout/widget/GridLayout$l;->C(Ljava/util/List;Landroidx/gridlayout/widget/GridLayout$n;Landroidx/gridlayout/widget/GridLayout$o;Z)V

    return-void
.end method

.method public final C(Ljava/util/List;Landroidx/gridlayout/widget/GridLayout$n;Landroidx/gridlayout/widget/GridLayout$o;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/gridlayout/widget/GridLayout$j;",
            ">;",
            "Landroidx/gridlayout/widget/GridLayout$n;",
            "Landroidx/gridlayout/widget/GridLayout$o;",
            "Z)V"
        }
    .end annotation

    invoke-virtual {p2}, Landroidx/gridlayout/widget/GridLayout$n;->b()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p4, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/gridlayout/widget/GridLayout$j;

    iget-object v0, v0, Landroidx/gridlayout/widget/GridLayout$j;->a:Landroidx/gridlayout/widget/GridLayout$n;

    invoke-virtual {v0, p2}, Landroidx/gridlayout/widget/GridLayout$n;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_2
    new-instance p4, Landroidx/gridlayout/widget/GridLayout$j;

    invoke-direct {p4, p2, p3}, Landroidx/gridlayout/widget/GridLayout$j;-><init>(Landroidx/gridlayout/widget/GridLayout$n;Landroidx/gridlayout/widget/GridLayout$o;)V

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final D([I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method public E()V
    .locals 1

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->d:Landroidx/gridlayout/widget/GridLayout$p;

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->f:Landroidx/gridlayout/widget/GridLayout$p;

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->h:Landroidx/gridlayout/widget/GridLayout$p;

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->j:[I

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->l:[I

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->n:[Landroidx/gridlayout/widget/GridLayout$j;

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->p:[I

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->t:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->s:Z

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$l;->F()V

    return-void
.end method

.method public F()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->e:Z

    iput-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->g:Z

    iput-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->i:Z

    iput-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->k:Z

    iput-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->m:Z

    iput-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->o:Z

    iput-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->q:Z

    return-void
.end method

.method public G(I)V
    .locals 0

    invoke-virtual {p0, p1, p1}, Landroidx/gridlayout/widget/GridLayout$l;->L(II)V

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$l;->u()[I

    return-void
.end method

.method public final H(Ljava/lang/String;[Landroidx/gridlayout/widget/GridLayout$j;[Z)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_2

    aget-object v3, p2, v2

    aget-boolean v4, p3, v2

    if-eqz v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-boolean v4, v3, Landroidx/gridlayout/widget/GridLayout$j;->c:Z

    if-nez v4, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p2, p0, Landroidx/gridlayout/widget/GridLayout$l;->x:Landroidx/gridlayout/widget/GridLayout;

    iget-object p2, p2, Landroidx/gridlayout/widget/GridLayout;->j:Landroid/util/Printer;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " constraints: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Landroidx/gridlayout/widget/GridLayout$l;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " are inconsistent; permanently removing: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroidx/gridlayout/widget/GridLayout$l;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final I([ILandroidx/gridlayout/widget/GridLayout$j;)Z
    .locals 3

    iget-boolean v0, p2, Landroidx/gridlayout/widget/GridLayout$j;->c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p2, Landroidx/gridlayout/widget/GridLayout$j;->a:Landroidx/gridlayout/widget/GridLayout$n;

    iget v2, v0, Landroidx/gridlayout/widget/GridLayout$n;->a:I

    iget v0, v0, Landroidx/gridlayout/widget/GridLayout$n;->b:I

    iget-object p2, p2, Landroidx/gridlayout/widget/GridLayout$j;->b:Landroidx/gridlayout/widget/GridLayout$o;

    iget p2, p2, Landroidx/gridlayout/widget/GridLayout$o;->a:I

    aget v2, p1, v2

    add-int/2addr v2, p2

    aget p2, p1, v0

    if-le v2, p2, :cond_1

    aput v2, p1, v0

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public J(I)V
    .locals 1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$l;->v()I

    move-result v0

    if-ge p1, v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "column"

    goto :goto_0

    :cond_0
    const-string v0, "row"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Count must be greater than or equal to the maximum of all grid indices "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "(and spans) defined in the LayoutParams of each child"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/gridlayout/widget/GridLayout;->x(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    iput p1, p0, Landroidx/gridlayout/widget/GridLayout$l;->b:I

    return-void
.end method

.method public K(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/gridlayout/widget/GridLayout$l;->u:Z

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$l;->E()V

    return-void
.end method

.method public final L(II)V
    .locals 1

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->v:Landroidx/gridlayout/widget/GridLayout$o;

    iput p1, v0, Landroidx/gridlayout/widget/GridLayout$o;->a:I

    iget-object p1, p0, Landroidx/gridlayout/widget/GridLayout$l;->w:Landroidx/gridlayout/widget/GridLayout$o;

    neg-int p2, p2

    iput p2, p1, Landroidx/gridlayout/widget/GridLayout$o;->a:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/gridlayout/widget/GridLayout$l;->q:Z

    return-void
.end method

.method public final M(IF)V
    .locals 5

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->t:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->x:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Landroidx/gridlayout/widget/GridLayout$l;->x:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    goto :goto_2

    :cond_0
    iget-object v3, p0, Landroidx/gridlayout/widget/GridLayout$l;->x:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v3, v2}, Landroidx/gridlayout/widget/GridLayout;->r(Landroid/view/View;)Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    move-result-object v2

    iget-boolean v3, p0, Landroidx/gridlayout/widget/GridLayout$l;->a:Z

    if-eqz v3, :cond_1

    iget-object v2, v2, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->b:Landroidx/gridlayout/widget/GridLayout$q;

    goto :goto_1

    :cond_1
    iget-object v2, v2, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->a:Landroidx/gridlayout/widget/GridLayout$q;

    :goto_1
    iget v2, v2, Landroidx/gridlayout/widget/GridLayout$q;->d:F

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_2

    int-to-float v3, p1

    mul-float v3, v3, v2

    div-float/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Landroidx/gridlayout/widget/GridLayout$l;->t:[I

    aput v3, v4, v1

    sub-int/2addr p1, v3

    sub-float/2addr p2, v2

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final N([I)I
    .locals 1

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$l;->p()I

    move-result v0

    aget p1, p1, v0

    return p1
.end method

.method public final O([I)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$l;->n()[Landroidx/gridlayout/widget/GridLayout$j;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroidx/gridlayout/widget/GridLayout$l;->P([Landroidx/gridlayout/widget/GridLayout$j;[I)Z

    move-result p1

    return p1
.end method

.method public final P([Landroidx/gridlayout/widget/GridLayout$j;[I)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroidx/gridlayout/widget/GridLayout$l;->Q([Landroidx/gridlayout/widget/GridLayout$j;[IZ)Z

    move-result p1

    return p1
.end method

.method public final Q([Landroidx/gridlayout/widget/GridLayout$j;[IZ)Z
    .locals 12

    iget-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "horizontal"

    goto :goto_0

    :cond_0
    const-string v0, "vertical"

    :goto_0
    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$l;->p()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    array-length v6, p1

    if-ge v5, v6, :cond_c

    invoke-virtual {p0, p2}, Landroidx/gridlayout/widget/GridLayout$l;->D([I)V

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v1, :cond_4

    array-length v7, p1

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_3
    if-ge v8, v7, :cond_1

    aget-object v10, p1, v8

    invoke-virtual {p0, p2, v10}, Landroidx/gridlayout/widget/GridLayout$l;->I([ILandroidx/gridlayout/widget/GridLayout$j;)Z

    move-result v10

    or-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_1
    if-nez v9, :cond_3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v0, p1, v3}, Landroidx/gridlayout/widget/GridLayout$l;->H(Ljava/lang/String;[Landroidx/gridlayout/widget/GridLayout$j;[Z)V

    :cond_2
    return v2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    if-nez p3, :cond_5

    return v4

    :cond_5
    array-length v6, p1

    new-array v6, v6, [Z

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v1, :cond_7

    array-length v8, p1

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v8, :cond_6

    aget-boolean v10, v6, v9

    aget-object v11, p1, v9

    invoke-virtual {p0, p2, v11}, Landroidx/gridlayout/widget/GridLayout$l;->I([ILandroidx/gridlayout/widget/GridLayout$j;)Z

    move-result v11

    or-int/2addr v10, v11

    aput-boolean v10, v6, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_7
    if-nez v5, :cond_8

    move-object v3, v6

    :cond_8
    const/4 v7, 0x0

    :goto_6
    array-length v8, p1

    if-ge v7, v8, :cond_b

    aget-boolean v8, v6, v7

    if-eqz v8, :cond_a

    aget-object v8, p1, v7

    iget-object v9, v8, Landroidx/gridlayout/widget/GridLayout$j;->a:Landroidx/gridlayout/widget/GridLayout$n;

    iget v10, v9, Landroidx/gridlayout/widget/GridLayout$n;->a:I

    iget v9, v9, Landroidx/gridlayout/widget/GridLayout$n;->b:I

    if-ge v10, v9, :cond_9

    goto :goto_7

    :cond_9
    iput-boolean v4, v8, Landroidx/gridlayout/widget/GridLayout$j;->c:Z

    goto :goto_8

    :cond_a
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_b
    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_c
    return v2
.end method

.method public final R([I)V
    .locals 10

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$l;->q()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    invoke-virtual {p0, p1}, Landroidx/gridlayout/widget/GridLayout$l;->O([I)Z

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->v:Landroidx/gridlayout/widget/GridLayout$o;

    iget v0, v0, Landroidx/gridlayout/widget/GridLayout$o;->a:I

    iget-object v2, p0, Landroidx/gridlayout/widget/GridLayout$l;->x:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    mul-int v0, v0, v2

    const/4 v2, 0x1

    add-int/2addr v0, v2

    const/4 v3, 0x2

    if-ge v0, v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$l;->d()F

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_2

    int-to-long v6, v5

    int-to-long v8, v0

    add-long/2addr v6, v8

    const-wide/16 v8, 0x2

    div-long/2addr v6, v8

    long-to-int v2, v6

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$l;->F()V

    invoke-virtual {p0, v2, v3}, Landroidx/gridlayout/widget/GridLayout$l;->M(IF)V

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$l;->n()[Landroidx/gridlayout/widget/GridLayout$j;

    move-result-object v6

    invoke-virtual {p0, v6, p1, v1}, Landroidx/gridlayout/widget/GridLayout$l;->Q([Landroidx/gridlayout/widget/GridLayout$j;[IZ)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v5, v2, 0x1

    move v4, v2

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    move v2, v6

    goto :goto_0

    :cond_2
    if-lez v4, :cond_3

    if-nez v2, :cond_3

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$l;->F()V

    invoke-virtual {p0, v4, v3}, Landroidx/gridlayout/widget/GridLayout$l;->M(IF)V

    invoke-virtual {p0, p1}, Landroidx/gridlayout/widget/GridLayout$l;->O([I)Z

    :cond_3
    return-void
.end method

.method public final S(Ljava/util/List;)[Landroidx/gridlayout/widget/GridLayout$j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/gridlayout/widget/GridLayout$j;",
            ">;)[",
            "Landroidx/gridlayout/widget/GridLayout$j;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroidx/gridlayout/widget/GridLayout$j;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/gridlayout/widget/GridLayout$j;

    invoke-virtual {p0, p1}, Landroidx/gridlayout/widget/GridLayout$l;->T([Landroidx/gridlayout/widget/GridLayout$j;)[Landroidx/gridlayout/widget/GridLayout$j;

    move-result-object p1

    return-object p1
.end method

.method public final T([Landroidx/gridlayout/widget/GridLayout$j;)[Landroidx/gridlayout/widget/GridLayout$j;
    .locals 1

    new-instance v0, Landroidx/gridlayout/widget/GridLayout$l$a;

    invoke-direct {v0, p0, p1}, Landroidx/gridlayout/widget/GridLayout$l$a;-><init>(Landroidx/gridlayout/widget/GridLayout$l;[Landroidx/gridlayout/widget/GridLayout$j;)V

    invoke-virtual {v0}, Landroidx/gridlayout/widget/GridLayout$l$a;->a()[Landroidx/gridlayout/widget/GridLayout$j;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/List;Landroidx/gridlayout/widget/GridLayout$p;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/gridlayout/widget/GridLayout$j;",
            ">;",
            "Landroidx/gridlayout/widget/GridLayout$p<",
            "Landroidx/gridlayout/widget/GridLayout$n;",
            "Landroidx/gridlayout/widget/GridLayout$o;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p2, Landroidx/gridlayout/widget/GridLayout$p;->b:[Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, [Landroidx/gridlayout/widget/GridLayout$n;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    check-cast v2, [Landroidx/gridlayout/widget/GridLayout$n;

    aget-object v2, v2, v1

    iget-object v3, p2, Landroidx/gridlayout/widget/GridLayout$p;->c:[Ljava/lang/Object;

    check-cast v3, [Landroidx/gridlayout/widget/GridLayout$o;

    aget-object v3, v3, v1

    invoke-virtual {p0, p1, v2, v3, v0}, Landroidx/gridlayout/widget/GridLayout$l;->C(Ljava/util/List;Landroidx/gridlayout/widget/GridLayout$n;Landroidx/gridlayout/widget/GridLayout$o;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/gridlayout/widget/GridLayout$j;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "x"

    goto :goto_0

    :cond_0
    const-string v0, "y"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/gridlayout/widget/GridLayout$j;

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    iget-object v4, v3, Landroidx/gridlayout/widget/GridLayout$j;->a:Landroidx/gridlayout/widget/GridLayout$n;

    iget v5, v4, Landroidx/gridlayout/widget/GridLayout$n;->a:I

    iget v4, v4, Landroidx/gridlayout/widget/GridLayout$n;->b:I

    iget-object v3, v3, Landroidx/gridlayout/widget/GridLayout$j;->b:Landroidx/gridlayout/widget/GridLayout$o;

    iget v3, v3, Landroidx/gridlayout/widget/GridLayout$o;->a:I

    const-string v6, "-"

    new-instance v7, Ljava/lang/StringBuilder;

    if-ge v5, v4, :cond_2

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ">="

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "<="

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-int v3, v3

    :goto_3
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final c()I
    .locals 6

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->x:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v4, p0, Landroidx/gridlayout/widget/GridLayout$l;->x:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Landroidx/gridlayout/widget/GridLayout$l;->x:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v5, v4}, Landroidx/gridlayout/widget/GridLayout;->r(Landroid/view/View;)Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    move-result-object v4

    iget-boolean v5, p0, Landroidx/gridlayout/widget/GridLayout$l;->a:Z

    if-eqz v5, :cond_0

    iget-object v4, v4, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->b:Landroidx/gridlayout/widget/GridLayout$q;

    goto :goto_1

    :cond_0
    iget-object v4, v4, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->a:Landroidx/gridlayout/widget/GridLayout$q;

    :goto_1
    iget-object v4, v4, Landroidx/gridlayout/widget/GridLayout$q;->b:Landroidx/gridlayout/widget/GridLayout$n;

    iget v5, v4, Landroidx/gridlayout/widget/GridLayout$n;->a:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v5, v4, Landroidx/gridlayout/widget/GridLayout$n;->b:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v4}, Landroidx/gridlayout/widget/GridLayout$n;->b()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-ne v3, v1, :cond_2

    const/high16 v3, -0x80000000

    :cond_2
    return v3
.end method

.method public final d()F
    .locals 6

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->x:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Landroidx/gridlayout/widget/GridLayout$l;->x:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    goto :goto_2

    :cond_0
    iget-object v4, p0, Landroidx/gridlayout/widget/GridLayout$l;->x:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v4, v3}, Landroidx/gridlayout/widget/GridLayout;->r(Landroid/view/View;)Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    move-result-object v3

    iget-boolean v4, p0, Landroidx/gridlayout/widget/GridLayout$l;->a:Z

    if-eqz v4, :cond_1

    iget-object v3, v3, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->b:Landroidx/gridlayout/widget/GridLayout$q;

    goto :goto_1

    :cond_1
    iget-object v3, v3, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->a:Landroidx/gridlayout/widget/GridLayout$q;

    :goto_1
    iget v3, v3, Landroidx/gridlayout/widget/GridLayout$q;->d:F

    add-float/2addr v1, v3

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final e()V
    .locals 0

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$l;->r()Landroidx/gridlayout/widget/GridLayout$p;

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$l;->o()Landroidx/gridlayout/widget/GridLayout$p;

    return-void
.end method

.method public final f()V
    .locals 10

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->d:Landroidx/gridlayout/widget/GridLayout$p;

    iget-object v0, v0, Landroidx/gridlayout/widget/GridLayout$p;->c:[Ljava/lang/Object;

    check-cast v0, [Landroidx/gridlayout/widget/GridLayout$m;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroidx/gridlayout/widget/GridLayout$m;->d()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->x:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Landroidx/gridlayout/widget/GridLayout$l;->x:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v3, p0, Landroidx/gridlayout/widget/GridLayout$l;->x:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v3, v6}, Landroidx/gridlayout/widget/GridLayout;->r(Landroid/view/View;)Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    move-result-object v3

    iget-boolean v4, p0, Landroidx/gridlayout/widget/GridLayout$l;->a:Z

    if-eqz v4, :cond_1

    iget-object v3, v3, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->b:Landroidx/gridlayout/widget/GridLayout$q;

    goto :goto_2

    :cond_1
    iget-object v3, v3, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->a:Landroidx/gridlayout/widget/GridLayout$q;

    :goto_2
    move-object v7, v3

    iget-object v3, p0, Landroidx/gridlayout/widget/GridLayout$l;->x:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v3, v6, v4}, Landroidx/gridlayout/widget/GridLayout;->v(Landroid/view/View;Z)I

    move-result v3

    iget v4, v7, Landroidx/gridlayout/widget/GridLayout$q;->d:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    const/4 v4, 0x0

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$l;->q()[I

    move-result-object v4

    aget v4, v4, v2

    :goto_3
    add-int v9, v3, v4

    iget-object v3, p0, Landroidx/gridlayout/widget/GridLayout$l;->d:Landroidx/gridlayout/widget/GridLayout$p;

    invoke-virtual {v3, v2}, Landroidx/gridlayout/widget/GridLayout$p;->c(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroidx/gridlayout/widget/GridLayout$m;

    iget-object v5, p0, Landroidx/gridlayout/widget/GridLayout$l;->x:Landroidx/gridlayout/widget/GridLayout;

    move-object v8, p0

    invoke-virtual/range {v4 .. v9}, Landroidx/gridlayout/widget/GridLayout$m;->c(Landroidx/gridlayout/widget/GridLayout;Landroid/view/View;Landroidx/gridlayout/widget/GridLayout$q;Landroidx/gridlayout/widget/GridLayout$l;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final g()Z
    .locals 6

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->x:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Landroidx/gridlayout/widget/GridLayout$l;->x:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    goto :goto_2

    :cond_0
    iget-object v4, p0, Landroidx/gridlayout/widget/GridLayout$l;->x:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v4, v3}, Landroidx/gridlayout/widget/GridLayout;->r(Landroid/view/View;)Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    move-result-object v3

    iget-boolean v4, p0, Landroidx/gridlayout/widget/GridLayout$l;->a:Z

    if-eqz v4, :cond_1

    iget-object v3, v3, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->b:Landroidx/gridlayout/widget/GridLayout$q;

    goto :goto_1

    :cond_1
    iget-object v3, v3, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->a:Landroidx/gridlayout/widget/GridLayout$q;

    :goto_1
    iget v3, v3, Landroidx/gridlayout/widget/GridLayout$q;->d:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public final h(Landroidx/gridlayout/widget/GridLayout$p;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/gridlayout/widget/GridLayout$p<",
            "Landroidx/gridlayout/widget/GridLayout$n;",
            "Landroidx/gridlayout/widget/GridLayout$o;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p1, Landroidx/gridlayout/widget/GridLayout$p;->c:[Ljava/lang/Object;

    check-cast v0, [Landroidx/gridlayout/widget/GridLayout$o;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroidx/gridlayout/widget/GridLayout$o;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$l;->s()Landroidx/gridlayout/widget/GridLayout$p;

    move-result-object v0

    iget-object v0, v0, Landroidx/gridlayout/widget/GridLayout$p;->c:[Ljava/lang/Object;

    check-cast v0, [Landroidx/gridlayout/widget/GridLayout$m;

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_2

    aget-object v2, v0, v1

    invoke-virtual {v2, p2}, Landroidx/gridlayout/widget/GridLayout$m;->e(Z)I

    move-result v2

    invoke-virtual {p1, v1}, Landroidx/gridlayout/widget/GridLayout$p;->c(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/gridlayout/widget/GridLayout$o;

    iget v4, v3, Landroidx/gridlayout/widget/GridLayout$o;->a:I

    if-eqz p2, :cond_1

    goto :goto_2

    :cond_1
    neg-int v2, v2

    :goto_2
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v3, Landroidx/gridlayout/widget/GridLayout$o;->a:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final i([I)V
    .locals 4

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$l;->A()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/gridlayout/widget/GridLayout$l;->O([I)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/gridlayout/widget/GridLayout$l;->R([I)V

    :goto_0
    iget-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->u:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    aget v1, p1, v0

    array-length v2, p1

    :goto_1
    if-ge v0, v2, :cond_1

    aget v3, p1, v0

    sub-int/2addr v3, v1

    aput v3, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final j(Z)V
    .locals 8

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->j:[I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->l:[I

    :goto_0
    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/gridlayout/widget/GridLayout$l;->x:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_4

    iget-object v3, p0, Landroidx/gridlayout/widget/GridLayout$l;->x:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    goto :goto_4

    :cond_1
    iget-object v4, p0, Landroidx/gridlayout/widget/GridLayout$l;->x:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v4, v3}, Landroidx/gridlayout/widget/GridLayout;->r(Landroid/view/View;)Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    move-result-object v4

    iget-boolean v5, p0, Landroidx/gridlayout/widget/GridLayout$l;->a:Z

    if-eqz v5, :cond_2

    iget-object v4, v4, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->b:Landroidx/gridlayout/widget/GridLayout$q;

    goto :goto_2

    :cond_2
    iget-object v4, v4, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->a:Landroidx/gridlayout/widget/GridLayout$q;

    :goto_2
    iget-object v4, v4, Landroidx/gridlayout/widget/GridLayout$q;->b:Landroidx/gridlayout/widget/GridLayout$n;

    if-eqz p1, :cond_3

    iget v4, v4, Landroidx/gridlayout/widget/GridLayout$n;->a:I

    goto :goto_3

    :cond_3
    iget v4, v4, Landroidx/gridlayout/widget/GridLayout$n;->b:I

    :goto_3
    aget v6, v0, v4

    iget-object v7, p0, Landroidx/gridlayout/widget/GridLayout$l;->x:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v7, v3, v5, p1}, Landroidx/gridlayout/widget/GridLayout;->t(Landroid/view/View;ZZ)I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v0, v4

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final k()[Landroidx/gridlayout/widget/GridLayout$j;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$l;->r()Landroidx/gridlayout/widget/GridLayout$p;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroidx/gridlayout/widget/GridLayout$l;->a(Ljava/util/List;Landroidx/gridlayout/widget/GridLayout$p;)V

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$l;->o()Landroidx/gridlayout/widget/GridLayout$p;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroidx/gridlayout/widget/GridLayout$l;->a(Ljava/util/List;Landroidx/gridlayout/widget/GridLayout$p;)V

    iget-boolean v2, p0, Landroidx/gridlayout/widget/GridLayout$l;->u:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$l;->p()I

    move-result v4

    if-ge v2, v4, :cond_0

    new-instance v4, Landroidx/gridlayout/widget/GridLayout$n;

    add-int/lit8 v5, v2, 0x1

    invoke-direct {v4, v2, v5}, Landroidx/gridlayout/widget/GridLayout$n;-><init>(II)V

    new-instance v2, Landroidx/gridlayout/widget/GridLayout$o;

    invoke-direct {v2, v3}, Landroidx/gridlayout/widget/GridLayout$o;-><init>(I)V

    invoke-virtual {p0, v0, v4, v2}, Landroidx/gridlayout/widget/GridLayout$l;->B(Ljava/util/List;Landroidx/gridlayout/widget/GridLayout$n;Landroidx/gridlayout/widget/GridLayout$o;)V

    move v2, v5

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$l;->p()I

    move-result v2

    new-instance v4, Landroidx/gridlayout/widget/GridLayout$n;

    invoke-direct {v4, v3, v2}, Landroidx/gridlayout/widget/GridLayout$n;-><init>(II)V

    iget-object v5, p0, Landroidx/gridlayout/widget/GridLayout$l;->v:Landroidx/gridlayout/widget/GridLayout$o;

    invoke-virtual {p0, v0, v4, v5, v3}, Landroidx/gridlayout/widget/GridLayout$l;->C(Ljava/util/List;Landroidx/gridlayout/widget/GridLayout$n;Landroidx/gridlayout/widget/GridLayout$o;Z)V

    new-instance v4, Landroidx/gridlayout/widget/GridLayout$n;

    invoke-direct {v4, v2, v3}, Landroidx/gridlayout/widget/GridLayout$n;-><init>(II)V

    iget-object v2, p0, Landroidx/gridlayout/widget/GridLayout$l;->w:Landroidx/gridlayout/widget/GridLayout$o;

    invoke-virtual {p0, v1, v4, v2, v3}, Landroidx/gridlayout/widget/GridLayout$l;->C(Ljava/util/List;Landroidx/gridlayout/widget/GridLayout$n;Landroidx/gridlayout/widget/GridLayout$o;Z)V

    invoke-virtual {p0, v0}, Landroidx/gridlayout/widget/GridLayout$l;->S(Ljava/util/List;)[Landroidx/gridlayout/widget/GridLayout$j;

    move-result-object v0

    invoke-virtual {p0, v1}, Landroidx/gridlayout/widget/GridLayout$l;->S(Ljava/util/List;)[Landroidx/gridlayout/widget/GridLayout$j;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/gridlayout/widget/GridLayout;->b([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/gridlayout/widget/GridLayout$j;

    return-object v0
.end method

.method public final l()Landroidx/gridlayout/widget/GridLayout$p;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/gridlayout/widget/GridLayout$p<",
            "Landroidx/gridlayout/widget/GridLayout$q;",
            "Landroidx/gridlayout/widget/GridLayout$m;",
            ">;"
        }
    .end annotation

    const-class v0, Landroidx/gridlayout/widget/GridLayout$q;

    const-class v1, Landroidx/gridlayout/widget/GridLayout$m;

    invoke-static {v0, v1}, Landroidx/gridlayout/widget/GridLayout$k;->b(Ljava/lang/Class;Ljava/lang/Class;)Landroidx/gridlayout/widget/GridLayout$k;

    move-result-object v0

    iget-object v1, p0, Landroidx/gridlayout/widget/GridLayout$l;->x:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Landroidx/gridlayout/widget/GridLayout$l;->x:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Landroidx/gridlayout/widget/GridLayout$l;->x:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v4, v3}, Landroidx/gridlayout/widget/GridLayout;->r(Landroid/view/View;)Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    move-result-object v3

    iget-boolean v4, p0, Landroidx/gridlayout/widget/GridLayout$l;->a:Z

    if-eqz v4, :cond_0

    iget-object v3, v3, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->b:Landroidx/gridlayout/widget/GridLayout$q;

    goto :goto_1

    :cond_0
    iget-object v3, v3, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->a:Landroidx/gridlayout/widget/GridLayout$q;

    :goto_1
    invoke-virtual {v3, v4}, Landroidx/gridlayout/widget/GridLayout$q;->b(Z)Landroidx/gridlayout/widget/GridLayout$i;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/gridlayout/widget/GridLayout$i;->b()Landroidx/gridlayout/widget/GridLayout$m;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroidx/gridlayout/widget/GridLayout$k;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/gridlayout/widget/GridLayout$k;->c()Landroidx/gridlayout/widget/GridLayout$p;

    move-result-object v0

    return-object v0
.end method

.method public final m(Z)Landroidx/gridlayout/widget/GridLayout$p;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroidx/gridlayout/widget/GridLayout$p<",
            "Landroidx/gridlayout/widget/GridLayout$n;",
            "Landroidx/gridlayout/widget/GridLayout$o;",
            ">;"
        }
    .end annotation

    const-class v0, Landroidx/gridlayout/widget/GridLayout$n;

    const-class v1, Landroidx/gridlayout/widget/GridLayout$o;

    invoke-static {v0, v1}, Landroidx/gridlayout/widget/GridLayout$k;->b(Ljava/lang/Class;Ljava/lang/Class;)Landroidx/gridlayout/widget/GridLayout$k;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$l;->s()Landroidx/gridlayout/widget/GridLayout$p;

    move-result-object v1

    iget-object v1, v1, Landroidx/gridlayout/widget/GridLayout$p;->b:[Ljava/lang/Object;

    check-cast v1, [Landroidx/gridlayout/widget/GridLayout$q;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    if-eqz p1, :cond_0

    aget-object v4, v1, v3

    iget-object v4, v4, Landroidx/gridlayout/widget/GridLayout$q;->b:Landroidx/gridlayout/widget/GridLayout$n;

    goto :goto_1

    :cond_0
    aget-object v4, v1, v3

    iget-object v4, v4, Landroidx/gridlayout/widget/GridLayout$q;->b:Landroidx/gridlayout/widget/GridLayout$n;

    invoke-virtual {v4}, Landroidx/gridlayout/widget/GridLayout$n;->a()Landroidx/gridlayout/widget/GridLayout$n;

    move-result-object v4

    :goto_1
    new-instance v5, Landroidx/gridlayout/widget/GridLayout$o;

    invoke-direct {v5}, Landroidx/gridlayout/widget/GridLayout$o;-><init>()V

    invoke-virtual {v0, v4, v5}, Landroidx/gridlayout/widget/GridLayout$k;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/gridlayout/widget/GridLayout$k;->c()Landroidx/gridlayout/widget/GridLayout$p;

    move-result-object p1

    return-object p1
.end method

.method public n()[Landroidx/gridlayout/widget/GridLayout$j;
    .locals 1

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->n:[Landroidx/gridlayout/widget/GridLayout$j;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$l;->k()[Landroidx/gridlayout/widget/GridLayout$j;

    move-result-object v0

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->n:[Landroidx/gridlayout/widget/GridLayout$j;

    :cond_0
    iget-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->o:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$l;->e()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->o:Z

    :cond_1
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->n:[Landroidx/gridlayout/widget/GridLayout$j;

    return-object v0
.end method

.method public final o()Landroidx/gridlayout/widget/GridLayout$p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/gridlayout/widget/GridLayout$p<",
            "Landroidx/gridlayout/widget/GridLayout$n;",
            "Landroidx/gridlayout/widget/GridLayout$o;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->h:Landroidx/gridlayout/widget/GridLayout$p;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Landroidx/gridlayout/widget/GridLayout$l;->m(Z)Landroidx/gridlayout/widget/GridLayout$p;

    move-result-object v0

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->h:Landroidx/gridlayout/widget/GridLayout$p;

    :cond_0
    iget-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->h:Landroidx/gridlayout/widget/GridLayout$p;

    invoke-virtual {p0, v0, v1}, Landroidx/gridlayout/widget/GridLayout$l;->h(Landroidx/gridlayout/widget/GridLayout$p;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->i:Z

    :cond_1
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->h:Landroidx/gridlayout/widget/GridLayout$p;

    return-object v0
.end method

.method public p()I
    .locals 2

    iget v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->b:I

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$l;->v()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public q()[I
    .locals 1

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->t:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->x:Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->t:[I

    :cond_0
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->t:[I

    return-object v0
.end method

.method public final r()Landroidx/gridlayout/widget/GridLayout$p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/gridlayout/widget/GridLayout$p<",
            "Landroidx/gridlayout/widget/GridLayout$n;",
            "Landroidx/gridlayout/widget/GridLayout$o;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->f:Landroidx/gridlayout/widget/GridLayout$p;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Landroidx/gridlayout/widget/GridLayout$l;->m(Z)Landroidx/gridlayout/widget/GridLayout$p;

    move-result-object v0

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->f:Landroidx/gridlayout/widget/GridLayout$p;

    :cond_0
    iget-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->f:Landroidx/gridlayout/widget/GridLayout$p;

    invoke-virtual {p0, v0, v1}, Landroidx/gridlayout/widget/GridLayout$l;->h(Landroidx/gridlayout/widget/GridLayout$p;Z)V

    iput-boolean v1, p0, Landroidx/gridlayout/widget/GridLayout$l;->g:Z

    :cond_1
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->f:Landroidx/gridlayout/widget/GridLayout$p;

    return-object v0
.end method

.method public s()Landroidx/gridlayout/widget/GridLayout$p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/gridlayout/widget/GridLayout$p<",
            "Landroidx/gridlayout/widget/GridLayout$q;",
            "Landroidx/gridlayout/widget/GridLayout$m;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->d:Landroidx/gridlayout/widget/GridLayout$p;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$l;->l()Landroidx/gridlayout/widget/GridLayout$p;

    move-result-object v0

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->d:Landroidx/gridlayout/widget/GridLayout$p;

    :cond_0
    iget-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$l;->f()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->e:Z

    :cond_1
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->d:Landroidx/gridlayout/widget/GridLayout$p;

    return-object v0
.end method

.method public t()[I
    .locals 2

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->j:[I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$l;->p()I

    move-result v0

    add-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->j:[I

    :cond_0
    iget-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->k:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Landroidx/gridlayout/widget/GridLayout$l;->j(Z)V

    iput-boolean v1, p0, Landroidx/gridlayout/widget/GridLayout$l;->k:Z

    :cond_1
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->j:[I

    return-object v0
.end method

.method public u()[I
    .locals 2

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->p:[I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$l;->p()I

    move-result v0

    add-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->p:[I

    :cond_0
    iget-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->q:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->p:[I

    invoke-virtual {p0, v0}, Landroidx/gridlayout/widget/GridLayout$l;->i([I)V

    iput-boolean v1, p0, Landroidx/gridlayout/widget/GridLayout$l;->q:Z

    :cond_1
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->p:[I

    return-object v0
.end method

.method public final v()I
    .locals 2

    iget v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->c:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$l;->c()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->c:I

    :cond_0
    iget v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->c:I

    return v0
.end method

.method public w(I)I
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0, p1, p1}, Landroidx/gridlayout/widget/GridLayout$l;->x(II)I

    move-result p1

    return p1

    :cond_1
    const p1, 0x186a0

    invoke-virtual {p0, v2, p1}, Landroidx/gridlayout/widget/GridLayout$l;->x(II)I

    move-result p1

    return p1

    :cond_2
    invoke-virtual {p0, v2, p1}, Landroidx/gridlayout/widget/GridLayout$l;->x(II)I

    move-result p1

    return p1
.end method

.method public final x(II)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/gridlayout/widget/GridLayout$l;->L(II)V

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$l;->u()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/gridlayout/widget/GridLayout$l;->N([I)I

    move-result p1

    return p1
.end method

.method public y()[I
    .locals 2

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->l:[I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$l;->p()I

    move-result v0

    add-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->l:[I

    :cond_0
    iget-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->m:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/gridlayout/widget/GridLayout$l;->j(Z)V

    iput-boolean v1, p0, Landroidx/gridlayout/widget/GridLayout$l;->m:Z

    :cond_1
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$l;->l:[I

    return-object v0
.end method

.method public z([Landroidx/gridlayout/widget/GridLayout$j;)[[Landroidx/gridlayout/widget/GridLayout$j;
    .locals 9

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$l;->p()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [[Landroidx/gridlayout/widget/GridLayout$j;

    new-array v2, v0, [I

    array-length v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, p1, v5

    iget-object v6, v6, Landroidx/gridlayout/widget/GridLayout$j;->a:Landroidx/gridlayout/widget/GridLayout$n;

    iget v6, v6, Landroidx/gridlayout/widget/GridLayout$n;->a:I

    aget v7, v2, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    aget v5, v2, v3

    new-array v5, v5, [Landroidx/gridlayout/widget/GridLayout$j;

    aput-object v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([II)V

    array-length v0, p1

    :goto_2
    if-ge v4, v0, :cond_2

    aget-object v3, p1, v4

    iget-object v5, v3, Landroidx/gridlayout/widget/GridLayout$j;->a:Landroidx/gridlayout/widget/GridLayout$n;

    iget v5, v5, Landroidx/gridlayout/widget/GridLayout$n;->a:I

    aget-object v6, v1, v5

    aget v7, v2, v5

    add-int/lit8 v8, v7, 0x1

    aput v8, v2, v5

    aput-object v3, v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    return-object v1
.end method
