.class Lnet/pubnative/lite/sdk/DeviceInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/utils/HyBidAdvertisingId$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/DeviceInfo;->fetchAdvertisingId()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/DeviceInfo;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/DeviceInfo;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lnet/pubnative/lite/sdk/DeviceInfo$1;->this$0:Lnet/pubnative/lite/sdk/DeviceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHyBidAdvertisingIdFinish(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lnet/pubnative/lite/sdk/DeviceInfo$1;->this$0:Lnet/pubnative/lite/sdk/DeviceInfo;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {v0, p2}, Lnet/pubnative/lite/sdk/DeviceInfo;->access$002(Lnet/pubnative/lite/sdk/DeviceInfo;Z)Z

    .line 127
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 128
    iget-object p1, p0, Lnet/pubnative/lite/sdk/DeviceInfo$1;->this$0:Lnet/pubnative/lite/sdk/DeviceInfo;

    invoke-static {p1}, Lnet/pubnative/lite/sdk/DeviceInfo;->access$200(Lnet/pubnative/lite/sdk/DeviceInfo;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "android_id"

    invoke-static {p2, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lnet/pubnative/lite/sdk/DeviceInfo;->access$102(Lnet/pubnative/lite/sdk/DeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 130
    :cond_0
    iget-object p2, p0, Lnet/pubnative/lite/sdk/DeviceInfo$1;->this$0:Lnet/pubnative/lite/sdk/DeviceInfo;

    invoke-static {p2, p1}, Lnet/pubnative/lite/sdk/DeviceInfo;->access$102(Lnet/pubnative/lite/sdk/DeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    :goto_0
    iget-object p1, p0, Lnet/pubnative/lite/sdk/DeviceInfo$1;->this$0:Lnet/pubnative/lite/sdk/DeviceInfo;

    invoke-static {p1}, Lnet/pubnative/lite/sdk/DeviceInfo;->access$100(Lnet/pubnative/lite/sdk/DeviceInfo;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lnet/pubnative/lite/sdk/utils/PNCrypto;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lnet/pubnative/lite/sdk/DeviceInfo;->access$302(Lnet/pubnative/lite/sdk/DeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    iget-object p1, p0, Lnet/pubnative/lite/sdk/DeviceInfo$1;->this$0:Lnet/pubnative/lite/sdk/DeviceInfo;

    invoke-static {p1}, Lnet/pubnative/lite/sdk/DeviceInfo;->access$100(Lnet/pubnative/lite/sdk/DeviceInfo;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lnet/pubnative/lite/sdk/utils/PNCrypto;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lnet/pubnative/lite/sdk/DeviceInfo;->access$402(Lnet/pubnative/lite/sdk/DeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    iget-object p1, p0, Lnet/pubnative/lite/sdk/DeviceInfo$1;->this$0:Lnet/pubnative/lite/sdk/DeviceInfo;

    invoke-static {p1}, Lnet/pubnative/lite/sdk/DeviceInfo;->access$500(Lnet/pubnative/lite/sdk/DeviceInfo;)Lnet/pubnative/lite/sdk/DeviceInfo$Listener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 137
    iget-object p1, p0, Lnet/pubnative/lite/sdk/DeviceInfo$1;->this$0:Lnet/pubnative/lite/sdk/DeviceInfo;

    invoke-static {p1}, Lnet/pubnative/lite/sdk/DeviceInfo;->access$500(Lnet/pubnative/lite/sdk/DeviceInfo;)Lnet/pubnative/lite/sdk/DeviceInfo$Listener;

    move-result-object p1

    invoke-interface {p1}, Lnet/pubnative/lite/sdk/DeviceInfo$Listener;->onInfoLoaded()V

    :cond_1
    return-void
.end method
