.class Lnet/pubnative/lite/sdk/UserDataManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/location/GeoIpRequest$GeoIpRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/UserDataManager;->determineUserZone(Lnet/pubnative/lite/sdk/UserDataManager$UserDataInitialisationListener;)V
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

    .line 211
    iput-object p1, p0, Lnet/pubnative/lite/sdk/UserDataManager$3;->this$0:Lnet/pubnative/lite/sdk/UserDataManager;

    iput-object p2, p0, Lnet/pubnative/lite/sdk/UserDataManager$3;->val$listener:Lnet/pubnative/lite/sdk/UserDataManager$UserDataInitialisationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .line 234
    invoke-static {}, Lnet/pubnative/lite/sdk/UserDataManager;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object p1, p0, Lnet/pubnative/lite/sdk/UserDataManager$3;->val$listener:Lnet/pubnative/lite/sdk/UserDataManager$UserDataInitialisationListener;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 236
    invoke-interface {p1, v0}, Lnet/pubnative/lite/sdk/UserDataManager$UserDataInitialisationListener;->onDataInitialised(Z)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1

    .line 214
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-static {}, Lnet/pubnative/lite/sdk/UserDataManager;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "No country code was obtained. The default value will be used, therefore no user data consent will be required."

    invoke-static {p1, v0}, Lnet/pubnative/lite/sdk/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object p1, p0, Lnet/pubnative/lite/sdk/UserDataManager$3;->val$listener:Lnet/pubnative/lite/sdk/UserDataManager$UserDataInitialisationListener;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 217
    invoke-interface {p1, v0}, Lnet/pubnative/lite/sdk/UserDataManager$UserDataInitialisationListener;->onDataInitialised(Z)V

    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/UserDataManager$3;->this$0:Lnet/pubnative/lite/sdk/UserDataManager;

    invoke-static {p1}, Lnet/pubnative/lite/sdk/utils/CountryUtils;->isGDPRCountry(Ljava/lang/String;)Z

    move-result p1

    invoke-static {v0, p1}, Lnet/pubnative/lite/sdk/UserDataManager;->access$202(Lnet/pubnative/lite/sdk/UserDataManager;Z)Z

    .line 222
    iget-object p1, p0, Lnet/pubnative/lite/sdk/UserDataManager$3;->this$0:Lnet/pubnative/lite/sdk/UserDataManager;

    invoke-static {p1}, Lnet/pubnative/lite/sdk/UserDataManager;->access$200(Lnet/pubnative/lite/sdk/UserDataManager;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lnet/pubnative/lite/sdk/UserDataManager$3;->this$0:Lnet/pubnative/lite/sdk/UserDataManager;

    invoke-static {p1}, Lnet/pubnative/lite/sdk/UserDataManager;->access$300(Lnet/pubnative/lite/sdk/UserDataManager;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 223
    iget-object p1, p0, Lnet/pubnative/lite/sdk/UserDataManager$3;->this$0:Lnet/pubnative/lite/sdk/UserDataManager;

    iget-object v0, p0, Lnet/pubnative/lite/sdk/UserDataManager$3;->val$listener:Lnet/pubnative/lite/sdk/UserDataManager$UserDataInitialisationListener;

    invoke-static {p1, v0}, Lnet/pubnative/lite/sdk/UserDataManager;->access$400(Lnet/pubnative/lite/sdk/UserDataManager;Lnet/pubnative/lite/sdk/UserDataManager$UserDataInitialisationListener;)V

    return-void

    .line 225
    :cond_1
    iget-object p1, p0, Lnet/pubnative/lite/sdk/UserDataManager$3;->val$listener:Lnet/pubnative/lite/sdk/UserDataManager$UserDataInitialisationListener;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 226
    invoke-interface {p1, v0}, Lnet/pubnative/lite/sdk/UserDataManager$UserDataInitialisationListener;->onDataInitialised(Z)V

    :cond_2
    return-void
.end method
