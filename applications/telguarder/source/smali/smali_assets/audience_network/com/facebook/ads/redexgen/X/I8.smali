.class public final Lcom/facebook/ads/redexgen/X/I8;
.super Lcom/facebook/ads/redexgen/X/9G;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/7T;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/9G<",
        "Lcom/facebook/ads/redexgen/X/KL;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7T;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7T;)V
    .locals 0

    .line 37737
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/I8;->A00:Lcom/facebook/ads/redexgen/X/7T;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9G;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/KL;)V
    .locals 2

    .line 37738
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/I8;->A00:Lcom/facebook/ads/redexgen/X/7T;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/7T;->setVisibility(I)V

    .line 37739
    return-void
.end method


# virtual methods
.method public final A02()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/facebook/ads/redexgen/X/KL;",
            ">;"
        }
    .end annotation

    .line 37740
    const-class v0, Lcom/facebook/ads/redexgen/X/KL;

    return-object v0
.end method

.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 37741
    check-cast p1, Lcom/facebook/ads/redexgen/X/KL;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/I8;->A00(Lcom/facebook/ads/redexgen/X/KL;)V

    return-void
.end method
