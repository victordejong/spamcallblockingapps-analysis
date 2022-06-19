.class Lnet/pubnative/lite/sdk/api/PNApiClient$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/network/PNHttpClient$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/api/PNApiClient;->sendTrackingRequest(Ljava/lang/String;Lnet/pubnative/lite/sdk/api/PNApiClient$TrackUrlListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/api/PNApiClient;

.field final synthetic val$listener:Lnet/pubnative/lite/sdk/api/PNApiClient$TrackUrlListener;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/api/PNApiClient;Lnet/pubnative/lite/sdk/api/PNApiClient$TrackUrlListener;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lnet/pubnative/lite/sdk/api/PNApiClient$2;->this$0:Lnet/pubnative/lite/sdk/api/PNApiClient;

    iput-object p2, p0, Lnet/pubnative/lite/sdk/api/PNApiClient$2;->val$listener:Lnet/pubnative/lite/sdk/api/PNApiClient$TrackUrlListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lnet/pubnative/lite/sdk/api/PNApiClient$2;->val$listener:Lnet/pubnative/lite/sdk/api/PNApiClient$TrackUrlListener;

    if-eqz v0, :cond_0

    .line 130
    invoke-interface {v0, p1}, Lnet/pubnative/lite/sdk/api/PNApiClient$TrackUrlListener;->onFailure(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 0

    .line 122
    iget-object p1, p0, Lnet/pubnative/lite/sdk/api/PNApiClient$2;->val$listener:Lnet/pubnative/lite/sdk/api/PNApiClient$TrackUrlListener;

    if-eqz p1, :cond_0

    .line 123
    invoke-interface {p1}, Lnet/pubnative/lite/sdk/api/PNApiClient$TrackUrlListener;->onSuccess()V

    :cond_0
    return-void
.end method
