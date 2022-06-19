.class public final Lcom/facebook/ads/redexgen/X/EZ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Eb;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Eb;

.field public final synthetic A01:Ljava/lang/Throwable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/EZ;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Eb;Ljava/lang/Throwable;)V
    .locals 0

    .line 29499
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/EZ;->A00:Lcom/facebook/ads/redexgen/X/Eb;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/EZ;->A01:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "0Yuu3qQV9dSoItky8QjKEHTtYTu0b"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "llDKR8usdm1rpXQ4qM41veYL3xh4HiHp"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "J2ar"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "9xTGu7OMrK3tV6amYUkxaIuDthAtHlRL"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "JnEl"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "RrxhglI94CaTTrVcacAIsec8UDSe1hUC"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "hPVSaXhuFdmR6NvhlHVyrezCyKKrcI1H"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "VuCVXUrKHbG33"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/EZ;->A02:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KV;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v4, p0

    .line 29500
    .local p0, "this":Lcom/facebook/ads/redexgen/X/EZ;
    :try_start_0
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/EZ;->A00:Lcom/facebook/ads/redexgen/X/Eb;

    const/4 v2, 0x1

    .line 29501
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/EZ;->A01:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/EZ;->A01:Ljava/lang/Throwable;

    .line 29502
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Eb;->A0K(Lcom/facebook/ads/redexgen/X/Eb;IILjava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/EZ;->A00:Lcom/facebook/ads/redexgen/X/Eb;

    const/4 v1, 0x6

    const/4 v0, 0x3

    .line 29503
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Eb;->A0J(Lcom/facebook/ads/redexgen/X/Eb;II)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/EZ;->A00:Lcom/facebook/ads/redexgen/X/Eb;

    const/4 v1, 0x7

    const/4 v0, 0x0

    .line 29504
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Eb;->A0J(Lcom/facebook/ads/redexgen/X/Eb;II)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 29505
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 29506
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/EZ;
    :cond_3
    :goto_1
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29507
    :catchall_0
    move-exception v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/EZ;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4d

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/EZ;->A02:[Ljava/lang/String;

    const-string v1, "gdMA4afM7hPjM2Q0juEgz1AjOZ47WS8j"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-static {v3, v4}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
