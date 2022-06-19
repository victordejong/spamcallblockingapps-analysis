.class Lnet/pubnative/lite/sdk/consent/UserConsentRequest$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/network/PNHttpClient$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/consent/UserConsentRequest;->doRequest(Landroid/content/Context;Ljava/lang/String;Lnet/pubnative/lite/sdk/consent/models/UserConsentRequestModel;Lnet/pubnative/lite/sdk/consent/UserConsentRequest$UserConsentListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/consent/UserConsentRequest;

.field final synthetic val$listener:Lnet/pubnative/lite/sdk/consent/UserConsentRequest$UserConsentListener;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/consent/UserConsentRequest;Lnet/pubnative/lite/sdk/consent/UserConsentRequest$UserConsentListener;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lnet/pubnative/lite/sdk/consent/UserConsentRequest$1;->this$0:Lnet/pubnative/lite/sdk/consent/UserConsentRequest;

    iput-object p2, p0, Lnet/pubnative/lite/sdk/consent/UserConsentRequest$1;->val$listener:Lnet/pubnative/lite/sdk/consent/UserConsentRequest$UserConsentListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/UserConsentRequest$1;->val$listener:Lnet/pubnative/lite/sdk/consent/UserConsentRequest$UserConsentListener;

    if-eqz v0, :cond_0

    .line 67
    invoke-interface {v0, p1}, Lnet/pubnative/lite/sdk/consent/UserConsentRequest$UserConsentListener;->onFailure(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    .line 59
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/UserConsentRequest$1;->val$listener:Lnet/pubnative/lite/sdk/consent/UserConsentRequest$UserConsentListener;

    if-eqz v0, :cond_0

    .line 60
    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/UserConsentRequest$1;->this$0:Lnet/pubnative/lite/sdk/consent/UserConsentRequest;

    invoke-static {v1, p1, v0}, Lnet/pubnative/lite/sdk/consent/UserConsentRequest;->access$000(Lnet/pubnative/lite/sdk/consent/UserConsentRequest;Ljava/lang/String;Lnet/pubnative/lite/sdk/consent/UserConsentRequest$UserConsentListener;)V

    :cond_0
    return-void
.end method
