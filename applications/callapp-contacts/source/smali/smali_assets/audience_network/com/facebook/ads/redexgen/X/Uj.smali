.class public final Lcom/facebook/ads/redexgen/X/Uj;
.super Lcom/facebook/ads/redexgen/X/6V;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Ui;
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

    .line 56071
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/6V;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)V

    .line 56072
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Uj;->A01:Landroid/content/pm/ApplicationInfo;

    .line 56073
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Uj;->A00:Landroid/content/Context;

    .line 56074
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Uj;->A02:Lcom/facebook/ads/redexgen/X/5v;

    .line 56075
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Uj;->A00:Landroid/content/Context;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uj;->A02:Lcom/facebook/ads/redexgen/X/5v;

    .line 56076
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5v;->A0a()Lcom/facebook/ads/redexgen/X/6i;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uj;->A02:Lcom/facebook/ads/redexgen/X/5v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5v;->A0g()Ljava/lang/String;

    move-result-object v0

    .line 56077
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6y;->A00(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/6i;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/6y;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Uj;->A03:Lcom/facebook/ads/redexgen/X/6y;

    .line 56078
    return-void
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Uj;)Landroid/content/Context;
    .locals 0

    .line 56079
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Uj;->A00:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Uj;)Landroid/content/pm/ApplicationInfo;
    .locals 0

    .line 56080
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Uj;->A01:Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Uj;)Lcom/facebook/ads/redexgen/X/5v;
    .locals 0

    .line 56081
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Uj;->A02:Lcom/facebook/ads/redexgen/X/5v;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Uj;Ljava/util/HashMap;)Lcom/facebook/ads/redexgen/X/6t;
    .locals 0

    .line 56082
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Uj;->A05(Ljava/util/HashMap;)Lcom/facebook/ads/redexgen/X/6t;

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
            "Lcom/facebook/ads/redexgen/X/Ui;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/6t;"
        }
    .end annotation

    .line 56083
    .local v4, "appCertificateHashHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/facebook/ads/internal/botdetection/signals/library/nativesignals/AppInfoSignalCollector$AppCertificateHashes;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/XA;

    .line 56084
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 56085
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6V;->A03()Lcom/facebook/ads/redexgen/X/6r;

    move-result-object v3

    sget-object v5, Lcom/facebook/ads/redexgen/X/6s;->A06:Lcom/facebook/ads/redexgen/X/6s;

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/XA;-><init>(JLcom/facebook/ads/redexgen/X/6r;Ljava/util/HashMap;Lcom/facebook/ads/redexgen/X/6s;)V

    .line 56086
    return-object v0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/Uj;)Lcom/facebook/ads/redexgen/X/6y;
    .locals 0

    .line 56087
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Uj;->A03:Lcom/facebook/ads/redexgen/X/6y;

    return-object p0
.end method


# virtual methods
.method public final A0H()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56088
    new-instance v0, Lcom/facebook/ads/redexgen/X/UY;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/UY;-><init>(Lcom/facebook/ads/redexgen/X/Uj;)V

    .line 56089
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0I()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56090
    new-instance v0, Lcom/facebook/ads/redexgen/X/UW;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/UW;-><init>(Lcom/facebook/ads/redexgen/X/Uj;)V

    .line 56091
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0J()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56092
    new-instance v0, Lcom/facebook/ads/redexgen/X/UV;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/UV;-><init>(Lcom/facebook/ads/redexgen/X/Uj;)V

    return-object v0
.end method

.method public final A0K()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56093
    new-instance v0, Lcom/facebook/ads/redexgen/X/UR;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/UR;-><init>(Lcom/facebook/ads/redexgen/X/Uj;)V

    .line 56094
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0L()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56095
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ud;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ud;-><init>(Lcom/facebook/ads/redexgen/X/Uj;)V

    .line 56096
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0M()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56097
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ug;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ug;-><init>(Lcom/facebook/ads/redexgen/X/Uj;)V

    .line 56098
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0N()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56099
    new-instance v0, Lcom/facebook/ads/redexgen/X/UZ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/UZ;-><init>(Lcom/facebook/ads/redexgen/X/Uj;)V

    .line 56100
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0O()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56101
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ua;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ua;-><init>(Lcom/facebook/ads/redexgen/X/Uj;)V

    .line 56102
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0P()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56103
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ue;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ue;-><init>(Lcom/facebook/ads/redexgen/X/Uj;)V

    .line 56104
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0Q()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56105
    new-instance v0, Lcom/facebook/ads/redexgen/X/Uh;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Uh;-><init>(Lcom/facebook/ads/redexgen/X/Uj;)V

    .line 56106
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0R()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56107
    new-instance v0, Lcom/facebook/ads/redexgen/X/Uf;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Uf;-><init>(Lcom/facebook/ads/redexgen/X/Uj;)V

    .line 56108
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0S()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56109
    new-instance v0, Lcom/facebook/ads/redexgen/X/Uc;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Uc;-><init>(Lcom/facebook/ads/redexgen/X/Uj;)V

    .line 56110
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0T()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56111
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ub;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ub;-><init>(Lcom/facebook/ads/redexgen/X/Uj;)V

    .line 56112
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0U()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56113
    new-instance v0, Lcom/facebook/ads/redexgen/X/UP;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/UP;-><init>(Lcom/facebook/ads/redexgen/X/Uj;)V

    .line 56114
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0V()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56115
    new-instance v0, Lcom/facebook/ads/redexgen/X/UQ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/UQ;-><init>(Lcom/facebook/ads/redexgen/X/Uj;)V

    .line 56116
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0W()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56117
    new-instance v0, Lcom/facebook/ads/redexgen/X/US;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/US;-><init>(Lcom/facebook/ads/redexgen/X/Uj;)V

    .line 56118
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0X()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56119
    new-instance v0, Lcom/facebook/ads/redexgen/X/UT;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/UT;-><init>(Lcom/facebook/ads/redexgen/X/Uj;)V

    .line 56120
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0Y()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56121
    new-instance v0, Lcom/facebook/ads/redexgen/X/UU;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/UU;-><init>(Lcom/facebook/ads/redexgen/X/Uj;)V

    .line 56122
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0Z()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56123
    new-instance v0, Lcom/facebook/ads/redexgen/X/UX;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/UX;-><init>(Lcom/facebook/ads/redexgen/X/Uj;)V

    .line 56124
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method
