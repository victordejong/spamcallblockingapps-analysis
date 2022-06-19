.class public final Lp8/f$d;
.super Lq8/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp8/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lq8/a<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lq8/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroid/view/View;

    .line 2
    invoke-static {p1}, Lr8/a;->e(Landroid/view/View;)Lr8/a;

    move-result-object p1

    .line 3
    iget-object v0, p1, Lr8/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget p1, p1, Lr8/a;->l:F

    add-float/2addr p1, v0

    .line 5
    :goto_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Object;F)V
    .locals 1

    .line 1
    check-cast p1, Landroid/view/View;

    .line 2
    invoke-static {p1}, Lr8/a;->e(Landroid/view/View;)Lr8/a;

    move-result-object p1

    .line 3
    iget-object v0, p1, Lr8/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p2, v0

    .line 5
    iget v0, p1, Lr8/a;->l:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1}, Lr8/a;->c()V

    .line 7
    iput p2, p1, Lr8/a;->l:F

    .line 8
    invoke-virtual {p1}, Lr8/a;->b()V

    :cond_0
    return-void
.end method
