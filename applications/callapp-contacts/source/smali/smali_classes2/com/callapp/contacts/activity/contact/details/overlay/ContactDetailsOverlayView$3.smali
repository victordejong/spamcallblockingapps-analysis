.class Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->onAdLoaded(Lcom/mopub/nativeads/NativeAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/nativeads/NativeAd;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;Lcom/mopub/nativeads/NativeAd;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$3;->b:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$3;->a:Lcom/mopub/nativeads/NativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 243
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$3;->a:Lcom/mopub/nativeads/NativeAd;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mopub/nativeads/NativeAd;->createAdView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 244
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$3;->a:Lcom/mopub/nativeads/NativeAd;

    invoke-virtual {v1, v0}, Lcom/mopub/nativeads/NativeAd;->renderAdView(Landroid/view/View;)V

    .line 245
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$3;->a:Lcom/mopub/nativeads/NativeAd;

    invoke-virtual {v1, v0}, Lcom/mopub/nativeads/NativeAd;->prepare(Landroid/view/View;)V

    .line 246
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$3;->b:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->access$300(Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;)V

    .line 247
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$3;->b:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;

    invoke-static {v1, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->access$502(Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;Landroid/view/View;)Landroid/view/View;

    .line 248
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$3;->b:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$3;->a:Lcom/mopub/nativeads/NativeAd;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->access$402(Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$3;->b:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->access$500(Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->onAdLoaded(Landroid/view/View;)V

    return-void
.end method
