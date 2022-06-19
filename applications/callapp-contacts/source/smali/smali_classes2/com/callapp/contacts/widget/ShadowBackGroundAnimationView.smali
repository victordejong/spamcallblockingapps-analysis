.class public Lcom/callapp/contacts/widget/ShadowBackGroundAnimationView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View$OnClickListener;

.field private b:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/widget/ShadowBackGroundAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/widget/ShadowBackGroundAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1029
    new-instance p1, Lcom/callapp/contacts/widget/ShadowBackGroundAnimationView$1;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/widget/ShadowBackGroundAnimationView$1;-><init>(Lcom/callapp/contacts/widget/ShadowBackGroundAnimationView;)V

    invoke-super {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/ShadowBackGroundAnimationView;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/callapp/contacts/widget/ShadowBackGroundAnimationView;->a:Landroid/view/View$OnClickListener;

    return-object p0
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/callapp/contacts/widget/ShadowBackGroundAnimationView;->b:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0xfa

    if-eqz p1, :cond_1

    .line 52
    invoke-static {p0, v1, v0}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->b(Landroid/view/View;II)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/widget/ShadowBackGroundAnimationView;->b:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 54
    invoke-static {p0, v1, v0, p1}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Landroid/view/View;III)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/widget/ShadowBackGroundAnimationView;->b:Landroid/animation/ValueAnimator;

    .line 57
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/widget/ShadowBackGroundAnimationView;->b:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    .line 58
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/callapp/contacts/widget/ShadowBackGroundAnimationView;->a:Landroid/view/View$OnClickListener;

    return-void
.end method
