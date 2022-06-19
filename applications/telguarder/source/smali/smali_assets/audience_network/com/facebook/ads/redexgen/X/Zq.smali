.class public final Lcom/facebook/ads/redexgen/X/Zq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Zh;->A0O()Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Zh;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Zq;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Zh;)V
    .locals 0

    .line 66499
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Zq;->A00:Lcom/facebook/ads/redexgen/X/Zh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "SjrTSabOaaKmXW7vGHaf"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "rzoEf1wFKHxugstismf05oMtuRNpdMoo"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "wTGbOtzE0PN5Lj0h2KpZOjhRCV1N3Xhy"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "1nFQWt10QpyYvwLimJnVgFpnKyaNx0Rb"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "8gzhM3R6S0Zn1QzuEzLG5G"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "sX6p"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "QG0b9bTQkPu7D6xdEpsH11O41G1gbMPd"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "JbGFNGFqa47WSBsdeC1bfbqDHyn4w3kw"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Zq;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A5D()Lcom/facebook/ads/redexgen/X/6t;
    .locals 5

    .line 66500
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-ge v1, v0, :cond_0

    .line 66501
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zq;->A00:Lcom/facebook/ads/redexgen/X/Zh;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A05:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0

    .line 66502
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Zq;->A00:Lcom/facebook/ads/redexgen/X/Zh;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Zq;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Zq;->A01:[Ljava/lang/String;

    const-string v1, "1WmA8n6tGWLwC7oH8b7sDgz2n"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Zh;->A02(Lcom/facebook/ads/redexgen/X/Zh;)Landroid/app/ActivityManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 66503
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 66504
    .local p0, "mi":Landroid/app/ActivityManager$MemoryInfo;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A00:Lcom/facebook/ads/redexgen/X/Zh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zh;->A02(Lcom/facebook/ads/redexgen/X/Zh;)Landroid/app/ActivityManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 66505
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Zq;->A00:Lcom/facebook/ads/redexgen/X/Zh;

    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const-wide/32 v0, 0x100000

    div-long/2addr v2, v0

    invoke-virtual {v4, v2, v3}, Lcom/facebook/ads/redexgen/X/6V;->A07(J)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0

    .line 66506
    .end local p0    # "mi":Landroid/app/ActivityManager$MemoryInfo;
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zq;->A00:Lcom/facebook/ads/redexgen/X/Zh;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A07:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
