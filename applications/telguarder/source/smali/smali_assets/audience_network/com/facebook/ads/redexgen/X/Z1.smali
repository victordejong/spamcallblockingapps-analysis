.class public final Lcom/facebook/ads/redexgen/X/Z1;
.super Lcom/facebook/ads/redexgen/X/6V;
.source ""


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final A00:Landroid/os/BatteryManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Z1;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Z1;->A02()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)V
    .locals 3

    .line 66098
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/6V;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)V

    .line 66099
    const/4 v2, 0x1

    const/16 v1, 0xe

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z1;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Z1;->A00:Landroid/os/BatteryManager;

    .line 66100
    return-void
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Z1;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1b

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

    const/16 v0, 0x1c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Z1;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x4ct
        -0x63t
        -0x64t
        -0x51t
        -0x51t
        -0x60t
        -0x53t
        -0x4ct
        -0x58t
        -0x64t
        -0x57t
        -0x64t
        -0x5et
        -0x60t
        -0x53t
        -0x31t
        -0x30t
        -0x37t
        -0x26t
        -0x37t
        -0x30t
        -0x5bt
        -0x65t
        -0x29t
        -0x39t
        -0x3bt
        -0x30t
        -0x37t
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "vtVpimFqi68XcRGBtLoxbQZUkJ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "0pcQ2HoYdtTqLxfrIvLCWbjF"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "WjMMLxWQveHrt69neA58UzrK99il6df5"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "2hiCQAM575NpYKZ7Hr4yjvCOHNPUIuDN"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "szNSF4rPOtjbWt"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "rbprwakZs5FUkgylXpTrZuB1EDy7Q7XE"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "SaLal5O7eK2wjM6r9lJK23Vi2VDfGkYT"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "jPLanyJyMbLvUoWkJZQviZi867B6VbQT"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Z1;->A02:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A0H()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 66101
    new-instance v0, Lcom/facebook/ads/redexgen/X/Z9;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Z9;-><init>(Lcom/facebook/ads/redexgen/X/Z1;)V

    .line 66102
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0I()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 66103
    new-instance v0, Lcom/facebook/ads/redexgen/X/Z3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Z3;-><init>(Lcom/facebook/ads/redexgen/X/Z1;)V

    .line 66104
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0J()Lcom/facebook/ads/redexgen/X/6e;
    .locals 5

    .line 66105
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 66106
    .local p0, "batteryCurrentMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0x15

    const/4 v1, 0x1

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z1;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66107
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 66108
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z1;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66109
    new-instance v0, Lcom/facebook/ads/redexgen/X/Z4;

    invoke-direct {v0, p0, v4}, Lcom/facebook/ads/redexgen/X/Z4;-><init>(Lcom/facebook/ads/redexgen/X/Z1;Ljava/util/HashMap;)V

    .line 66110
    .local v4, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0K()Lcom/facebook/ads/redexgen/X/6e;
    .locals 5

    .line 66111
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 66112
    .local p0, "batteryLevelAndScaleMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v2, 0xf

    const/4 v1, 0x1

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z1;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x10

    const/4 v1, 0x5

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z1;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66113
    const/16 v2, 0x16

    const/4 v1, 0x1

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z1;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x17

    const/4 v1, 0x5

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Z1;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66114
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZE;

    invoke-direct {v0, p0, v4}, Lcom/facebook/ads/redexgen/X/ZE;-><init>(Lcom/facebook/ads/redexgen/X/Z1;Ljava/util/HashMap;)V

    .line 66115
    .local v4, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0L()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 66116
    new-instance v0, Lcom/facebook/ads/redexgen/X/Z6;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Z6;-><init>(Lcom/facebook/ads/redexgen/X/Z1;)V

    .line 66117
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0M()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 66118
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZB;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ZB;-><init>(Lcom/facebook/ads/redexgen/X/Z1;)V

    .line 66119
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0N()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 66120
    new-instance v0, Lcom/facebook/ads/redexgen/X/Z8;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Z8;-><init>(Lcom/facebook/ads/redexgen/X/Z1;)V

    .line 66121
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0O()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 66122
    new-instance v0, Lcom/facebook/ads/redexgen/X/Z2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Z2;-><init>(Lcom/facebook/ads/redexgen/X/Z1;)V

    .line 66123
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0P()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 66124
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZA;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ZA;-><init>(Lcom/facebook/ads/redexgen/X/Z1;)V

    .line 66125
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0Q()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 66126
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZD;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ZD;-><init>(Lcom/facebook/ads/redexgen/X/Z1;)V

    .line 66127
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0R()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 66128
    new-instance v0, Lcom/facebook/ads/redexgen/X/Z7;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Z7;-><init>(Lcom/facebook/ads/redexgen/X/Z1;)V

    .line 66129
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0S()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 66130
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZC;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ZC;-><init>(Lcom/facebook/ads/redexgen/X/Z1;)V

    .line 66131
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0T()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 66132
    new-instance v0, Lcom/facebook/ads/redexgen/X/Z5;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Z5;-><init>(Lcom/facebook/ads/redexgen/X/Z1;)V

    .line 66133
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0U(I)Lcom/facebook/ads/redexgen/X/6t;
    .locals 4

    .line 66134
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ge v1, v0, :cond_0

    .line 66135
    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A05:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0

    .line 66136
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z1;->A00:Landroid/os/BatteryManager;

    if-eqz v0, :cond_1

    .line 66137
    invoke-virtual {v0, p1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Z1;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Z1;->A02:[Ljava/lang/String;

    const-string v1, "HdCo4pWtq5ME1x5k3fTND89Ispmd3S7G"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "HlIQjC5IN5g7Ttz7UdVdg646IeLKypUn"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/6V;->A05(I)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    .line 66138
    :goto_0
    return-object v0

    .line 66139
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A07:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0V(Ljava/util/HashMap;)Lcom/facebook/ads/redexgen/X/6t;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Nullable Dereference"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/6t;"
        }
    .end annotation

    .line 66140
    .local v0, "inputMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ge v1, v0, :cond_0

    .line 66141
    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A05:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0

    .line 66142
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z1;->A00:Landroid/os/BatteryManager;

    if-eqz v0, :cond_2

    .line 66143
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 66144
    .local p0, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 66145
    .local p1, "resultMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 66146
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Z1;->A00:Landroid/os/BatteryManager;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66147
    .end local v0    # "key":Ljava/lang/String;
    goto :goto_0

    .line 66148
    :cond_1
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/6V;->A0D(Ljava/util/HashMap;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0

    .line 66149
    .end local p0    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local p1    # "resultMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A07:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0
.end method
