.class public final Lcom/facebook/ads/redexgen/X/O4;
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
        "Lcom/facebook/ads/redexgen/X/K5;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7y;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7y;)V
    .locals 0

    .line 46192
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/O4;->A00:Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9G;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/K5;)V
    .locals 3

    .line 46193
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/O4;->A00:Lcom/facebook/ads/redexgen/X/7y;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Lh;->A0V()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O4;->A00:Lcom/facebook/ads/redexgen/X/7y;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0V()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0f(II)V

    .line 46194
    return-void
.end method


# virtual methods
.method public final A02()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/facebook/ads/redexgen/X/K5;",
            ">;"
        }
    .end annotation

    .line 46195
    const-class v0, Lcom/facebook/ads/redexgen/X/K5;

    return-object v0
.end method

.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 46196
    check-cast p1, Lcom/facebook/ads/redexgen/X/K5;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/O4;->A00(Lcom/facebook/ads/redexgen/X/K5;)V

    return-void
.end method
