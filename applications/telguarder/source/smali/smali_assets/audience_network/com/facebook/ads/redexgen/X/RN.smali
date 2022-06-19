.class public final Lcom/facebook/ads/redexgen/X/RN;
.super Lcom/facebook/ads/redexgen/X/Kd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/8s;->A0R()V
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

    invoke-static {}, Lcom/facebook/ads/redexgen/X/RN;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8s;)V
    .locals 0

    .line 49995
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RN;->A00:Lcom/facebook/ads/redexgen/X/8s;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "M2F6Kmdpn8vR7EEN0gGYLZs2yNDQD6jF"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "WcwB5s3ZH8XUWWhYRsGPhRGAgRS7F"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "1wzHcE8JrY1qQrLIUCacg6"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "aO9bUKC9mwcMg2oxYIu04NXSdGwnlABS"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "LSvrrVaEaUYZBIls3QQGViVr8YYMo4D4"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "5u9inp355EzrKn8AcN"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "FOTtox4pqjzhBM"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "oEWmB2dr0o0vjQMmlNYMXQ5ONfeuqOC2"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/RN;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 49996
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RN;->A00:Lcom/facebook/ads/redexgen/X/8s;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8s;->A02(Lcom/facebook/ads/redexgen/X/8s;)Lcom/facebook/ads/redexgen/X/Ns;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49997
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RN;->A00:Lcom/facebook/ads/redexgen/X/8s;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8s;->A02(Lcom/facebook/ads/redexgen/X/8s;)Lcom/facebook/ads/redexgen/X/Ns;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/RN;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/RN;->A01:[Ljava/lang/String;

    const-string v1, "bfueFeeK4pCyDd"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "8ekS6HwfggRtR8RWj86xgWcHB7DcW"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Ns;->A0X()V

    .line 49998
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RN;->A00:Lcom/facebook/ads/redexgen/X/8s;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/RQ;->A07:Lcom/facebook/ads/redexgen/X/M6;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RN;->A00:Lcom/facebook/ads/redexgen/X/8s;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8s;->A00(Lcom/facebook/ads/redexgen/X/8s;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M6;->setToolbarActionMode(I)V

    .line 49999
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RN;->A00:Lcom/facebook/ads/redexgen/X/8s;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8s;->A03(Lcom/facebook/ads/redexgen/X/8s;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 50000
    return-void
.end method
