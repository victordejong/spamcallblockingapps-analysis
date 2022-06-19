.class public final Lcom/facebook/ads/redexgen/X/Xz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Xj;->A0V()Lcom/facebook/ads/redexgen/X/6e;
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

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Xz;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xj;)V
    .locals 0

    .line 65528
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Xz;->A00:Lcom/facebook/ads/redexgen/X/Xj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "fxBE5Udl41yIi6e4eG9"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "J3C9fSgjD"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "eBa4d8VGYUEXQL5I1Ho8Zb8L"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "tradeOMf9wuO3VpVgSYlpjY5fjk"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "RCK04QUXz1pqH4TvbJ2cLjUC6PT9s1Q"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "9ODnvPb0HKywDAMXvmgW4YF6BlZjzW87"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "pOSsl5gXXlwrSp8cvVGBQzMqtAMk5dJu"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "QbJXrsrFilgaWf5UAcgzbeFbtNXxX4e"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Xz;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A5D()Lcom/facebook/ads/redexgen/X/6t;
    .locals 6

    .line 65529
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xz;->A00:Lcom/facebook/ads/redexgen/X/Xj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xj;->A0E(Lcom/facebook/ads/redexgen/X/Xj;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 65530
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 65531
    .local p0, "listOfRequestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xz;->A00:Lcom/facebook/ads/redexgen/X/Xj;

    .line 65532
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xj;->A0E(Lcom/facebook/ads/redexgen/X/Xj;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xz;->A00:Lcom/facebook/ads/redexgen/X/Xj;

    .line 65533
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xj;->A05(Lcom/facebook/ads/redexgen/X/Xj;)Lcom/facebook/ads/redexgen/X/5v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5v;->A0V()I

    move-result v0

    .line 65534
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 65535
    .local v0, "loopCount":I
    const/4 v3, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v3, v5, :cond_1

    .line 65536
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xz;->A00:Lcom/facebook/ads/redexgen/X/Xj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xj;->A0E(Lcom/facebook/ads/redexgen/X/Xj;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    .line 65537
    .local v4, "requestedPermissionName":Ljava/lang/String;
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/Xz;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 65538
    .end local v4    # "requestedPermissionName":Ljava/lang/String;
    sget-object v2, Lcom/facebook/ads/redexgen/X/Xz;->A01:[Ljava/lang/String;

    const-string v1, "4w9yQ9NiBKrCggZxB7TGZOoJrXDWm2s"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "TwawD6zPRJXfqYa8WjS5kDEmNPG"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 65539
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xz;->A00:Lcom/facebook/ads/redexgen/X/Xj;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/6V;->A0F(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Xz;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_2

    return-object v3

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Xz;->A01:[Ljava/lang/String;

    const-string v1, "VeW7FIcxgzYQ1sf8GN5FQGbx"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "2HWjOhA9p5fw8CqpfXai6PWZAjhq0dE"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return-object v3

    .line 65540
    .end local p0    # "listOfRequestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v0
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Xz;->A00:Lcom/facebook/ads/redexgen/X/Xj;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A07:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0
.end method
