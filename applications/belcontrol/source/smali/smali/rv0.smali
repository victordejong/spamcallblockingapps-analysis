.class public Lrv0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:I

.field public final b:Landroid/view/View;

.field public final c:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageButton;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10c000d

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    const p1, 0x7f070131

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    const p1, 0x7f07012e

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    const p1, 0x7f0b000a

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lrv0;->a:I

    iput-object p2, p0, Lrv0;->b:Landroid/view/View;

    iput-object p3, p0, Lrv0;->c:Landroid/widget/ImageButton;

    invoke-static {p2, v0}, Lsv0;->b(Landroid/view/View;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lrv0;->c(Z)V

    iget-object v0, p0, Lrv0;->b:Landroid/view/View;

    const/16 v1, 0x10a

    invoke-static {v0, v1, p1}, Lqv0;->e(Landroid/view/View;II)V

    iget-object v0, p0, Lrv0;->c:Landroid/widget/ImageButton;

    add-int/lit8 p1, p1, 0x64

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lqv0;->b(Landroid/view/View;IILqv0$e;)V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lrv0;->b:Landroid/view/View;

    iget v1, p0, Lrv0;->a:I

    invoke-static {v0, v1}, Lqv0;->g(Landroid/view/View;I)V

    iget-object v0, p0, Lrv0;->c:Landroid/widget/ImageButton;

    const/16 v1, 0x42

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lqv0;->d(Landroid/view/View;ILqv0$e;)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    iget-object v0, p0, Lrv0;->b:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
