.class public final Lcom/facebook/ads/redexgen/X/Yz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Yw;->A0I()Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Yw;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Yz;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Yw;)V
    .locals 0

    .line 66088
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Yz;->A00:Lcom/facebook/ads/redexgen/X/Yw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "FpepYJhvwfL5BTI1KcJTduJoE5Ab2kGK"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "fqFwC4l0DBBgaIkbpME7YdrEUyLVbs6U"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "GDdCK7Zy35SzFQmX6nYOkPADYl"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "XMNRG1pZQThebG10UwZhtDT9QCM8ktOK"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "QMwLPkjOtyCjAcpaMBvzUtj7q32fbQdd"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "aXLIHK"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "mu0uIUmCkrsbM0jgMkrZ2QiLlrbOaZvS"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "pu9nhtJX4QDstx0UcbRBOpgkyun3ZIjV"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Yz;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A5D()Lcom/facebook/ads/redexgen/X/6t;
    .locals 5

    .line 66089
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yz;->A00:Lcom/facebook/ads/redexgen/X/Yw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Yw;->A01(Lcom/facebook/ads/redexgen/X/Yw;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66090
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yz;->A00:Lcom/facebook/ads/redexgen/X/Yw;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Yw;->A01(Lcom/facebook/ads/redexgen/X/Yw;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    .line 66091
    :goto_0
    return-object v0

    .line 66092
    :cond_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Yz;->A00:Lcom/facebook/ads/redexgen/X/Yw;

    sget-object v3, Lcom/facebook/ads/redexgen/X/6p;->A06:Lcom/facebook/ads/redexgen/X/6p;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Yz;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Yz;->A01:[Ljava/lang/String;

    const-string v1, "nHwIbF0nH00MQRzgMgzlbhDOvCCqjkcp"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    goto :goto_0
.end method
