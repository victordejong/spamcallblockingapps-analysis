.class public final Lcom/facebook/ads/redexgen/X/Oc;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Ob;
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 47006
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Oc;->A05()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Oc;->A04()V

    const-class v0, Lcom/facebook/ads/redexgen/X/Oc;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Oc;->A02:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/7D;Landroid/webkit/WebResourceRequest;Lcom/facebook/ads/redexgen/X/OZ;Lcom/facebook/ads/redexgen/X/Ob;Z)Landroid/webkit/WebResourceResponse;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 47008
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 47009
    .local p0, "url":Ljava/lang/String;
    iget-boolean v0, p3, Lcom/facebook/ads/redexgen/X/OZ;->A05:Z

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    .line 47010
    return-object v7

    .line 47011
    :cond_0
    :try_start_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 47012
    .local p1, "responseHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v5}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 47013
    .local p3, "mimeType":Ljava/lang/String;
    iget-object v0, p3, Lcom/facebook/ads/redexgen/X/OZ;->A01:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 47014
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x69

    const/16 v1, 0x15

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oc;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47015
    invoke-virtual {p1, v5}, Lcom/facebook/ads/redexgen/X/7D;->A0N(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 47016
    .local p4, "cachedFile":Ljava/io/File;
    if-eqz v1, :cond_2

    .line 47017
    if-eqz p5, :cond_1

    iget-object v0, p3, Lcom/facebook/ads/redexgen/X/OZ;->A00:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47018
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v3

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Lcom/facebook/ads/redexgen/X/RV;

    invoke-direct {v1, p4}, Lcom/facebook/ads/redexgen/X/RV;-><init>(Lcom/facebook/ads/redexgen/X/Ob;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/OT;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/OT;-><init>(Lcom/facebook/ads/redexgen/X/Wl;Ljava/io/FileInputStream;Lcom/facebook/ads/redexgen/X/OS;)V

    .line 47019
    invoke-static {v6, v4, v0}, Lcom/facebook/ads/redexgen/X/Oc;->A02(Ljava/util/HashMap;Ljava/lang/String;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0

    .line 47020
    :cond_1
    invoke-static {v6, v4, v1}, Lcom/facebook/ads/redexgen/X/Oc;->A01(Ljava/util/HashMap;Ljava/lang/String;Ljava/io/File;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0

    .line 47021
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x19

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oc;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47022
    .end local p4    # "cachedFile":Ljava/io/File;
    :cond_3
    iget-object v0, p3, Lcom/facebook/ads/redexgen/X/OZ;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 47023
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x7e

    const/16 v1, 0x16

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oc;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47024
    invoke-virtual {p1, v5}, Lcom/facebook/ads/redexgen/X/7D;->A0O(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 47025
    .local p4, "cachedImageFile":Ljava/io/File;
    if-eqz v0, :cond_4

    .line 47026
    invoke-static {v6, v4, v0}, Lcom/facebook/ads/redexgen/X/Oc;->A01(Ljava/util/HashMap;Ljava/lang/String;Ljava/io/File;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0

    .line 47027
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x19

    const/16 v1, 0x1a

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oc;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47028
    .end local p4    # "cachedImageFile":Ljava/io/File;
    :cond_5
    iget-object v0, p3, Lcom/facebook/ads/redexgen/X/OZ;->A03:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 47029
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x94

    const/16 v1, 0x16

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oc;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47030
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    .line 47031
    invoke-static {p0, p2, v0, v4, v6}, Lcom/facebook/ads/redexgen/X/OQ;->A00(Lcom/facebook/ads/redexgen/X/Wm;Landroid/webkit/WebResourceRequest;Landroid/net/Uri;Ljava/lang/String;Ljava/util/HashMap;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47032
    :catch_0
    move-exception v4

    .line 47033
    .local p1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x33

    const/16 v1, 0x23

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oc;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x56

    const/16 v1, 0x11

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oc;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47034
    .end local p1    # "e":Ljava/io/IOException;
    :cond_6
    return-object v7
.end method

.method public static A01(Ljava/util/HashMap;Ljava/lang/String;Ljava/io/File;)Landroid/webkit/WebResourceResponse;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")",
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 47035
    .local p1, "responseHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Oc;->A02(Ljava/util/HashMap;Ljava/lang/String;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public static A02(Ljava/util/HashMap;Ljava/lang/String;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;
    .locals 10
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            ")",
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    .line 47036
    .local v0, "responseHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Landroid/webkit/WebResourceResponse;

    const/4 v5, 0x0

    const/16 v6, 0xc8

    const/16 v2, 0x67

    const/4 v1, 0x2

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oc;->A03(III)Ljava/lang/String;

    move-result-object v7

    move-object v9, p2

    move-object v4, p1

    move-object v8, p0

    invoke-direct/range {v3 .. v9}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    return-object v3
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Oc;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x63

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Oc;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Oc;->A01:[Ljava/lang/String;

    const-string v1, "3GrjuQcpYdFWBcs25Ezt7MBLI0wjxHRp"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "nD922LhxjrSAIQnDmHWR8rAyvz5NrvSF"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0xaa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Oc;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x47t
        -0x29t
        -0x27t
        -0x22t
        -0x25t
        -0x6at
        -0x1dt
        -0x21t
        -0x17t
        -0x17t
        -0x6at
        -0x24t
        -0x1bt
        -0x18t
        -0x6at
        -0x24t
        -0x21t
        -0x1et
        -0x25t
        -0x6at
        -0x15t
        -0x18t
        -0x1et
        -0x50t
        -0x6at
        0x12t
        0x30t
        0x32t
        0x37t
        0x34t
        -0x11t
        0x3ct
        0x38t
        0x42t
        0x42t
        -0x11t
        0x35t
        0x3et
        0x41t
        -0x11t
        0x38t
        0x3ct
        0x30t
        0x36t
        0x34t
        -0x11t
        0x44t
        0x41t
        0x3bt
        0x9t
        -0x11t
        -0x2et
        -0x1t
        -0x1t
        -0x4t
        -0x1t
        -0x53t
        -0x4t
        -0x3t
        -0xet
        -0x5t
        -0xat
        -0x5t
        -0xct
        -0x53t
        -0x10t
        -0x12t
        -0x10t
        -0xbt
        -0xet
        -0xft
        -0x53t
        -0xdt
        -0xat
        -0x7t
        -0xet
        -0x53t
        -0xdt
        -0x4t
        -0x1t
        -0x53t
        0x2t
        -0x1t
        -0x7t
        -0x39t
        -0x53t
        -0x17t
        -0x1bt
        -0x1ct
        0x18t
        0x7t
        0xct
        0x8t
        0x11t
        0x6t
        0x8t
        -0xft
        0x8t
        0x17t
        0x1at
        0x12t
        0x15t
        0xet
        -0x1bt
        -0x1ft
        -0x10t
        0x12t
        0xft
        0x3t
        0x5t
        0x13t
        0x13t
        0x9t
        0xet
        0x7t
        -0x40t
        0x6t
        0x9t
        0xct
        0x5t
        -0x40t
        0x15t
        0x12t
        0xct
        -0x26t
        -0x40t
        -0x2et
        -0xct
        -0xft
        -0x1bt
        -0x19t
        -0xbt
        -0xbt
        -0x15t
        -0x10t
        -0x17t
        -0x5et
        -0x15t
        -0x11t
        -0x1dt
        -0x17t
        -0x19t
        -0x5et
        -0x9t
        -0xct
        -0x12t
        -0x44t
        -0x5et
        -0x10t
        0x12t
        0xft
        0x3t
        0x5t
        0x13t
        0x13t
        0x9t
        0xet
        0x7t
        -0x40t
        0x16t
        0x9t
        0x4t
        0x5t
        0xft
        -0x40t
        0x15t
        0x12t
        0xct
        -0x26t
        -0x40t
    .end array-data
.end method

.method public static A05()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "qx9J4yAnPXaVyRX1wkhfMyD35E0bVkcp"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "bG7a76MJuQYCTQVI4bECP0jat3LYDm8S"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "3sji"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "WOIjjsVKw0oGTZJ8bV1Eiv07MXmRBJ4e"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "zigTdk"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "jLtidcNh89Szai5k4uiuh5UaOWCNfF4m"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "9OqLRA6IbqecmBl4IJChXH2akamtN0Bd"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "1PwXl0SmV68MCkNjB88Y7o3DlBd3CbFY"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Oc;->A01:[Ljava/lang/String;

    return-void
.end method
