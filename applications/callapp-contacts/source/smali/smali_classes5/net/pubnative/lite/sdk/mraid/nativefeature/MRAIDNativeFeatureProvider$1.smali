.class Lnet/pubnative/lite/sdk/mraid/nativefeature/MRAIDNativeFeatureProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/mraid/nativefeature/MRAIDNativeFeatureProvider;->storePicture(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/mraid/nativefeature/MRAIDNativeFeatureProvider;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/mraid/nativefeature/MRAIDNativeFeatureProvider;Ljava/lang/String;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lnet/pubnative/lite/sdk/mraid/nativefeature/MRAIDNativeFeatureProvider$1;->this$0:Lnet/pubnative/lite/sdk/mraid/nativefeature/MRAIDNativeFeatureProvider;

    iput-object p2, p0, Lnet/pubnative/lite/sdk/mraid/nativefeature/MRAIDNativeFeatureProvider$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 196
    :try_start_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/nativefeature/MRAIDNativeFeatureProvider$1;->this$0:Lnet/pubnative/lite/sdk/mraid/nativefeature/MRAIDNativeFeatureProvider;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/mraid/nativefeature/MRAIDNativeFeatureProvider$1;->val$url:Ljava/lang/String;

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/mraid/nativefeature/MRAIDNativeFeatureProvider;->access$000(Lnet/pubnative/lite/sdk/mraid/nativefeature/MRAIDNativeFeatureProvider;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 198
    invoke-static {}, Lnet/pubnative/lite/sdk/mraid/nativefeature/MRAIDNativeFeatureProvider;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
