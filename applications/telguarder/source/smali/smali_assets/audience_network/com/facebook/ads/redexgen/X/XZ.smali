.class public final Lcom/facebook/ads/redexgen/X/XZ;
.super Lcom/facebook/ads/redexgen/X/6V;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Xa;,
        Lcom/facebook/ads/redexgen/X/6a;
    }
.end annotation


# instance fields
.field public final A00:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)V
    .locals 0

    .line 65169
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/6V;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)V

    .line 65170
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/XZ;->A00:Landroid/content/Context;

    .line 65171
    return-void
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/XZ;)Landroid/content/Context;
    .locals 0

    .line 65172
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/XZ;->A00:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/XZ;Ljava/util/HashMap;)Lcom/facebook/ads/redexgen/X/6t;
    .locals 0

    .line 65173
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/XZ;->A03(Ljava/util/HashMap;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object p0

    return-object p0
.end method

.method private A03(Ljava/util/HashMap;)Lcom/facebook/ads/redexgen/X/6t;
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
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Xa;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/6t;"
        }
    .end annotation

    .line 65174
    .local v4, "streamFileInfoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/facebook/ads/internal/botdetection/signals/library/nativesignals/SettingsManagerSignalCollector$SystemSetting;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/Wv;

    .line 65175
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 65176
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6V;->A03()Lcom/facebook/ads/redexgen/X/6r;

    move-result-object v3

    sget-object v5, Lcom/facebook/ads/redexgen/X/6s;->A0D:Lcom/facebook/ads/redexgen/X/6s;

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Wv;-><init>(JLcom/facebook/ads/redexgen/X/6r;Ljava/util/HashMap;Lcom/facebook/ads/redexgen/X/6s;)V

    .line 65177
    return-object v0
.end method


# virtual methods
.method public final A0H(Ljava/util/List;Lcom/facebook/ads/redexgen/X/6a;)Lcom/facebook/ads/redexgen/X/6e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/6d;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/6a;",
            ")",
            "Lcom/facebook/ads/redexgen/X/6e;"
        }
    .end annotation

    .line 65178
    .local p2, "bundledSignalMetadataList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/botdetection/signals/model/BundledSignalMetadata;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/Xb;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Xb;-><init>(Lcom/facebook/ads/redexgen/X/XZ;Ljava/util/List;Lcom/facebook/ads/redexgen/X/6a;)V

    .line 65179
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method
