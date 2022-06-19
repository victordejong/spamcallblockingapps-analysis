.class public abstract Lcom/facebook/ads/redexgen/X/CU;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Z0;
    }
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/CS;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/CS;)V
    .locals 0

    .line 24332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24333
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/CU;->A00:Lcom/facebook/ads/redexgen/X/CS;

    .line 24334
    return-void
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/redexgen/X/IM;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 24335
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/CU;->A0D(Lcom/facebook/ads/redexgen/X/IM;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24336
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/CU;->A0C(Lcom/facebook/ads/redexgen/X/IM;J)V

    .line 24337
    :cond_0
    return-void
.end method

.method public abstract A0C(Lcom/facebook/ads/redexgen/X/IM;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation
.end method

.method public abstract A0D(Lcom/facebook/ads/redexgen/X/IM;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation
.end method
