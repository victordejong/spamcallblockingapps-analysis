.class public final Lcom/facebook/ads/redexgen/X/MV;
.super Lcom/facebook/ads/redexgen/X/9G;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/7y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/9G<",
        "Lcom/facebook/ads/redexgen/X/K8;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7y;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7y;)V
    .locals 0

    .line 44068
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/MV;->A00:Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9G;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/K8;)V
    .locals 3

    .line 44069
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/MV;->A00:Lcom/facebook/ads/redexgen/X/7y;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/K8;->A00()I

    move-result v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/K8;->A01()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0f(II)V

    .line 44070
    return-void
.end method


# virtual methods
.method public final A02()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/facebook/ads/redexgen/X/K8;",
            ">;"
        }
    .end annotation

    .line 44071
    const-class v0, Lcom/facebook/ads/redexgen/X/K8;

    return-object v0
.end method

.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 44072
    check-cast p1, Lcom/facebook/ads/redexgen/X/K8;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/MV;->A00(Lcom/facebook/ads/redexgen/X/K8;)V

    return-void
.end method
