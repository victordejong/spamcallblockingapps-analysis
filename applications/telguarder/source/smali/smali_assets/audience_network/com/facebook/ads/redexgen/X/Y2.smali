.class public final Lcom/facebook/ads/redexgen/X/Y2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Xj;->A0Y()Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Xj;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Y2;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xj;)V
    .locals 0

    .line 65560
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Y2;->A00:Lcom/facebook/ads/redexgen/X/Xj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "wMaHYMiScJGSNauLFJqVnLIvVoZfZLRT"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "FDDeHhn1JGSNjTowWXsAJbueQNkr1P68"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "P1XCZvgB0VbCeHKuZDt1gE2ORSyhNozk"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ew43FRZmm3XTwXnA"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "p1j6722zEiYAgg8XetNy"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "r5X1ujNmahhaZ0"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "z7EcAIw0ypiGC1fhA1G7xgVBSUjOMOHy"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "zOI"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Y2;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A5D()Lcom/facebook/ads/redexgen/X/6t;
    .locals 5

    .line 65561
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y2;->A00:Lcom/facebook/ads/redexgen/X/Xj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xj;->A0C(Lcom/facebook/ads/redexgen/X/Xj;)[Landroid/content/pm/ServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 65562
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 65563
    .local p0, "listOfServiceInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y2;->A00:Lcom/facebook/ads/redexgen/X/Xj;

    .line 65564
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xj;->A0C(Lcom/facebook/ads/redexgen/X/Xj;)[Landroid/content/pm/ServiceInfo;

    move-result-object v0

    array-length v1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y2;->A00:Lcom/facebook/ads/redexgen/X/Xj;

    .line 65565
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xj;->A05(Lcom/facebook/ads/redexgen/X/Xj;)Lcom/facebook/ads/redexgen/X/5v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5v;->A0V()I

    move-result v0

    .line 65566
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 65567
    .local v0, "loopCount":I
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 65568
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y2;->A00:Lcom/facebook/ads/redexgen/X/Xj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xj;->A0C(Lcom/facebook/ads/redexgen/X/Xj;)[Landroid/content/pm/ServiceInfo;

    move-result-object v0

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 65569
    .local v4, "serviceInfoName":Ljava/lang/String;
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65570
    .end local v4    # "serviceInfoName":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65571
    .end local v0    # "i":I
    :cond_0
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 65572
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Y2;->A00:Lcom/facebook/ads/redexgen/X/Xj;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Y2;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Y2;->A01:[Ljava/lang/String;

    const-string v1, "9qLWvoFSIIlkpa1gs586"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "Sh2"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/6V;->A0F(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 65573
    .end local p0    # "listOfServiceInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v0
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y2;->A00:Lcom/facebook/ads/redexgen/X/Xj;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A07:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0
.end method
