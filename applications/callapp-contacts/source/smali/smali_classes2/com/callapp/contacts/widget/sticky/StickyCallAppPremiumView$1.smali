.class Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$PremiumGroup;

.field final synthetic b:Lcom/callapp/contacts/widget/sticky/StickyPremiumViewData;

.field final synthetic c:Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$PremiumGroup;Lcom/callapp/contacts/widget/sticky/StickyPremiumViewData;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$1;->c:Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;

    iput-object p2, p0, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$1;->a:Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$PremiumGroup;

    iput-object p3, p0, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$1;->b:Lcom/callapp/contacts/widget/sticky/StickyPremiumViewData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$1;->c:Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;

    invoke-static {v0}, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;->a(Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;)Landroidx/constraintlayout/widget/Guideline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/Guideline;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 78
    iget-object v0, p0, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$1;->a:Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$PremiumGroup;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$PremiumGroup;->getValue()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$1;->c:Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;

    invoke-static {v1}, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;->b(Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$1;->c:Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07033e

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$1;->c:Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07033f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 79
    iget-object v1, p0, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$1;->c:Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;

    invoke-static {v1, v0}, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;->a(Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;I)V

    .line 80
    iget-object v0, p0, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$1;->c:Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;

    invoke-static {v0}, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;->c(Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$1;->b:Lcom/callapp/contacts/widget/sticky/StickyPremiumViewData;

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/sticky/StickyPremiumViewData;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$1;->c:Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;

    invoke-static {v0}, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;->d(Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$1;->b:Lcom/callapp/contacts/widget/sticky/StickyPremiumViewData;

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/sticky/StickyPremiumViewData;->getSubtitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
