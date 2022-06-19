.class public final Lcom/facebook/ads/redexgen/X/L0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/L0;->A04()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/L0;->A03()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42053
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private A00(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 4

    .line 42054
    const/16 v2, 0x76

    const/16 v1, 0x1a

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L0;->A02(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 42055
    .local p0, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 42056
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xf

    if-lt v1, v0, :cond_0

    .line 42057
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 42058
    :cond_0
    return-object v3
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/Wm;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 5

    .line 42059
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/L0;->A00(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    .line 42060
    .local p0, "intent":Landroid/content/Intent;
    const/16 v2, 0x90

    const/16 v1, 0x21

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L0;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 42061
    const/high16 v0, 0x10000000

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 42062
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Wm;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xc6

    const/16 v1, 0x22

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L0;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42063
    const/16 v2, 0xfb

    const/16 v1, 0xe

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L0;->A02(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 42064
    return-object v4
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/L0;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x4f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x15c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/L0;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x4ft
        0x6dt
        0x62t
        0x2bt
        0x78t
        0x2ct
        0x7ft
        0x78t
        0x6dt
        0x7et
        0x78t
        0x2ct
        0x4dt
        0x79t
        0x68t
        0x65t
        0x69t
        0x62t
        0x6ft
        0x69t
        0x42t
        0x69t
        0x78t
        0x7bt
        0x63t
        0x7et
        0x67t
        0x4dt
        0x6ft
        0x78t
        0x65t
        0x7at
        0x65t
        0x78t
        0x75t
        0x22t
        0x2ct
        0x41t
        0x6dt
        0x67t
        0x69t
        0x2ct
        0x7ft
        0x79t
        0x7et
        0x69t
        0x2ct
        0x78t
        0x64t
        0x6dt
        0x78t
        0x2ct
        0x65t
        0x78t
        0x2bt
        0x7ft
        0x2ct
        0x65t
        0x62t
        0x2ct
        0x75t
        0x63t
        0x79t
        0x7et
        0x2ct
        0x4dt
        0x62t
        0x68t
        0x7et
        0x63t
        0x65t
        0x68t
        0x41t
        0x6dt
        0x62t
        0x65t
        0x6at
        0x69t
        0x7ft
        0x78t
        0x22t
        0x74t
        0x61t
        0x60t
        0x2ct
        0x6at
        0x65t
        0x60t
        0x69t
        0x22t
        0x53t
        0x57t
        0x54t
        0x60t
        0x71t
        0x7ct
        0x70t
        0x7bt
        0x76t
        0x70t
        0x5bt
        0x70t
        0x61t
        0x62t
        0x7at
        0x67t
        0x7et
        0x77t
        0x78t
        0x49t
        0x77t
        0x75t
        0x62t
        0x7ft
        0x60t
        0x7ft
        0x62t
        0x6ft
        0x7at
        0x75t
        0x7ft
        0x69t
        0x74t
        0x72t
        0x7ft
        0x35t
        0x72t
        0x75t
        0x6ft
        0x7et
        0x75t
        0x6ft
        0x35t
        0x7at
        0x78t
        0x6ft
        0x72t
        0x74t
        0x75t
        0x35t
        0x4dt
        0x52t
        0x5et
        0x4ct
        0x38t
        0x37t
        0x3dt
        0x2bt
        0x36t
        0x30t
        0x3dt
        0x77t
        0x30t
        0x37t
        0x2dt
        0x3ct
        0x37t
        0x2dt
        0x77t
        0x3at
        0x38t
        0x2dt
        0x3ct
        0x3et
        0x36t
        0x2bt
        0x20t
        0x77t
        0x1bt
        0xbt
        0x16t
        0xet
        0xat
        0x18t
        0x1bt
        0x15t
        0x1ct
        0x31t
        0x21t
        0x3ct
        0x24t
        0x20t
        0x36t
        0x21t
        0x6t
        0x1t
        0x1ft
        0x25t
        0x2at
        0x2ft
        0x23t
        0x28t
        0x32t
        0x12t
        0x29t
        0x2dt
        0x23t
        0x28t
        0x42t
        0x4et
        0x4ct
        0xft
        0x40t
        0x4ft
        0x45t
        0x53t
        0x4et
        0x48t
        0x45t
        0xft
        0x43t
        0x53t
        0x4et
        0x56t
        0x52t
        0x44t
        0x53t
        0xft
        0x40t
        0x51t
        0x51t
        0x4dt
        0x48t
        0x42t
        0x40t
        0x55t
        0x48t
        0x4et
        0x4ft
        0x7et
        0x48t
        0x45t
        0x2bt
        0x27t
        0x25t
        0x66t
        0x29t
        0x26t
        0x2ct
        0x3at
        0x27t
        0x21t
        0x2ct
        0x66t
        0x3et
        0x2dt
        0x26t
        0x2ct
        0x21t
        0x26t
        0x2ft
        0x26t
        0x37t
        0x20t
        0x24t
        0x31t
        0x20t
        0x1at
        0x2bt
        0x20t
        0x32t
        0x1at
        0x31t
        0x24t
        0x27t
        0x33t
        0x3at
        0x35t
        0x3ft
        0x37t
        0x3et
        0x29t
        0xft
        0x32t
        0x36t
        0x3et
        0x7at
        0x66t
        0x66t
        0x62t
        0x4ct
        0x50t
        0x50t
        0x54t
        0x1et
        0xbt
        0xbt
        0x54t
        0x48t
        0x45t
        0x5dt
        0xat
        0x43t
        0x4bt
        0x4bt
        0x43t
        0x48t
        0x41t
        0xat
        0x47t
        0x4bt
        0x49t
        0xbt
        0x57t
        0x50t
        0x4bt
        0x56t
        0x41t
        0xbt
        0x45t
        0x54t
        0x54t
        0x57t
        0xbt
        0x39t
        0x25t
        0x25t
        0x21t
        0x22t
        0x1at
        0x16t
        0x5t
        0x1ct
        0x12t
        0x3t
        0x25t
        0x39t
        0x34t
        0x2ct
        0x7bt
        0x32t
        0x3at
        0x3at
        0x32t
        0x39t
        0x30t
        0x7bt
        0x36t
        0x3at
        0x38t
        0x64t
        0x7bt
        0x77t
        0x65t
        0x46t
        0x6bt
        0x62t
        0x77t
    .end array-data
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "T4dPy6oALRnRtXie0LYtNa7PXoaz5xNV"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "GuB"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "N5ZcwGbFLOfjQt8i7LOYdNhhAY9bfZ8J"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "XGEF2r9HzP4eyBZiq0puzcaX55o"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "r68Pu4BAqG0jUrZ19Ek7iVXcY822rh1q"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "w97ZnD7u"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Y1Vl"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/L0;->A01:[Ljava/lang/String;

    return-void
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/Wm;Landroid/net/Uri;)V
    .locals 1

    .line 42065
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/L0;->A01(Lcom/facebook/ads/redexgen/X/Wm;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Kr;->A0C(Lcom/facebook/ads/redexgen/X/Wm;Landroid/content/Intent;)Z

    .line 42066
    return-void
.end method

.method private final A06(Lcom/facebook/ads/redexgen/X/Wm;Landroid/net/Uri;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Kz;
        }
    .end annotation

    .line 42067
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/L0;->A0B(Lcom/facebook/ads/redexgen/X/Wm;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42068
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/L0;->A01(Lcom/facebook/ads/redexgen/X/Wm;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    .line 42069
    .local p0, "intent":Landroid/content/Intent;
    const/16 v2, 0xe8

    const/16 v1, 0x13

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L0;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 42070
    invoke-static {p1, v3}, Lcom/facebook/ads/redexgen/X/Kr;->A0C(Lcom/facebook/ads/redexgen/X/Wm;Landroid/content/Intent;)Z

    .line 42071
    return-void

    .line 42072
    .end local p0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Kz;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Kz;-><init>()V

    throw v0
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/Wm;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 7

    .line 42073
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Kr;->A04(Lcom/facebook/ads/redexgen/X/Wm;)Lcom/facebook/ads/internal/util/activity/AdActivityIntent;

    move-result-object v5

    .line 42074
    .local p0, "intent":Lcom/facebook/ads/internal/util/activity/AdActivityIntent;
    const/high16 v0, 0x10000000

    invoke-virtual {v5, v0}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->addFlags(I)Landroid/content/Intent;

    .line 42075
    sget-object v3, Lcom/facebook/ads/redexgen/X/KM;->A02:Lcom/facebook/ads/redexgen/X/KM;

    const/16 v2, 0x154

    const/16 v1, 0x8

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L0;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 42076
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xb1

    const/16 v1, 0xa

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L0;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42077
    const/16 v2, 0xbb

    const/16 v1, 0xb

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L0;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, p3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42078
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/16 v4, 0x109

    const/16 v1, 0xb

    const/16 v0, 0x14

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/L0;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v2, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 42079
    :try_start_0
    invoke-static {p1, v5}, Lcom/facebook/ads/redexgen/X/Kr;->A0A(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/internal/util/activity/AdActivityIntent;)V

    goto :goto_0
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42080
    :catch_0
    move-exception v5

    .line 42081
    .local p1, "anfe":Landroid/content/ActivityNotFoundException;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v6

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A05:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v5}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 42082
    const/16 v2, 0x6b

    const/16 v1, 0xb

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L0;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 42083
    const/16 v2, 0x5a

    const/16 v1, 0x11

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L0;->A02(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x5a

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L0;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42084
    .end local p1    # "anfe":Landroid/content/ActivityNotFoundException;
    :goto_0
    return-void
.end method

.method private final A08(Lcom/facebook/ads/redexgen/X/Wm;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 5

    .line 42085
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/J5;->A05(Landroid/content/Context;)Z

    move-result v3

    .line 42086
    .local p0, "isInAppBrowserEnabled":Z
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/L0;->A0A(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    .line 42087
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/L0;->A07(Lcom/facebook/ads/redexgen/X/Wm;Landroid/net/Uri;Ljava/lang/String;)V

    .line 42088
    :goto_0
    return-void

    .line 42089
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/L0;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/L0;->A01:[Ljava/lang/String;

    const-string v1, "wYiof5OA0kFyIGryOCCENBynSJwZeKqS"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "eiKWAnSANmjrUgppQOoiF1bZHEWMj6fk"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-interface {v4, v3}, Lcom/facebook/ads/redexgen/X/0R;->A7j(Z)V

    .line 42090
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/L0;->A05(Lcom/facebook/ads/redexgen/X/Wm;Landroid/net/Uri;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/L0;Lcom/facebook/ads/redexgen/X/Wm;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 5

    .line 42091
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/L0;->A0A(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x145

    const/16 v1, 0xf

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L0;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    .line 42092
    .local p0, "isGooglePlayWebLink":Z
    :goto_0
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x13f

    const/4 v1, 0x6

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L0;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 42093
    .local p1, "isGooglePlayStoreLink":Z
    if-nez v0, :cond_1

    if-eqz v4, :cond_2

    goto :goto_1

    .line 42094
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 42095
    :cond_1
    :goto_1
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/L0;->A06(Lcom/facebook/ads/redexgen/X/Wm;Landroid/net/Uri;)V

    goto :goto_2
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/Kz; {:try_start_0 .. :try_end_0} :catch_0

    .line 42096
    .local p2, "e":Lcom/facebook/ads/redexgen/X/Kz;
    :catch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/L0;->A08(Lcom/facebook/ads/redexgen/X/Wm;Landroid/net/Uri;Ljava/lang/String;)V

    .end local p2    # "e":Lcom/facebook/ads/redexgen/X/Kz;
    goto :goto_2

    .line 42097
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/L0;->A08(Lcom/facebook/ads/redexgen/X/Wm;Landroid/net/Uri;Ljava/lang/String;)V

    .line 42098
    :goto_2
    return-void
.end method

.method public static A0A(Landroid/net/Uri;)Z
    .locals 5

    .line 42099
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x0

    const/16 v0, 0x18

    if-lt v1, v0, :cond_0

    .line 42100
    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42101
    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    const/4 v0, 0x1

    .line 42102
    .local p0, "isHttpPermitted":Z
    :goto_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 42103
    .local v0, "scheme":Ljava/lang/String;
    if-eqz v0, :cond_1

    const/16 v2, 0x114

    const/4 v1, 0x4

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L0;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/16 v2, 0x13a

    const/4 v1, 0x5

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L0;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v4, 0x1

    :cond_3
    return v4

    .line 42104
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0B(Lcom/facebook/ads/redexgen/X/Wm;)Z
    .locals 6

    .line 42105
    const/16 v2, 0x118

    const/16 v1, 0x22

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L0;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 42106
    .local p0, "playStoreUri":Landroid/net/Uri;
    const/16 v2, 0x76

    const/16 v1, 0x1a

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L0;->A02(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 42107
    .local p1, "playStoreIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Wm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 42108
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/L0;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/L0;->A01:[Ljava/lang/String;

    const-string v1, "NqbTETCkL6wtg2G74gvKWlTJws9"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "JszVyiBC"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 42109
    .local v0, "appInfo":Landroid/content/pm/ResolveInfo;
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v2, 0xe8

    const/16 v1, 0x13

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L0;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42110
    const/4 v0, 0x1

    return v0

    .line 42111
    :cond_2
    return v4
.end method
