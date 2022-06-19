.class public final Lcom/facebook/ads/redexgen/X/Zc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/ZM;->A0X()Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/ZM;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Zc;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ZM;)V
    .locals 0

    .line 66398
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Zc;->A00:Lcom/facebook/ads/redexgen/X/ZM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "AMkps6QBw9jGXO0czZtndEKq"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "vzU3h8bu1UqoFyEcS60j2S1lgj9Ff4VE"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Raf90TkX2N3upWVjE3mCGafmFKjS2mnR"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "EgmP6wd3uznGwaC6QctFg6UUAJwwEFYn"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "4uApoVSDdBEiVmfy"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Trev4X1myiG1eFCquIXTsZRXvQKNtkR7"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "KHy88xM1OAuPlDxNhK8PHAEOmYnInEDC"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "HWD7Vh9XYkIBKQOtuAzws"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Zc;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A5D()Lcom/facebook/ads/redexgen/X/6t;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 66399
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zc;->A00:Lcom/facebook/ads/redexgen/X/ZM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZM;->A06(Lcom/facebook/ads/redexgen/X/ZM;)Lcom/facebook/ads/redexgen/X/6y;

    move-result-object v1

    const/16 v0, 0x2714

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6y;->A06(I)Ljava/lang/String;

    move-result-object v4

    .line 66400
    .local p0, "appSha1Hash":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 66401
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Zc;->A00:Lcom/facebook/ads/redexgen/X/ZM;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Zc;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4e

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Zc;->A01:[Ljava/lang/String;

    const-string v1, "wPvDw45WE28mwfraGEi6U"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "ThJSemAbUrlpVVVMDXPjZMEL"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/6V;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    .line 66402
    :goto_0
    return-object v0

    .line 66403
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zc;->A00:Lcom/facebook/ads/redexgen/X/ZM;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A07:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
