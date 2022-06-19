.class public final Lcom/facebook/ads/redexgen/X/Yu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/YV;->A0Q()Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/YV;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YV;)V
    .locals 0

    .line 66025
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Yu;->A00:Lcom/facebook/ads/redexgen/X/YV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5D()Lcom/facebook/ads/redexgen/X/6t;
    .locals 2

    .line 66026
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yu;->A00:Lcom/facebook/ads/redexgen/X/YV;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0
.end method
