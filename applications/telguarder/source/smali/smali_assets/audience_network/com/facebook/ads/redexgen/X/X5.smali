.class public final Lcom/facebook/ads/redexgen/X/X5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/X4;->A0H()Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/X4;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/X5;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/X5;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/X4;)V
    .locals 0

    .line 64924
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/X5;->A00:Lcom/facebook/ads/redexgen/X/X4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/X5;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x14

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 3

    const/16 v0, 0x2e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/X5;->A01:[B

    sget-object v2, Lcom/facebook/ads/redexgen/X/X5;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/X5;->A02:[Ljava/lang/String;

    const-string v1, "qzN9mvBfdEQXqd60EZ"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "fE0szjbL1lk4FbEjmj"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :array_0
    .array-data 1
        0x31t
        0x3et
        0x34t
        0x22t
        0x3ft
        0x39t
        0x34t
        0x7et
        0x38t
        0x31t
        0x22t
        0x34t
        0x27t
        0x31t
        0x22t
        0x35t
        0x7et
        0x25t
        0x23t
        0x32t
        0x7et
        0x31t
        0x33t
        0x24t
        0x39t
        0x3ft
        0x3et
        0x7et
        0x5t
        0x3t
        0x12t
        0xft
        0x3t
        0x4t
        0x11t
        0x4t
        0x15t
        0x75t
        0x79t
        0x78t
        0x78t
        0x73t
        0x75t
        0x62t
        0x73t
        0x72t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "OQOTmBxVqQoEAH3EWLKN8QLaaTtAxxH1"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "649h52L215aUOeMbeYuX2P0y0WKe46PZ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "yeyzXq7WsnC1JspHw7dR1kPBPvrklnpa"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "aGDdNgCAOrEVAAKmVKZ5gymJcK0S34xG"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "7VFwKXaY0h40oGRpYy"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "zQu6wlQE0RQjzKWk01xJPJ81hiVe1xhn"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "9NSTnMwu83SXNwGyrH6iXsDcpT1UvbpZ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "tuoPJdqIaCAdyqHJ5d"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/X5;->A02:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A5D()Lcom/facebook/ads/redexgen/X/6t;
    .locals 5

    .line 64925
    .local p0, "bundle":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X5;->A00:Lcom/facebook/ads/redexgen/X/X4;

    .line 64926
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/X4;->A01(Lcom/facebook/ads/redexgen/X/X4;)Landroid/content/Context;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x25

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X5;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 64927
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 64928
    :cond_0
    if-eqz v4, :cond_1

    .line 64929
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/X5;->A00:Lcom/facebook/ads/redexgen/X/X4;

    const/16 v2, 0x25

    const/16 v1, 0x9

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X5;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/6V;->A0G(Z)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    .line 64930
    :goto_0
    return-object v0

    .line 64931
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/X5;->A00:Lcom/facebook/ads/redexgen/X/X4;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A07:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    goto :goto_0
.end method
