.class public final Lcom/facebook/ads/redexgen/X/MN;
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
        "Lcom/facebook/ads/redexgen/X/Jz;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7y;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7y;)V
    .locals 0

    .line 43958
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/MN;->A00:Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9G;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/Jz;)V
    .locals 1

    .line 43959
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MN;->A00:Lcom/facebook/ads/redexgen/X/7y;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0b()V

    .line 43960
    return-void
.end method


# virtual methods
.method public final A02()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/facebook/ads/redexgen/X/Jz;",
            ">;"
        }
    .end annotation

    .line 43961
    const-class v0, Lcom/facebook/ads/redexgen/X/Jz;

    return-object v0
.end method

.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 43962
    check-cast p1, Lcom/facebook/ads/redexgen/X/Jz;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/MN;->A00(Lcom/facebook/ads/redexgen/X/Jz;)V

    return-void
.end method
