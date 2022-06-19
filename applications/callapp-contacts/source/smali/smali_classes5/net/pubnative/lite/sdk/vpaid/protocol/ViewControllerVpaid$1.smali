.class Lnet/pubnative/lite/sdk/vpaid/protocol/ViewControllerVpaid$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/vpaid/protocol/ViewControllerVpaid;->buildVideoAdView(Lnet/pubnative/lite/sdk/vpaid/VideoAdView;Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/vpaid/protocol/ViewControllerVpaid;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/vpaid/protocol/ViewControllerVpaid;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/protocol/ViewControllerVpaid$1;->this$0:Lnet/pubnative/lite/sdk/vpaid/protocol/ViewControllerVpaid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 49
    iget-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/protocol/ViewControllerVpaid$1;->this$0:Lnet/pubnative/lite/sdk/vpaid/protocol/ViewControllerVpaid;

    invoke-static {p1}, Lnet/pubnative/lite/sdk/vpaid/protocol/ViewControllerVpaid;->access$000(Lnet/pubnative/lite/sdk/vpaid/protocol/ViewControllerVpaid;)Lnet/pubnative/lite/sdk/vpaid/VideoAdController;

    move-result-object p1

    invoke-interface {p1}, Lnet/pubnative/lite/sdk/vpaid/VideoAdController;->closeSelf()V

    return-void
.end method
