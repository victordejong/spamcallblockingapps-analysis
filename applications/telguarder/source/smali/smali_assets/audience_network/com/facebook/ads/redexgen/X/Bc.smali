.class public final Lcom/facebook/ads/redexgen/X/Bc;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Vr;-><init>([Lcom/facebook/ads/redexgen/X/Vt;[Lcom/facebook/ads/redexgen/X/Vs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Vr;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Vr;)V
    .locals 0

    .line 23521
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Bc;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder$1;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Bc;->A00:Lcom/facebook/ads/redexgen/X/Vr;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KV;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v1, p0

    .line 23522
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Bc;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder$1;"
    :try_start_0
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Bc;->A00:Lcom/facebook/ads/redexgen/X/Vr;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vr;->A0R(Lcom/facebook/ads/redexgen/X/Vr;)V

    .line 23523
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Bc;, "Lcom/facebook/ads/internal/exoplayer2/decoder/SimpleDecoder$1;"
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
