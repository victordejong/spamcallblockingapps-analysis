.class Landroidx/core/h/y$a;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"

# interfaces
.implements Landroidx/core/h/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/h/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Landroidx/core/h/y;

.field b:Z


# direct methods
.method constructor <init>(Landroidx/core/h/y;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroidx/core/h/y$a;->a:Landroidx/core/h/y;

    .line 46
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/core/h/y$a;->b:Z

    .line 53
    iget-object v0, p0, Landroidx/core/h/y$a;->a:Landroidx/core/h/y;

    iget v0, v0, Landroidx/core/h/y;->c:I

    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    .line 54
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 56
    :cond_0
    iget-object v0, p0, Landroidx/core/h/y$a;->a:Landroidx/core/h/y;

    iget-object v0, v0, Landroidx/core/h/y;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Landroidx/core/h/y$a;->a:Landroidx/core/h/y;

    iget-object v0, v0, Landroidx/core/h/y;->a:Ljava/lang/Runnable;

    .line 58
    iget-object v2, p0, Landroidx/core/h/y$a;->a:Landroidx/core/h/y;

    iput-object v1, v2, Landroidx/core/h/y;->a:Ljava/lang/Runnable;

    .line 59
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 61
    :cond_1
    const/high16 v0, 0x7e000000

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 63
    instance-of v2, v0, Landroidx/core/h/z;

    if-eqz v2, :cond_3

    .line 64
    check-cast v0, Landroidx/core/h/z;

    .line 66
    :goto_0
    if-eqz v0, :cond_2

    .line 67
    invoke-interface {v0, p1}, Landroidx/core/h/z;->a(Landroid/view/View;)V

    .line 69
    :cond_2
    return-void

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public b(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 73
    iget-object v0, p0, Landroidx/core/h/y$a;->a:Landroidx/core/h/y;

    iget v0, v0, Landroidx/core/h/y;->c:I

    if-le v0, v2, :cond_0

    .line 74
    iget-object v0, p0, Landroidx/core/h/y$a;->a:Landroidx/core/h/y;

    iget v0, v0, Landroidx/core/h/y;->c:I

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 75
    iget-object v0, p0, Landroidx/core/h/y$a;->a:Landroidx/core/h/y;

    iput v2, v0, Landroidx/core/h/y;->c:I

    .line 77
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v0, v2, :cond_1

    iget-boolean v0, p0, Landroidx/core/h/y$a;->b:Z

    if-nez v0, :cond_4

    .line 80
    :cond_1
    iget-object v0, p0, Landroidx/core/h/y$a;->a:Landroidx/core/h/y;

    iget-object v0, v0, Landroidx/core/h/y;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Landroidx/core/h/y$a;->a:Landroidx/core/h/y;

    iget-object v0, v0, Landroidx/core/h/y;->b:Ljava/lang/Runnable;

    .line 82
    iget-object v2, p0, Landroidx/core/h/y$a;->a:Landroidx/core/h/y;

    iput-object v1, v2, Landroidx/core/h/y;->b:Ljava/lang/Runnable;

    .line 83
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 85
    :cond_2
    const/high16 v0, 0x7e000000

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 87
    instance-of v2, v0, Landroidx/core/h/z;

    if-eqz v2, :cond_5

    .line 88
    check-cast v0, Landroidx/core/h/z;

    .line 90
    :goto_0
    if-eqz v0, :cond_3

    .line 91
    invoke-interface {v0, p1}, Landroidx/core/h/z;->b(Landroid/view/View;)V

    .line 93
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/h/y$a;->b:Z

    .line 95
    :cond_4
    return-void

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method public c(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 99
    const/high16 v0, 0x7e000000

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 100
    const/4 v1, 0x0

    .line 101
    instance-of v2, v0, Landroidx/core/h/z;

    if-eqz v2, :cond_1

    .line 102
    check-cast v0, Landroidx/core/h/z;

    .line 104
    :goto_0
    if-eqz v0, :cond_0

    .line 105
    invoke-interface {v0, p1}, Landroidx/core/h/z;->c(Landroid/view/View;)V

    .line 107
    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
