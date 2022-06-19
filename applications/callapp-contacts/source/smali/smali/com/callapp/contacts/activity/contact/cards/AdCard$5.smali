.class Lcom/callapp/contacts/activity/contact/cards/AdCard$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/AdCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/AdCard$AdViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/AdCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/AdCard;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard$5;->a:Lcom/callapp/contacts/activity/contact/cards/AdCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 259
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard$5;->a:Lcom/callapp/contacts/activity/contact/cards/AdCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/AdCard;->access$400(Lcom/callapp/contacts/activity/contact/cards/AdCard;)Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 260
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard$5;->a:Lcom/callapp/contacts/activity/contact/cards/AdCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/AdCard;->access$400(Lcom/callapp/contacts/activity/contact/cards/AdCard;)Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->setAdVisibility(I)V

    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 266
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard$5;->a:Lcom/callapp/contacts/activity/contact/cards/AdCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/AdCard;->access$400(Lcom/callapp/contacts/activity/contact/cards/AdCard;)Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 267
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard$5;->a:Lcom/callapp/contacts/activity/contact/cards/AdCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/AdCard;->access$400(Lcom/callapp/contacts/activity/contact/cards/AdCard;)Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->setAdVisibility(I)V

    :cond_0
    return-void
.end method
