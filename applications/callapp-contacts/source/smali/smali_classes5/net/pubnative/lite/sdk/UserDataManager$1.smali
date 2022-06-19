.class Lnet/pubnative/lite/sdk/UserDataManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/utils/HyBidAdvertisingId$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/UserDataManager;->processConsent(Z)V
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

    .line 171
    iput-object p1, p0, Lnet/pubnative/lite/sdk/UserDataManager$1;->this$0:Lnet/pubnative/lite/sdk/UserDataManager;

    iput-boolean p2, p0, Lnet/pubnative/lite/sdk/UserDataManager$1;->val$given:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHyBidAdvertisingIdFinish(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    .line 174
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 175
    invoke-static {}, Lnet/pubnative/lite/sdk/UserDataManager;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Consent request failed with an empty advertising ID."

    invoke-static {p1, p2}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 177
    :cond_0
    iget-object p2, p0, Lnet/pubnative/lite/sdk/UserDataManager$1;->this$0:Lnet/pubnative/lite/sdk/UserDataManager;

    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/UserDataManager$1;->val$given:Z

    invoke-static {p2, p1, v0}, Lnet/pubnative/lite/sdk/UserDataManager;->access$100(Lnet/pubnative/lite/sdk/UserDataManager;Ljava/lang/String;Z)V

    return-void
.end method
