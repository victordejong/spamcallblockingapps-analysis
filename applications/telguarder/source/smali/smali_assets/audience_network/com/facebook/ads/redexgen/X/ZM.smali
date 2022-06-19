.class public final Lcom/facebook/ads/redexgen/X/ZM;
.super Lcom/facebook/ads/redexgen/X/6V;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/ZN;
    }
.end annotation


# instance fields
.field public final A00:Landroid/content/Context;

.field public final A01:Landroid/content/pm/ApplicationInfo;

.field public final A02:Lcom/facebook/ads/redexgen/X/5v;

.field public final A03:Lcom/facebook/ads/redexgen/X/6y;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)V
    .locals 3

    .line 66235
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/6V;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)V

    .line 66236
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZM;->A01:Landroid/content/pm/ApplicationInfo;

    .line 66237
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ZM;->A00:Landroid/content/Context;

    .line 66238
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/ZM;->A02:Lcom/facebook/ads/redexgen/X/5v;

    .line 66239
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/ZM;->A00:Landroid/content/Context;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZM;->A02:Lcom/facebook/ads/redexgen/X/5v;

    .line 66240
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5v;->A0b()Lcom/facebook/ads/redexgen/X/6i;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZM;->A02:Lcom/facebook/ads/redexgen/X/5v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5v;->A0h()Ljava/lang/String;

    move-result-object v0

    .line 66241
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6y;->A00(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/6i;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/6y;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZM;->A03:Lcom/facebook/ads/redexgen/X/6y;

    .line 66242
    return-void
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/ZM;)Landroid/content/Context;
    .locals 0

    .line 66243
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ZM;->A00:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/ZM;)Landroid/content/pm/ApplicationInfo;
    .locals 0

    .line 66244
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ZM;->A01:Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/ZM;)Lcom/facebook/ads/redexgen/X/5v;
    .locals 0

    .line 66245
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ZM;->A02:Lcom/facebook/ads/redexgen/X/5v;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/ZM;Ljava/util/HashMap;)Lcom/facebook/ads/redexgen/X/6t;
    .locals 0

    .line 66246
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/ZM;->A05(Ljava/util/HashMap;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object p0

    return-object p0
.end method

.method private A05(Ljava/util/HashMap;)Lcom/facebook/ads/redexgen/X/6t;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Nullable Dereference"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/ads/redexgen/X/ZN;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/6t;"
        }
    .end annotation

    .line 66247
    .local v4, "appCertificateHashHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/facebook/ads/internal/botdetection/signals/library/nativesignals/AppInfoSignalCollector$AppCertificateHashes;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/Wv;

    .line 66248
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 66249
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6V;->A03()Lcom/facebook/ads/redexgen/X/6r;

    move-result-object v3

    sget-object v5, Lcom/facebook/ads/redexgen/X/6s;->A07:Lcom/facebook/ads/redexgen/X/6s;

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Wv;-><init>(JLcom/facebook/ads/redexgen/X/6r;Ljava/util/HashMap;Lcom/facebook/ads/redexgen/X/6s;)V

    .line 66250
    return-object v0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/ZM;)Lcom/facebook/ads/redexgen/X/6y;
    .locals 0

    .line 66251
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ZM;->A03:Lcom/facebook/ads/redexgen/X/6y;

    return-object p0
.end method


# virtual methods
.method public final A0H()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 66252
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZX;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ZX;-><init>(Lcom/facebook/ads/redexgen/X/ZM;)V

    .line 66253
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0I()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 66254
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZZ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ZZ;-><init>(Lcom/facebook/ads/redexgen/X/ZM;)V

    .line 66255
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0J()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 66256
    new-instance v0, Lcom/facebook/ads/redexgen/X/Za;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Za;-><init>(Lcom/facebook/ads/redexgen/X/ZM;)V

    return-object v0
.end method

.method public final A0K()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 66257
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ze;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ze;-><init>(Lcom/facebook/ads/redexgen/X/ZM;)V

    .line 66258
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0L()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 66259
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZS;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ZS;-><init>(Lcom/facebook/ads/redexgen/X/ZM;)V

    .line 66260
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0M()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 66261
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZP;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ZP;-><init>(Lcom/facebook/ads/redexgen/X/ZM;)V

    .line 66262
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0N()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 66263
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZW;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ZW;-><init>(Lcom/facebook/ads/redexgen/X/ZM;)V

    .line 66264
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0O()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 66265
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZV;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ZV;-><init>(Lcom/facebook/ads/redexgen/X/ZM;)V

    .line 66266
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0P()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 66267
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZR;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ZR;-><init>(Lcom/facebook/ads/redexgen/X/ZM;)V

    .line 66268
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0Q()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 66269
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZO;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ZO;-><init>(Lcom/facebook/ads/redexgen/X/ZM;)V

    .line 66270
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0R()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 66271
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZQ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ZQ;-><init>(Lcom/facebook/ads/redexgen/X/ZM;)V

    .line 66272
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0S()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 66273
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZT;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ZT;-><init>(Lcom/facebook/ads/redexgen/X/ZM;)V

    .line 66274
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0T()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 66275
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZU;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ZU;-><init>(Lcom/facebook/ads/redexgen/X/ZM;)V

    .line 66276
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0U()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 66277
    new-instance v0, Lcom/facebook/ads/redexgen/X/Zg;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Zg;-><init>(Lcom/facebook/ads/redexgen/X/ZM;)V

    .line 66278
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0V()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 66279
    new-instance v0, Lcom/facebook/ads/redexgen/X/Zf;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Zf;-><init>(Lcom/facebook/ads/redexgen/X/ZM;)V

    .line 66280
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0W()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 66281
    new-instance v0, Lcom/facebook/ads/redexgen/X/Zd;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Zd;-><init>(Lcom/facebook/ads/redexgen/X/ZM;)V

    .line 66282
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0X()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 66283
    new-instance v0, Lcom/facebook/ads/redexgen/X/Zc;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Zc;-><init>(Lcom/facebook/ads/redexgen/X/ZM;)V

    .line 66284
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0Y()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 66285
    new-instance v0, Lcom/facebook/ads/redexgen/X/Zb;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Zb;-><init>(Lcom/facebook/ads/redexgen/X/ZM;)V

    .line 66286
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0Z()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 66287
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZY;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ZY;-><init>(Lcom/facebook/ads/redexgen/X/ZM;)V

    .line 66288
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method
