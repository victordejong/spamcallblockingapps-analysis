.class public final Lcom/facebook/ads/redexgen/X/FK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/FP;->A0C(Lcom/facebook/ads/redexgen/X/FQ;Lcom/facebook/ads/redexgen/X/FR;Ljava/io/IOException;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A06:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/FP;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/FQ;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/FR;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/FS;

.field public final synthetic A04:Ljava/io/IOException;

.field public final synthetic A05:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/FK;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/FP;Lcom/facebook/ads/redexgen/X/FS;Lcom/facebook/ads/redexgen/X/FQ;Lcom/facebook/ads/redexgen/X/FR;Ljava/io/IOException;Z)V
    .locals 0

    .line 32464
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/FK;->A00:Lcom/facebook/ads/redexgen/X/FP;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/FK;->A03:Lcom/facebook/ads/redexgen/X/FS;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/FK;->A01:Lcom/facebook/ads/redexgen/X/FQ;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/FK;->A02:Lcom/facebook/ads/redexgen/X/FR;

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/FK;->A04:Ljava/io/IOException;

    iput-boolean p6, p0, Lcom/facebook/ads/redexgen/X/FK;->A05:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "YxyRNFwsTwKJMOGQBffOYy0Xnobx1tv3"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ObAWI0MkvXjYCFNM"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "mMqhMnWN0KAejJF"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "jX8vpl6cAkYTS6D5qQ8u0CoClHO3FySe"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "gMfpdNydaKnOoN6L9y0yCISRZHCo16PS"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "DteFDj4gwMQPPJJo"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "raEO4UzcYVq9s6eRntlIwdryaClqgXBx"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "UFqeMF5B1KzHIOi"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/FK;->A06:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KV;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v3, p0

    .line 32465
    .local p0, "this":Lcom/facebook/ads/redexgen/X/FK;
    :try_start_0
    iget-object v4, v3, Lcom/facebook/ads/redexgen/X/FK;->A03:Lcom/facebook/ads/redexgen/X/FS;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/FK;->A00:Lcom/facebook/ads/redexgen/X/FP;

    iget v5, v0, Lcom/facebook/ads/redexgen/X/FP;->A00:I

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/FK;->A00:Lcom/facebook/ads/redexgen/X/FP;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/FP;->A01:Lcom/facebook/ads/redexgen/X/FC;

    iget-object v7, v3, Lcom/facebook/ads/redexgen/X/FK;->A01:Lcom/facebook/ads/redexgen/X/FQ;

    iget-object v8, v3, Lcom/facebook/ads/redexgen/X/FK;->A02:Lcom/facebook/ads/redexgen/X/FR;

    iget-object v9, v3, Lcom/facebook/ads/redexgen/X/FK;->A04:Ljava/io/IOException;

    iget-boolean v10, v3, Lcom/facebook/ads/redexgen/X/FK;->A05:Z

    invoke-interface/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/FS;->AAe(ILcom/facebook/ads/redexgen/X/FC;Lcom/facebook/ads/redexgen/X/FQ;Lcom/facebook/ads/redexgen/X/FR;Ljava/io/IOException;Z)V

    .line 32466
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/FK;
    :catchall_0
    move-exception v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/FK;->A06:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x5a

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/FK;->A06:[Ljava/lang/String;

    const-string v1, "ynxtSo7eir52xg0ncK8APK2aSqIe19qG"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "8CERVgdbczuiVzo2054QXWJCM7hT1wvU"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-static {v4, v3}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
