.class Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->onBannerAdLoaded(Lcom/mopub/mobileads/MoPubView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/MoPubView;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;Lcom/mopub/mobileads/MoPubView;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$2;->b:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$2;->a:Lcom/mopub/mobileads/MoPubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$2;->b:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->access$300(Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;)V

    .line 228
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$2;->b:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$2;->a:Lcom/mopub/mobileads/MoPubView;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->access$402(Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$2;->b:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$2;->a:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->onAdLoaded(Landroid/view/View;)V

    return-void
.end method
