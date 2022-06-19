.class Lcom/callapp/contacts/widget/IncognitoToolTip$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/IncognitoToolTip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/IncognitoToolTip;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/IncognitoToolTip;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/callapp/contacts/widget/IncognitoToolTip$1;->a:Lcom/callapp/contacts/widget/IncognitoToolTip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 56
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    sub-float/2addr v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 57
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/widget/IncognitoToolTip$1;->a:Lcom/callapp/contacts/widget/IncognitoToolTip;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/IncognitoToolTip;->setAlpha(F)V

    return-void
.end method

.method public static synthetic lambda$eM9Bx0rYn2whmJWOFOeT-AOkJjQ(Lcom/callapp/contacts/widget/IncognitoToolTip$1;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/IncognitoToolTip$1;->a(Landroid/animation/ValueAnimator;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 53
    iget-object p1, p0, Lcom/callapp/contacts/widget/IncognitoToolTip$1;->a:Lcom/callapp/contacts/widget/IncognitoToolTip;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/widget/IncognitoToolTip;->a(Lcom/callapp/contacts/widget/IncognitoToolTip;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 54
    iget-object p1, p0, Lcom/callapp/contacts/widget/IncognitoToolTip$1;->a:Lcom/callapp/contacts/widget/IncognitoToolTip;

    invoke-static {p1}, Lcom/callapp/contacts/widget/IncognitoToolTip;->a(Lcom/callapp/contacts/widget/IncognitoToolTip;)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 55
    iget-object p1, p0, Lcom/callapp/contacts/widget/IncognitoToolTip$1;->a:Lcom/callapp/contacts/widget/IncognitoToolTip;

    invoke-static {p1}, Lcom/callapp/contacts/widget/IncognitoToolTip;->a(Lcom/callapp/contacts/widget/IncognitoToolTip;)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/widget/-$$Lambda$IncognitoToolTip$1$eM9Bx0rYn2whmJWOFOeT-AOkJjQ;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/widget/-$$Lambda$IncognitoToolTip$1$eM9Bx0rYn2whmJWOFOeT-AOkJjQ;-><init>(Lcom/callapp/contacts/widget/IncognitoToolTip$1;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 59
    iget-object p1, p0, Lcom/callapp/contacts/widget/IncognitoToolTip$1;->a:Lcom/callapp/contacts/widget/IncognitoToolTip;

    invoke-static {p1}, Lcom/callapp/contacts/widget/IncognitoToolTip;->a(Lcom/callapp/contacts/widget/IncognitoToolTip;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
