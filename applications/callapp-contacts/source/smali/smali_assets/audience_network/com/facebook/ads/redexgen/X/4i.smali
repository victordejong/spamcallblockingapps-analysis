.class public final Lcom/facebook/ads/redexgen/X/4i;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/4k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InfoRecord"
.end annotation


# static fields
.field public static A03:Lcom/facebook/ads/redexgen/X/2V;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/2V<",
            "Lcom/facebook/ads/redexgen/X/4i;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/4F;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/4F;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 12041
    const/16 v1, 0x14

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sp;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Sp;-><init>(I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/4i;->A03:Lcom/facebook/ads/redexgen/X/2V;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12042
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12043
    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/4i;
    .locals 1

    .line 12044
    sget-object v0, Lcom/facebook/ads/redexgen/X/4i;->A03:Lcom/facebook/ads/redexgen/X/2V;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/2V;->A2P()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4i;

    .line 12045
    .local v0, "record":Lcom/facebook/ads/redexgen/X/4i;
    if-nez v0, :cond_0

    new-instance v0, Lcom/facebook/ads/redexgen/X/4i;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4i;-><init>()V

    :cond_0
    return-object v0
.end method

.method public static A01()V
    .locals 1

    .line 12046
    :goto_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/4i;->A03:Lcom/facebook/ads/redexgen/X/2V;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/2V;->A2P()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 12047
    :cond_0
    return-void
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/4i;)V
    .locals 1

    .line 12048
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4i;->A00:I

    .line 12049
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4i;->A02:Lcom/facebook/ads/redexgen/X/4F;

    .line 12050
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4i;->A01:Lcom/facebook/ads/redexgen/X/4F;

    .line 12051
    sget-object v0, Lcom/facebook/ads/redexgen/X/4i;->A03:Lcom/facebook/ads/redexgen/X/2V;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/2V;->AD2(Ljava/lang/Object;)Z

    .line 12052
    return-void
.end method
