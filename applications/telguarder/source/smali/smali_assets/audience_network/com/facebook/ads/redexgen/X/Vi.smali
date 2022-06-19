.class public final Lcom/facebook/ads/redexgen/X/Vi;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/E6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/CK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A00:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vi;->A00()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 61476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "xQU"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "5GAgxw1HqXAWOVvzmiab4zacsAq"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "JT2W08B7GQr1GwGsUGa1zmvFDT8dR8Aw"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "EbW"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "nNrdnEqITLt6fiqQBeBvg"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "AcrJdeXZxkM9PTH1qsmILXgq"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "mwNGWgbiVOU32P7D8DYx3si8np2"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "IY5"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Vi;->A00:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A5A(IIIII)Z
    .locals 4

    .line 61477
    const/16 v0, 0x43

    if-ne p2, v0, :cond_2

    const/16 v3, 0x4f

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vi;->A00:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x56

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vi;->A00:[Ljava/lang/String;

    const-string v1, "RgVcQnl50tFBrz2DAc4E"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ne p3, v3, :cond_2

    const/16 v3, 0x4d

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vi;->A00:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vi;->A00:[Ljava/lang/String;

    const-string v1, "xE2"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "pcCBvMt9AgAZLARZvESvL"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ne p4, v3, :cond_2

    :goto_0
    if-eq p5, v3, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vi;->A00:[Ljava/lang/String;

    const-string v1, "0YX"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "Ky9"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ne p4, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
