.class public final Lcom/facebook/ads/redexgen/X/RP;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/4y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/8s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/8s;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/RP;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8s;)V
    .locals 0

    .line 50005
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RP;->A00:Lcom/facebook/ads/redexgen/X/8s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "EbGpmssVJ7ns5QL3Rl3UMQ1bkFVQ99jJ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "NZiaRg2dkcqShBYEYgfcfS6cvloj595L"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "orBeTHrcfmlzSHmkgrBC5PhD7dWIdW6R"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "A0QUoJlw"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "r5xapKwo2g0pU1r2itXQ9K5SrPer64wf"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "XFka6Ze1I6IepT0r6LvaraMv7MRENHMC"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Xj0im9L41l0kDU7dj2M6tiOB0nkMWcds"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "VCdvqSH1BrwZZsOdC7BZghv3f2EYDVkv"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/RP;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A7w()Z
    .locals 4

    .line 50006
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RP;->A00:Lcom/facebook/ads/redexgen/X/8s;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8s;->A03(Lcom/facebook/ads/redexgen/X/8s;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RP;->A00:Lcom/facebook/ads/redexgen/X/8s;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8s;->A0U()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/RP;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/RP;->A01:[Ljava/lang/String;

    const-string v1, "O5SuZCLVdBOcw9avK46kWbT1hYIehzyg"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
