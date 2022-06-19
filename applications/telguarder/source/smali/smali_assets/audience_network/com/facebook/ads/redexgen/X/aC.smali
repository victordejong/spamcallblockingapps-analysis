.class public final Lcom/facebook/ads/redexgen/X/aC;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/75;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/aB;->A01()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/aB;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/aB;)V
    .locals 0

    .line 66789
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aC;->A00:Lcom/facebook/ads/redexgen/X/aB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A9g()V
    .locals 1

    .line 66790
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    .line 66791
    return-void
.end method

.method public final A9n()V
    .locals 1

    .line 66792
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    .line 66793
    return-void
.end method
