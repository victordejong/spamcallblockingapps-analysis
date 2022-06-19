.class public Ll31;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lra1$f;


# static fields
.field public static final o:Ljava/lang/String;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public h:Landroid/widget/ImageView;

.field public i:Li91;

.field public j:Z

.field public k:Landroid/view/WindowManager;

.field public l:Landroid/view/View;

.field public m:Landroid/view/WindowManager$LayoutParams;

.field public n:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Ll31;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".action.close"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ll31;->o:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ll31;->n:Z

    return-void
.end method

.method public static synthetic e(Ll31;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    iget-object p0, p0, Ll31;->m:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method public static synthetic f(Ll31;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Ll31;->l:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic g(Ll31;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Ll31;->k:Landroid/view/WindowManager;

    return-object p0
.end method

.method public static synthetic h(Ll31;Ln91$b;Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Ll31;->r(Ln91$b;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Ll31;->n()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public b(Li91;Ln91$b;Ljava/lang/String;IZZ)V
    .locals 0

    iput-object p1, p0, Ll31;->i:Li91;

    iput-boolean p6, p0, Ll31;->j:Z

    invoke-static {}, Lr71;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ll31;->j()V

    invoke-virtual {p0, p2, p3, p6}, Ll31;->r(Ln91$b;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Ll31;->l:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ll31;->i:Li91;

    sget-object v1, Lq71$e;->b:Lq71$e;

    invoke-static {v0, v1}, Ln91;->a(Li91;Lq71$e;)Ln91$b;

    move-result-object v0

    sget-object v1, Lr71$a;->M0:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lr71$a;->d:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lr71$a;->J0:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Ln91$b;->b:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Ln91$b;->a:Ln91$a;

    sget-object v2, Ln91$a;->z:Ln91$a;

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Ll31;->j:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Ll31$b;

    invoke-direct {v2, p0, v0}, Ll31$b;-><init>(Ll31;Ln91$b;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public i()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Ll31;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public j()V
    .locals 1

    invoke-static {}, Lfa1;->k()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ll31;->a:Landroid/content/Context;

    invoke-virtual {p0}, Ll31;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Ll31;->n:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ll31;->l()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ll31;->n:Z

    :cond_1
    return-void
.end method

.method public final k()V
    .locals 7

    invoke-virtual {p0}, Ll31;->o()V

    iget-object v0, p0, Ll31;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d00dc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ll31;->l:Landroid/view/View;

    const v1, 0x7f0a0686

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ll31;->b:Landroid/widget/TextView;

    iget-object v0, p0, Ll31;->l:Landroid/view/View;

    const v1, 0x7f0a0687

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ll31;->c:Landroid/widget/TextView;

    iget-object v0, p0, Ll31;->l:Landroid/view/View;

    const v1, 0x7f0a066f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ll31;->d:Landroid/widget/TextView;

    iget-object v0, p0, Ll31;->l:Landroid/view/View;

    const v1, 0x7f0a069c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ll31;->f:Landroid/widget/TextView;

    iget-object v0, p0, Ll31;->l:Landroid/view/View;

    const v1, 0x7f0a069d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ll31;->e:Landroid/widget/TextView;

    iget-object v0, p0, Ll31;->l:Landroid/view/View;

    const v1, 0x7f0a04c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Ll31;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v0, p0, Ll31;->l:Landroid/view/View;

    const v1, 0x7f0a0342

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ll31;->h:Landroid/widget/ImageView;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    const/16 v1, 0x7f6

    const/16 v4, 0x7f6

    goto :goto_0

    :cond_0
    const/16 v1, 0x7d2

    const/16 v4, 0x7d2

    :goto_0
    const v5, 0x80088

    const/4 v6, -0x3

    const/4 v2, -0x1

    const/4 v3, -0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Ll31;->m:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Ll31;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Ll31;->k:Landroid/view/WindowManager;

    iget-object v1, p0, Ll31;->l:Landroid/view/View;

    iget-object v2, p0, Ll31;->m:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final l()V
    .locals 0

    invoke-virtual {p0}, Ll31;->k()V

    invoke-virtual {p0}, Ll31;->s()V

    return-void
.end method

.method public m()Z
    .locals 1

    sget-object v0, Lr71$a;->O0:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lr71$a;->M0:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final n()V
    .locals 2

    iget-object v0, p0, Ll31;->k:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Ll31;->l:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ll31;->n:Z

    :cond_0
    return-void
.end method

.method public final o()V
    .locals 3

    iget-object v0, p0, Ll31;->a:Landroid/content/Context;

    invoke-static {v0}, Lnf;->b(Landroid/content/Context;)Lnf;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Ll31;->o:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnf;->d(Landroid/content/Intent;)Z

    return-void
.end method

.method public final p(ZLn91$b;Li91;)V
    .locals 6

    iget-object v0, p2, Ln91$b;->a:Ln91$a;

    sget-object v1, Ln91$a;->p:Ln91$a;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget-object v4, Ln91$a;->b:Ln91$a;

    if-ne v0, v4, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0}, Ll31;->m()Z

    move-result v1

    if-nez v1, :cond_4

    if-nez p1, :cond_4

    iget-boolean p1, p2, Ln91$b;->b:Z

    if-nez p1, :cond_4

    if-eqz v0, :cond_4

    iget-object p1, p0, Ll31;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Ll31;->d:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Ll31;->b:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance p1, Ljava/util/Locale;

    invoke-virtual {p3}, Li91;->h()Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    invoke-direct {p1, v0, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Ll31;->c:Landroid/widget/TextView;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p3}, Li91;->m()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, v3

    aput-object p1, v0, v2

    const-string p1, "%s, %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Ll31;->l:Landroid/view/View;

    const p2, 0x7f0a03a7

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance p2, La7;

    invoke-direct {p2}, La7;-><init>()V

    invoke-virtual {p2, p1}, La7;->j(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object p3, p0, Ll31;->c:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getId()I

    move-result v1

    const/4 v2, 0x3

    iget-object p3, p0, Ll31;->b:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getId()I

    move-result v3

    const/4 v4, 0x4

    const/16 p3, 0x16

    invoke-static {p3}, Loe1;->c(I)I

    move-result v5

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, La7;->m(IIIII)V

    iget-object v0, p0, Ll31;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v0

    const/4 v1, 0x3

    invoke-static {p3}, Loe1;->c(I)I

    move-result p3

    invoke-virtual {p2, v0, v1, p3}, La7;->F(III)V

    invoke-virtual {p2, p1}, La7;->d(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    :cond_4
    return-void
.end method

.method public final q(Ljava/lang/String;Ljava/lang/String;Ln91$b;)V
    .locals 5

    iget-object v0, p0, Ll31;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p1, Ll31$c;->a:[I

    iget-object v0, p3, Ln91$b;->a:Ln91$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 v1, 0x2

    if-eq p1, v1, :cond_6

    const/4 v2, 0x3

    const/4 v3, 0x0

    const-string v4, ""

    if-eq p1, v2, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p3, Ln91$b;->b:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Ll31;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Ll31;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Ll31;->c:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Ll31;->c:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Ll31;->d:Landroid/widget/TextView;

    iget-object p2, p3, Ln91$b;->a:Ln91$a;

    sget-object p3, Ln91$a;->b:Ln91$a;

    if-ne p2, p3, :cond_2

    goto :goto_2

    :cond_2
    iget-object p3, p0, Ll31;->a:Landroid/content/Context;

    invoke-virtual {p2}, Ln91$a;->a()I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_3
    iget-object p1, p0, Ll31;->c:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ll31;->m()Z

    move-result p1

    if-nez p1, :cond_4

    :goto_1
    iget-object p1, p0, Ll31;->d:Landroid/widget/TextView;

    :goto_2
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_4
    invoke-static {}, Lr71;->n()Landroid/util/SparseArray;

    move-result-object p1

    iget-object p2, p3, Ln91$b;->g:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li71;

    iget-object p2, p0, Ll31;->d:Landroid/widget/TextView;

    new-array p3, v1, [Ljava/lang/Object;

    iget-object v1, p0, Ll31;->a:Landroid/content/Context;

    const v2, 0x7f11019e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v3

    if-nez p1, :cond_5

    iget-object p1, p0, Ll31;->a:Landroid/content/Context;

    const v1, 0x7f1101e9

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_5
    iget-object p1, p1, Li71;->a:Ljava/lang/String;

    :goto_3
    aput-object p1, p3, v0

    const-string p1, "%s : %s"

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_6
    iget-object p1, p0, Ll31;->b:Landroid/widget/TextView;

    iget-object p2, p0, Ll31;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f110735

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Ll31;->c:Landroid/widget/TextView;

    iget-object p2, p0, Ll31;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f110718

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Ll31;->d:Landroid/widget/TextView;

    iget-object p2, p0, Ll31;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f110734

    goto :goto_4

    :cond_7
    iget-object p1, p0, Ll31;->c:Landroid/widget/TextView;

    iget-object p2, p0, Ll31;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f110536

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Ll31;->d:Landroid/widget/TextView;

    iget-object p2, p0, Ll31;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f110533

    :goto_4
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    return-void
.end method

.method public final r(Ln91$b;Ljava/lang/String;Z)V
    .locals 4

    iget-object v0, p0, Ll31;->k:Landroid/view/WindowManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ll31;->l:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Ll31;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Ll31;->a:Landroid/content/Context;

    iget-boolean v2, p1, Ln91$b;->b:Z

    if-nez v2, :cond_2

    iget-object v2, p1, Ln91$b;->a:Ln91$a;

    sget-object v3, Ln91$a;->z:Ln91$a;

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const v2, 0x7f080309

    goto :goto_1

    :cond_2
    :goto_0
    const v2, 0x7f08018d

    :goto_1
    invoke-static {v1, v2}, Lg8;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Ljava/util/Locale;

    iget-object v1, p0, Ll31;->i:Li91;

    invoke-virtual {v1}, Li91;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v2, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_3

    iget-object v1, p0, Ll31;->i:Li91;

    invoke-virtual {v1}, Li91;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Ll31;->i:Li91;

    invoke-virtual {v3}, Li91;->m()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "%s, %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    iget-object p2, p0, Ll31;->i:Li91;

    invoke-virtual {p2}, Li91;->m()Ljava/lang/String;

    move-result-object p2

    :goto_2
    invoke-virtual {p0, p2, v0, p1}, Ll31;->q(Ljava/lang/String;Ljava/lang/String;Ln91$b;)V

    iget-object p2, p0, Ll31;->i:Li91;

    invoke-virtual {p0, p3, p1, p2}, Ll31;->p(ZLn91$b;Li91;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public final s()V
    .locals 2

    iget-object v0, p0, Ll31;->l:Landroid/view/View;

    new-instance v1, Ll31$a;

    invoke-direct {v1, p0}, Ll31$a;-><init>(Ll31;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
