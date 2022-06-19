.class public Lnet/pubnative/lite/sdk/mraid/internal/MRAIDNativeFeatureManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "MRAIDNativeFeatureManager"


# instance fields
.field private context:Landroid/content/Context;

.field private supportedNativeFeatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDNativeFeatureManager;->context:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDNativeFeatureManager;->supportedNativeFeatures:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getSupportedNativeFeatures()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDNativeFeatureManager;->supportedNativeFeatures:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isCalendarSupported()Z
    .locals 4

    .line 49
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDNativeFeatureManager;->supportedNativeFeatures:Ljava/util/ArrayList;

    const-string v1, "calendar"

    .line 50
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDNativeFeatureManager;->context:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_CALENDAR"

    .line 51
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 52
    :goto_0
    sget-object v1, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDNativeFeatureManager;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "isCalendarSupported "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isInlineVideoSupported()Z
    .locals 4

    .line 58
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDNativeFeatureManager;->supportedNativeFeatures:Ljava/util/ArrayList;

    const-string v1, "inlineVideo"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 59
    sget-object v1, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDNativeFeatureManager;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "isInlineVideoSupported "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isSmsSupported()Z
    .locals 4

    .line 64
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDNativeFeatureManager;->supportedNativeFeatures:Ljava/util/ArrayList;

    const-string v1, "sms"

    .line 65
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDNativeFeatureManager;->context:Landroid/content/Context;

    const-string v1, "android.permission.SEND_SMS"

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 67
    :goto_0
    sget-object v1, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDNativeFeatureManager;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "isSmsSupported "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isStorePictureSupported()Z
    .locals 4

    .line 72
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDNativeFeatureManager;->supportedNativeFeatures:Ljava/util/ArrayList;

    const-string v1, "storePicture"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 73
    sget-object v1, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDNativeFeatureManager;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "isStorePictureSupported "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isTelSupported()Z
    .locals 4

    .line 78
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDNativeFeatureManager;->supportedNativeFeatures:Ljava/util/ArrayList;

    const-string v1, "tel"

    .line 79
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDNativeFeatureManager;->context:Landroid/content/Context;

    const-string v1, "android.permission.CALL_PHONE"

    .line 80
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 81
    :goto_0
    sget-object v1, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDNativeFeatureManager;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "isTelSupported "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method
