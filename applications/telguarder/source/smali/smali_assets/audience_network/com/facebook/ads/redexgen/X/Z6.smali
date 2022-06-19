.class public final Lcom/facebook/ads/redexgen/X/Z6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Z1;->A0L()Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Z1;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Z6;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Z6;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Z1;)V
    .locals 0

    .line 66158
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Z6;->A00:Lcom/facebook/ads/redexgen/X/Z1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Z6;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x35

    int-to-byte v3, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Z6;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Z6;->A02:[Ljava/lang/String;

    const-string v1, "6Atf347dq7Y1JPPATZ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "NPhgwn6zoVd5to1s1gsKqYygAW"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    aput-byte v3, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Z6;->A01:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x25t
        -0x28t
        -0x2ct
        -0x21t
        -0x19t
        -0x25t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "oS6Z8MIKcPEwPlb12t"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "srsAou1XstnOq6ntHYB3cr9J5yQkjhKb"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "LPZZxkza8KzFQELJQzFhSf2gWh7thw8U"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "0uWgLsX7vtxc394uE0lPMDXVh3KiQEaL"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "v87UACJwW3x62mBDLW"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "EdRkvkSBVUkKwimFxKn4Ajse3CGXuSvQ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "wM3gTRMonbbRU5f34AAJGMx2cE"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "vrfZWSugmgiXNWbOjEgoiAAz5D55J70m"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Z6;->A02:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A5D()Lcom/facebook/ads/redexgen/X/6t;
    .locals 4

    .line 66159
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Z6;->A00:Lcom/facebook/ads/redexgen/X/Z1;

    const/4 v2, 0x0

    const/4 v1, 0x6

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z6;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/high16 v0, -0x80000000

    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A0B(Ljava/lang/String;I)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0
.end method
