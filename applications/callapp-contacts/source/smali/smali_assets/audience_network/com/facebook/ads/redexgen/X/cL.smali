.class public final Lcom/facebook/ads/redexgen/X/cL;
.super Lcom/facebook/ads/redexgen/X/Kb;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/KE;->A0P(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:J

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/KE;

.field public final synthetic A02:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/KE;Ljava/lang/String;J)V
    .locals 0

    .line 72462
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cL;->A01:Lcom/facebook/ads/redexgen/X/KE;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/cL;->A02:Ljava/lang/String;

    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/cL;->A00:J

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kb;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 72463
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/cL;->A01:Lcom/facebook/ads/redexgen/X/KE;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/cL;->A02:Ljava/lang/String;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/cL;->A00:J

    invoke-static {v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/KE;->A0K(Lcom/facebook/ads/redexgen/X/KE;Ljava/lang/String;J)V

    .line 72464
    return-void
.end method
