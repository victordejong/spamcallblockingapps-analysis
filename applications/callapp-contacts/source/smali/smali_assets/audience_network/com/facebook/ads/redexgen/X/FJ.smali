.class public final Lcom/facebook/ads/redexgen/X/FJ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/FP;->A09(Lcom/facebook/ads/redexgen/X/FQ;Lcom/facebook/ads/redexgen/X/FR;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/FP;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/FQ;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/FR;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/FS;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/FP;Lcom/facebook/ads/redexgen/X/FS;Lcom/facebook/ads/redexgen/X/FQ;Lcom/facebook/ads/redexgen/X/FR;)V
    .locals 0

    .line 32270
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/FJ;->A00:Lcom/facebook/ads/redexgen/X/FP;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/FJ;->A03:Lcom/facebook/ads/redexgen/X/FS;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/FJ;->A01:Lcom/facebook/ads/redexgen/X/FQ;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/FJ;->A02:Lcom/facebook/ads/redexgen/X/FR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KT;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v5, p0

    .line 32271
    .local p0, "this":Lcom/facebook/ads/redexgen/X/FJ;
    :try_start_0
    iget-object v4, v5, Lcom/facebook/ads/redexgen/X/FJ;->A03:Lcom/facebook/ads/redexgen/X/FS;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/FJ;->A00:Lcom/facebook/ads/redexgen/X/FP;

    iget v3, v0, Lcom/facebook/ads/redexgen/X/FP;->A00:I

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/FJ;->A00:Lcom/facebook/ads/redexgen/X/FP;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/FP;->A01:Lcom/facebook/ads/redexgen/X/FC;

    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/FJ;->A01:Lcom/facebook/ads/redexgen/X/FQ;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/FJ;->A02:Lcom/facebook/ads/redexgen/X/FR;

    invoke-interface {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FS;->AAZ(ILcom/facebook/ads/redexgen/X/FC;Lcom/facebook/ads/redexgen/X/FQ;Lcom/facebook/ads/redexgen/X/FR;)V

    .line 32272
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/FJ;
    :catchall_0
    move-exception v0

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/KT;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
