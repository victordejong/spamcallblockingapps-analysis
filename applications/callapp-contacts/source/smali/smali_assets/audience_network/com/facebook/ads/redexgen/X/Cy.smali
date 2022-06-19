.class public final Lcom/facebook/ads/redexgen/X/Cy;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Cz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PsshAtom"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:Ljava/util/UUID;

.field public final A02:[B


# direct methods
.method public constructor <init>(Ljava/util/UUID;I[B)V
    .locals 0

    .line 25933
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25934
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A01:Ljava/util/UUID;

    .line 25935
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Cy;->A00:I

    .line 25936
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Cy;->A02:[B

    .line 25937
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Cy;)I
    .locals 0

    .line 25938
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A00:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Cy;)Ljava/util/UUID;
    .locals 0

    .line 25939
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A01:Ljava/util/UUID;

    return-object p0
.end method
