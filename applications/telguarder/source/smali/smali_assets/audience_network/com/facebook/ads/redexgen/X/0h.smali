.class public final enum Lcom/facebook/ads/redexgen/X/0h;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/redexgen/X/0h;",
        ">;"
    }
.end annotation


# static fields
.field public static A00:[B

.field public static final synthetic A01:[Lcom/facebook/ads/redexgen/X/0h;

.field public static final enum A02:Lcom/facebook/ads/redexgen/X/0h;

.field public static final enum A03:Lcom/facebook/ads/redexgen/X/0h;

.field public static final enum A04:Lcom/facebook/ads/redexgen/X/0h;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 2220
    invoke-static {}, Lcom/facebook/ads/redexgen/X/0h;->A02()V

    const/4 v5, 0x0

    const/16 v2, 0x9

    const/4 v1, 0x4

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0h;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/0h;

    invoke-direct {v0, v1, v5}, Lcom/facebook/ads/redexgen/X/0h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/0h;->A03:Lcom/facebook/ads/redexgen/X/0h;

    .line 2221
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0h;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/0h;

    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/redexgen/X/0h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/0h;->A02:Lcom/facebook/ads/redexgen/X/0h;

    .line 2222
    const/4 v3, 0x2

    const/16 v2, 0xd

    const/16 v1, 0xd

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0h;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/0h;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/0h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/0h;->A04:Lcom/facebook/ads/redexgen/X/0h;

    .line 2223
    const/4 v0, 0x3

    new-array v1, v0, [Lcom/facebook/ads/redexgen/X/0h;

    sget-object v0, Lcom/facebook/ads/redexgen/X/0h;->A03:Lcom/facebook/ads/redexgen/X/0h;

    aput-object v0, v1, v5

    sget-object v0, Lcom/facebook/ads/redexgen/X/0h;->A02:Lcom/facebook/ads/redexgen/X/0h;

    aput-object v0, v1, v4

    sget-object v0, Lcom/facebook/ads/redexgen/X/0h;->A04:Lcom/facebook/ads/redexgen/X/0h;

    aput-object v0, v1, v3

    sput-object v1, Lcom/facebook/ads/redexgen/X/0h;->A01:[Lcom/facebook/ads/redexgen/X/0h;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2224
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/0h;
    .locals 1

    .line 2225
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2226
    sget-object v0, Lcom/facebook/ads/redexgen/X/0h;->A03:Lcom/facebook/ads/redexgen/X/0h;

    return-object v0

    .line 2227
    :cond_0
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/0h;->valueOf(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/0h;

    move-result-object v0

    return-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2228
    .local p0, "ex":Ljava/lang/IllegalArgumentException;
    :catch_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/0h;->A03:Lcom/facebook/ads/redexgen/X/0h;

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/0h;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x24

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/0h;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x44t
        0x43t
        0x5et
        0x59t
        0x4ct
        0x41t
        0x41t
        0x48t
        0x49t
        0x1ft
        0x1et
        0x1ft
        0x14t
        0x72t
        0x73t
        0x68t
        0x63t
        0x75t
        0x72t
        0x6ft
        0x68t
        0x7dt
        0x70t
        0x70t
        0x79t
        0x78t
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/0h;
    .locals 1

    .line 2229
    const-class v0, Lcom/facebook/ads/redexgen/X/0h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/0h;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/redexgen/X/0h;
    .locals 1

    .line 2230
    sget-object v0, Lcom/facebook/ads/redexgen/X/0h;->A01:[Lcom/facebook/ads/redexgen/X/0h;

    invoke-virtual {v0}, [Lcom/facebook/ads/redexgen/X/0h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/0h;

    return-object v0
.end method
