.class Lcom/verizon/ads/vastcontroller/VASTController$1$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/vastcontroller/VASTController$1$3;->onComplete(Lcom/verizon/ads/ErrorInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/ErrorInfo;

.field final synthetic b:Lcom/verizon/ads/vastcontroller/VASTController$1$3;


# direct methods
.method constructor <init>(Lcom/verizon/ads/vastcontroller/VASTController$1$3;Lcom/verizon/ads/ErrorInfo;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTController$1$3$1;->b:Lcom/verizon/ads/vastcontroller/VASTController$1$3;

    iput-object p2, p0, Lcom/verizon/ads/vastcontroller/VASTController$1$3$1;->a:Lcom/verizon/ads/ErrorInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 237
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTController$1$3$1;->b:Lcom/verizon/ads/vastcontroller/VASTController$1$3;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTController$1$3;->a:Lcom/verizon/ads/vastcontroller/VASTController$1;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTController$1;->d:Lcom/verizon/ads/vastcontroller/VASTController;

    invoke-static {v0}, Lcom/verizon/ads/vastcontroller/VASTController;->b(Lcom/verizon/ads/vastcontroller/VASTController;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTController$1$3$1;->b:Lcom/verizon/ads/vastcontroller/VASTController$1$3;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTController$1$3;->a:Lcom/verizon/ads/vastcontroller/VASTController$1;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTController$1;->d:Lcom/verizon/ads/vastcontroller/VASTController;

    invoke-static {v0}, Lcom/verizon/ads/vastcontroller/VASTController;->c(Lcom/verizon/ads/vastcontroller/VASTController;)V

    .line 239
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTController$1$3$1;->a:Lcom/verizon/ads/ErrorInfo;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTController$1$3$1;->b:Lcom/verizon/ads/vastcontroller/VASTController$1$3;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTController$1$3;->a:Lcom/verizon/ads/vastcontroller/VASTController$1;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTController$1;->d:Lcom/verizon/ads/vastcontroller/VASTController;

    invoke-static {v0}, Lcom/verizon/ads/vastcontroller/VASTController;->d(Lcom/verizon/ads/vastcontroller/VASTController;)V

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTController$1$3$1;->b:Lcom/verizon/ads/vastcontroller/VASTController$1$3;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTController$1$3;->a:Lcom/verizon/ads/vastcontroller/VASTController$1;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTController$1;->b:Lcom/verizon/ads/vastcontroller/VASTController$LoadListener;

    iget-object v1, p0, Lcom/verizon/ads/vastcontroller/VASTController$1$3$1;->a:Lcom/verizon/ads/ErrorInfo;

    invoke-interface {v0, v1}, Lcom/verizon/ads/vastcontroller/VASTController$LoadListener;->onComplete(Lcom/verizon/ads/ErrorInfo;)V

    return-void

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTController$1$3$1;->b:Lcom/verizon/ads/vastcontroller/VASTController$1$3;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTController$1$3;->a:Lcom/verizon/ads/vastcontroller/VASTController$1;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTController$1;->b:Lcom/verizon/ads/vastcontroller/VASTController$LoadListener;

    new-instance v1, Lcom/verizon/ads/ErrorInfo;

    invoke-static {}, Lcom/verizon/ads/vastcontroller/VASTController;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x8

    const-string v4, "load timed out"

    invoke-direct {v1, v2, v4, v3}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Lcom/verizon/ads/vastcontroller/VASTController$LoadListener;->onComplete(Lcom/verizon/ads/ErrorInfo;)V

    return-void
.end method
