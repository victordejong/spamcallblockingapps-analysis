.class public final Lcom/facebook/ads/redexgen/X/IK;
.super Lcom/facebook/ads/redexgen/X/9G;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/7Z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/9G<",
        "Lcom/facebook/ads/redexgen/X/7w;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7Z;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7Z;)V
    .locals 0

    .line 38022
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/IK;->A00:Lcom/facebook/ads/redexgen/X/7Z;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9G;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/7w;)V
    .locals 2

    .line 38023
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IK;->A00:Lcom/facebook/ads/redexgen/X/7Z;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/7Z;->setVisibility(I)V

    .line 38024
    return-void
.end method


# virtual methods
.method public final A01()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/facebook/ads/redexgen/X/7w;",
            ">;"
        }
    .end annotation

    .line 38025
    const-class v0, Lcom/facebook/ads/redexgen/X/7w;

    return-object v0
.end method

.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 38026
    check-cast p1, Lcom/facebook/ads/redexgen/X/7w;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/IK;->A00(Lcom/facebook/ads/redexgen/X/7w;)V

    return-void
.end method
