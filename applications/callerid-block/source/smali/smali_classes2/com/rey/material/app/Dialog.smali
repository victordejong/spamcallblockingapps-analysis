.class public Lcom/rey/material/app/Dialog;
.super Landroid/app/Dialog;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rey/material/app/Dialog$Builder;,
        Lcom/rey/material/app/Dialog$e;,
        Lcom/rey/material/app/Dialog$d;
    }
.end annotation


# static fields
.field public static final B:I

.field public static final C:I

.field public static final D:I

.field public static final E:I


# instance fields
.field private A:Z

.field private b:Lcom/rey/material/app/Dialog$d;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field protected g:Lcom/rey/material/widget/TextView;

.field protected h:Lcom/rey/material/widget/Button;

.field protected i:Lcom/rey/material/widget/Button;

.field protected j:Lcom/rey/material/widget/Button;

.field private k:Landroid/view/View;

.field private l:Lcom/rey/material/app/Dialog$e;

.field protected m:I

.field protected n:I

.field protected o:I

.field protected p:I

.field protected q:I

.field protected r:I

.field protected s:I

.field protected t:I

.field protected u:I

.field protected v:I

.field private final w:Landroid/os/Handler;

.field private final x:Ljava/lang/Runnable;

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Le/g/a/b/d;->f()I

    move-result v0

    sput v0, Lcom/rey/material/app/Dialog;->B:I

    invoke-static {}, Le/g/a/b/d;->f()I

    move-result v0

    sput v0, Lcom/rey/material/app/Dialog;->C:I

    invoke-static {}, Le/g/a/b/d;->f()I

    move-result v0

    sput v0, Lcom/rey/material/app/Dialog;->D:I

    invoke-static {}, Le/g/a/b/d;->f()I

    move-result v0

    sput v0, Lcom/rey/material/app/Dialog;->E:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f110102

    invoke-direct {p0, p1, v0}, Lcom/rey/material/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, -0x2

    iput v0, p0, Lcom/rey/material/app/Dialog;->c:I

    iput v0, p0, Lcom/rey/material/app/Dialog;->d:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/rey/material/app/Dialog;->w:Landroid/os/Handler;

    new-instance v0, Lcom/rey/material/app/Dialog$a;

    invoke-direct {v0, p0}, Lcom/rey/material/app/Dialog$a;-><init>(Lcom/rey/material/app/Dialog;)V

    iput-object v0, p0, Lcom/rey/material/app/Dialog;->x:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rey/material/app/Dialog;->y:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rey/material/app/Dialog;->z:Z

    iput-boolean v0, p0, Lcom/rey/material/app/Dialog;->A:Z

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {}, Le/g/a/a/a;->a()Le/g/a/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const v1, 0x7f1100f2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-direct {p0, p1, p2}, Lcom/rey/material/app/Dialog;->I(Landroid/content/Context;I)V

    return-void
.end method

.method private I(Landroid/content/Context;I)V
    .locals 5

    const/16 v0, 0x18

    invoke-static {p1, v0}, Le/g/a/b/b;->e(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/rey/material/app/Dialog;->m:I

    const/16 v1, 0x40

    invoke-static {p1, v1}, Le/g/a/b/b;->e(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/rey/material/app/Dialog;->q:I

    const/16 v1, 0x24

    invoke-static {p1, v1}, Le/g/a/b/b;->e(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/rey/material/app/Dialog;->n:I

    const/16 v1, 0x30

    invoke-static {p1, v1}, Le/g/a/b/b;->e(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/rey/material/app/Dialog;->o:I

    const/16 v1, 0x8

    invoke-static {p1, v1}, Le/g/a/b/b;->e(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/rey/material/app/Dialog;->r:I

    const/16 v1, 0x10

    invoke-static {p1, v1}, Le/g/a/b/b;->e(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/rey/material/app/Dialog;->p:I

    const/16 v1, 0x28

    invoke-static {p1, v1}, Le/g/a/b/b;->e(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/rey/material/app/Dialog;->s:I

    invoke-static {p1, v0}, Le/g/a/b/b;->e(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/rey/material/app/Dialog;->t:I

    new-instance v0, Lcom/rey/material/app/Dialog$e;

    invoke-direct {v0, p0, p1}, Lcom/rey/material/app/Dialog$e;-><init>(Lcom/rey/material/app/Dialog;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rey/material/app/Dialog;->l:Lcom/rey/material/app/Dialog$e;

    new-instance v0, Lcom/rey/material/app/Dialog$d;

    invoke-direct {v0, p0, p1}, Lcom/rey/material/app/Dialog$d;-><init>(Lcom/rey/material/app/Dialog;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rey/material/app/Dialog;->b:Lcom/rey/material/app/Dialog$d;

    new-instance v0, Lcom/rey/material/widget/TextView;

    invoke-direct {v0, p1}, Lcom/rey/material/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rey/material/app/Dialog;->g:Lcom/rey/material/widget/TextView;

    new-instance v0, Lcom/rey/material/widget/Button;

    invoke-direct {v0, p1}, Lcom/rey/material/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rey/material/app/Dialog;->h:Lcom/rey/material/widget/Button;

    new-instance v0, Lcom/rey/material/widget/Button;

    invoke-direct {v0, p1}, Lcom/rey/material/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rey/material/app/Dialog;->i:Lcom/rey/material/widget/Button;

    new-instance v0, Lcom/rey/material/widget/Button;

    invoke-direct {v0, p1}, Lcom/rey/material/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rey/material/app/Dialog;->j:Lcom/rey/material/widget/Button;

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->l:Lcom/rey/material/app/Dialog$e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setPreventCornerOverlap(Z)V

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->l:Lcom/rey/material/app/Dialog$e;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/cardview/widget/CardView;->setUseCompatPadding(Z)V

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->g:Lcom/rey/material/widget/TextView;

    sget v3, Lcom/rey/material/app/Dialog;->B:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setId(I)V

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->g:Lcom/rey/material/widget/TextView;

    const v3, 0x800003

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->g:Lcom/rey/material/widget/TextView;

    iget v3, p0, Lcom/rey/material/app/Dialog;->m:I

    iget v4, p0, Lcom/rey/material/app/Dialog;->r:I

    sub-int v4, v3, v4

    invoke-virtual {v0, v3, v3, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->h:Lcom/rey/material/widget/Button;

    sget v3, Lcom/rey/material/app/Dialog;->C:I

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setId(I)V

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->h:Lcom/rey/material/widget/Button;

    iget v3, p0, Lcom/rey/material/app/Dialog;->r:I

    invoke-virtual {v0, v3, v1, v3, v1}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->h:Lcom/rey/material/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->i:Lcom/rey/material/widget/Button;

    sget v3, Lcom/rey/material/app/Dialog;->D:I

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setId(I)V

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->i:Lcom/rey/material/widget/Button;

    iget v3, p0, Lcom/rey/material/app/Dialog;->r:I

    invoke-virtual {v0, v3, v1, v3, v1}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->i:Lcom/rey/material/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->j:Lcom/rey/material/widget/Button;

    sget v3, Lcom/rey/material/app/Dialog;->E:I

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setId(I)V

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->j:Lcom/rey/material/widget/Button;

    iget v3, p0, Lcom/rey/material/app/Dialog;->r:I

    invoke-virtual {v0, v3, v1, v3, v1}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->j:Lcom/rey/material/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->b:Lcom/rey/material/app/Dialog$d;

    iget-object v1, p0, Lcom/rey/material/app/Dialog;->l:Lcom/rey/material/app/Dialog$e;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->l:Lcom/rey/material/app/Dialog$e;

    iget-object v1, p0, Lcom/rey/material/app/Dialog;->g:Lcom/rey/material/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->l:Lcom/rey/material/app/Dialog$e;

    iget-object v1, p0, Lcom/rey/material/app/Dialog;->h:Lcom/rey/material/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->l:Lcom/rey/material/app/Dialog$e;

    iget-object v1, p0, Lcom/rey/material/app/Dialog;->i:Lcom/rey/material/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->l:Lcom/rey/material/app/Dialog$e;

    iget-object v1, p0, Lcom/rey/material/app/Dialog;->j:Lcom/rey/material/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/4 v0, -0x1

    invoke-static {p1, v0}, Le/g/a/b/b;->h(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rey/material/app/Dialog;->t(I)Lcom/rey/material/app/Dialog;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Le/g/a/b/b;->e(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/rey/material/app/Dialog;->G(F)Lcom/rey/material/app/Dialog;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Le/g/a/b/b;->e(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/rey/material/app/Dialog;->B(F)Lcom/rey/material/app/Dialog;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0}, Lcom/rey/material/app/Dialog;->C(F)Lcom/rey/material/app/Dialog;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/rey/material/app/Dialog;->J(I)Lcom/rey/material/app/Dialog;

    const v0, 0x7f11017f

    invoke-virtual {p0, v0}, Lcom/rey/material/app/Dialog;->w0(I)Lcom/rey/material/app/Dialog;

    const v0, 0x7f110168

    invoke-virtual {p0, v0}, Lcom/rey/material/app/Dialog;->p(I)Lcom/rey/material/app/Dialog;

    const/high16 v0, 0x1e000000

    invoke-virtual {p0, v0}, Lcom/rey/material/app/Dialog;->E(I)Lcom/rey/material/app/Dialog;

    invoke-static {p1, v2}, Le/g/a/b/b;->e(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/rey/material/app/Dialog;->F(I)Lcom/rey/material/app/Dialog;

    invoke-virtual {p0, v2}, Lcom/rey/material/app/Dialog;->u(Z)Lcom/rey/material/app/Dialog;

    invoke-virtual {p0, v2}, Lcom/rey/material/app/Dialog;->v(Z)Lcom/rey/material/app/Dialog;

    invoke-virtual {p0}, Lcom/rey/material/app/Dialog;->w()Lcom/rey/material/app/Dialog;

    invoke-virtual {p0}, Lcom/rey/material/app/Dialog;->g0()V

    invoke-virtual {p0, p2}, Lcom/rey/material/app/Dialog;->s(I)Lcom/rey/material/app/Dialog;

    iget-object p1, p0, Lcom/rey/material/app/Dialog;->b:Lcom/rey/material/app/Dialog$d;

    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/rey/material/app/Dialog;)V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic b(Lcom/rey/material/app/Dialog;)Lcom/rey/material/app/Dialog$e;
    .locals 0

    iget-object p0, p0, Lcom/rey/material/app/Dialog;->l:Lcom/rey/material/app/Dialog$e;

    return-object p0
.end method

.method static synthetic c(Lcom/rey/material/app/Dialog;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/rey/material/app/Dialog;->k:Landroid/view/View;

    return-object p0
.end method

.method static synthetic d(Lcom/rey/material/app/Dialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/rey/material/app/Dialog;->y:Z

    return p0
.end method

.method static synthetic e(Lcom/rey/material/app/Dialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/rey/material/app/Dialog;->y:Z

    return p1
.end method

.method static synthetic f(Lcom/rey/material/app/Dialog;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/rey/material/app/Dialog;->x:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic g(Lcom/rey/material/app/Dialog;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/rey/material/app/Dialog;->w:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic h(Lcom/rey/material/app/Dialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/rey/material/app/Dialog;->z:Z

    return p0
.end method

.method static synthetic i(Lcom/rey/material/app/Dialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/rey/material/app/Dialog;->A:Z

    return p0
.end method

.method static synthetic j(Lcom/rey/material/app/Dialog;)I
    .locals 0

    iget p0, p0, Lcom/rey/material/app/Dialog;->e:I

    return p0
.end method

.method static synthetic k(Lcom/rey/material/app/Dialog;)I
    .locals 0

    iget p0, p0, Lcom/rey/material/app/Dialog;->f:I

    return p0
.end method

.method static synthetic l(Lcom/rey/material/app/Dialog;)I
    .locals 0

    iget p0, p0, Lcom/rey/material/app/Dialog;->c:I

    return p0
.end method

.method static synthetic m(Lcom/rey/material/app/Dialog;)I
    .locals 0

    iget p0, p0, Lcom/rey/material/app/Dialog;->d:I

    return p0
.end method


# virtual methods
.method public A(Landroid/view/View;)Lcom/rey/material/app/Dialog;
    .locals 2

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->k:Landroid/view/View;

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/rey/material/app/Dialog;->l:Lcom/rey/material/app/Dialog$e;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object p1, p0, Lcom/rey/material/app/Dialog;->k:Landroid/view/View;

    :cond_1
    iget-object p1, p0, Lcom/rey/material/app/Dialog;->k:Landroid/view/View;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->l:Lcom/rey/material/app/Dialog$e;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_2
    return-object p0
.end method

.method public B(F)Lcom/rey/material/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->l:Lcom/rey/material/app/Dialog$e;

    invoke-virtual {v0, p1}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    return-object p0
.end method

.method public C(F)Lcom/rey/material/app/Dialog;
    .locals 3

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :goto_0
    return-object p0
.end method

.method public D()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->w:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/rey/material/app/Dialog;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public E(I)Lcom/rey/material/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->l:Lcom/rey/material/app/Dialog$e;

    invoke-virtual {v0, p1}, Lcom/rey/material/app/Dialog$e;->j(I)V

    return-object p0
.end method

.method public F(I)Lcom/rey/material/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->l:Lcom/rey/material/app/Dialog$e;

    invoke-virtual {v0, p1}, Lcom/rey/material/app/Dialog$e;->k(I)V

    return-object p0
.end method

.method public G(F)Lcom/rey/material/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->l:Lcom/rey/material/app/Dialog$e;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getMaxCardElevation()F

    move-result v0

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->l:Lcom/rey/material/app/Dialog$e;

    invoke-virtual {v0, p1}, Landroidx/cardview/widget/CardView;->setMaxCardElevation(F)V

    :cond_0
    iget-object v0, p0, Lcom/rey/material/app/Dialog;->l:Lcom/rey/material/app/Dialog$e;

    invoke-virtual {v0, p1}, Landroidx/cardview/widget/CardView;->setCardElevation(F)V

    return-object p0
.end method

.method public H(I)Lcom/rey/material/app/Dialog;
    .locals 0

    iput p1, p0, Lcom/rey/material/app/Dialog;->u:I

    return-object p0
.end method

.method public J(I)Lcom/rey/material/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->l:Lcom/rey/material/app/Dialog$e;

    invoke-static {v0, p1}, Ld/h/m/t;->A0(Landroid/view/View;I)V

    return-object p0
.end method

.method public K(II)Lcom/rey/material/app/Dialog;
    .locals 0

    iput p1, p0, Lcom/rey/material/app/Dialog;->c:I

    iput p2, p0, Lcom/rey/material/app/Dialog;->d:I

    return-object p0
.end method

.method public L(F)Lcom/rey/material/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->l:Lcom/rey/material/app/Dialog$e;

    invoke-virtual {v0, p1}, Landroidx/cardview/widget/CardView;->setMaxCardElevation(F)V

    return-object p0
.end method

.method public M(I)Lcom/rey/material/app/Dialog;
    .locals 0

    iput p1, p0, Lcom/rey/material/app/Dialog;->f:I

    return-object p0
.end method

.method public N(I)Lcom/rey/material/app/Dialog;
    .locals 0

    iput p1, p0, Lcom/rey/material/app/Dialog;->e:I

    return-object p0
.end method

.method public O(I)Lcom/rey/material/app/Dialog;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/rey/material/app/Dialog;->P(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog;

    return-object p0
.end method

.method public P(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->i:Lcom/rey/material/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->i:Lcom/rey/material/widget/Button;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    return-object p0
.end method

.method public Q(I)Lcom/rey/material/app/Dialog;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/rey/material/app/Dialog;->R(Landroid/graphics/drawable/Drawable;)Lcom/rey/material/app/Dialog;

    return-object p0
.end method

.method public R(Landroid/graphics/drawable/Drawable;)Lcom/rey/material/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->i:Lcom/rey/material/widget/Button;

    invoke-static {v0, p1}, Le/g/a/b/d;->h(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public S(Landroid/view/View$OnClickListener;)Lcom/rey/material/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->i:Lcom/rey/material/widget/Button;

    invoke-virtual {v0, p1}, Lcom/rey/material/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public T(I)Lcom/rey/material/app/Dialog;
    .locals 2

    new-instance v0, Le/g/a/a/f$b;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Le/g/a/a/f$b;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Le/g/a/a/f$b;->g()Le/g/a/a/f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/rey/material/app/Dialog;->R(Landroid/graphics/drawable/Drawable;)Lcom/rey/material/app/Dialog;

    return-object p0
.end method

.method public U(I)Lcom/rey/material/app/Dialog;
    .locals 2

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->i:Lcom/rey/material/widget/Button;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    return-object p0
.end method

.method public V(I)Lcom/rey/material/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->i:Lcom/rey/material/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    return-object p0
.end method

.method public W(Landroid/content/res/ColorStateList;)Lcom/rey/material/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->i:Lcom/rey/material/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-object p0
.end method

.method public X(I)Lcom/rey/material/app/Dialog;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/rey/material/app/Dialog;->Y(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog;

    return-object p0
.end method

.method public Y(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->j:Lcom/rey/material/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->j:Lcom/rey/material/widget/Button;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    return-object p0
.end method

.method public Z(I)Lcom/rey/material/app/Dialog;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/rey/material/app/Dialog;->a0(Landroid/graphics/drawable/Drawable;)Lcom/rey/material/app/Dialog;

    return-object p0
.end method

.method public a0(Landroid/graphics/drawable/Drawable;)Lcom/rey/material/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->j:Lcom/rey/material/widget/Button;

    invoke-static {v0, p1}, Le/g/a/b/d;->h(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/rey/material/app/Dialog;->A(Landroid/view/View;)Lcom/rey/material/app/Dialog;

    return-void
.end method

.method public b0(Landroid/view/View$OnClickListener;)Lcom/rey/material/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->j:Lcom/rey/material/widget/Button;

    invoke-virtual {v0, p1}, Lcom/rey/material/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public c0(I)Lcom/rey/material/app/Dialog;
    .locals 2

    new-instance v0, Le/g/a/a/f$b;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Le/g/a/a/f$b;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Le/g/a/a/f$b;->g()Le/g/a/a/f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/rey/material/app/Dialog;->a0(Landroid/graphics/drawable/Drawable;)Lcom/rey/material/app/Dialog;

    return-object p0
.end method

.method public d0(I)Lcom/rey/material/app/Dialog;
    .locals 2

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->j:Lcom/rey/material/widget/Button;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    return-object p0
.end method

.method public dismiss()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/rey/material/app/Dialog;->v:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->b:Lcom/rey/material/app/Dialog$d;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/rey/material/app/Dialog;->v:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/rey/material/app/Dialog$c;

    invoke-direct {v1, p0}, Lcom/rey/material/app/Dialog$c;-><init>(Lcom/rey/material/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/rey/material/app/Dialog;->l:Lcom/rey/material/app/Dialog$e;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/rey/material/app/Dialog;->w:Landroid/os/Handler;

    iget-object v1, p0, Lcom/rey/material/app/Dialog;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public e0(I)Lcom/rey/material/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->j:Lcom/rey/material/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    return-object p0
.end method

.method public f0(Landroid/content/res/ColorStateList;)Lcom/rey/material/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->j:Lcom/rey/material/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-object p0
.end method

.method protected g0()V
    .locals 0

    return-void
.end method

.method public h0(I)Lcom/rey/material/app/Dialog;
    .locals 0

    iput p1, p0, Lcom/rey/material/app/Dialog;->v:I

    return-object p0
.end method

.method public i0(I)Lcom/rey/material/app/Dialog;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/rey/material/app/Dialog;->j0(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog;

    return-object p0
.end method

.method public j0(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->h:Lcom/rey/material/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->h:Lcom/rey/material/widget/Button;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    return-object p0
.end method

.method public k0(I)Lcom/rey/material/app/Dialog;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/rey/material/app/Dialog;->l0(Landroid/graphics/drawable/Drawable;)Lcom/rey/material/app/Dialog;

    return-object p0
.end method

.method public l0(Landroid/graphics/drawable/Drawable;)Lcom/rey/material/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->h:Lcom/rey/material/widget/Button;

    invoke-static {v0, p1}, Le/g/a/b/d;->h(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public m0(Landroid/view/View$OnClickListener;)Lcom/rey/material/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->h:Lcom/rey/material/widget/Button;

    invoke-virtual {v0, p1}, Lcom/rey/material/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public n(I)Lcom/rey/material/app/Dialog;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/rey/material/app/Dialog;->k0(I)Lcom/rey/material/app/Dialog;

    invoke-virtual {p0, p1}, Lcom/rey/material/app/Dialog;->Q(I)Lcom/rey/material/app/Dialog;

    invoke-virtual {p0, p1}, Lcom/rey/material/app/Dialog;->Z(I)Lcom/rey/material/app/Dialog;

    return-object p0
.end method

.method public n0(I)Lcom/rey/material/app/Dialog;
    .locals 2

    new-instance v0, Le/g/a/a/f$b;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Le/g/a/a/f$b;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Le/g/a/a/f$b;->g()Le/g/a/a/f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/rey/material/app/Dialog;->l0(Landroid/graphics/drawable/Drawable;)Lcom/rey/material/app/Dialog;

    return-object p0
.end method

.method public o(I)Lcom/rey/material/app/Dialog;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/rey/material/app/Dialog;->n0(I)Lcom/rey/material/app/Dialog;

    invoke-virtual {p0, p1}, Lcom/rey/material/app/Dialog;->T(I)Lcom/rey/material/app/Dialog;

    invoke-virtual {p0, p1}, Lcom/rey/material/app/Dialog;->c0(I)Lcom/rey/material/app/Dialog;

    return-object p0
.end method

.method public o0(I)Lcom/rey/material/app/Dialog;
    .locals 2

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->h:Lcom/rey/material/widget/Button;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    return-object p0
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    iget v0, p0, Lcom/rey/material/app/Dialog;->u:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->l:Lcom/rey/material/app/Dialog$e;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/rey/material/app/Dialog$b;

    invoke-direct {v1, p0}, Lcom/rey/material/app/Dialog$b;-><init>(Lcom/rey/material/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method

.method public p(I)Lcom/rey/material/app/Dialog;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/rey/material/app/Dialog;->o0(I)Lcom/rey/material/app/Dialog;

    invoke-virtual {p0, p1}, Lcom/rey/material/app/Dialog;->U(I)Lcom/rey/material/app/Dialog;

    invoke-virtual {p0, p1}, Lcom/rey/material/app/Dialog;->d0(I)Lcom/rey/material/app/Dialog;

    return-object p0
.end method

.method public p0(I)Lcom/rey/material/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->h:Lcom/rey/material/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    return-object p0
.end method

.method public q(II)Lcom/rey/material/app/Dialog;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/rey/material/app/Dialog;->p0(I)Lcom/rey/material/app/Dialog;

    invoke-virtual {p0, p2}, Lcom/rey/material/app/Dialog;->V(I)Lcom/rey/material/app/Dialog;

    invoke-virtual {p0, p1}, Lcom/rey/material/app/Dialog;->e0(I)Lcom/rey/material/app/Dialog;

    return-object p0
.end method

.method public q0(Landroid/content/res/ColorStateList;)Lcom/rey/material/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->h:Lcom/rey/material/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-object p0
.end method

.method public r(Landroid/content/res/ColorStateList;)Lcom/rey/material/app/Dialog;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/rey/material/app/Dialog;->q0(Landroid/content/res/ColorStateList;)Lcom/rey/material/app/Dialog;

    invoke-virtual {p0, p1}, Lcom/rey/material/app/Dialog;->W(Landroid/content/res/ColorStateList;)Lcom/rey/material/app/Dialog;

    invoke-virtual {p0, p1}, Lcom/rey/material/app/Dialog;->f0(Landroid/content/res/ColorStateList;)Lcom/rey/material/app/Dialog;

    return-object p0
.end method

.method public r0(Landroid/graphics/Typeface;)Lcom/rey/material/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->h:Lcom/rey/material/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->i:Lcom/rey/material/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->j:Lcom/rey/material/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->g:Lcom/rey/material/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/rey/material/app/Dialog;->g:Lcom/rey/material/widget/TextView;

    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    return-object p0
.end method

.method public s(I)Lcom/rey/material/app/Dialog;
    .locals 29

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/callerid/block/R$styleable;->Dialog:[I

    move/from16 v3, p1

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    iget v2, v0, Lcom/rey/material/app/Dialog;->c:I

    iget v3, v0, Lcom/rey/material/app/Dialog;->d:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v4

    const/4 v5, 0x0

    move-object v7, v5

    move-object v8, v7

    move-object v9, v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    :goto_0
    if-ge v10, v4, :cond_22

    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v6

    move/from16 v27, v4

    const/4 v4, -0x2

    move-object/from16 v28, v9

    const/4 v9, 0x1

    if-nez v6, :cond_0

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    :goto_1
    move-object/from16 v9, v28

    const/4 v11, 0x1

    goto/16 :goto_3

    :cond_0
    if-ne v6, v9, :cond_1

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    goto :goto_1

    :cond_1
    const/16 v4, 0x12

    if-ne v6, v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/rey/material/app/Dialog;->N(I)Lcom/rey/material/app/Dialog;

    goto/16 :goto_2

    :cond_2
    const/4 v4, 0x0

    const/16 v9, 0x11

    if-ne v6, v9, :cond_3

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/rey/material/app/Dialog;->M(I)Lcom/rey/material/app/Dialog;

    goto/16 :goto_2

    :cond_3
    const/16 v9, 0xa

    if-ne v6, v9, :cond_4

    const/4 v9, 0x0

    invoke-virtual {v1, v6, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    invoke-virtual {v0, v6}, Lcom/rey/material/app/Dialog;->C(F)Lcom/rey/material/app/Dialog;

    goto/16 :goto_2

    :cond_4
    const/4 v9, 0x6

    if-ne v6, v9, :cond_5

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/rey/material/app/Dialog;->t(I)Lcom/rey/material/app/Dialog;

    goto/16 :goto_2

    :cond_5
    const/16 v9, 0x10

    if-ne v6, v9, :cond_6

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0, v6}, Lcom/rey/material/app/Dialog;->L(F)Lcom/rey/material/app/Dialog;

    goto/16 :goto_2

    :cond_6
    const/16 v9, 0xd

    if-ne v6, v9, :cond_7

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0, v6}, Lcom/rey/material/app/Dialog;->G(F)Lcom/rey/material/app/Dialog;

    goto/16 :goto_2

    :cond_7
    const/16 v9, 0x9

    if-ne v6, v9, :cond_8

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0, v6}, Lcom/rey/material/app/Dialog;->B(F)Lcom/rey/material/app/Dialog;

    goto/16 :goto_2

    :cond_8
    const/16 v9, 0xf

    if-ne v6, v9, :cond_9

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/rey/material/app/Dialog;->J(I)Lcom/rey/material/app/Dialog;

    goto/16 :goto_2

    :cond_9
    const/16 v9, 0x20

    if-ne v6, v9, :cond_a

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    goto/16 :goto_2

    :cond_a
    const/16 v9, 0x21

    if-ne v6, v9, :cond_b

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    move-object/from16 v9, v28

    const/4 v13, 0x1

    goto/16 :goto_3

    :cond_b
    const/4 v9, 0x2

    if-ne v6, v9, :cond_c

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    goto/16 :goto_2

    :cond_c
    const/4 v9, 0x3

    if-ne v6, v9, :cond_d

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    goto/16 :goto_2

    :cond_d
    const/4 v9, 0x4

    if-ne v6, v9, :cond_e

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    goto/16 :goto_2

    :cond_e
    const/4 v9, 0x5

    if-ne v6, v9, :cond_f

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    goto/16 :goto_2

    :cond_f
    const/16 v9, 0x1c

    if-ne v6, v9, :cond_10

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    goto/16 :goto_2

    :cond_10
    const/16 v9, 0x1d

    if-ne v6, v9, :cond_11

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v19

    goto/16 :goto_2

    :cond_11
    const/16 v9, 0x1e

    if-ne v6, v9, :cond_12

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v20

    goto/16 :goto_2

    :cond_12
    const/16 v9, 0x1f

    if-ne v6, v9, :cond_13

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    move-object v7, v6

    goto/16 :goto_2

    :cond_13
    const/16 v9, 0x13

    if-ne v6, v9, :cond_14

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v21

    goto/16 :goto_2

    :cond_14
    const/16 v9, 0x14

    if-ne v6, v9, :cond_15

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v22

    goto/16 :goto_2

    :cond_15
    const/16 v9, 0x15

    if-ne v6, v9, :cond_16

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v23

    goto/16 :goto_2

    :cond_16
    const/16 v9, 0x16

    if-ne v6, v9, :cond_17

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    move-object v8, v6

    goto/16 :goto_2

    :cond_17
    const/16 v9, 0x17

    if-ne v6, v9, :cond_18

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v24

    goto/16 :goto_2

    :cond_18
    const/16 v9, 0x18

    if-ne v6, v9, :cond_19

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v25

    goto :goto_2

    :cond_19
    const/16 v9, 0x19

    if-ne v6, v9, :cond_1a

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v26

    goto :goto_2

    :cond_1a
    const/16 v9, 0x1a

    if-ne v6, v9, :cond_1b

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    move-object v9, v6

    goto :goto_3

    :cond_1b
    const/16 v9, 0xe

    if-ne v6, v9, :cond_1c

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/rey/material/app/Dialog;->H(I)Lcom/rey/material/app/Dialog;

    goto :goto_2

    :cond_1c
    const/16 v9, 0x1b

    if-ne v6, v9, :cond_1d

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/rey/material/app/Dialog;->h0(I)Lcom/rey/material/app/Dialog;

    goto :goto_2

    :cond_1d
    const/16 v9, 0xb

    if-ne v6, v9, :cond_1e

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/rey/material/app/Dialog;->E(I)Lcom/rey/material/app/Dialog;

    goto :goto_2

    :cond_1e
    const/16 v9, 0xc

    if-ne v6, v9, :cond_1f

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/rey/material/app/Dialog;->F(I)Lcom/rey/material/app/Dialog;

    goto :goto_2

    :cond_1f
    const/4 v9, 0x7

    if-ne v6, v9, :cond_20

    const/4 v9, 0x1

    invoke-virtual {v1, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v0, v6}, Lcom/rey/material/app/Dialog;->u(Z)Lcom/rey/material/app/Dialog;

    goto :goto_2

    :cond_20
    const/4 v9, 0x1

    const/16 v4, 0x8

    if-ne v6, v4, :cond_21

    invoke-virtual {v1, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/rey/material/app/Dialog;->v(Z)Lcom/rey/material/app/Dialog;

    :cond_21
    :goto_2
    move-object/from16 v9, v28

    :goto_3
    add-int/lit8 v10, v10, 0x1

    move/from16 v4, v27

    goto/16 :goto_0

    :cond_22
    move-object/from16 v28, v9

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v11, :cond_23

    invoke-virtual {v0, v2, v3}, Lcom/rey/material/app/Dialog;->K(II)Lcom/rey/material/app/Dialog;

    :cond_23
    if-eqz v12, :cond_24

    invoke-virtual {v0, v12}, Lcom/rey/material/app/Dialog;->w0(I)Lcom/rey/material/app/Dialog;

    :cond_24
    if-eqz v13, :cond_25

    invoke-virtual {v0, v14}, Lcom/rey/material/app/Dialog;->v0(I)Lcom/rey/material/app/Dialog;

    :cond_25
    if-eqz v15, :cond_26

    invoke-virtual {v0, v15}, Lcom/rey/material/app/Dialog;->n(I)Lcom/rey/material/app/Dialog;

    :cond_26
    move/from16 v6, v16

    if-eqz v6, :cond_27

    invoke-virtual {v0, v6}, Lcom/rey/material/app/Dialog;->o(I)Lcom/rey/material/app/Dialog;

    :cond_27
    move/from16 v6, v17

    if-eqz v6, :cond_28

    invoke-virtual {v0, v6}, Lcom/rey/material/app/Dialog;->p(I)Lcom/rey/material/app/Dialog;

    :cond_28
    if-eqz v5, :cond_29

    invoke-virtual {v0, v5}, Lcom/rey/material/app/Dialog;->r(Landroid/content/res/ColorStateList;)Lcom/rey/material/app/Dialog;

    :cond_29
    move/from16 v6, v18

    if-eqz v6, :cond_2a

    invoke-virtual {v0, v6}, Lcom/rey/material/app/Dialog;->k0(I)Lcom/rey/material/app/Dialog;

    :cond_2a
    move/from16 v6, v19

    if-eqz v6, :cond_2b

    invoke-virtual {v0, v6}, Lcom/rey/material/app/Dialog;->n0(I)Lcom/rey/material/app/Dialog;

    :cond_2b
    move/from16 v6, v20

    if-eqz v6, :cond_2c

    invoke-virtual {v0, v6}, Lcom/rey/material/app/Dialog;->o0(I)Lcom/rey/material/app/Dialog;

    :cond_2c
    if-eqz v7, :cond_2d

    invoke-virtual {v0, v7}, Lcom/rey/material/app/Dialog;->q0(Landroid/content/res/ColorStateList;)Lcom/rey/material/app/Dialog;

    :cond_2d
    move/from16 v6, v21

    if-eqz v6, :cond_2e

    invoke-virtual {v0, v6}, Lcom/rey/material/app/Dialog;->Q(I)Lcom/rey/material/app/Dialog;

    :cond_2e
    move/from16 v6, v22

    if-eqz v6, :cond_2f

    invoke-virtual {v0, v6}, Lcom/rey/material/app/Dialog;->T(I)Lcom/rey/material/app/Dialog;

    :cond_2f
    move/from16 v6, v23

    if-eqz v6, :cond_30

    invoke-virtual {v0, v6}, Lcom/rey/material/app/Dialog;->U(I)Lcom/rey/material/app/Dialog;

    :cond_30
    if-eqz v8, :cond_31

    invoke-virtual {v0, v8}, Lcom/rey/material/app/Dialog;->W(Landroid/content/res/ColorStateList;)Lcom/rey/material/app/Dialog;

    :cond_31
    move/from16 v6, v24

    if-eqz v6, :cond_32

    invoke-virtual {v0, v6}, Lcom/rey/material/app/Dialog;->Z(I)Lcom/rey/material/app/Dialog;

    :cond_32
    move/from16 v6, v25

    if-eqz v6, :cond_33

    invoke-virtual {v0, v6}, Lcom/rey/material/app/Dialog;->c0(I)Lcom/rey/material/app/Dialog;

    :cond_33
    move/from16 v6, v26

    if-eqz v6, :cond_34

    invoke-virtual {v0, v6}, Lcom/rey/material/app/Dialog;->d0(I)Lcom/rey/material/app/Dialog;

    :cond_34
    if-eqz v28, :cond_35

    move-object/from16 v5, v28

    invoke-virtual {v0, v5}, Lcom/rey/material/app/Dialog;->f0(Landroid/content/res/ColorStateList;)Lcom/rey/material/app/Dialog;

    :cond_35
    return-object v0
.end method

.method public s0(Z)Lcom/rey/material/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->l:Lcom/rey/material/app/Dialog$e;

    invoke-virtual {v0, p1}, Lcom/rey/material/app/Dialog$e;->l(Z)V

    return-object p0
.end method

.method public setCancelable(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/rey/material/app/Dialog;->u(Z)Lcom/rey/material/app/Dialog;

    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/rey/material/app/Dialog;->v(Z)Lcom/rey/material/app/Dialog;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/rey/material/app/Dialog;->z(I)Lcom/rey/material/app/Dialog;

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/rey/material/app/Dialog;->A(Landroid/view/View;)Lcom/rey/material/app/Dialog;

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/rey/material/app/Dialog;->A(Landroid/view/View;)Lcom/rey/material/app/Dialog;

    return-void
.end method

.method public setTitle(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/rey/material/app/Dialog;->t0(I)Lcom/rey/material/app/Dialog;

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/rey/material/app/Dialog;->u0(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog;

    return-void
.end method

.method public t(I)Lcom/rey/material/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->l:Lcom/rey/material/app/Dialog$e;

    invoke-virtual {v0, p1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    return-object p0
.end method

.method public t0(I)Lcom/rey/material/app/Dialog;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/rey/material/app/Dialog;->u0(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public u(Z)Lcom/rey/material/app/Dialog;
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    iput-boolean p1, p0, Lcom/rey/material/app/Dialog;->z:Z

    return-object p0
.end method

.method public u0(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->g:Lcom/rey/material/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->g:Lcom/rey/material/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-object p0
.end method

.method public v(Z)Lcom/rey/material/app/Dialog;
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iput-boolean p1, p0, Lcom/rey/material/app/Dialog;->A:Z

    return-object p0
.end method

.method public v0(I)Lcom/rey/material/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->g:Lcom/rey/material/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p0
.end method

.method public w()Lcom/rey/material/app/Dialog;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/rey/material/app/Dialog;->t0(I)Lcom/rey/material/app/Dialog;

    invoke-virtual {p0, v0}, Lcom/rey/material/app/Dialog;->i0(I)Lcom/rey/material/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/rey/material/app/Dialog;->m0(Landroid/view/View$OnClickListener;)Lcom/rey/material/app/Dialog;

    invoke-virtual {p0, v0}, Lcom/rey/material/app/Dialog;->O(I)Lcom/rey/material/app/Dialog;

    invoke-virtual {p0, v1}, Lcom/rey/material/app/Dialog;->S(Landroid/view/View$OnClickListener;)Lcom/rey/material/app/Dialog;

    invoke-virtual {p0, v0}, Lcom/rey/material/app/Dialog;->X(I)Lcom/rey/material/app/Dialog;

    invoke-virtual {p0, v1}, Lcom/rey/material/app/Dialog;->b0(Landroid/view/View$OnClickListener;)Lcom/rey/material/app/Dialog;

    invoke-virtual {p0, v1}, Lcom/rey/material/app/Dialog;->A(Landroid/view/View;)Lcom/rey/material/app/Dialog;

    return-object p0
.end method

.method public w0(I)Lcom/rey/material/app/Dialog;
    .locals 2

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->g:Lcom/rey/material/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    return-object p0
.end method

.method public x(I)Lcom/rey/material/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->l:Lcom/rey/material/app/Dialog$e;

    invoke-virtual {v0, p1}, Lcom/rey/material/app/Dialog$e;->h(I)V

    return-object p0
.end method

.method public y(IIII)Lcom/rey/material/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/rey/material/app/Dialog;->l:Lcom/rey/material/app/Dialog$e;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/rey/material/app/Dialog$e;->i(IIII)V

    return-object p0
.end method

.method public z(I)Lcom/rey/material/app/Dialog;
    .locals 2

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/rey/material/app/Dialog;->A(Landroid/view/View;)Lcom/rey/material/app/Dialog;

    move-result-object p1

    return-object p1
.end method
