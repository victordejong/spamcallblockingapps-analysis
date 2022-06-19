.class Lnet/pubnative/lite/sdk/vpaid/VideoAd$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/vpaid/VideoAd;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAd;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/vpaid/VideoAd;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAd$2;->this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 136
    invoke-static {}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Video will be dismissed"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAd$2;->this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->getAdState()I

    move-result v0

    const/16 v1, 0xca

    if-ne v0, v1, :cond_2

    .line 138
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAd$2;->this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->access$100(Lnet/pubnative/lite/sdk/vpaid/VideoAd;)Lnet/pubnative/lite/sdk/vpaid/VideoAdView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAd$2;->this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->access$100(Lnet/pubnative/lite/sdk/vpaid/VideoAd;)Lnet/pubnative/lite/sdk/vpaid/VideoAdView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/vpaid/VideoAdView;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAd$2;->this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->access$100(Lnet/pubnative/lite/sdk/vpaid/VideoAd;)Lnet/pubnative/lite/sdk/vpaid/VideoAdView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdView;->removeAllViews()V

    .line 142
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAd$2;->this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->getAdController()Lnet/pubnative/lite/sdk/vpaid/VideoAdController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAd$2;->this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->getAdController()Lnet/pubnative/lite/sdk/vpaid/VideoAdController;

    move-result-object v0

    invoke-interface {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdController;->dismiss()V

    .line 145
    :cond_1
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAd$2;->this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->access$300(Lnet/pubnative/lite/sdk/vpaid/VideoAd;)V

    return-void

    .line 147
    :cond_2
    invoke-static {}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Can\'t dismiss ad, it\'s not displaying"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
