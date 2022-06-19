.class public final Lcom/facebook/ads/redexgen/X/Is;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Iz;->A06(Lcom/facebook/ads/redexgen/X/Ba;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ba;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Iz;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Iz;Lcom/facebook/ads/redexgen/X/Ba;)V
    .locals 0

    .line 39133
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Is;->A01:Lcom/facebook/ads/redexgen/X/Iz;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Is;->A00:Lcom/facebook/ads/redexgen/X/Ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KT;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v2, p0

    .line 39134
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Is;
    :try_start_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Is;->A01:Lcom/facebook/ads/redexgen/X/Iz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Iz;->A00(Lcom/facebook/ads/redexgen/X/Iz;)Lcom/facebook/ads/redexgen/X/J0;

    move-result-object v1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Is;->A00:Lcom/facebook/ads/redexgen/X/Ba;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->ABz(Lcom/facebook/ads/redexgen/X/Ba;)V

    .line 39135
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Is;
    :catchall_0
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/KT;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
