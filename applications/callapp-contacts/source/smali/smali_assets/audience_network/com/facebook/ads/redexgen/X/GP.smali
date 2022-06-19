.class public final Lcom/facebook/ads/redexgen/X/GP;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/GV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObjectData"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:Z

.field public final A02:[B

.field public final A03:[B


# direct methods
.method public constructor <init>(IZ[B[B)V
    .locals 0

    .line 33783
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33784
    iput p1, p0, Lcom/facebook/ads/redexgen/X/GP;->A00:I

    .line 33785
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/GP;->A01:Z

    .line 33786
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/GP;->A03:[B

    .line 33787
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/GP;->A02:[B

    .line 33788
    return-void
.end method
