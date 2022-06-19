.class public final Lcom/facebook/ads/redexgen/X/Nt;
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
        "Lcom/facebook/ads/redexgen/X/7v;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7y;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7y;)V
    .locals 0

    .line 45869
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Nt;->A00:Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9G;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/7v;)V
    .locals 8

    .line 45870
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nt;->A00:Lcom/facebook/ads/redexgen/X/7y;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/MQ;->A0X()V

    .line 45871
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Nt;->A00:Lcom/facebook/ads/redexgen/X/7y;

    .line 45872
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Lf;->A00()I

    move-result v6

    .line 45873
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Lf;->A00()I

    move-result v0

    int-to-double v4, v0

    const/4 v3, 0x0

    const-wide v1, 0x409f400000000000L    # 2000.0

    cmpg-double v0, v4, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 45874
    :goto_0
    invoke-virtual {v7, v6, v3, v0}, Lcom/facebook/ads/redexgen/X/MQ;->A0g(IZZ)V

    .line 45875
    return-void

    .line 45876
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A01()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/facebook/ads/redexgen/X/7v;",
            ">;"
        }
    .end annotation

    .line 45877
    const-class v0, Lcom/facebook/ads/redexgen/X/7v;

    return-object v0
.end method

.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 45878
    check-cast p1, Lcom/facebook/ads/redexgen/X/7v;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Nt;->A00(Lcom/facebook/ads/redexgen/X/7v;)V

    return-void
.end method
