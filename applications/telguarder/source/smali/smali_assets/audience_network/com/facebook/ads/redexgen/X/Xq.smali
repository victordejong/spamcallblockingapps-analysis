.class public final Lcom/facebook/ads/redexgen/X/Xq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Xj;->A0P()Lcom/facebook/ads/redexgen/X/6e;
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

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Xq;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xj;)V
    .locals 0

    .line 65462
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Xq;->A00:Lcom/facebook/ads/redexgen/X/Xj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "tKI6D8qUdCVVJcV7rLEf7lxOwTClNvxY"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "j1gwUMzBz6MuXEu6MO3D"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "cRLSOVbubd5oIrVnAy4PJKjjqu34jka9"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "RYLGGUlP6p2S2CB4q8SHtBiFcneSK20p"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "h0i"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Dogi4KxEgFhZ1pgWlb"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "YJq7oGdyIApp6StMBEbEWqSNEtAtz6B2"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "tgMh8h7XBPbEXkmY"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Xq;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A5D()Lcom/facebook/ads/redexgen/X/6t;
    .locals 5

    .line 65463
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xq;->A00:Lcom/facebook/ads/redexgen/X/Xj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xj;->A03(Lcom/facebook/ads/redexgen/X/Xj;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 65464
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt v1, v0, :cond_0

    .line 65465
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Xq;->A00:Lcom/facebook/ads/redexgen/X/Xj;

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Xj;->A03(Lcom/facebook/ads/redexgen/X/Xj;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/6V;->A07(J)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    .line 65466
    :goto_0
    return-object v0

    .line 65467
    :cond_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Xq;->A00:Lcom/facebook/ads/redexgen/X/Xj;

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Xj;->A03(Lcom/facebook/ads/redexgen/X/Xj;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Xq;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x49

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Xq;->A01:[Ljava/lang/String;

    const-string v1, "8gELYHm4kZvYwNGsg6RJTqIBY"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/6V;->A05(I)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    goto :goto_0

    .line 65468
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Xq;->A00:Lcom/facebook/ads/redexgen/X/Xj;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A07:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    goto :goto_0
.end method
