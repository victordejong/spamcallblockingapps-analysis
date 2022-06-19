.class Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->update(Lcom/verizon/ads/ConfigurationProvider$UpdateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/ConfigurationProvider$UpdateListener;

.field final synthetic b:Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;


# direct methods
.method constructor <init>(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;Lcom/verizon/ads/ConfigurationProvider$UpdateListener;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$1;->b:Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;

    iput-object p2, p0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$1;->a:Lcom/verizon/ads/ConfigurationProvider$UpdateListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 300
    iget-object v0, p0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$1;->b:Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;

    invoke-static {v0}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->access$000(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;)I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 301
    invoke-static {}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->getHandshakeBaseUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "https://ads.nexage.com"

    :cond_1
    const-string v1, "/admax/sdk/handshake/1"

    .line 306
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 308
    iget-object v1, p0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$1;->b:Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;

    invoke-static {v1}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->access$008(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;)I

    const/4 v1, 0x3

    .line 310
    invoke-static {v1}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 311
    invoke-static {}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->access$100()Lcom/verizon/ads/Logger;

    move-result-object v2

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v4

    iget-object v6, p0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$1;->b:Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;

    invoke-static {v6}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->access$000(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const-string v6, "Requesting handshake from \'%s\' - attempt %d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 314
    :cond_2
    iget-object v2, p0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$1;->b:Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;

    invoke-virtual {v2, v0}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->requestHandshake(Ljava/lang/String;)Lcom/verizon/ads/utils/HttpUtils$Response;

    move-result-object v0

    const/4 v2, -0x4

    if-nez v0, :cond_3

    .line 317
    new-instance v3, Lcom/verizon/ads/ErrorInfo;

    invoke-static {}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->access$200()Ljava/lang/String;

    move-result-object v5

    const-string v6, "No response from handshake HTTP request"

    invoke-direct {v3, v5, v6, v2}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 318
    :cond_3
    iget v5, v0, Lcom/verizon/ads/utils/HttpUtils$Response;->code:I

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_4

    .line 319
    new-instance v5, Lcom/verizon/ads/ErrorInfo;

    invoke-static {}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->access$200()Ljava/lang/String;

    move-result-object v6

    new-array v3, v3, [Ljava/lang/Object;

    iget v7, v0, Lcom/verizon/ads/utils/HttpUtils$Response;->code:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v4

    const-string v7, "Handshake request failed with HTTP response code: %d"

    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v6, v3, v2}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v3, v5

    goto :goto_1

    .line 323
    :cond_4
    iget-object v2, v0, Lcom/verizon/ads/utils/HttpUtils$Response;->content:Ljava/lang/String;

    invoke-static {v2}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->processHandshake(Ljava/lang/String;)Lcom/verizon/ads/ErrorInfo;

    move-result-object v3

    :goto_1
    if-nez v3, :cond_5

    .line 328
    iget-object v1, p0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$1;->b:Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;

    iget-object v0, v0, Lcom/verizon/ads/utils/HttpUtils$Response;->content:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->access$300(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$1;->b:Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;

    invoke-static {v0, v4}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->access$002(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;I)I

    goto :goto_2

    .line 331
    :cond_5
    invoke-static {v1}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 332
    invoke-static {}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->access$100()Lcom/verizon/ads/Logger;

    move-result-object v0

    invoke-virtual {v3}, Lcom/verizon/ads/ErrorInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 335
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$1;->b:Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;

    invoke-static {v0}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->access$400(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 337
    iget-object v0, p0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$1;->a:Lcom/verizon/ads/ConfigurationProvider$UpdateListener;

    if-eqz v0, :cond_7

    .line 338
    iget-object v1, p0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$1;->b:Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;

    invoke-interface {v0, v1, v3}, Lcom/verizon/ads/ConfigurationProvider$UpdateListener;->onComplete(Lcom/verizon/ads/ConfigurationProvider;Lcom/verizon/ads/ErrorInfo;)V

    :cond_7
    return-void
.end method
