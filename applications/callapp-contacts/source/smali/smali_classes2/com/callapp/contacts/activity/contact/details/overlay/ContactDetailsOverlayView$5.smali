.class Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$5;->a:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 331
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$5;->a:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->access$1000(Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;)Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 332
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$5;->a:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->access$1000(Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;)Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->setAdVisibility(I)V

    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 338
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$5;->a:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->access$1000(Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;)Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 339
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$5;->a:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->access$1000(Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;)Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->setAdVisibility(I)V

    :cond_0
    return-void
.end method
