.class Lcom/verizon/ads/webcontroller/WebController$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/webcontroller/WebController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/webcontroller/WebController;


# direct methods
.method constructor <init>(Lcom/verizon/ads/webcontroller/WebController;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/verizon/ads/webcontroller/WebController$3;->a:Lcom/verizon/ads/webcontroller/WebController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/verizon/ads/webcontroller/WebController$3;->a:Lcom/verizon/ads/webcontroller/WebController;

    invoke-static {v0}, Lcom/verizon/ads/webcontroller/WebController;->f(Lcom/verizon/ads/webcontroller/WebController;)Z

    return-void
.end method
