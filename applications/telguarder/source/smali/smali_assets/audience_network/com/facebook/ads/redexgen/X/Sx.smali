.class public final Lcom/facebook/ads/redexgen/X/Sx;
.super Lcom/facebook/ads/redexgen/X/Kd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/KG;->A0O(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:J

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/KG;

.field public final synthetic A02:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/KG;Ljava/lang/String;J)V
    .locals 0

    .line 52916
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sx;->A01:Lcom/facebook/ads/redexgen/X/KG;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Sx;->A02:Ljava/lang/String;

    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/Sx;->A00:J

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 52917
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Sx;->A01:Lcom/facebook/ads/redexgen/X/KG;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Sx;->A02:Ljava/lang/String;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A00:J

    invoke-static {v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/KG;->A0J(Lcom/facebook/ads/redexgen/X/KG;Ljava/lang/String;J)V

    .line 52918
    return-void
.end method
