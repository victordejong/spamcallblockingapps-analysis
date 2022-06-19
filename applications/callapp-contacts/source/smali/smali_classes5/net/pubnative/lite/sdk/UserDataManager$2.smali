.class Lnet/pubnative/lite/sdk/UserDataManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/consent/UserConsentRequest$UserConsentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/UserDataManager;->notifyConsentGiven(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/UserDataManager;

.field final synthetic val$given:Z


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/UserDataManager;Z)V
    .locals 0

    .line 194
    iput-object p1, p0, Lnet/pubnative/lite/sdk/UserDataManager$2;->this$0:Lnet/pubnative/lite/sdk/UserDataManager;

    iput-boolean p2, p0, Lnet/pubnative/lite/sdk/UserDataManager$2;->val$given:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .line 204
    invoke-static {}, Lnet/pubnative/lite/sdk/UserDataManager;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lnet/pubnative/lite/sdk/consent/models/UserConsentResponseModel;)V
    .locals 4

    .line 197
    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/consent/models/UserConsentResponseModel;->getStatus()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ok"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 198
    invoke-static {}, Lnet/pubnative/lite/sdk/UserDataManager;->access$000()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lnet/pubnative/lite/sdk/UserDataManager$2;->val$given:Z

    if-eqz v3, :cond_0

    const-string v3, "Positive"

    goto :goto_0

    :cond_0
    const-string v3, "Negative"

    :goto_0
    aput-object v3, v1, v2

    const-string v2, "%s user consent has been notified"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
