.class Lcom/callapp/contacts/util/BaseAdTransparentActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/BaseAdTransparentActivity;->onBannerAdLoaded(Lcom/mopub/mobileads/MoPubView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/MoPubView;

.field final synthetic b:Lcom/callapp/contacts/util/BaseAdTransparentActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/BaseAdTransparentActivity;Lcom/mopub/mobileads/MoPubView;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity$3;->b:Lcom/callapp/contacts/util/BaseAdTransparentActivity;

    iput-object p2, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity$3;->a:Lcom/mopub/mobileads/MoPubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity$3;->b:Lcom/callapp/contacts/util/BaseAdTransparentActivity;

    invoke-static {v0}, Lcom/callapp/contacts/util/BaseAdTransparentActivity;->access$000(Lcom/callapp/contacts/util/BaseAdTransparentActivity;)V

    .line 139
    iget-object v0, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity$3;->b:Lcom/callapp/contacts/util/BaseAdTransparentActivity;

    iget-object v1, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity$3;->a:Lcom/mopub/mobileads/MoPubView;

    iput-object v1, v0, Lcom/callapp/contacts/util/BaseAdTransparentActivity;->currentAd:Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity$3;->b:Lcom/callapp/contacts/util/BaseAdTransparentActivity;

    iget-object v1, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity$3;->a:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/util/BaseAdTransparentActivity;->onAdLoaded(Landroid/view/View;)V

    return-void
.end method
