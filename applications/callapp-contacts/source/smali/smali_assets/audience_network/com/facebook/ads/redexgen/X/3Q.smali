.class public final Lcom/facebook/ads/redexgen/X/3Q;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Eu;,
        Lcom/facebook/ads/redexgen/X/Ev;,
        Lcom/facebook/ads/redexgen/X/T4;,
        Lcom/facebook/ads/redexgen/X/3P;
    }
.end annotation


# static fields
.field public static final A01:Lcom/facebook/ads/redexgen/X/3P;


# instance fields
.field public final A00:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 8825
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt v1, v0, :cond_0

    .line 8826
    new-instance v0, Lcom/facebook/ads/redexgen/X/Eu;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Eu;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/3Q;->A01:Lcom/facebook/ads/redexgen/X/3P;

    .line 8827
    :goto_0
    return-void

    .line 8828
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt v1, v0, :cond_1

    .line 8829
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ev;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ev;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/3Q;->A01:Lcom/facebook/ads/redexgen/X/3P;

    goto :goto_0

    .line 8830
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/T4;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/T4;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/3Q;->A01:Lcom/facebook/ads/redexgen/X/3P;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .line 8831
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8832
    sget-object v0, Lcom/facebook/ads/redexgen/X/3Q;->A01:Lcom/facebook/ads/redexgen/X/3P;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/3P;->A98(Lcom/facebook/ads/redexgen/X/3Q;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3Q;->A00:Ljava/lang/Object;

    .line 8833
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 8834
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8835
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3Q;->A00:Ljava/lang/Object;

    .line 8836
    return-void
.end method


# virtual methods
.method public final A00(I)Lcom/facebook/ads/redexgen/X/3O;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 8837
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A01(I)Lcom/facebook/ads/redexgen/X/3O;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 8838
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A02()Ljava/lang/Object;
    .locals 1

    .line 8839
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3Q;->A00:Ljava/lang/Object;

    return-object v0
.end method

.method public final A03(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/3O;",
            ">;"
        }
    .end annotation

    .line 8840
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A04(IILandroid/os/Bundle;)Z
    .locals 1

    .line 8841
    const/4 v0, 0x0

    return v0
.end method
