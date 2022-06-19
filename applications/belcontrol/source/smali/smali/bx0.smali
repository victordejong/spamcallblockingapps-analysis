.class public Lbx0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Lcx0;

.field public b:Landroid/content/Context;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/EditText;

.field public k:Landroid/widget/EditText;

.field public l:Landroid/app/Dialog;

.field public m:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public n:Lx81;

.field public o:Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;

.field public p:[Li91$b;

.field public q:Ldx0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcx0;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Li91$b;

    sget-object v1, Li91$b;->g:Li91$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Li91$b;->f:Li91$b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Li91$b;->d:Li91$b;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Li91$b;->c:Li91$b;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Li91$b;->b:Li91$b;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iput-object v0, p0, Lbx0;->p:[Li91$b;

    new-instance v0, Lxw0;

    invoke-direct {v0, p0}, Lxw0;-><init>(Lbx0;)V

    iput-object v0, p0, Lbx0;->q:Ldx0;

    iput-object p1, p0, Lbx0;->b:Landroid/content/Context;

    iput-object p2, p0, Lbx0;->c:Landroid/view/View;

    iput-object p3, p0, Lbx0;->a:Lcx0;

    invoke-virtual {p0}, Lbx0;->l()V

    return-void
.end method

.method public static synthetic B(Lbx0;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lbx0;->C(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a(Lbx0;)[Li91$b;
    .locals 0

    iget-object p0, p0, Lbx0;->p:[Li91$b;

    return-object p0
.end method

.method public static synthetic b(Lbx0;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lbx0;->G(I)V

    return-void
.end method

.method public static synthetic c(Lbx0;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lbx0;->k:Landroid/widget/EditText;

    return-object p0
.end method

.method public static synthetic d(Lbx0;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lbx0;->h:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic e(Lbx0;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lbx0;->k(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lbx0;)Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;
    .locals 0

    iget-object p0, p0, Lbx0;->o:Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;

    return-object p0
.end method

.method public static synthetic m(Lbx0;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lbx0;->D(Landroid/view/View;)V

    return-void
.end method

.method private synthetic n(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lbx0;->b:Landroid/content/Context;

    iget-object p2, p0, Lbx0;->j:Landroid/widget/EditText;

    invoke-static {p1, p2}, Loe1;->w(Landroid/content/Context;Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic p(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lbx0;->n:Lx81;

    return-void
.end method

.method private synthetic r(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p3, 0x6

    if-ne p2, p3, :cond_0

    iget-object p2, p0, Lbx0;->b:Landroid/content/Context;

    invoke-static {p2, p1}, Loe1;->w(Landroid/content/Context;Landroid/view/View;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private synthetic t(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lbx0;->d:Landroid/view/View;

    iget-object v0, p0, Lbx0;->l:Landroid/app/Dialog;

    iget-object v1, p0, Lbx0;->c:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0, v1}, Lbx0;->j(Landroid/view/View;ZLandroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method

.method private synthetic v(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object p1, p0, Lbx0;->d:Landroid/view/View;

    iget-object v0, p0, Lbx0;->c:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Lbx0;->j(Landroid/view/View;ZLandroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method

.method private synthetic x(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p1, 0x0

    const/4 p3, 0x4

    if-ne p2, p3, :cond_0

    iget-object p2, p0, Lbx0;->d:Landroid/view/View;

    iget-object p3, p0, Lbx0;->l:Landroid/app/Dialog;

    iget-object v0, p0, Lbx0;->c:Landroid/view/View;

    invoke-virtual {p0, p2, p1, p3, v0}, Lbx0;->j(Landroid/view/View;ZLandroid/app/Dialog;Landroid/view/View;)V

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method private synthetic z()V
    .locals 2

    iget-object v0, p0, Lbx0;->o:Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->setEnabled(Z)V

    iget-object v0, p0, Lbx0;->h:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public synthetic A()V
    .locals 0

    invoke-direct {p0}, Lbx0;->z()V

    return-void
.end method

.method public final C(Landroid/view/View;)V
    .locals 3

    sget-object p1, Lq71$g;->b:Lq71$g;

    invoke-static {p1}, Lr71;->f(Lq71$g;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbx0;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lbx0;->b:Landroid/content/Context;

    check-cast p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-string v0, "BLOCKED_LIST_FULL"

    invoke-static {p1, v0}, Loe1;->t0(Lcom/kedlin/cca/ui/CCAFragmentActivity;Ljava/lang/String;)V

    iget-object p1, p0, Lbx0;->d:Landroid/view/View;

    const/4 v0, 0x0

    iget-object v1, p0, Lbx0;->l:Landroid/app/Dialog;

    iget-object v2, p0, Lbx0;->c:Landroid/view/View;

    invoke-virtual {p0, p1, v0, v1, v2}, Lbx0;->j(Landroid/view/View;ZLandroid/app/Dialog;Landroid/view/View;)V

    return-void

    :cond_0
    sget-object v0, Lbx0$c;->a:[I

    iget-object v1, p0, Lbx0;->a:Lcx0;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lbx0;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbx0;->j:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lbx0;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    :goto_0
    invoke-virtual {p0, v0, v1, p1}, Lbx0;->i(Ljava/lang/String;Ljava/lang/String;Lq71$g;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lbx0;->F(Lq71$g;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Lbx0;->g(Lq71$g;)V

    :goto_1
    return-void
.end method

.method public final D(Landroid/view/View;)V
    .locals 3

    sget-object p1, Lq71$g;->c:Lq71$g;

    invoke-static {p1}, Lr71;->f(Lq71$g;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbx0;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lbx0;->b:Landroid/content/Context;

    check-cast p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-string v0, "BLOCKED_LIST_FULL"

    invoke-static {p1, v0}, Loe1;->s0(Lcom/kedlin/cca/ui/CCAFragmentActivity;Ljava/lang/String;)V

    iget-object p1, p0, Lbx0;->d:Landroid/view/View;

    const/4 v0, 0x0

    iget-object v1, p0, Lbx0;->l:Landroid/app/Dialog;

    iget-object v2, p0, Lbx0;->c:Landroid/view/View;

    invoke-virtual {p0, p1, v0, v1, v2}, Lbx0;->j(Landroid/view/View;ZLandroid/app/Dialog;Landroid/view/View;)V

    return-void

    :cond_0
    sget-object v0, Lbx0$c;->a:[I

    iget-object v1, p0, Lbx0;->a:Lcx0;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lbx0;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbx0;->j:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lbx0;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    :goto_0
    invoke-virtual {p0, v0, v1, p1}, Lbx0;->i(Ljava/lang/String;Ljava/lang/String;Lq71$g;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lbx0;->F(Lq71$g;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Lbx0;->g(Lq71$g;)V

    :goto_1
    return-void
.end method

.method public final E(Lq71$g;)V
    .locals 4

    iget-object v0, p0, Lbx0;->n:Lx81;

    sget-object v1, Lq71$e;->b:Lq71$e;

    sget-object v2, Lq71$e;->c:Lq71$e;

    sget-object v3, Lq71$e;->d:Lq71$e;

    invoke-static {v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, v0, Lx81;->j:Ljava/util/EnumSet;

    iget-object v0, p0, Lbx0;->n:Lx81;

    iput-object p1, v0, Lx81;->l:Lq71$g;

    invoke-virtual {v0}, Lx81;->z()Z

    iget-object p1, p0, Lbx0;->b:Landroid/content/Context;

    const v0, 0x7f11052d

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    sget-object p1, Lm91$c;->o:Lm91$c;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lm91;->a(Ljava/lang/Object;Lm91$c;Ljava/lang/Object;)V

    iget-object p1, p0, Lbx0;->d:Landroid/view/View;

    iget-object v0, p0, Lbx0;->l:Landroid/app/Dialog;

    iget-object v2, p0, Lbx0;->c:Landroid/view/View;

    invoke-virtual {p0, p1, v1, v0, v2}, Lbx0;->j(Landroid/view/View;ZLandroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method

.method public final F(Lq71$g;)V
    .locals 3

    iget-object v0, p0, Lbx0;->n:Lx81;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lx81;->h:Li91$b;

    sget-object v2, Li91$b;->b:Li91$b;

    if-eq v0, v2, :cond_1

    sget-object v2, Li91$b;->g:Li91$b;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lbx0;->E(Lq71$g;)V

    goto :goto_2

    :cond_1
    :goto_0
    iget-object p1, p0, Lbx0;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lbx0;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1102f6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lbx0;->h:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lbx0;->k(Landroid/view/View;)V

    return-void

    :cond_2
    iget-object p1, p0, Lbx0;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lbx0;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbx0;->k:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f11067e

    goto :goto_1

    :cond_3
    const v1, 0x7f11054a

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lbx0;->k:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lfa1$e;->o(Ljava/lang/String;)Li91;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Li91;->t()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lbx0;->h:Landroid/widget/TextView;

    const v0, 0x7f1101c9

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_4
    iget-object p1, p0, Lbx0;->h:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lbx0;->k(Landroid/view/View;)V

    :goto_2
    return-void
.end method

.method public final G(I)V
    .locals 4

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lbx0;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfa1$e;->o(Ljava/lang/String;)Li91;

    move-result-object v0

    iget-object v1, p0, Lbx0;->n:Lx81;

    if-nez v1, :cond_1

    new-instance v1, Lx81;

    invoke-direct {v1}, Lx81;-><init>()V

    iput-object v1, p0, Lbx0;->n:Lx81;

    :cond_1
    iget-object v1, p0, Lbx0;->n:Lx81;

    invoke-virtual {v1, v0}, Lx81;->K(Li91;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    new-instance v2, Lx81;

    invoke-direct {v2}, Lx81;-><init>()V

    invoke-virtual {v2, v1}, Lx81;->I(Landroid/database/Cursor;)Lx81;

    iget-object v2, v2, Lx81;->h:Li91$b;

    sget-object v3, Li91$b;->b:Li91$b;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lbx0;->n:Lx81;

    invoke-virtual {v2, v1}, Lx81;->I(Landroid/database/Cursor;)Lx81;

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_4
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    iget-object v1, p0, Lbx0;->n:Lx81;

    iget-object v2, v1, Lx81;->g:Li91;

    if-nez v2, :cond_6

    iput-object v0, v1, Lx81;->g:Li91;

    :cond_6
    iget-object v0, p0, Lbx0;->p:[Li91$b;

    aget-object p1, v0, p1

    iput-object p1, v1, Lx81;->h:Li91$b;

    iget-object p1, p0, Lbx0;->k:Landroid/widget/EditText;

    invoke-virtual {v1}, Lx81;->L()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lbx0;->H(Landroid/widget/EditText;Ljava/lang/String;Z)V

    return-void
.end method

.method public final H(Landroid/widget/EditText;Ljava/lang/String;Z)V
    .locals 3

    const-string p3, "(XXX) XXX-XXXX"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "\\(XXX\\) XXX-XXXX"

    :goto_0
    invoke-static {p3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p3

    goto :goto_1

    :cond_0
    const-string p3, "XXX-XXXX"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p3, "XXXX"

    goto :goto_0

    :goto_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    :try_start_0
    invoke-virtual {p3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result p3

    if-eqz p3, :cond_2

    new-instance p3, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06019d

    invoke-static {v1, v2}, Lg8;->d(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {p3, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->end()I

    move-result p2

    const/16 v2, 0x12

    invoke-virtual {v0, p3, v1, p2, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    sget-object p2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p1, v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public I()V
    .locals 1

    iget-object v0, p0, Lbx0;->l:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lbx0;->l:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final g(Lq71$g;)V
    .locals 4

    iget-object v0, p0, Lbx0;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lbx0;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lbx0;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1102df

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lbx0;->h:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lbx0;->k(Landroid/view/View;)V

    return-void

    :cond_0
    iget-object v0, p0, Lbx0;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfa1$e;->n(Ljava/lang/String;)Li91;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lbx0;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lbx0;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1100d1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lbx0;->h:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lbx0;->k(Landroid/view/View;)V

    return-void

    :cond_1
    iget-object v1, p0, Lbx0;->n:Lx81;

    if-nez v1, :cond_2

    new-instance v1, Lx81;

    invoke-direct {v1}, Lx81;-><init>()V

    iput-object v1, p0, Lbx0;->n:Lx81;

    :cond_2
    iget-object v1, p0, Lbx0;->n:Lx81;

    invoke-virtual {v1, v0}, Lx81;->K(Li91;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    new-instance v2, Lx81;

    invoke-direct {v2}, Lx81;-><init>()V

    invoke-virtual {v2, v1}, Lx81;->I(Landroid/database/Cursor;)Lx81;

    iget-object v2, v2, Lx81;->h:Li91$b;

    sget-object v3, Li91$b;->b:Li91$b;

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lbx0;->n:Lx81;

    invoke-virtual {v2, v1}, Lx81;->I(Landroid/database/Cursor;)Lx81;

    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_5
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    iget-object v1, p0, Lbx0;->n:Lx81;

    iget-object v2, v1, Lx81;->g:Li91;

    if-nez v2, :cond_7

    iput-object v0, v1, Lx81;->g:Li91;

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lx81;->m:J

    iget-object v0, p0, Lbx0;->n:Lx81;

    sget-object v1, Li91$b;->d:Li91$b;

    iput-object v1, v0, Lx81;->h:Li91$b;

    invoke-virtual {p0, p1}, Lbx0;->E(Lq71$g;)V

    return-void
.end method

.method public final h(Lq71$g;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lbx0;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lbx0;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object p1, Lbx0$c;->a:[I

    iget-object p2, p0, Lbx0;->a:Lcx0;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lbx0;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f11067e

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lbx0;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f110752

    :goto_0
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object p1, p0, Lbx0;->h:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lbx0;->k(Landroid/view/View;)V

    return-void

    :cond_2
    invoke-static {p2}, Lfa1$e;->o(Ljava/lang/String;)Li91;

    move-result-object v0

    invoke-static {p2}, Lfa1$e;->m(Ljava/lang/String;)Li91;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    move-object v0, v2

    :cond_3
    iget-object v2, p0, Lbx0;->n:Lx81;

    if-nez v2, :cond_4

    new-instance v2, Lx81;

    invoke-direct {v2}, Lx81;-><init>()V

    iput-object v2, p0, Lbx0;->n:Lx81;

    :cond_4
    iget-object v2, p0, Lbx0;->n:Lx81;

    invoke-virtual {v2, v0}, Lx81;->Q(Li91;)V

    iget-object v2, p0, Lbx0;->n:Lx81;

    iput-object v0, v2, Lx81;->g:Li91;

    if-eqz p4, :cond_5

    invoke-static {p2}, Lfa1$e;->n(Ljava/lang/String;)Li91;

    move-result-object v0

    iget-object p4, p0, Lbx0;->n:Lx81;

    sget-object v2, Li91$b;->d:Li91$b;

    iput-object v2, p4, Lx81;->h:Li91$b;

    :cond_5
    if-eqz v1, :cond_7

    const-string p4, "\\D"

    const-string v1, ""

    invoke-virtual {p2, p4, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    if-nez p4, :cond_6

    return-void

    :cond_6
    iget-object p4, p0, Lbx0;->n:Lx81;

    invoke-virtual {p4, v0}, Lx81;->P(Li91;)V

    iget-object p4, p0, Lbx0;->n:Lx81;

    sget-object v0, Li91$b;->g:Li91$b;

    iput-object v0, p4, Lx81;->h:Li91$b;

    iget-object p4, p4, Lx81;->g:Li91;

    invoke-virtual {p4, p2}, Li91;->w(Ljava/lang/String;)V

    :cond_7
    iget-object p2, p0, Lbx0;->n:Lx81;

    iput-object p3, p2, Lx81;->f:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    iput-wide p3, p2, Lx81;->m:J

    invoke-virtual {p0, p1}, Lbx0;->E(Lq71$g;)V

    return-void
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;Lq71$g;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p3, p1, p2, v0}, Lbx0;->h(Lq71$g;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final j(Landroid/view/View;ZLandroid/app/Dialog;Landroid/view/View;)V
    .locals 5

    const v0, 0x7f0a0246

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-double v2, v0

    int-to-double v0, v1

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p4}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p4}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p4

    int-to-float p4, p4

    add-float/2addr v2, p4

    const/high16 p4, 0x42600000    # 56.0f

    add-float/2addr v2, p4

    float-to-int p4, v2

    const-wide/16 v2, 0x2bc

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    int-to-float p2, v0

    invoke-static {p1, v1, p4, v4, p2}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    int-to-float p2, v0

    invoke-static {p1, v1, p4, p2, v4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object p2

    new-instance p4, Lbx0$b;

    invoke-direct {p4, p0, p3, p1}, Lbx0$b;-><init>(Lbx0;Landroid/app/Dialog;Landroid/view/View;)V

    invoke-virtual {p2, p4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_0
    invoke-virtual {p2, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {p2}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public final k(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lbx0;->h:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public final l()V
    .locals 8

    iget-object v0, p0, Lbx0;->b:Landroid/content/Context;

    const v1, 0x7f0d00a4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbx0;->d:Landroid/view/View;

    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lbx0;->b:Landroid/content/Context;

    const v2, 0x7f12013d

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lbx0;->l:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    iget-object v0, p0, Lbx0;->l:Landroid/app/Dialog;

    iget-object v2, p0, Lbx0;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lbx0;->l:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/view/Window;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lbx0;->d:Landroid/view/View;

    const v2, 0x7f0a045d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lbx0;->j:Landroid/widget/EditText;

    iget-object v0, p0, Lbx0;->d:Landroid/view/View;

    const v2, 0x7f0a067d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbx0;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lbx0;->d:Landroid/view/View;

    const v2, 0x7f0a06cf

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lbx0;->m:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v0, p0, Lbx0;->j:Landroid/widget/EditText;

    const v2, 0x7f1104e8

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lbx0;->j:Landroid/widget/EditText;

    const/16 v2, 0x2000

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lbx0;->j:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbx0;->j:Landroid/widget/EditText;

    new-instance v4, Lax0;

    invoke-direct {v4, p0}, Lax0;-><init>(Lbx0;)V

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lbx0;->d:Landroid/view/View;

    const v4, 0x7f0a0537

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;

    iput-object v0, p0, Lbx0;->o:Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;

    iget-object v0, p0, Lbx0;->d:Landroid/view/View;

    const v4, 0x7f0a04b0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lbx0;->k:Landroid/widget/EditText;

    iget-object v0, p0, Lbx0;->o:Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;

    iget-object v4, p0, Lbx0;->p:[Li91$b;

    array-length v4, v4

    sub-int/2addr v4, v1

    mul-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v0, v5, v4, v6}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->setRange(FFF)V

    iget-object v0, p0, Lbx0;->o:Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;

    iget-object v4, p0, Lbx0;->p:[Li91$b;

    array-length v4, v4

    sub-int/2addr v4, v1

    mul-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->setProgress(F)V

    iget-object v0, p0, Lbx0;->o:Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;

    new-instance v4, Lbx0$a;

    invoke-direct {v4, p0}, Lbx0$a;-><init>(Lbx0;)V

    invoke-virtual {v0, v4}, Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;->setOnRangeChangedListener(Lbw0;)V

    iget-object v0, p0, Lbx0;->k:Landroid/widget/EditText;

    new-instance v4, Lex0;

    iget-object v5, p0, Lbx0;->q:Ldx0;

    invoke-direct {v4, v5}, Lex0;-><init>(Ldx0;)V

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lbx0;->k:Landroid/widget/EditText;

    new-instance v4, Lsw0;

    invoke-direct {v4, p0}, Lsw0;-><init>(Lbx0;)V

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lbx0;->k:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lbx0;->k:Landroid/widget/EditText;

    new-instance v4, Lyw0;

    invoke-direct {v4, p0}, Lyw0;-><init>(Lbx0;)V

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lbx0;->d:Landroid/view/View;

    const v4, 0x7f0a069f

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbx0;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lbx0;->d:Landroid/view/View;

    const v4, 0x7f0a0689

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbx0;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lbx0;->d:Landroid/view/View;

    const v4, 0x7f0a0688

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbx0;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lbx0;->d:Landroid/view/View;

    const v4, 0x7f0a066b

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbx0;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lbx0;->d:Landroid/view/View;

    const v4, 0x7f0a0699

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v4, p0, Lbx0;->d:Landroid/view/View;

    const v5, 0x7f0a0684

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v5

    invoke-static {v3}, Lb91;->k(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    sget-object v5, Lbx0$c;->a:[I

    iget-object v6, p0, Lbx0;->a:Lcx0;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x3

    const/16 v7, 0x8

    if-eq v5, v1, :cond_3

    const/4 v1, 0x2

    if-eq v5, v1, :cond_2

    if-eq v5, v6, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lbx0;->d:Landroid/view/View;

    iget-object v5, p0, Lbx0;->b:Landroid/content/Context;

    const v6, 0x7f08017b

    invoke-static {v5, v6}, Lg8;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lbx0;->k:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110753

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110754

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbx0;->e:Landroid/widget/TextView;

    const v1, 0x7f110234

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lbx0;->k:Landroid/widget/EditText;

    const v1, 0x7f1103b3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lbx0;->f:Landroid/widget/TextView;

    const v1, 0x7f1102da

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lbx0;->g:Landroid/widget/TextView;

    const v1, 0x7f1103b8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lbx0;->j:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lbx0;->m:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lbx0;->d:Landroid/view/View;

    iget-object v1, p0, Lbx0;->b:Landroid/content/Context;

    const v4, 0x7f08017e

    invoke-static {v1, v4}, Lg8;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lbx0;->k:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbx0;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lbx0;->k:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lbx0;->e:Landroid/widget/TextView;

    const v1, 0x7f11067f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lbx0;->g:Landroid/widget/TextView;

    const v1, 0x7f1101ca

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lbx0;->j:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lbx0;->o:Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lbx0;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lbx0;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lbx0;->b:Landroid/content/Context;

    const v2, 0x7f1100d3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbx0;->d:Landroid/view/View;

    iget-object v1, p0, Lbx0;->b:Landroid/content/Context;

    const v2, 0x7f080187

    invoke-static {v1, v2}, Lg8;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lbx0;->k:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lbx0;->e:Landroid/widget/TextView;

    const v1, 0x7f1100d0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lbx0;->f:Landroid/widget/TextView;

    const v1, 0x7f1102d8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lbx0;->k:Landroid/widget/EditText;

    const v1, 0x7f1103b1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lbx0;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lbx0;->j:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lbx0;->d:Landroid/view/View;

    const v1, 0x7f0a0348

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ltw0;

    invoke-direct {v1, p0}, Ltw0;-><init>(Lbx0;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lbx0;->d:Landroid/view/View;

    const v1, 0x7f0a034c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lvw0;

    invoke-direct {v1, p0}, Lvw0;-><init>(Lbx0;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lbx0;->d:Landroid/view/View;

    const v1, 0x7f0a0345

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lzw0;

    invoke-direct {v1, p0}, Lzw0;-><init>(Lbx0;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lbx0;->l:Landroid/app/Dialog;

    new-instance v1, Lww0;

    invoke-direct {v1, p0}, Lww0;-><init>(Lbx0;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v0, p0, Lbx0;->l:Landroid/app/Dialog;

    new-instance v1, Luw0;

    invoke-direct {v1, p0}, Luw0;-><init>(Lbx0;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method public synthetic o(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lbx0;->n(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public synthetic q(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lbx0;->p(Landroid/view/View;)V

    return-void
.end method

.method public synthetic s(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lbx0;->r(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public synthetic u(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lbx0;->t(Landroid/view/View;)V

    return-void
.end method

.method public synthetic w(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lbx0;->v(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public synthetic y(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lbx0;->x(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
