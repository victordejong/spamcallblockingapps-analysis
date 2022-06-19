.class public Lcom/bytedance/sdk/openadsdk/preload/falconx/statistic/Common;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public appVersion:Ljava/lang/String;
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "app_version"
    .end annotation
.end field

.field public deviceId:Ljava/lang/String;
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "device_id"
    .end annotation
.end field

.field public deviceModel:Ljava/lang/String;
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "device_model"
    .end annotation
.end field

.field public os:I
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "os"
    .end annotation
.end field

.field public region:Ljava/lang/String;
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "region"
    .end annotation
.end field

.field public sdkVersion:Ljava/lang/String;
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "sdk_version"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "2.0.3-rc.9-pangle"

    .line 15
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/falconx/statistic/Common;->sdkVersion:Ljava/lang/String;

    .line 19
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/falconx/statistic/Common;->deviceModel:Ljava/lang/String;

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/preload/falconx/statistic/Common;->os:I

    return-void
.end method
