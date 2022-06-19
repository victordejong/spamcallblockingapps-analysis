.class Lnet/pubnative/lite/sdk/UserDataManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/consent/CheckConsentRequest$CheckConsentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/UserDataManager;->checkConsentGiven(Lnet/pubnative/lite/sdk/UserDataManager$UserDataInitialisationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/UserDataManager;

.field final synthetic val$listener:Lnet/pubnative/lite/sdk/UserDataManager$UserDataInitialisationListener;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/UserDataManager;Lnet/pubnative/lite/sdk/UserDataManager$UserDataInitialisationListener;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lnet/pubnative/lite/sdk/UserDataManager$4;->this$0:Lnet/pubnative/lite/sdk/UserDataManager;

    iput-object p2, p0, Lnet/pubnative/lite/sdk/UserDataManager$4;->val$listener:Lnet/pubnative/lite/sdk/UserDataManager$UserDataInitialisationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .line 264
    invoke-static {}, Lnet/pubnative/lite/sdk/UserDataManager;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object p1, p0, Lnet/pubnative/lite/sdk/UserDataManager$4;->val$listener:Lnet/pubnative/lite/sdk/UserDataManager$UserDataInitialisationListener;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 266
    invoke-interface {p1, v0}, Lnet/pubnative/lite/sdk/UserDataManager$UserDataInitialisationListener;->onDataInitialised(Z)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lnet/pubnative/lite/sdk/consent/models/UserConsentResponseModel;)V
    .locals 2

    .line 247
    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/consent/models/UserConsentResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 248
    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/consent/models/UserConsentResponseModel;->getConsent()Lnet/pubnative/lite/sdk/consent/models/UserConsentModel;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 249
    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/consent/models/UserConsentResponseModel;->getConsent()Lnet/pubnative/lite/sdk/consent/models/UserConsentModel;

    move-result-object p1

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/consent/models/UserConsentModel;->isConsented()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 250
    iget-object p1, p0, Lnet/pubnative/lite/sdk/UserDataManager$4;->this$0:Lnet/pubnative/lite/sdk/UserDataManager;

    invoke-static {p1, v1}, Lnet/pubnative/lite/sdk/UserDataManager;->access$500(Lnet/pubnative/lite/sdk/UserDataManager;I)V

    goto :goto_0

    .line 252
    :cond_0
    iget-object p1, p0, Lnet/pubnative/lite/sdk/UserDataManager$4;->this$0:Lnet/pubnative/lite/sdk/UserDataManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lnet/pubnative/lite/sdk/UserDataManager;->access$500(Lnet/pubnative/lite/sdk/UserDataManager;I)V

    .line 256
    :cond_1
    :goto_0
    iget-object p1, p0, Lnet/pubnative/lite/sdk/UserDataManager$4;->val$listener:Lnet/pubnative/lite/sdk/UserDataManager$UserDataInitialisationListener;

    if-eqz p1, :cond_2

    .line 257
    invoke-interface {p1, v1}, Lnet/pubnative/lite/sdk/UserDataManager$UserDataInitialisationListener;->onDataInitialised(Z)V

    :cond_2
    return-void
.end method
