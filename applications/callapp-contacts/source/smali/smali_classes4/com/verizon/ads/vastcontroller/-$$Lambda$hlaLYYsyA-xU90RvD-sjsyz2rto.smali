.class public final synthetic Lcom/verizon/ads/vastcontroller/-$$Lambda$hlaLYYsyA-xU90RvD-sjsyz2rto;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/verizon/ads/VideoPlayer;


# direct methods
.method public synthetic constructor <init>(Lcom/verizon/ads/VideoPlayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/verizon/ads/vastcontroller/-$$Lambda$hlaLYYsyA-xU90RvD-sjsyz2rto;->f$0:Lcom/verizon/ads/VideoPlayer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/-$$Lambda$hlaLYYsyA-xU90RvD-sjsyz2rto;->f$0:Lcom/verizon/ads/VideoPlayer;

    invoke-interface {v0}, Lcom/verizon/ads/VideoPlayer;->play()V

    return-void
.end method
