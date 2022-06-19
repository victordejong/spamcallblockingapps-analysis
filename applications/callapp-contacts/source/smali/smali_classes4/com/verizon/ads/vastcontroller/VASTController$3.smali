.class Lcom/verizon/ads/vastcontroller/VASTController$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/vastcontroller/VASTController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/vastcontroller/VASTController;


# direct methods
.method constructor <init>(Lcom/verizon/ads/vastcontroller/VASTController;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTController$3;->a:Lcom/verizon/ads/vastcontroller/VASTController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTController$3;->a:Lcom/verizon/ads/vastcontroller/VASTController;

    invoke-static {v0}, Lcom/verizon/ads/vastcontroller/VASTController;->f(Lcom/verizon/ads/vastcontroller/VASTController;)Z

    return-void
.end method
