.class public final Lcom/facebook/ads/redexgen/X/VK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Va;->A0f()Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Va;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Va;)V
    .locals 0

    .line 56359
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/VK;->A00:Lcom/facebook/ads/redexgen/X/Va;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5F()Lcom/facebook/ads/redexgen/X/6t;
    .locals 2

    .line 56360
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VK;->A00:Lcom/facebook/ads/redexgen/X/Va;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Va;->A03(Lcom/facebook/ads/redexgen/X/Va;)Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/VZ;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/VZ;-><init>(Ljava/lang/Class;)V

    .line 56361
    .local p0, "buildConfigParams":Lcom/facebook/ads/redexgen/X/VZ;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VK;->A00:Lcom/facebook/ads/redexgen/X/Va;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Va;->A02(Lcom/facebook/ads/redexgen/X/Va;Lcom/facebook/ads/redexgen/X/VZ;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0
.end method
