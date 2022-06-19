.class Lcom/callapp/contacts/util/BaseAdTransparentActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/BaseAdTransparentActivity;->onNativeAdLoaded(Lcom/mopub/nativeads/NativeAd;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/nativeads/NativeAd;

.field final synthetic b:Lcom/callapp/contacts/util/BaseAdTransparentActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/BaseAdTransparentActivity;Lcom/mopub/nativeads/NativeAd;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity$4;->b:Lcom/callapp/contacts/util/BaseAdTransparentActivity;

    iput-object p2, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity$4;->a:Lcom/mopub/nativeads/NativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity$4;->a:Lcom/mopub/nativeads/NativeAd;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mopub/nativeads/NativeAd;->createAdView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity$4;->a:Lcom/mopub/nativeads/NativeAd;

    invoke-virtual {v1, v0}, Lcom/mopub/nativeads/NativeAd;->renderAdView(Landroid/view/View;)V

    .line 152
    iget-object v1, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity$4;->a:Lcom/mopub/nativeads/NativeAd;

    invoke-virtual {v1, v0}, Lcom/mopub/nativeads/NativeAd;->prepare(Landroid/view/View;)V

    .line 153
    iget-object v1, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity$4;->b:Lcom/callapp/contacts/util/BaseAdTransparentActivity;

    invoke-static {v1}, Lcom/callapp/contacts/util/BaseAdTransparentActivity;->access$000(Lcom/callapp/contacts/util/BaseAdTransparentActivity;)V

    .line 154
    iget-object v1, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity$4;->b:Lcom/callapp/contacts/util/BaseAdTransparentActivity;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/BaseAdTransparentActivity;->access$102(Lcom/callapp/contacts/util/BaseAdTransparentActivity;Landroid/view/View;)Landroid/view/View;

    .line 155
    iget-object v0, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity$4;->b:Lcom/callapp/contacts/util/BaseAdTransparentActivity;

    iget-object v1, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity$4;->a:Lcom/mopub/nativeads/NativeAd;

    iput-object v1, v0, Lcom/callapp/contacts/util/BaseAdTransparentActivity;->currentAd:Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity$4;->b:Lcom/callapp/contacts/util/BaseAdTransparentActivity;

    invoke-static {v0}, Lcom/callapp/contacts/util/BaseAdTransparentActivity;->access$100(Lcom/callapp/contacts/util/BaseAdTransparentActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/util/BaseAdTransparentActivity;->onAdLoaded(Landroid/view/View;)V

    return-void
.end method
