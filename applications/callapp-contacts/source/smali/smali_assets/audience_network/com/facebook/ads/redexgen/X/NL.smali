.class public final Lcom/facebook/ads/redexgen/X/NL;
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
        "Lcom/facebook/ads/redexgen/X/7w;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7y;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7y;)V
    .locals 0

    .line 44914
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/NL;->A00:Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9G;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/7w;)V
    .locals 3

    .line 44915
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Lf;->A00()I

    move-result v2

    .line 44916
    .local p0, "currentPosition":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7w;->A01()I

    move-result v1

    .line 44917
    .local p1, "duration":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NL;->A00:Lcom/facebook/ads/redexgen/X/7y;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/7y;->A00:I

    if-lez v0, :cond_0

    if-ne v2, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NL;->A00:Lcom/facebook/ads/redexgen/X/7y;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/7y;->A00:I

    if-le v1, v0, :cond_0

    .line 44918
    return-void

    .line 44919
    :cond_0
    add-int/lit16 v0, v2, 0x1f4

    if-ge v1, v0, :cond_2

    .line 44920
    if-nez v1, :cond_1

    .line 44921
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NL;->A00:Lcom/facebook/ads/redexgen/X/7y;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/7y;->A00:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MQ;->A0e(I)V

    .line 44922
    :goto_0
    return-void

    .line 44923
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NL;->A00:Lcom/facebook/ads/redexgen/X/7y;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/MQ;->A0e(I)V

    goto :goto_0

    .line 44924
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NL;->A00:Lcom/facebook/ads/redexgen/X/7y;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/MQ;->A0e(I)V

    goto :goto_0
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

    .line 44925
    const-class v0, Lcom/facebook/ads/redexgen/X/7w;

    return-object v0
.end method

.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 44926
    check-cast p1, Lcom/facebook/ads/redexgen/X/7w;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/NL;->A00(Lcom/facebook/ads/redexgen/X/7w;)V

    return-void
.end method
