.class public Lcom/facebook/login/widget/LoginButton;
.super Lcom/facebook/FacebookButtonBase;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/widget/LoginButton$e;,
        Lcom/facebook/login/widget/LoginButton$d;,
        Lcom/facebook/login/widget/LoginButton$f;
    }
.end annotation


# instance fields
.field public k:Z

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Lcom/facebook/login/widget/LoginButton$d;

.field public o:Ljava/lang/String;

.field public p:Z

.field public q:Lgo0$e;

.field public r:Lcom/facebook/login/widget/LoginButton$f;

.field public s:J

.field public t:Lgo0;

.field public u:Lmi0;

.field public v:Lwn0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/login/widget/LoginButton;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "fb_login_button_create"

    const-string v6, "fb_login_button_did_tap"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/FacebookButtonBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/facebook/login/widget/LoginButton$d;

    invoke-direct {p1}, Lcom/facebook/login/widget/LoginButton$d;-><init>()V

    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->n:Lcom/facebook/login/widget/LoginButton$d;

    const-string p1, "fb_login_view_usage"

    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->o:Ljava/lang/String;

    sget-object p1, Lgo0$e;->a:Lgo0$e;

    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->q:Lgo0$e;

    const-wide/16 v0, 0x1770

    iput-wide v0, p0, Lcom/facebook/login/widget/LoginButton;->s:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "fb_login_button_create"

    const-string v6, "fb_login_button_did_tap"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/FacebookButtonBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/facebook/login/widget/LoginButton$d;

    invoke-direct {p1}, Lcom/facebook/login/widget/LoginButton$d;-><init>()V

    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->n:Lcom/facebook/login/widget/LoginButton$d;

    const-string p1, "fb_login_view_usage"

    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->o:Ljava/lang/String;

    sget-object p1, Lgo0$e;->a:Lgo0$e;

    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->q:Lgo0$e;

    const-wide/16 p1, 0x1770

    iput-wide p1, p0, Lcom/facebook/login/widget/LoginButton;->s:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/4 v4, 0x0

    const-string v5, "fb_login_button_create"

    const-string v6, "fb_login_button_did_tap"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/facebook/FacebookButtonBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/facebook/login/widget/LoginButton$d;

    invoke-direct {p1}, Lcom/facebook/login/widget/LoginButton$d;-><init>()V

    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->n:Lcom/facebook/login/widget/LoginButton$d;

    const-string p1, "fb_login_view_usage"

    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->o:Ljava/lang/String;

    sget-object p1, Lgo0$e;->a:Lgo0$e;

    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->q:Lgo0$e;

    const-wide/16 p1, 0x1770

    iput-wide p1, p0, Lcom/facebook/login/widget/LoginButton;->s:J

    return-void
.end method

.method public static synthetic n(Lcom/facebook/login/widget/LoginButton;Lmm0;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/facebook/login/widget/LoginButton;->B(Lmm0;)V

    return-void
.end method

.method public static synthetic o(Lcom/facebook/login/widget/LoginButton;)Landroid/app/Activity;
    .locals 0

    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getActivity()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lcom/facebook/login/widget/LoginButton;)V
    .locals 0

    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->A()V

    return-void
.end method

.method public static synthetic q(Lcom/facebook/login/widget/LoginButton;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/facebook/FacebookButtonBase;->d(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Lcom/facebook/login/widget/LoginButton;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/login/widget/LoginButton;->o:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic s(Lcom/facebook/login/widget/LoginButton;)Lcom/facebook/login/widget/LoginButton$d;
    .locals 0

    iget-object p0, p0, Lcom/facebook/login/widget/LoginButton;->n:Lcom/facebook/login/widget/LoginButton$d;

    return-object p0
.end method

.method public static synthetic t(Lcom/facebook/login/widget/LoginButton;)Landroid/app/Activity;
    .locals 0

    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getActivity()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(Lcom/facebook/login/widget/LoginButton;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/login/widget/LoginButton;->k:Z

    return p0
.end method


# virtual methods
.method public final A()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/Button;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/facebook/AccessToken;->s()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton;->m:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    sget v1, Lco0;->com_facebook_loginview_log_out_button:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton;->l:Ljava/lang/String;

    if-eqz v1, :cond_3

    :cond_2
    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    sget v1, Lco0;->com_facebook_loginview_log_in_button_continue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/Button;->getWidth()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/facebook/login/widget/LoginButton;->y(Ljava/lang/String;)I

    move-result v3

    if-le v3, v2, :cond_2

    sget v1, Lco0;->com_facebook_loginview_log_in_button:I

    goto :goto_0

    :goto_2
    return-void
.end method

.method public final B(Lmm0;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmm0;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lmm0;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/login/widget/LoginButton;->x(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public e(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/facebook/FacebookButtonBase;->e(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getNewLoginClickListener()Lcom/facebook/login/widget/LoginButton$e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/FacebookButtonBase;->setInternalOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/login/widget/LoginButton;->z(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p0}, Landroid/widget/Button;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lpl0;->com_facebook_blue:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setBackgroundColor(I)V

    const-string p1, "Continue with Facebook"

    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->l:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/facebook/login/widget/LoginButton$b;

    invoke-direct {p1, p0}, Lcom/facebook/login/widget/LoginButton$b;-><init>(Lcom/facebook/login/widget/LoginButton;)V

    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->u:Lmi0;

    :goto_0
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->A()V

    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lrl0;->com_facebook_button_icon:I

    invoke-static {p1, p2}, La0;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2, p2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public getAuthType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->n:Lcom/facebook/login/widget/LoginButton$d;

    invoke-virtual {v0}, Lcom/facebook/login/widget/LoginButton$d;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultAudience()Lqn0;
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->n:Lcom/facebook/login/widget/LoginButton$d;

    invoke-virtual {v0}, Lcom/facebook/login/widget/LoginButton$d;->c()Lqn0;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultRequestCode()I
    .locals 1

    sget-object v0, Lbm0$b;->b:Lbm0$b;

    invoke-virtual {v0}, Lbm0$b;->a()I

    move-result v0

    return v0
.end method

.method public getDefaultStyleResource()I
    .locals 1

    sget v0, Ldo0;->com_facebook_loginview_default_style:I

    return v0
.end method

.method public getLoginBehavior()Ltn0;
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->n:Lcom/facebook/login/widget/LoginButton$d;

    invoke-virtual {v0}, Lcom/facebook/login/widget/LoginButton$d;->d()Ltn0;

    move-result-object v0

    return-object v0
.end method

.method public getLoginManager()Lwn0;
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->v:Lwn0;

    if-nez v0, :cond_0

    invoke-static {}, Lwn0;->e()Lwn0;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->v:Lwn0;

    :cond_0
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->v:Lwn0;

    return-object v0
.end method

.method public getNewLoginClickListener()Lcom/facebook/login/widget/LoginButton$e;
    .locals 1

    new-instance v0, Lcom/facebook/login/widget/LoginButton$e;

    invoke-direct {v0, p0}, Lcom/facebook/login/widget/LoginButton$e;-><init>(Lcom/facebook/login/widget/LoginButton;)V

    return-object v0
.end method

.method public getPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->n:Lcom/facebook/login/widget/LoginButton$d;

    invoke-virtual {v0}, Lcom/facebook/login/widget/LoginButton$d;->e()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getToolTipDisplayTime()J
    .locals 2

    iget-wide v0, p0, Lcom/facebook/login/widget/LoginButton;->s:J

    return-wide v0
.end method

.method public getToolTipMode()Lcom/facebook/login/widget/LoginButton$f;
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->r:Lcom/facebook/login/widget/LoginButton$f;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/facebook/FacebookButtonBase;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->u:Lmi0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmi0;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->u:Lmi0;

    invoke-virtual {v0}, Lmi0;->e()V

    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->A()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/Button;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->u:Lmi0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmi0;->f()V

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->w()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/facebook/FacebookButtonBase;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean p1, p0, Lcom/facebook/login/widget/LoginButton;->p:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/Button;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/facebook/login/widget/LoginButton;->p:Z

    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->v()V

    :cond_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/Button;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->A()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p2

    invoke-virtual {p0}, Landroid/widget/Button;->getCompoundPaddingTop()I

    move-result v0

    iget v1, p2, Landroid/graphics/Paint$FontMetrics;->top:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget p2, p2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    add-float/2addr v1, p2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p2, v1

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/widget/Button;->getCompoundPaddingBottom()I

    move-result p2

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton;->l:Ljava/lang/String;

    if-nez v1, :cond_0

    sget v1, Lco0;->com_facebook_loginview_log_in_button_continue:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/facebook/login/widget/LoginButton;->y(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2, p1}, Landroid/widget/Button;->resolveSize(II)I

    move-result v3

    if-ge v3, v2, :cond_0

    sget v1, Lco0;->com_facebook_loginview_log_in_button:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/facebook/login/widget/LoginButton;->y(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/facebook/login/widget/LoginButton;->m:Ljava/lang/String;

    if-nez v2, :cond_1

    sget v2, Lco0;->com_facebook_loginview_log_out_button:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {p0, v2}, Lcom/facebook/login/widget/LoginButton;->y(Ljava/lang/String;)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2, p1}, Landroid/widget/Button;->resolveSize(II)I

    move-result p1

    invoke-virtual {p0, p1, v0}, Landroid/widget/Button;->setMeasuredDimension(II)V

    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/Button;->onVisibilityChanged(Landroid/view/View;I)V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->w()V

    :cond_0
    return-void
.end method

.method public setAuthType(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->n:Lcom/facebook/login/widget/LoginButton$d;

    invoke-virtual {v0, p1}, Lcom/facebook/login/widget/LoginButton$d;->f(Ljava/lang/String;)V

    return-void
.end method

.method public setDefaultAudience(Lqn0;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->n:Lcom/facebook/login/widget/LoginButton$d;

    invoke-virtual {v0, p1}, Lcom/facebook/login/widget/LoginButton$d;->g(Lqn0;)V

    return-void
.end method

.method public setLoginBehavior(Ltn0;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->n:Lcom/facebook/login/widget/LoginButton$d;

    invoke-virtual {v0, p1}, Lcom/facebook/login/widget/LoginButton$d;->h(Ltn0;)V

    return-void
.end method

.method public setLoginManager(Lwn0;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->v:Lwn0;

    return-void
.end method

.method public setLoginText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->l:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->A()V

    return-void
.end method

.method public setLogoutText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->m:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->A()V

    return-void
.end method

.method public setPermissions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->n:Lcom/facebook/login/widget/LoginButton$d;

    invoke-virtual {v0, p1}, Lcom/facebook/login/widget/LoginButton$d;->i(Ljava/util/List;)V

    return-void
.end method

.method public varargs setPermissions([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->n:Lcom/facebook/login/widget/LoginButton$d;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/login/widget/LoginButton$d;->i(Ljava/util/List;)V

    return-void
.end method

.method public setProperties(Lcom/facebook/login/widget/LoginButton$d;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->n:Lcom/facebook/login/widget/LoginButton$d;

    return-void
.end method

.method public setPublishPermissions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->n:Lcom/facebook/login/widget/LoginButton$d;

    invoke-virtual {v0, p1}, Lcom/facebook/login/widget/LoginButton$d;->i(Ljava/util/List;)V

    return-void
.end method

.method public varargs setPublishPermissions([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->n:Lcom/facebook/login/widget/LoginButton$d;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/login/widget/LoginButton$d;->i(Ljava/util/List;)V

    return-void
.end method

.method public setReadPermissions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->n:Lcom/facebook/login/widget/LoginButton$d;

    invoke-virtual {v0, p1}, Lcom/facebook/login/widget/LoginButton$d;->i(Ljava/util/List;)V

    return-void
.end method

.method public varargs setReadPermissions([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->n:Lcom/facebook/login/widget/LoginButton$d;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/login/widget/LoginButton$d;->i(Ljava/util/List;)V

    return-void
.end method

.method public setToolTipDisplayTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/facebook/login/widget/LoginButton;->s:J

    return-void
.end method

.method public setToolTipMode(Lcom/facebook/login/widget/LoginButton$f;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->r:Lcom/facebook/login/widget/LoginButton$f;

    return-void
.end method

.method public setToolTipStyle(Lgo0$e;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->q:Lgo0$e;

    return-void
.end method

.method public final v()V
    .locals 3

    sget-object v0, Lcom/facebook/login/widget/LoginButton$c;->a:[I

    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton;->r:Lcom/facebook/login/widget/LoginButton$f;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lco0;->com_facebook_tooltip_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/login/widget/LoginButton;->x(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lfn0;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lui0;->o()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/facebook/login/widget/LoginButton$a;

    invoke-direct {v2, p0, v0}, Lcom/facebook/login/widget/LoginButton$a;-><init>(Lcom/facebook/login/widget/LoginButton;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public w()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->t:Lgo0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lgo0;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->t:Lgo0;

    :cond_0
    return-void
.end method

.method public final x(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lgo0;

    invoke-direct {v0, p1, p0}, Lgo0;-><init>(Ljava/lang/String;Landroid/view/View;)V

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->t:Lgo0;

    iget-object p1, p0, Lcom/facebook/login/widget/LoginButton;->q:Lgo0$e;

    invoke-virtual {v0, p1}, Lgo0;->g(Lgo0$e;)V

    iget-object p1, p0, Lcom/facebook/login/widget/LoginButton;->t:Lgo0;

    iget-wide v0, p0, Lcom/facebook/login/widget/LoginButton;->s:J

    invoke-virtual {p1, v0, v1}, Lgo0;->f(J)V

    iget-object p1, p0, Lcom/facebook/login/widget/LoginButton;->t:Lgo0;

    invoke-virtual {p1}, Lgo0;->h()V

    return-void
.end method

.method public final y(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/facebook/FacebookButtonBase;->h(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getCompoundPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/Button;->getCompoundDrawablePadding()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getCompoundPaddingRight()I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public final z(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    sget-object v0, Lcom/facebook/login/widget/LoginButton$f;->g:Lcom/facebook/login/widget/LoginButton$f;

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->r:Lcom/facebook/login/widget/LoginButton$f;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Leo0;->com_facebook_login_view:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    sget p2, Leo0;->com_facebook_login_view_com_facebook_confirm_logout:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/facebook/login/widget/LoginButton;->k:Z

    sget p2, Leo0;->com_facebook_login_view_com_facebook_login_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/login/widget/LoginButton;->l:Ljava/lang/String;

    sget p2, Leo0;->com_facebook_login_view_com_facebook_logout_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/login/widget/LoginButton;->m:Ljava/lang/String;

    sget p2, Leo0;->com_facebook_login_view_com_facebook_tooltip_mode:I

    sget-object p3, Lcom/facebook/login/widget/LoginButton$f;->g:Lcom/facebook/login/widget/LoginButton$f;

    invoke-virtual {p3}, Lcom/facebook/login/widget/LoginButton$f;->b()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-static {p2}, Lcom/facebook/login/widget/LoginButton$f;->a(I)Lcom/facebook/login/widget/LoginButton$f;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/login/widget/LoginButton;->r:Lcom/facebook/login/widget/LoginButton$f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method
