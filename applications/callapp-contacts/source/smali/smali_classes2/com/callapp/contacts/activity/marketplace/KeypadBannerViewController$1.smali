.class Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController$1;->a:Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 44
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController$1;->a:Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController;

    .line 1075
    iget-object v0, p1, Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController;->c:Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController$Listener;

    if-eqz v0, :cond_0

    .line 1076
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController;->getRootView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1077
    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController;->c:Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController$Listener;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/marketplace/KeypadBannerViewController$Listener;->f()V

    :cond_0
    return-void
.end method
