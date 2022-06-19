.class Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController$2;->a:Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 92
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController$2;->a:Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;

    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;->a(Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 93
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController$2;->a:Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;->a(Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;Z)Z

    .line 94
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController$2;->a:Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;

    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;->b(Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController$2$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController$2$1;-><init>(Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController$2;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 105
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method
