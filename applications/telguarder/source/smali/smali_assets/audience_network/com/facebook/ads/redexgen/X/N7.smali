.class public final Lcom/facebook/ads/redexgen/X/N7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/N9;->A08(Lcom/facebook/ads/redexgen/X/Wm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Wm;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/N9;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/N7;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/N7;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/N9;Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 0

    .line 44620
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/N7;->A01:Lcom/facebook/ads/redexgen/X/N9;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/N7;->A00:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/N7;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x7c

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
    .locals 1

    const/16 v0, 0x25

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/N7;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x17t
        -0x16t
        -0x9t
        -0x3t
        -0x4t
        -0x3et
        -0x16t
        -0xct
        -0x17t
        -0xat
        -0xdt
        -0x20t
        -0x13t
        -0x1dt
        -0xft
        -0x12t
        -0x18t
        -0x1dt
        -0x53t
        -0x18t
        -0x13t
        -0xdt
        -0x1ct
        -0x13t
        -0xdt
        -0x53t
        -0x20t
        -0x1et
        -0xdt
        -0x18t
        -0x12t
        -0x13t
        -0x53t
        -0x2bt
        -0x38t
        -0x3ct
        -0x2at
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "1yU2ctZQGHJtv0wpHlXFhTlF1"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Beg5HPEeEffeHHDKa8D304H49D8J04Wh"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "47vG01Js06gfHQBtmlQWvvro"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "B3Xh5s"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Kou0bQlWxJJwrCU805XL6iZd"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "BXGJxvyikp"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "dbD6aRFJdgeZspO0GAEtxnEZ5ODuPM97"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "9jT9RBJWCCEAjqW"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/N7;->A03:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KV;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v3, p0

    .line 44621
    .local p0, "this":Lcom/facebook/ads/redexgen/X/N7;
    .local v0, "view":Landroid/view/View;
    :try_start_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/N7;->A01:Lcom/facebook/ads/redexgen/X/N9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N9;->A06(Lcom/facebook/ads/redexgen/X/N9;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v2, 0x0

    const/16 v1, 0xb

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/N7;->A00(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/N7;->A01:Lcom/facebook/ads/redexgen/X/N9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N9;->A06(Lcom/facebook/ads/redexgen/X/N9;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 44622
    :cond_1
    const/16 v2, 0xb

    const/16 v1, 0x1a

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/N7;->A00(III)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/N7;->A01:Lcom/facebook/ads/redexgen/X/N9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N9;->A06(Lcom/facebook/ads/redexgen/X/N9;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 44623
    .local p1, "intent":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 44624
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/N7;->A00:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A7k()V

    .line 44625
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/N7;->A00:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Kr;->A0C(Lcom/facebook/ads/redexgen/X/Wm;Landroid/content/Intent;)Z

    .line 44626
    return-void

    .line 44627
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/N7;
    .end local p1    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_0
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44628
    .end local v0    # "view":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/N7;->A03:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/N7;->A03:[Ljava/lang/String;

    const-string v1, "YgDHPd3iwurbwMILMTX8LzkX"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "WIJMkJUcKFGTXDuP5CFDgHBZ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
