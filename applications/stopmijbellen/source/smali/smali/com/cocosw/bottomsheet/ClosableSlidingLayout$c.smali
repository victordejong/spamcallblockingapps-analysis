.class public Lcom/cocosw/bottomsheet/ClosableSlidingLayout$c;
.super Ls0/c$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cocosw/bottomsheet/ClosableSlidingLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lcom/cocosw/bottomsheet/ClosableSlidingLayout;


# direct methods
.method public constructor <init>(Lcom/cocosw/bottomsheet/ClosableSlidingLayout;Lcom/cocosw/bottomsheet/ClosableSlidingLayout$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout$c;->a:Lcom/cocosw/bottomsheet/ClosableSlidingLayout;

    invoke-direct {p0}, Ls0/c$c;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;II)I
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout$c;->a:Lcom/cocosw/bottomsheet/ClosableSlidingLayout;

    .line 2
    iget p1, p1, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->g:I

    .line 3
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public i(Landroid/view/View;IIII)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout$c;->a:Lcom/cocosw/bottomsheet/ClosableSlidingLayout;

    .line 2
    iget p4, p2, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->f:I

    sub-int/2addr p4, p3

    const/4 p5, 0x1

    if-ge p4, p5, :cond_0

    .line 3
    iget-object p4, p2, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->e:Lcom/cocosw/bottomsheet/ClosableSlidingLayout$b;

    if-eqz p4, :cond_0

    .line 4
    iget-object p2, p2, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->d:Ls0/c;

    .line 5
    invoke-virtual {p2}, Ls0/c;->a()V

    .line 6
    iget-object p2, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout$c;->a:Lcom/cocosw/bottomsheet/ClosableSlidingLayout;

    .line 7
    iget-object p2, p2, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->e:Lcom/cocosw/bottomsheet/ClosableSlidingLayout$b;

    .line 8
    check-cast p2, Lcom/cocosw/bottomsheet/c;

    .line 9
    iget-object p2, p2, Lcom/cocosw/bottomsheet/c;->a:Lcom/cocosw/bottomsheet/h;

    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 10
    iget-object p2, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout$c;->a:Lcom/cocosw/bottomsheet/ClosableSlidingLayout;

    .line 11
    iget-object p2, p2, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->d:Ls0/c;

    const/4 p4, 0x0

    .line 12
    invoke-virtual {p2, p1, p4, p3}, Ls0/c;->x(Landroid/view/View;II)Z

    :cond_0
    return-void
.end method

.method public j(Landroid/view/View;FF)V
    .locals 4

    .line 1
    iget-object p2, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout$c;->a:Lcom/cocosw/bottomsheet/ClosableSlidingLayout;

    .line 2
    iget v0, p2, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->a:F

    const/4 v1, 0x0

    cmpl-float p3, p3, v0

    if-lez p3, :cond_0

    .line 3
    iget-object p3, p2, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->d:Ls0/c;

    iget v0, p2, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->g:I

    iget v2, p2, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->f:I

    add-int/2addr v0, v2

    invoke-virtual {p3, p1, v1, v0}, Ls0/c;->x(Landroid/view/View;II)Z

    .line 4
    sget-object p1, Lm0/v;->a:Ljava/util/WeakHashMap;

    .line 5
    invoke-static {p2}, Lm0/v$d;->k(Landroid/view/View;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iget-object p3, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout$c;->a:Lcom/cocosw/bottomsheet/ClosableSlidingLayout;

    .line 7
    iget v0, p3, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->g:I

    .line 8
    iget v2, p3, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->f:I

    .line 9
    div-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v0

    if-lt p2, v3, :cond_1

    .line 10
    iget-object p2, p3, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->d:Ls0/c;

    add-int/2addr v0, v2

    invoke-virtual {p2, p1, v1, v0}, Ls0/c;->x(Landroid/view/View;II)Z

    .line 11
    sget-object p1, Lm0/v;->a:Ljava/util/WeakHashMap;

    .line 12
    invoke-static {p3}, Lm0/v$d;->k(Landroid/view/View;)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object p2, p3, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->d:Ls0/c;

    .line 14
    invoke-virtual {p2, p1, v1, v0}, Ls0/c;->x(Landroid/view/View;II)Z

    .line 15
    iget-object p1, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout$c;->a:Lcom/cocosw/bottomsheet/ClosableSlidingLayout;

    sget-object p2, Lm0/v;->a:Ljava/util/WeakHashMap;

    .line 16
    invoke-static {p1}, Lm0/v$d;->k(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public k(Landroid/view/View;I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
