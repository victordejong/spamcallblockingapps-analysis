.class public final Lcom/facebook/ads/redexgen/X/MM;
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
        "Lcom/facebook/ads/redexgen/X/Ju;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7y;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7y;)V
    .locals 0

    .line 43953
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/MM;->A00:Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9G;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/Ju;)V
    .locals 1

    .line 43954
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MM;->A00:Lcom/facebook/ads/redexgen/X/7y;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0c()V

    .line 43955
    return-void
.end method


# virtual methods
.method public final A02()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/facebook/ads/redexgen/X/Ju;",
            ">;"
        }
    .end annotation

    .line 43956
    const-class v0, Lcom/facebook/ads/redexgen/X/Ju;

    return-object v0
.end method

.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 43957
    check-cast p1, Lcom/facebook/ads/redexgen/X/Ju;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/MM;->A00(Lcom/facebook/ads/redexgen/X/Ju;)V

    return-void
.end method
