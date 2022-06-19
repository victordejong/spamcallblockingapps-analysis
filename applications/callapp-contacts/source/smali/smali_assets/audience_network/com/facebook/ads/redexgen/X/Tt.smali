.class public final Lcom/facebook/ads/redexgen/X/Tt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/75;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Tu;->A01()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Tu;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Tu;)V
    .locals 0

    .line 55565
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Tt;->A00:Lcom/facebook/ads/redexgen/X/Tu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A9h()V
    .locals 1

    .line 55566
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    .line 55567
    return-void
.end method

.method public final A9o()V
    .locals 1

    .line 55568
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    .line 55569
    return-void
.end method
