.class public final Lcom/facebook/ads/redexgen/X/VG;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Va;->A0V()Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Va;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Va;)V
    .locals 0

    .line 56345
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/VG;->A00:Lcom/facebook/ads/redexgen/X/Va;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5F()Lcom/facebook/ads/redexgen/X/6t;
    .locals 2

    .line 56346
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ge v1, v0, :cond_0

    .line 56347
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VG;->A00:Lcom/facebook/ads/redexgen/X/Va;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A05:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0

    .line 56348
    :cond_0
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 56349
    .local p0, "supportedAbis":[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 56350
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VG;->A00:Lcom/facebook/ads/redexgen/X/Va;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A0F(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    .line 56351
    :goto_0
    return-object v0

    .line 56352
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VG;->A00:Lcom/facebook/ads/redexgen/X/Va;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A07:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    goto :goto_0
.end method
