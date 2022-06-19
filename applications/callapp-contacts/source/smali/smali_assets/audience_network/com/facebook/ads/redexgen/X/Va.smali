.class public final Lcom/facebook/ads/redexgen/X/Va;
.super Lcom/facebook/ads/redexgen/X/6V;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/VZ;
    }
.end annotation


# instance fields
.field public final A00:Ljava/lang/Class;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)V
    .locals 1

    .line 56451
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/6V;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)V

    .line 56452
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/5v;->A0d()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Va;->A00:Ljava/lang/Class;

    .line 56453
    return-void
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/VZ;)Lcom/facebook/ads/redexgen/X/6t;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Nullable Dereference"
        }
    .end annotation

    .line 56454
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6V;->A03()Lcom/facebook/ads/redexgen/X/6r;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/X3;

    invoke-direct {v0, v2, v3, v1, p1}, Lcom/facebook/ads/redexgen/X/X3;-><init>(JLcom/facebook/ads/redexgen/X/6r;Lcom/facebook/ads/redexgen/X/6k;)V

    .line 56455
    return-object v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Va;Lcom/facebook/ads/redexgen/X/VZ;)Lcom/facebook/ads/redexgen/X/6t;
    .locals 0

    .line 56456
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Va;->A01(Lcom/facebook/ads/redexgen/X/VZ;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Va;)Ljava/lang/Class;
    .locals 0

    .line 56457
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Va;->A00:Ljava/lang/Class;

    return-object p0
.end method


# virtual methods
.method public final A0H()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56458
    new-instance v0, Lcom/facebook/ads/redexgen/X/VR;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/VR;-><init>(Lcom/facebook/ads/redexgen/X/Va;)V

    .line 56459
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0I()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56460
    new-instance v0, Lcom/facebook/ads/redexgen/X/VS;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/VS;-><init>(Lcom/facebook/ads/redexgen/X/Va;)V

    .line 56461
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0J()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56462
    new-instance v0, Lcom/facebook/ads/redexgen/X/VT;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/VT;-><init>(Lcom/facebook/ads/redexgen/X/Va;)V

    .line 56463
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0K()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56464
    new-instance v0, Lcom/facebook/ads/redexgen/X/VU;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/VU;-><init>(Lcom/facebook/ads/redexgen/X/Va;)V

    .line 56465
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0L()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56466
    new-instance v0, Lcom/facebook/ads/redexgen/X/VV;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/VV;-><init>(Lcom/facebook/ads/redexgen/X/Va;)V

    .line 56467
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0M()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56468
    new-instance v0, Lcom/facebook/ads/redexgen/X/VW;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/VW;-><init>(Lcom/facebook/ads/redexgen/X/Va;)V

    .line 56469
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0N()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56470
    new-instance v0, Lcom/facebook/ads/redexgen/X/VX;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/VX;-><init>(Lcom/facebook/ads/redexgen/X/Va;)V

    .line 56471
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0O()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56472
    new-instance v0, Lcom/facebook/ads/redexgen/X/VY;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/VY;-><init>(Lcom/facebook/ads/redexgen/X/Va;)V

    .line 56473
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0P()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56474
    new-instance v0, Lcom/facebook/ads/redexgen/X/VA;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/VA;-><init>(Lcom/facebook/ads/redexgen/X/Va;)V

    .line 56475
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0Q()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56476
    new-instance v0, Lcom/facebook/ads/redexgen/X/VB;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/VB;-><init>(Lcom/facebook/ads/redexgen/X/Va;)V

    .line 56477
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0R()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56478
    new-instance v0, Lcom/facebook/ads/redexgen/X/VC;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/VC;-><init>(Lcom/facebook/ads/redexgen/X/Va;)V

    .line 56479
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0S()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56480
    new-instance v0, Lcom/facebook/ads/redexgen/X/VD;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/VD;-><init>(Lcom/facebook/ads/redexgen/X/Va;)V

    .line 56481
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0T()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56482
    new-instance v0, Lcom/facebook/ads/redexgen/X/VE;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/VE;-><init>(Lcom/facebook/ads/redexgen/X/Va;)V

    .line 56483
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0U()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 56484
    new-instance v0, Lcom/facebook/ads/redexgen/X/VF;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/VF;-><init>(Lcom/facebook/ads/redexgen/X/Va;)V

    .line 56485
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0V()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56486
    new-instance v0, Lcom/facebook/ads/redexgen/X/VG;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/VG;-><init>(Lcom/facebook/ads/redexgen/X/Va;)V

    .line 56487
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0W()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56488
    new-instance v0, Lcom/facebook/ads/redexgen/X/VH;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/VH;-><init>(Lcom/facebook/ads/redexgen/X/Va;)V

    .line 56489
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0X()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56490
    new-instance v0, Lcom/facebook/ads/redexgen/X/VI;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/VI;-><init>(Lcom/facebook/ads/redexgen/X/Va;)V

    .line 56491
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0Y()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56492
    new-instance v0, Lcom/facebook/ads/redexgen/X/VJ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/VJ;-><init>(Lcom/facebook/ads/redexgen/X/Va;)V

    .line 56493
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0Z()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56494
    new-instance v0, Lcom/facebook/ads/redexgen/X/VL;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/VL;-><init>(Lcom/facebook/ads/redexgen/X/Va;)V

    .line 56495
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0a()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56496
    new-instance v0, Lcom/facebook/ads/redexgen/X/VQ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/VQ;-><init>(Lcom/facebook/ads/redexgen/X/Va;)V

    .line 56497
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0b()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56498
    new-instance v0, Lcom/facebook/ads/redexgen/X/VM;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/VM;-><init>(Lcom/facebook/ads/redexgen/X/Va;)V

    .line 56499
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0c()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56500
    new-instance v0, Lcom/facebook/ads/redexgen/X/VN;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/VN;-><init>(Lcom/facebook/ads/redexgen/X/Va;)V

    .line 56501
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0d()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56502
    new-instance v0, Lcom/facebook/ads/redexgen/X/VO;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/VO;-><init>(Lcom/facebook/ads/redexgen/X/Va;)V

    .line 56503
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0e()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56504
    new-instance v0, Lcom/facebook/ads/redexgen/X/VP;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/VP;-><init>(Lcom/facebook/ads/redexgen/X/Va;)V

    .line 56505
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method

.method public final A0f()Lcom/facebook/ads/redexgen/X/6e;
    .locals 1

    .line 56506
    new-instance v0, Lcom/facebook/ads/redexgen/X/VK;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/VK;-><init>(Lcom/facebook/ads/redexgen/X/Va;)V

    .line 56507
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6e;
    return-object v0
.end method
