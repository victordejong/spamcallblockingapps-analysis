.class final Landroidx/media2/widget/f$a$b;
.super Landroidx/media2/widget/f$a$e;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/widget/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/f$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/widget/f$a;

.field private final c:Landroidx/media2/widget/f$a$e;


# direct methods
.method constructor <init>(Landroidx/media2/widget/f$a;Landroid/content/Context;)V
    .locals 7

    .line 399
    iput-object p1, p0, Landroidx/media2/widget/f$a$b;->a:Landroidx/media2/widget/f$a;

    .line 400
    invoke-direct {p0, p1, p2}, Landroidx/media2/widget/f$a$e;-><init>(Landroidx/media2/widget/f$a;Landroid/content/Context;)V

    .line 402
    new-instance v0, Landroidx/media2/widget/f$a$e;

    invoke-direct {v0, p1, p2}, Landroidx/media2/widget/f$a$e;-><init>(Landroidx/media2/widget/f$a;Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/media2/widget/f$a$b;->c:Landroidx/media2/widget/f$a$e;

    .line 403
    new-instance p1, Landroidx/media2/widget/f$a$e$a;

    const v3, 0x3dcccccd    # 0.1f

    const v4, 0x3f666666    # 0.9f

    const v5, 0x3dcccccd    # 0.1f

    const v6, 0x3f666666    # 0.9f

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroidx/media2/widget/f$a$e$a;-><init>(Landroidx/media2/widget/f$a$e;FFFF)V

    invoke-virtual {p0, v0, p1}, Landroidx/media2/widget/f$a$b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 3

    .line 434
    iget-object v0, p0, Landroidx/media2/widget/f$a$b;->c:Landroidx/media2/widget/f$a$e;

    invoke-virtual {v0}, Landroidx/media2/widget/f$a$e;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 436
    iget-object v2, p0, Landroidx/media2/widget/f$a$b;->c:Landroidx/media2/widget/f$a$e;

    .line 437
    invoke-virtual {v2, v1}, Landroidx/media2/widget/f$a$e;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/media2/widget/f$a$d;

    .line 1810
    iput p1, v2, Landroidx/media2/widget/f$a$d;->b:F

    .line 1811
    invoke-virtual {v2}, Landroidx/media2/widget/f$a$d;->d()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Landroidx/media2/widget/b;)V
    .locals 3

    .line 424
    iget-object v0, p0, Landroidx/media2/widget/f$a$b;->c:Landroidx/media2/widget/f$a$e;

    invoke-virtual {v0}, Landroidx/media2/widget/f$a$e;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 426
    iget-object v2, p0, Landroidx/media2/widget/f$a$b;->c:Landroidx/media2/widget/f$a$e;

    .line 427
    invoke-virtual {v2, v1}, Landroidx/media2/widget/f$a$e;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/media2/widget/f$a$d;

    .line 428
    invoke-virtual {v2, p1}, Landroidx/media2/widget/f$a$d;->a(Landroidx/media2/widget/b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Landroidx/media2/widget/f$a$d;)V
    .locals 1

    .line 419
    iget-object v0, p0, Landroidx/media2/widget/f$a$b;->c:Landroidx/media2/widget/f$a$e;

    invoke-virtual {v0, p1}, Landroidx/media2/widget/f$a$e;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final a(Landroidx/media2/widget/f$a$d;Landroidx/media2/widget/f$a$e$a;)V
    .locals 1

    .line 410
    iget-object v0, p0, Landroidx/media2/widget/f$a$b;->c:Landroidx/media2/widget/f$a$e;

    invoke-virtual {v0, p1}, Landroidx/media2/widget/f$a$e;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_0

    .line 412
    iget-object v0, p0, Landroidx/media2/widget/f$a$b;->c:Landroidx/media2/widget/f$a$e;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/widget/f$a$e;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 415
    :cond_0
    iget-object v0, p0, Landroidx/media2/widget/f$a$b;->c:Landroidx/media2/widget/f$a$e;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/widget/f$a$e;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
