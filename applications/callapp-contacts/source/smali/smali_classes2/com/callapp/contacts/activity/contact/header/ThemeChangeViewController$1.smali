.class Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ZLcom/callapp/contacts/activity/contact/header/ThemeChangeViewController$contactDetailsThemeChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController$1;->a:Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 79
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController$1;->a:Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->a(Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController$1;->a:Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07016f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController$1;->a:Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070179

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v5

    invoke-static {v1, v3, v5}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(IIF)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 80
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController$1;->a:Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->a(Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 81
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController$1;->a:Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->b(Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController$1;->a:Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController$1;->a:Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-static {v1, v2, p1}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(IIF)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 82
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController$1;->a:Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->b(Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method
