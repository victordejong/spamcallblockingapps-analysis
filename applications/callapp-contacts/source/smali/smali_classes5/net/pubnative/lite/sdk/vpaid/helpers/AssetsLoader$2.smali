.class Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;->loadEndCard()V
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

    .line 82
    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader$2;->this$0:Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;)V
    .locals 2

    .line 90
    iget-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader$2;->this$0:Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;

    invoke-static {p1}, Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;->access$700(Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;)Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;->COMPANION:Lnet/pubnative/lite/sdk/vpaid/enums/VastError;

    invoke-static {p1, v0}, Lnet/pubnative/lite/sdk/vpaid/helpers/ErrorLog;->postError(Landroid/content/Context;Lnet/pubnative/lite/sdk/vpaid/enums/VastError;)V

    .line 91
    iget-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader$2;->this$0:Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;

    invoke-static {p1}, Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;->access$808(Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;)I

    .line 92
    iget-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader$2;->this$0:Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;

    invoke-static {p1}, Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;->access$800(Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;)I

    move-result p1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader$2;->this$0:Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;->access$400(Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;)Lnet/pubnative/lite/sdk/vpaid/response/AdParams;

    move-result-object v0

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->getEndCardUrlList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 93
    iget-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader$2;->this$0:Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;

    invoke-static {p1}, Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;->access$200(Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;)V

    return-void

    .line 95
    :cond_0
    iget-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader$2;->this$0:Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;

    invoke-static {p1}, Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;->access$600(Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;)Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader$OnAssetsLoaded;

    move-result-object p1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader$2;->this$0:Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;->access$100(Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader$OnAssetsLoaded;->onAssetsLoaded(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFileLoaded(Ljava/lang/String;)V
    .locals 2

    .line 85
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader$2;->this$0:Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;->access$600(Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;)Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader$OnAssetsLoaded;

    move-result-object v0

    iget-object v1, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader$2;->this$0:Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;

    invoke-static {v1}, Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;->access$100(Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader$OnAssetsLoaded;->onAssetsLoaded(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onProgress(D)V
    .locals 4

    .line 101
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

    .line 102
    invoke-static {}, Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader;->access$000()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
