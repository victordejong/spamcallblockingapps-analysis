.class Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;->loadVideoAndEndCard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader$1;->this$0:Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;)V
    .locals 3

    .line 59
    invoke-static {}, Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Load video fail:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader$1;->this$0:Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;->access$308(Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;)I

    .line 61
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader$1;->this$0:Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;->access$300(Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;)I

    move-result v0

    iget-object v1, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader$1;->this$0:Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;

    invoke-static {v1}, Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;->access$400(Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;)Lnet/pubnative/lite/sdk/vpaid/response/AdParams;

    move-result-object v1

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->getVideoFileUrlsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 62
    iget-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader$1;->this$0:Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;

    invoke-static {p1}, Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;->access$500(Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;)V

    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader$1;->this$0:Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;->access$600(Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;)Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader$OnAssetsLoaded;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader$OnAssetsLoaded;->onError(Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;)V

    return-void
.end method

.method public onFileLoaded(Ljava/lang/String;)V
    .locals 2

    .line 52
    invoke-static {}, Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onFullVideoLoaded"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader$1;->this$0:Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;

    invoke-static {v0, p1}, Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;->access$102(Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    iget-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader$1;->this$0:Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;

    invoke-static {p1}, Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;->access$200(Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;)V

    return-void
.end method

.method public onProgress(D)V
    .locals 4

    .line 70
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double p1, p1, v2

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    const-string p1, "Loaded: %.2f%%"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {}, Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;->access$000()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
