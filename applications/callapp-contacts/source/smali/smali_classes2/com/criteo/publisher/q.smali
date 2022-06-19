.class public final Lcom/criteo/publisher/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/criteo/publisher/q$a;
    }
.end annotation


# static fields
.field protected static a:Lcom/criteo/publisher/q;


# instance fields
.field b:Landroid/app/Application;

.field c:Ljava/lang/String;

.field private final d:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/criteo/publisher/q;->d:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private synthetic F()Lcom/criteo/publisher/k/a;
    .locals 2

    .line 714
    new-instance v0, Lcom/criteo/publisher/k/a;

    invoke-direct {p0}, Lcom/criteo/publisher/q;->aI()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/criteo/publisher/k/a;-><init>(Landroid/content/SharedPreferences;)V

    return-object v0
.end method

.method private synthetic G()Lcom/criteo/publisher/logging/n;
    .locals 7

    .line 703
    new-instance v6, Lcom/criteo/publisher/logging/n;

    .line 704
    invoke-direct {p0}, Lcom/criteo/publisher/q;->aK()Lcom/criteo/publisher/logging/l;

    move-result-object v1

    .line 705
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->e()Lcom/criteo/publisher/j0/g;

    move-result-object v2

    .line 706
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->o()Lcom/criteo/publisher/m0/g;

    move-result-object v3

    .line 707
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->f()Lcom/criteo/publisher/m0/b;

    move-result-object v4

    .line 708
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->h()Ljava/util/concurrent/Executor;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/criteo/publisher/logging/n;-><init>(Lcom/criteo/publisher/f/p;Lcom/criteo/publisher/j0/g;Lcom/criteo/publisher/m0/g;Lcom/criteo/publisher/m0/b;Ljava/util/concurrent/Executor;)V

    return-object v6
.end method

.method private synthetic H()Lcom/criteo/publisher/logging/j;
    .locals 7

    .line 692
    new-instance v6, Lcom/criteo/publisher/logging/j;

    .line 1674
    new-instance v0, Lcom/criteo/publisher/-$$Lambda$q$JEIK42aJurin166DUFDy9ftWkwU;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/-$$Lambda$q$JEIK42aJurin166DUFDy9ftWkwU;-><init>(Lcom/criteo/publisher/q;)V

    const-class v1, Lcom/criteo/publisher/logging/k;

    invoke-direct {p0, v1, v0}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/criteo/publisher/logging/k;

    .line 694
    invoke-direct {p0}, Lcom/criteo/publisher/q;->aK()Lcom/criteo/publisher/logging/l;

    move-result-object v2

    .line 695
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->j()Lcom/criteo/publisher/model/t;

    move-result-object v3

    .line 696
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->h()Ljava/util/concurrent/Executor;

    move-result-object v4

    .line 697
    invoke-direct {p0}, Lcom/criteo/publisher/q;->aM()Lcom/criteo/publisher/k/a;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/criteo/publisher/logging/j;-><init>(Lcom/criteo/publisher/logging/k;Lcom/criteo/publisher/f/p;Lcom/criteo/publisher/model/t;Ljava/util/concurrent/Executor;Lcom/criteo/publisher/k/a;)V

    return-object v6
.end method

.method private synthetic I()Lcom/criteo/publisher/logging/k;
    .locals 9

    .line 674
    new-instance v8, Lcom/criteo/publisher/logging/k;

    .line 675
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->o()Lcom/criteo/publisher/m0/g;

    move-result-object v1

    .line 2185
    invoke-direct {p0}, Lcom/criteo/publisher/q;->aC()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 677
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->f()Lcom/criteo/publisher/m0/b;

    move-result-object v3

    .line 678
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->C()Lcom/criteo/publisher/x;

    move-result-object v4

    .line 679
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->u()Lcom/criteo/publisher/i/c;

    move-result-object v5

    .line 680
    invoke-direct {p0}, Lcom/criteo/publisher/q;->aF()Lcom/criteo/publisher/h;

    move-result-object v6

    .line 2687
    sget-object v0, Lcom/criteo/publisher/-$$Lambda$Q_VUJqXHsqn1qg3FzjtcUe2BMSA;->INSTANCE:Lcom/criteo/publisher/-$$Lambda$Q_VUJqXHsqn1qg3FzjtcUe2BMSA;

    const-class v7, Lcom/criteo/publisher/logging/i;

    invoke-direct {p0, v7, v0}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/criteo/publisher/logging/i;

    move-object v0, v8

    .line 681
    invoke-direct/range {v0 .. v7}, Lcom/criteo/publisher/logging/k;-><init>(Lcom/criteo/publisher/m0/g;Landroid/content/Context;Lcom/criteo/publisher/m0/b;Lcom/criteo/publisher/x;Lcom/criteo/publisher/i/c;Lcom/criteo/publisher/h;Lcom/criteo/publisher/logging/i;)V

    return-object v8
.end method

.method private synthetic J()Lcom/criteo/publisher/logging/m;
    .locals 2

    .line 667
    new-instance v0, Lcom/criteo/publisher/logging/m;

    .line 668
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->o()Lcom/criteo/publisher/m0/g;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/criteo/publisher/logging/m;-><init>(Lcom/criteo/publisher/m0/g;)V

    return-object v0
.end method

.method private synthetic K()Lcom/criteo/publisher/logging/l;
    .locals 3

    .line 660
    new-instance v0, Lcom/criteo/publisher/logging/l$a;

    .line 3667
    new-instance v1, Lcom/criteo/publisher/-$$Lambda$q$vrz3YKdDOa7tmGSwNlTT55uPLZU;

    invoke-direct {v1, p0}, Lcom/criteo/publisher/-$$Lambda$q$vrz3YKdDOa7tmGSwNlTT55uPLZU;-><init>(Lcom/criteo/publisher/q;)V

    const-class v2, Lcom/criteo/publisher/logging/m;

    invoke-direct {p0, v2, v1}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/criteo/publisher/logging/m;

    .line 661
    invoke-direct {p0, v1}, Lcom/criteo/publisher/q;->a(Lcom/criteo/publisher/f/b;)Lcom/criteo/publisher/f/p;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/criteo/publisher/logging/l$a;-><init>(Lcom/criteo/publisher/f/p;)V

    return-object v0
.end method

.method private synthetic L()Lcom/criteo/publisher/x;
    .locals 3

    .line 647
    new-instance v0, Lcom/criteo/publisher/x;

    .line 648
    invoke-direct {p0}, Lcom/criteo/publisher/q;->aF()Lcom/criteo/publisher/h;

    move-result-object v1

    .line 649
    invoke-direct {p0}, Lcom/criteo/publisher/q;->aH()Lcom/criteo/publisher/c/d;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/criteo/publisher/x;-><init>(Lcom/criteo/publisher/h;Lcom/criteo/publisher/c/d;)V

    return-object v0
.end method

.method private synthetic M()Lcom/criteo/publisher/context/a;
    .locals 2

    .line 640
    new-instance v0, Lcom/criteo/publisher/context/a;

    .line 4185
    invoke-direct {p0}, Lcom/criteo/publisher/q;->aC()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 641
    invoke-direct {v0, v1}, Lcom/criteo/publisher/context/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private synthetic N()Lcom/criteo/publisher/context/b;
    .locals 5

    .line 630
    new-instance v0, Lcom/criteo/publisher/context/b;

    .line 5185
    invoke-direct {p0}, Lcom/criteo/publisher/q;->aC()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 5640
    new-instance v2, Lcom/criteo/publisher/-$$Lambda$q$JZ9F33iAoLWEI38KOTgwB91EDKg;

    invoke-direct {v2, p0}, Lcom/criteo/publisher/-$$Lambda$q$JZ9F33iAoLWEI38KOTgwB91EDKg;-><init>(Lcom/criteo/publisher/q;)V

    const-class v3, Lcom/criteo/publisher/context/a;

    invoke-direct {p0, v3, v2}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/criteo/publisher/context/a;

    .line 633
    invoke-direct {p0}, Lcom/criteo/publisher/q;->aE()Lcom/criteo/publisher/m0/c;

    move-result-object v3

    .line 634
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->C()Lcom/criteo/publisher/x;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/criteo/publisher/context/b;-><init>(Landroid/content/Context;Lcom/criteo/publisher/context/a;Lcom/criteo/publisher/m0/c;Lcom/criteo/publisher/x;)V

    return-object v0
.end method

.method private synthetic O()Lcom/criteo/publisher/logging/c;
    .locals 2

    .line 623
    new-instance v0, Lcom/criteo/publisher/logging/c;

    .line 624
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->o()Lcom/criteo/publisher/m0/g;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/criteo/publisher/logging/c;-><init>(Lcom/criteo/publisher/m0/g;)V

    return-object v0
.end method

.method private synthetic P()Lcom/criteo/publisher/logging/h;
    .locals 5

    .line 615
    new-instance v0, Lcom/criteo/publisher/logging/h;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/criteo/publisher/g/a;

    new-instance v2, Lcom/criteo/publisher/g/a;

    new-instance v3, Lcom/criteo/publisher/-$$Lambda$H7RUEYnb8l1KxyRNLiEHuFF-I9Q;

    invoke-direct {v3, p0}, Lcom/criteo/publisher/-$$Lambda$H7RUEYnb8l1KxyRNLiEHuFF-I9Q;-><init>(Lcom/criteo/publisher/q;)V

    const-string v4, "ConsoleHandler"

    invoke-direct {v2, v4, v3}, Lcom/criteo/publisher/g/a;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/criteo/publisher/g/a;

    new-instance v3, Lcom/criteo/publisher/-$$Lambda$ZLL9-oTNgmXvDi5HdqVdew1etHA;

    invoke-direct {v3, p0}, Lcom/criteo/publisher/-$$Lambda$ZLL9-oTNgmXvDi5HdqVdew1etHA;-><init>(Lcom/criteo/publisher/q;)V

    const-string v4, "RemoteHandler"

    invoke-direct {v2, v4, v3}, Lcom/criteo/publisher/g/a;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/criteo/publisher/logging/h;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private static synthetic Q()Lcom/google/gson/f;
    .locals 2

    .line 608
    new-instance v0, Lcom/google/gson/g;

    invoke-direct {v0}, Lcom/google/gson/g;-><init>()V

    .line 6028
    new-instance v1, Lcom/criteo/publisher/m0/f;

    invoke-direct {v1}, Lcom/criteo/publisher/m0/f;-><init>()V

    .line 609
    invoke-virtual {v0, v1}, Lcom/google/gson/g;->a(Lcom/google/gson/k;)Lcom/google/gson/g;

    move-result-object v0

    .line 610
    invoke-virtual {v0}, Lcom/google/gson/g;->a()Lcom/google/gson/f;

    move-result-object v0

    return-object v0
.end method

.method private synthetic R()Lcom/criteo/publisher/m0/l;
    .locals 3

    .line 601
    new-instance v0, Lcom/criteo/publisher/m0/l;

    .line 6608
    sget-object v1, Lcom/criteo/publisher/-$$Lambda$q$lBBjbpi5K_3MlQ74o5rX_03N6ng;->INSTANCE:Lcom/criteo/publisher/-$$Lambda$q$lBBjbpi5K_3MlQ74o5rX_03N6ng;

    const-class v2, Lcom/google/gson/f;

    invoke-direct {p0, v2, v1}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/f;

    .line 602
    invoke-direct {v0, v1}, Lcom/criteo/publisher/m0/l;-><init>(Lcom/google/gson/f;)V

    return-object v0
.end method

.method private synthetic S()Lcom/criteo/publisher/f/v;
    .locals 2

    .line 594
    new-instance v0, Lcom/criteo/publisher/f/v;

    .line 595
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->z()Lcom/criteo/publisher/m0/l;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/criteo/publisher/f/v;-><init>(Lcom/criteo/publisher/m0/l;)V

    return-object v0
.end method

.method private synthetic T()Lcom/criteo/publisher/f/aa;
    .locals 2

    .line 577
    new-instance v0, Lcom/criteo/publisher/f/aa;

    .line 578
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->o()Lcom/criteo/publisher/m0/g;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/criteo/publisher/f/aa;-><init>(Lcom/criteo/publisher/m0/g;)V

    return-object v0
.end method

.method private synthetic U()Lcom/criteo/publisher/f/z;
    .locals 3

    .line 559
    new-instance v0, Lcom/criteo/publisher/f/z$a;

    .line 7577
    new-instance v1, Lcom/criteo/publisher/-$$Lambda$q$lDTUCEoC3PG3sA0_0go_ZZTHF5s;

    invoke-direct {v1, p0}, Lcom/criteo/publisher/-$$Lambda$q$lDTUCEoC3PG3sA0_0go_ZZTHF5s;-><init>(Lcom/criteo/publisher/q;)V

    const-class v2, Lcom/criteo/publisher/f/aa;

    invoke-direct {p0, v2, v1}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/criteo/publisher/f/aa;

    .line 560
    invoke-direct {p0, v1}, Lcom/criteo/publisher/q;->a(Lcom/criteo/publisher/f/b;)Lcom/criteo/publisher/f/p;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/criteo/publisher/f/z$a;-><init>(Lcom/criteo/publisher/f/p;)V

    return-object v0
.end method

.method private synthetic V()Lcom/criteo/publisher/f/ac;
    .locals 2

    .line 551
    new-instance v0, Lcom/criteo/publisher/f/ac;

    .line 552
    invoke-direct {p0}, Lcom/criteo/publisher/q;->aJ()Lcom/criteo/publisher/f/z;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/criteo/publisher/f/ac;-><init>(Lcom/criteo/publisher/f/z;)V

    return-object v0
.end method

.method private synthetic W()Lcom/criteo/publisher/f/ab;
    .locals 7

    .line 540
    new-instance v6, Lcom/criteo/publisher/f/ab;

    .line 541
    invoke-direct {p0}, Lcom/criteo/publisher/q;->aJ()Lcom/criteo/publisher/f/z;

    move-result-object v1

    .line 542
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->e()Lcom/criteo/publisher/j0/g;

    move-result-object v2

    .line 543
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->o()Lcom/criteo/publisher/m0/g;

    move-result-object v3

    .line 544
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->j()Lcom/criteo/publisher/model/t;

    move-result-object v4

    .line 545
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->h()Ljava/util/concurrent/Executor;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/criteo/publisher/f/ab;-><init>(Lcom/criteo/publisher/f/z;Lcom/criteo/publisher/j0/g;Lcom/criteo/publisher/m0/g;Lcom/criteo/publisher/model/t;Ljava/util/concurrent/Executor;)V

    return-object v6
.end method

.method private synthetic X()Lcom/criteo/publisher/m/b;
    .locals 2

    .line 533
    new-instance v0, Lcom/criteo/publisher/m/b;

    .line 8185
    invoke-direct {p0}, Lcom/criteo/publisher/q;->aC()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 534
    invoke-direct {v0, v1}, Lcom/criteo/publisher/m/b;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private synthetic Y()Lcom/criteo/publisher/j/a;
    .locals 3

    .line 525
    new-instance v0, Lcom/criteo/publisher/j/a;

    .line 9185
    invoke-direct {p0}, Lcom/criteo/publisher/q;->aC()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 527
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->y()Lcom/criteo/publisher/m/b;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/criteo/publisher/j/a;-><init>(Landroid/content/Context;Lcom/criteo/publisher/m/b;)V

    return-object v0
.end method

.method private synthetic Z()Lcom/criteo/publisher/h/c;
    .locals 5

    .line 513
    new-instance v0, Lcom/criteo/publisher/h/c;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/criteo/publisher/h/d;

    new-instance v2, Lcom/criteo/publisher/h/e;

    invoke-direct {v2}, Lcom/criteo/publisher/h/e;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/criteo/publisher/h/b;

    .line 516
    invoke-direct {p0}, Lcom/criteo/publisher/q;->aE()Lcom/criteo/publisher/m0/c;

    move-result-object v3

    invoke-virtual {p0}, Lcom/criteo/publisher/q;->g()Lcom/criteo/publisher/m0/k;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/criteo/publisher/h/b;-><init>(Lcom/criteo/publisher/m0/c;Lcom/criteo/publisher/m0/k;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lcom/criteo/publisher/h/f;

    invoke-direct {v2}, Lcom/criteo/publisher/h/f;-><init>()V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 514
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 519
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->u()Lcom/criteo/publisher/i/c;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/criteo/publisher/h/c;-><init>(Ljava/util/List;Lcom/criteo/publisher/i/c;)V

    return-object v0
.end method

.method private a(Lcom/criteo/publisher/f/b;)Lcom/criteo/publisher/f/p;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/criteo/publisher/f/b<",
            "TT;>;)",
            "Lcom/criteo/publisher/f/p<",
            "TT;>;"
        }
    .end annotation

    .line 565
    new-instance v0, Lcom/criteo/publisher/f/d;

    new-instance v1, Lcom/criteo/publisher/f/ae;

    .line 1185
    invoke-direct {p0}, Lcom/criteo/publisher/q;->aC()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 568
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->z()Lcom/criteo/publisher/m0/l;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Lcom/criteo/publisher/f/ae;-><init>(Landroid/content/Context;Lcom/criteo/publisher/m0/l;Lcom/criteo/publisher/f/b;)V

    invoke-direct {v0, v1, p1}, Lcom/criteo/publisher/f/d;-><init>(Lcom/criteo/publisher/f/ae;Lcom/criteo/publisher/f/b;)V

    .line 572
    invoke-virtual {v0}, Lcom/criteo/publisher/f/d;->b()Lcom/criteo/publisher/f/p;

    move-result-object p1

    return-object p1
.end method

.method public static declared-synchronized a()Lcom/criteo/publisher/q;
    .locals 2

    const-class v0, Lcom/criteo/publisher/q;

    monitor-enter v0

    .line 132
    :try_start_0
    sget-object v1, Lcom/criteo/publisher/q;->a:Lcom/criteo/publisher/q;

    if-nez v1, :cond_0

    .line 133
    new-instance v1, Lcom/criteo/publisher/q;

    invoke-direct {v1}, Lcom/criteo/publisher/q;-><init>()V

    sput-object v1, Lcom/criteo/publisher/q;->a:Lcom/criteo/publisher/q;

    .line 135
    :cond_0
    sget-object v1, Lcom/criteo/publisher/q;->a:Lcom/criteo/publisher/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/criteo/publisher/q$a<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 496
    iget-object v0, p0, Lcom/criteo/publisher/q;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/criteo/publisher/-$$Lambda$qMGydouRSAniDUBTank4jzo0Mo0;

    invoke-direct {v1, p2}, Lcom/criteo/publisher/-$$Lambda$qMGydouRSAniDUBTank4jzo0Mo0;-><init>(Lcom/criteo/publisher/q$a;)V

    invoke-static {v0, p1, v1}, Lcom/criteo/publisher/m0/m;->a(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private synthetic aA()Lcom/criteo/publisher/m0/b;
    .locals 3

    .line 204
    new-instance v0, Lcom/criteo/publisher/m0/b;

    .line 25185
    invoke-direct {p0}, Lcom/criteo/publisher/q;->aC()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 206
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->h()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/criteo/publisher/m0/b;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method private synthetic aB()Lcom/criteo/publisher/j0/g;
    .locals 3

    .line 196
    new-instance v0, Lcom/criteo/publisher/j0/g;

    .line 197
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->o()Lcom/criteo/publisher/m0/g;

    move-result-object v1

    .line 198
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->z()Lcom/criteo/publisher/m0/l;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/criteo/publisher/j0/g;-><init>(Lcom/criteo/publisher/m0/g;Lcom/criteo/publisher/m0/l;)V

    return-object v0
.end method

.method private aC()Landroid/app/Application;
    .locals 1

    .line 179
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->b()V

    .line 180
    iget-object v0, p0, Lcom/criteo/publisher/q;->b:Landroid/app/Application;

    return-object v0
.end method

.method private aD()Ljava/lang/String;
    .locals 1

    .line 190
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->c()V

    .line 191
    iget-object v0, p0, Lcom/criteo/publisher/q;->c:Ljava/lang/String;

    return-object v0
.end method

.method private aE()Lcom/criteo/publisher/m0/c;
    .locals 2

    .line 212
    new-instance v0, Lcom/criteo/publisher/-$$Lambda$q$T_SKiGDn5R2ZIFCeajg4mEcLqFY;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/-$$Lambda$q$T_SKiGDn5R2ZIFCeajg4mEcLqFY;-><init>(Lcom/criteo/publisher/q;)V

    const-class v1, Lcom/criteo/publisher/m0/c;

    invoke-direct {p0, v1, v0}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/m0/c;

    return-object v0
.end method

.method private aF()Lcom/criteo/publisher/h;
    .locals 2

    .line 250
    sget-object v0, Lcom/criteo/publisher/-$$Lambda$ah1BcUxCEb_InrnMGodQitKgVm0;->INSTANCE:Lcom/criteo/publisher/-$$Lambda$ah1BcUxCEb_InrnMGodQitKgVm0;

    const-class v1, Lcom/criteo/publisher/h;

    invoke-direct {p0, v1, v0}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/h;

    return-object v0
.end method

.method private aG()Lcom/criteo/publisher/model/p;
    .locals 2

    .line 319
    new-instance v0, Lcom/criteo/publisher/-$$Lambda$q$O-ZDm0WoDs5IHl34a_Zl5eyRItY;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/-$$Lambda$q$O-ZDm0WoDs5IHl34a_Zl5eyRItY;-><init>(Lcom/criteo/publisher/q;)V

    const-class v1, Lcom/criteo/publisher/model/p;

    invoke-direct {p0, v1, v0}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/model/p;

    return-object v0
.end method

.method private aH()Lcom/criteo/publisher/c/d;
    .locals 2

    .line 335
    new-instance v0, Lcom/criteo/publisher/-$$Lambda$q$wb9-YX4VKjk4TGdx3W5zLO1xgvk;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/-$$Lambda$q$wb9-YX4VKjk4TGdx3W5zLO1xgvk;-><init>(Lcom/criteo/publisher/q;)V

    const-class v1, Lcom/criteo/publisher/c/d;

    invoke-direct {p0, v1, v0}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/c/d;

    return-object v0
.end method

.method private aI()Landroid/content/SharedPreferences;
    .locals 2

    .line 475
    new-instance v0, Lcom/criteo/publisher/-$$Lambda$q$1SqNmBax6FHPAo_12asw1PRuxIs;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/-$$Lambda$q$1SqNmBax6FHPAo_12asw1PRuxIs;-><init>(Lcom/criteo/publisher/q;)V

    const-class v1, Landroid/content/SharedPreferences;

    invoke-direct {p0, v1, v0}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private aJ()Lcom/criteo/publisher/f/z;
    .locals 2

    .line 559
    new-instance v0, Lcom/criteo/publisher/-$$Lambda$q$m1-HlWNSNkIBZ1wC4ZxSpH6AFSY;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/-$$Lambda$q$m1-HlWNSNkIBZ1wC4ZxSpH6AFSY;-><init>(Lcom/criteo/publisher/q;)V

    const-class v1, Lcom/criteo/publisher/f/z;

    invoke-direct {p0, v1, v0}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/f/z;

    return-object v0
.end method

.method private aK()Lcom/criteo/publisher/logging/l;
    .locals 2

    .line 660
    new-instance v0, Lcom/criteo/publisher/-$$Lambda$q$NiF_lUxEaCTHH4nNfn9ba_4wJLU;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/-$$Lambda$q$NiF_lUxEaCTHH4nNfn9ba_4wJLU;-><init>(Lcom/criteo/publisher/q;)V

    const-class v1, Lcom/criteo/publisher/logging/l;

    invoke-direct {p0, v1, v0}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/logging/l;

    return-object v0
.end method

.method private aL()Lcom/criteo/publisher/logging/n;
    .locals 2

    .line 703
    new-instance v0, Lcom/criteo/publisher/-$$Lambda$q$WBwXaMvj89Q-eZ6WHvxiQnSU2vE;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/-$$Lambda$q$WBwXaMvj89Q-eZ6WHvxiQnSU2vE;-><init>(Lcom/criteo/publisher/q;)V

    const-class v1, Lcom/criteo/publisher/logging/n;

    invoke-direct {p0, v1, v0}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/logging/n;

    return-object v0
.end method

.method private aM()Lcom/criteo/publisher/k/a;
    .locals 2

    .line 714
    new-instance v0, Lcom/criteo/publisher/-$$Lambda$q$K88u9HrzoNccyFRXix61LhmPCrQ;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/-$$Lambda$q$K88u9HrzoNccyFRXix61LhmPCrQ;-><init>(Lcom/criteo/publisher/q;)V

    const-class v1, Lcom/criteo/publisher/k/a;

    invoke-direct {p0, v1, v0}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/k/a;

    return-object v0
.end method

.method private synthetic aa()Lcom/criteo/publisher/i;
    .locals 4

    .line 504
    new-instance v0, Lcom/criteo/publisher/i;

    .line 505
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->l()Lcom/criteo/publisher/e;

    move-result-object v1

    .line 506
    invoke-direct {p0}, Lcom/criteo/publisher/q;->aF()Lcom/criteo/publisher/h;

    move-result-object v2

    .line 507
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->i()Lcom/criteo/publisher/e/c;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/criteo/publisher/i;-><init>(Lcom/criteo/publisher/e;Lcom/criteo/publisher/h;Lcom/criteo/publisher/e/c;)V

    return-object v0
.end method

.method private synthetic ab()Lcom/criteo/publisher/i/c;
    .locals 4

    .line 483
    new-instance v0, Lcom/criteo/publisher/i/c;

    .line 484
    invoke-direct {p0}, Lcom/criteo/publisher/q;->aI()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 9491
    sget-object v2, Lcom/criteo/publisher/-$$Lambda$5z3EoD29hHU6Bve1ddHAMWoLH88;->INSTANCE:Lcom/criteo/publisher/-$$Lambda$5z3EoD29hHU6Bve1ddHAMWoLH88;

    const-class v3, Lcom/criteo/publisher/i/b;

    invoke-direct {p0, v3, v2}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/criteo/publisher/i/b;

    .line 485
    invoke-direct {v0, v1, v2}, Lcom/criteo/publisher/i/c;-><init>(Landroid/content/SharedPreferences;Lcom/criteo/publisher/i/b;)V

    return-object v0
.end method

.method private synthetic ac()Landroid/content/SharedPreferences;
    .locals 3

    .line 10185
    invoke-direct {p0}, Lcom/criteo/publisher/q;->aC()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.criteo.publisher.sdkSharedPreferences"

    const/4 v2, 0x0

    .line 475
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private synthetic ad()Lcom/criteo/publisher/advancednative/RendererHelper;
    .locals 3

    .line 462
    new-instance v0, Lcom/criteo/publisher/advancednative/RendererHelper;

    .line 463
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->t()Lcom/criteo/publisher/advancednative/h;

    move-result-object v1

    .line 464
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->i()Lcom/criteo/publisher/e/c;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/criteo/publisher/advancednative/RendererHelper;-><init>(Lcom/criteo/publisher/advancednative/h;Lcom/criteo/publisher/e/c;)V

    return-object v0
.end method

.method private synthetic ae()Lcom/criteo/publisher/advancednative/h;
    .locals 3

    .line 457
    new-instance v0, Lcom/criteo/publisher/advancednative/h;

    .line 10449
    new-instance v1, Lcom/criteo/publisher/-$$Lambda$q$Dwh8Aii72eEwJFLoKGu_D551mwc;

    invoke-direct {v1, p0}, Lcom/criteo/publisher/-$$Lambda$q$Dwh8Aii72eEwJFLoKGu_D551mwc;-><init>(Lcom/criteo/publisher/q;)V

    const-class v2, Lcom/criteo/publisher/advancednative/ImageLoader;

    invoke-direct {p0, v2, v1}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/criteo/publisher/advancednative/ImageLoader;

    .line 457
    invoke-direct {v0, v1}, Lcom/criteo/publisher/advancednative/h;-><init>(Lcom/criteo/publisher/advancednative/ImageLoader;)V

    return-object v0
.end method

.method private synthetic af()Lcom/criteo/publisher/advancednative/ImageLoader;
    .locals 4

    .line 449
    new-instance v0, Lcom/criteo/publisher/advancednative/g;

    .line 11444
    new-instance v1, Lcom/criteo/publisher/-$$Lambda$q$eHcfcllqEIgF--plNCqdMNY4_OQ;

    invoke-direct {v1, p0}, Lcom/criteo/publisher/-$$Lambda$q$eHcfcllqEIgF--plNCqdMNY4_OQ;-><init>(Lcom/criteo/publisher/q;)V

    const-class v2, Lcom/squareup/picasso/Picasso;

    invoke-direct {p0, v2, v1}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/picasso/Picasso;

    .line 11470
    sget-object v2, Lcom/criteo/publisher/-$$Lambda$8K57bS6BVJYJ1ux2bwD6n6Tnhag;->INSTANCE:Lcom/criteo/publisher/-$$Lambda$8K57bS6BVJYJ1ux2bwD6n6Tnhag;

    const-class v3, Lcom/criteo/publisher/e/a;

    invoke-direct {p0, v3, v2}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/criteo/publisher/e/a;

    .line 451
    invoke-direct {v0, v1, v2}, Lcom/criteo/publisher/advancednative/g;-><init>(Lcom/squareup/picasso/Picasso;Lcom/criteo/publisher/e/a;)V

    return-object v0
.end method

.method private synthetic ag()Lcom/squareup/picasso/Picasso;
    .locals 2

    .line 444
    new-instance v0, Lcom/squareup/picasso/Picasso$Builder;

    .line 12185
    invoke-direct {p0}, Lcom/criteo/publisher/q;->aC()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 444
    invoke-direct {v0, v1}, Lcom/squareup/picasso/Picasso$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/squareup/picasso/Picasso$Builder;->build()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    return-object v0
.end method

.method private synthetic ah()Lcom/criteo/publisher/advancednative/b;
    .locals 3

    .line 436
    new-instance v0, Lcom/criteo/publisher/advancednative/b;

    .line 437
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->o()Lcom/criteo/publisher/m0/g;

    move-result-object v1

    .line 438
    invoke-direct {p0}, Lcom/criteo/publisher/q;->aE()Lcom/criteo/publisher/m0/c;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/criteo/publisher/advancednative/b;-><init>(Lcom/criteo/publisher/m0/g;Lcom/criteo/publisher/m0/c;)V

    return-object v0
.end method

.method private synthetic ai()Lcom/criteo/publisher/b/b;
    .locals 2

    .line 429
    new-instance v0, Lcom/criteo/publisher/b/b;

    .line 13185
    invoke-direct {p0}, Lcom/criteo/publisher/q;->aC()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 430
    invoke-direct {v0, v1}, Lcom/criteo/publisher/b/b;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static synthetic aj()Lcom/criteo/publisher/advancednative/q;
    .locals 2

    .line 417
    new-instance v0, Lcom/criteo/publisher/advancednative/q;

    new-instance v1, Lcom/criteo/publisher/advancednative/o;

    invoke-direct {v1}, Lcom/criteo/publisher/advancednative/o;-><init>()V

    invoke-direct {v0, v1}, Lcom/criteo/publisher/advancednative/q;-><init>(Lcom/criteo/publisher/advancednative/o;)V

    return-object v0
.end method

.method private synthetic ak()Lcom/criteo/publisher/advancednative/l;
    .locals 8

    .line 397
    new-instance v7, Lcom/criteo/publisher/advancednative/l;

    .line 13417
    sget-object v0, Lcom/criteo/publisher/-$$Lambda$q$BpYjM9oQBbDIFRo50CwAFnYD0rQ;->INSTANCE:Lcom/criteo/publisher/-$$Lambda$q$BpYjM9oQBbDIFRo50CwAFnYD0rQ;

    const-class v1, Lcom/criteo/publisher/advancednative/q;

    invoke-direct {p0, v1, v0}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/criteo/publisher/advancednative/q;

    .line 398
    new-instance v2, Lcom/criteo/publisher/advancednative/i;

    .line 400
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->e()Lcom/criteo/publisher/j0/g;

    move-result-object v0

    .line 401
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->h()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 402
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->i()Lcom/criteo/publisher/e/c;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Lcom/criteo/publisher/advancednative/i;-><init>(Lcom/criteo/publisher/j0/g;Ljava/util/concurrent/Executor;Lcom/criteo/publisher/e/c;)V

    .line 13424
    sget-object v0, Lcom/criteo/publisher/-$$Lambda$xlEET1tGbgIEA28MSgFvkun4l2c;->INSTANCE:Lcom/criteo/publisher/-$$Lambda$xlEET1tGbgIEA28MSgFvkun4l2c;

    const-class v3, Lcom/criteo/publisher/advancednative/e;

    invoke-direct {p0, v3, v0}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/criteo/publisher/advancednative/e;

    .line 404
    new-instance v4, Lcom/criteo/publisher/advancednative/f;

    .line 406
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->r()Lcom/criteo/publisher/b/b;

    move-result-object v0

    .line 407
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->y()Lcom/criteo/publisher/m/b;

    move-result-object v5

    .line 408
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->i()Lcom/criteo/publisher/e/c;

    move-result-object v6

    invoke-direct {v4, v0, v5, v6}, Lcom/criteo/publisher/advancednative/f;-><init>(Lcom/criteo/publisher/b/b;Lcom/criteo/publisher/m/b;Lcom/criteo/publisher/e/c;)V

    .line 410
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->s()Lcom/criteo/publisher/advancednative/b;

    move-result-object v5

    .line 13462
    new-instance v0, Lcom/criteo/publisher/-$$Lambda$q$tDN_fuUEFotSuOi6R2Lld8mRwB0;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/-$$Lambda$q$tDN_fuUEFotSuOi6R2Lld8mRwB0;-><init>(Lcom/criteo/publisher/q;)V

    const-class v6, Lcom/criteo/publisher/advancednative/RendererHelper;

    invoke-direct {p0, v6, v0}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/criteo/publisher/advancednative/RendererHelper;

    move-object v0, v7

    .line 411
    invoke-direct/range {v0 .. v6}, Lcom/criteo/publisher/advancednative/l;-><init>(Lcom/criteo/publisher/advancednative/q;Lcom/criteo/publisher/advancednative/i;Lcom/criteo/publisher/advancednative/e;Lcom/criteo/publisher/advancednative/f;Lcom/criteo/publisher/advancednative/b;Lcom/criteo/publisher/advancednative/RendererHelper;)V

    return-object v7
.end method

.method private synthetic al()Lcom/criteo/publisher/c/a;
    .locals 10

    .line 377
    new-instance v0, Lcom/criteo/publisher/c/b;

    invoke-direct {v0}, Lcom/criteo/publisher/c/b;-><init>()V

    .line 378
    new-instance v1, Lcom/criteo/publisher/c/c;

    invoke-direct {p0}, Lcom/criteo/publisher/q;->aL()Lcom/criteo/publisher/logging/n;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/criteo/publisher/c/c;-><init>(Lcom/criteo/publisher/logging/n;)V

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/c/b;->a(Lcom/criteo/publisher/c/a;)V

    .line 380
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 381
    new-instance v1, Lcom/criteo/publisher/f/q;

    .line 13585
    new-instance v2, Lcom/criteo/publisher/f/x;

    .line 14185
    invoke-direct {p0}, Lcom/criteo/publisher/q;->aC()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 14594
    new-instance v4, Lcom/criteo/publisher/-$$Lambda$q$NVA5S-aaddyUaYOppMpQl03DZMY;

    invoke-direct {v4, p0}, Lcom/criteo/publisher/-$$Lambda$q$NVA5S-aaddyUaYOppMpQl03DZMY;-><init>(Lcom/criteo/publisher/q;)V

    const-class v5, Lcom/criteo/publisher/f/v;

    invoke-direct {p0, v5, v4}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/criteo/publisher/f/v;

    .line 13588
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->o()Lcom/criteo/publisher/m0/g;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/criteo/publisher/f/x;-><init>(Landroid/content/Context;Lcom/criteo/publisher/f/v;Lcom/criteo/publisher/m0/g;)V

    .line 13585
    const-class v3, Lcom/criteo/publisher/f/w;

    invoke-direct {p0, v3, v2}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/criteo/publisher/f/w;

    .line 15551
    new-instance v2, Lcom/criteo/publisher/-$$Lambda$q$mZ45yLv8LwKQiDQKF1--mXUU-Cc;

    invoke-direct {v2, p0}, Lcom/criteo/publisher/-$$Lambda$q$mZ45yLv8LwKQiDQKF1--mXUU-Cc;-><init>(Lcom/criteo/publisher/q;)V

    const-class v3, Lcom/criteo/publisher/f/ac;

    invoke-direct {p0, v3, v2}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/criteo/publisher/f/ac;

    .line 384
    invoke-direct {p0}, Lcom/criteo/publisher/q;->aF()Lcom/criteo/publisher/h;

    move-result-object v6

    .line 385
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->j()Lcom/criteo/publisher/model/t;

    move-result-object v7

    .line 386
    invoke-direct {p0}, Lcom/criteo/publisher/q;->aM()Lcom/criteo/publisher/k/a;

    move-result-object v8

    .line 387
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->h()Ljava/util/concurrent/Executor;

    move-result-object v9

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/criteo/publisher/f/q;-><init>(Lcom/criteo/publisher/f/w;Lcom/criteo/publisher/f/ac;Lcom/criteo/publisher/h;Lcom/criteo/publisher/model/t;Lcom/criteo/publisher/k/a;Ljava/util/concurrent/Executor;)V

    .line 381
    invoke-virtual {v0, v1}, Lcom/criteo/publisher/c/b;->a(Lcom/criteo/publisher/c/a;)V

    :cond_0
    return-object v0
.end method

.method private synthetic am()Lcom/criteo/publisher/j0/e;
    .locals 8

    .line 364
    new-instance v7, Lcom/criteo/publisher/j0/e;

    .line 365
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->e()Lcom/criteo/publisher/j0/g;

    move-result-object v1

    .line 366
    invoke-direct {p0}, Lcom/criteo/publisher/q;->aG()Lcom/criteo/publisher/model/p;

    move-result-object v2

    .line 367
    invoke-direct {p0}, Lcom/criteo/publisher/q;->aF()Lcom/criteo/publisher/h;

    move-result-object v3

    .line 368
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->h()Ljava/util/concurrent/Executor;

    move-result-object v4

    .line 16232
    sget-object v0, Lcom/criteo/publisher/-$$Lambda$2CCxpHXvM5iil9DZq2w2-5fo6_g;->INSTANCE:Lcom/criteo/publisher/-$$Lambda$2CCxpHXvM5iil9DZq2w2-5fo6_g;

    const-class v5, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {p0, v5, v0}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/concurrent/ScheduledExecutorService;

    .line 370
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->j()Lcom/criteo/publisher/model/t;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/criteo/publisher/j0/e;-><init>(Lcom/criteo/publisher/j0/g;Lcom/criteo/publisher/model/p;Lcom/criteo/publisher/h;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lcom/criteo/publisher/model/t;)V

    return-object v7
.end method

.method private synthetic an()Lcom/criteo/publisher/j0/b;
    .locals 7

    .line 353
    new-instance v6, Lcom/criteo/publisher/j0/b;

    .line 354
    invoke-direct {p0}, Lcom/criteo/publisher/q;->aG()Lcom/criteo/publisher/model/p;

    move-result-object v1

    .line 16342
    new-instance v0, Lcom/criteo/publisher/-$$Lambda$q$Xdorx6b86oVV3NesXi7u9UgnXio;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/-$$Lambda$q$Xdorx6b86oVV3NesXi7u9UgnXio;-><init>(Lcom/criteo/publisher/q;)V

    const-class v2, Lcom/criteo/publisher/model/x;

    invoke-direct {p0, v2, v0}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/criteo/publisher/model/x;

    .line 356
    invoke-direct {p0}, Lcom/criteo/publisher/q;->aF()Lcom/criteo/publisher/h;

    move-result-object v3

    .line 357
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->e()Lcom/criteo/publisher/j0/g;

    move-result-object v4

    .line 358
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->h()Ljava/util/concurrent/Executor;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/criteo/publisher/j0/b;-><init>(Lcom/criteo/publisher/model/p;Lcom/criteo/publisher/model/x;Lcom/criteo/publisher/h;Lcom/criteo/publisher/j0/g;Ljava/util/concurrent/Executor;)V

    return-object v6
.end method

.method private synthetic ao()Lcom/criteo/publisher/model/x;
    .locals 7

    .line 342
    new-instance v6, Lcom/criteo/publisher/model/x;

    .line 17185
    invoke-direct {p0}, Lcom/criteo/publisher/q;->aC()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 344
    invoke-direct {p0}, Lcom/criteo/publisher/q;->aD()Ljava/lang/String;

    move-result-object v2

    .line 345
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->o()Lcom/criteo/publisher/m0/g;

    move-result-object v3

    .line 346
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->u()Lcom/criteo/publisher/i/c;

    move-result-object v4

    .line 347
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->f()Lcom/criteo/publisher/m0/b;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/criteo/publisher/model/x;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/criteo/publisher/m0/g;Lcom/criteo/publisher/i/c;Lcom/criteo/publisher/m0/b;)V

    return-object v6
.end method

.method private synthetic ap()Lcom/criteo/publisher/c/d;
    .locals 2

    .line 335
    new-instance v0, Lcom/criteo/publisher/c/d;

    .line 336
    invoke-direct {p0}, Lcom/criteo/publisher/q;->aF()Lcom/criteo/publisher/h;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/criteo/publisher/c/d;-><init>(Lcom/criteo/publisher/h;)V

    return-object v0
.end method

.method private synthetic aq()Lcom/criteo/publisher/model/p;
    .locals 12

    .line 319
    new-instance v11, Lcom/criteo/publisher/model/p;

    .line 18185
    invoke-direct {p0}, Lcom/criteo/publisher/q;->aC()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 321
    invoke-direct {p0}, Lcom/criteo/publisher/q;->aD()Ljava/lang/String;

    move-result-object v2

    .line 322
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->m()Lcom/criteo/publisher/model/u;

    move-result-object v3

    .line 323
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->f()Lcom/criteo/publisher/m0/b;

    move-result-object v4

    .line 324
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->k()Lcom/criteo/publisher/k/c;

    move-result-object v5

    .line 325
    invoke-direct {p0}, Lcom/criteo/publisher/q;->aH()Lcom/criteo/publisher/c/d;

    move-result-object v6

    .line 326
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->o()Lcom/criteo/publisher/m0/g;

    move-result-object v7

    .line 327
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->u()Lcom/criteo/publisher/i/c;

    move-result-object v8

    .line 18630
    new-instance v0, Lcom/criteo/publisher/-$$Lambda$q$ciTA8ZFNYnYruUvn19aRr_df5p8;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/-$$Lambda$q$ciTA8ZFNYnYruUvn19aRr_df5p8;-><init>(Lcom/criteo/publisher/q;)V

    const-class v9, Lcom/criteo/publisher/context/b;

    invoke-direct {p0, v9, v0}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/criteo/publisher/context/b;

    .line 329
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->D()Lcom/criteo/publisher/context/d;

    move-result-object v10

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/criteo/publisher/model/p;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/criteo/publisher/model/u;Lcom/criteo/publisher/m0/b;Lcom/criteo/publisher/k/c;Lcom/criteo/publisher/c/d;Lcom/criteo/publisher/m0/g;Lcom/criteo/publisher/i/c;Lcom/criteo/publisher/context/b;Lcom/criteo/publisher/context/d;)V

    return-object v11
.end method

.method private synthetic ar()Lcom/criteo/publisher/m0/e;
    .locals 3

    .line 306
    new-instance v0, Lcom/criteo/publisher/m0/e;

    .line 19293
    new-instance v1, Lcom/criteo/publisher/-$$Lambda$q$9lHl81dT3wKaL0fr6HgbqwAHYfM;

    invoke-direct {v1, p0}, Lcom/criteo/publisher/-$$Lambda$q$9lHl81dT3wKaL0fr6HgbqwAHYfM;-><init>(Lcom/criteo/publisher/q;)V

    const-class v2, Lcom/criteo/publisher/a/a;

    invoke-direct {p0, v2, v1}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/criteo/publisher/a/a;

    .line 308
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->l()Lcom/criteo/publisher/e;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/criteo/publisher/m0/e;-><init>(Lcom/criteo/publisher/a/a;Lcom/criteo/publisher/e;)V

    return-object v0
.end method

.method private synthetic as()Lcom/criteo/publisher/a/a;
    .locals 9

    .line 293
    new-instance v8, Lcom/criteo/publisher/a/a;

    .line 20185
    invoke-direct {p0}, Lcom/criteo/publisher/q;->aC()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 295
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->f()Lcom/criteo/publisher/m0/b;

    move-result-object v2

    .line 296
    invoke-direct {p0}, Lcom/criteo/publisher/q;->aF()Lcom/criteo/publisher/h;

    move-result-object v3

    .line 297
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->e()Lcom/criteo/publisher/j0/g;

    move-result-object v4

    .line 298
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->k()Lcom/criteo/publisher/k/c;

    move-result-object v5

    .line 299
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->m()Lcom/criteo/publisher/model/u;

    move-result-object v6

    .line 300
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->h()Ljava/util/concurrent/Executor;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/criteo/publisher/a/a;-><init>(Landroid/content/Context;Lcom/criteo/publisher/m0/b;Lcom/criteo/publisher/h;Lcom/criteo/publisher/j0/g;Lcom/criteo/publisher/k/c;Lcom/criteo/publisher/model/u;Ljava/util/concurrent/Executor;)V

    return-object v8
.end method

.method private synthetic at()Lcom/criteo/publisher/model/g;
    .locals 2

    .line 286
    new-instance v0, Lcom/criteo/publisher/model/g;

    .line 287
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->g()Lcom/criteo/publisher/m0/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/criteo/publisher/model/g;-><init>(Lcom/criteo/publisher/m0/k;)V

    return-object v0
.end method

.method private synthetic au()Lcom/criteo/publisher/model/u;
    .locals 3

    .line 278
    new-instance v0, Lcom/criteo/publisher/model/u;

    .line 21185
    invoke-direct {p0}, Lcom/criteo/publisher/q;->aC()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 280
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->i()Lcom/criteo/publisher/e/c;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/criteo/publisher/model/u;-><init>(Landroid/content/Context;Lcom/criteo/publisher/e/c;)V

    return-object v0
.end method

.method private synthetic av()Lcom/criteo/publisher/e;
    .locals 12

    .line 262
    new-instance v11, Lcom/criteo/publisher/e;

    new-instance v1, Lcom/criteo/publisher/d/a;

    .line 263
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->g()Lcom/criteo/publisher/m0/k;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/criteo/publisher/d/a;-><init>(Lcom/criteo/publisher/m0/k;)V

    .line 264
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->j()Lcom/criteo/publisher/model/t;

    move-result-object v2

    .line 265
    invoke-direct {p0}, Lcom/criteo/publisher/q;->aF()Lcom/criteo/publisher/h;

    move-result-object v3

    .line 21286
    new-instance v0, Lcom/criteo/publisher/-$$Lambda$q$Zz2g7Xi3nSXEGEQ5ihAf37vL_f8;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/-$$Lambda$q$Zz2g7Xi3nSXEGEQ5ihAf37vL_f8;-><init>(Lcom/criteo/publisher/q;)V

    const-class v4, Lcom/criteo/publisher/model/g;

    invoke-direct {p0, v4, v0}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/criteo/publisher/model/g;

    .line 21353
    new-instance v0, Lcom/criteo/publisher/-$$Lambda$q$uAjBf-nCR7WhTEPq4Lq168RHsQ8;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/-$$Lambda$q$uAjBf-nCR7WhTEPq4Lq168RHsQ8;-><init>(Lcom/criteo/publisher/q;)V

    const-class v5, Lcom/criteo/publisher/j0/b;

    invoke-direct {p0, v5, v0}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/criteo/publisher/j0/b;

    .line 21364
    new-instance v0, Lcom/criteo/publisher/-$$Lambda$q$M_D0cISEAyGuJxTpoKkDu3_xCNA;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/-$$Lambda$q$M_D0cISEAyGuJxTpoKkDu3_xCNA;-><init>(Lcom/criteo/publisher/q;)V

    const-class v6, Lcom/criteo/publisher/j0/e;

    invoke-direct {p0, v6, v0}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/criteo/publisher/j0/e;

    .line 269
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->p()Lcom/criteo/publisher/c/a;

    move-result-object v7

    .line 21540
    new-instance v0, Lcom/criteo/publisher/-$$Lambda$q$aKmzRek9XnYP54IulMk3n1VN_kU;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/-$$Lambda$q$aKmzRek9XnYP54IulMk3n1VN_kU;-><init>(Lcom/criteo/publisher/q;)V

    const-class v8, Lcom/criteo/publisher/f/ab;

    invoke-direct {p0, v8, v0}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/criteo/publisher/f/ab;

    .line 271
    invoke-direct {p0}, Lcom/criteo/publisher/q;->aL()Lcom/criteo/publisher/logging/n;

    move-result-object v9

    .line 272
    invoke-direct {p0}, Lcom/criteo/publisher/q;->aM()Lcom/criteo/publisher/k/a;

    move-result-object v10

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/criteo/publisher/e;-><init>(Lcom/criteo/publisher/d/a;Lcom/criteo/publisher/model/t;Lcom/criteo/publisher/h;Lcom/criteo/publisher/model/g;Lcom/criteo/publisher/j0/b;Lcom/criteo/publisher/j0/e;Lcom/criteo/publisher/c/a;Lcom/criteo/publisher/f/ab;Lcom/criteo/publisher/logging/n;Lcom/criteo/publisher/k/a;)V

    return-object v11
.end method

.method private synthetic aw()Lcom/criteo/publisher/k/c;
    .locals 2

    .line 255
    new-instance v0, Lcom/criteo/publisher/k/c;

    .line 22185
    invoke-direct {p0}, Lcom/criteo/publisher/q;->aC()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 256
    invoke-direct {v0, v1}, Lcom/criteo/publisher/k/c;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private synthetic ax()Lcom/criteo/publisher/model/t;
    .locals 3

    .line 242
    new-instance v0, Lcom/criteo/publisher/model/t;

    .line 243
    invoke-direct {p0}, Lcom/criteo/publisher/q;->aI()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 244
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->z()Lcom/criteo/publisher/m0/l;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/criteo/publisher/model/t;-><init>(Landroid/content/SharedPreferences;Lcom/criteo/publisher/m0/l;)V

    return-object v0
.end method

.method private synthetic ay()Lcom/criteo/publisher/m0/k;
    .locals 2

    .line 220
    new-instance v0, Lcom/criteo/publisher/m0/k;

    .line 23185
    invoke-direct {p0}, Lcom/criteo/publisher/q;->aC()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 221
    invoke-direct {v0, v1}, Lcom/criteo/publisher/m0/k;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private synthetic az()Lcom/criteo/publisher/m0/c;
    .locals 3

    .line 212
    new-instance v0, Lcom/criteo/publisher/m0/c;

    .line 24185
    invoke-direct {p0}, Lcom/criteo/publisher/q;->aC()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 214
    invoke-virtual {p0}, Lcom/criteo/publisher/q;->g()Lcom/criteo/publisher/m0/k;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/criteo/publisher/m0/c;-><init>(Landroid/content/Context;Lcom/criteo/publisher/m0/k;)V

    return-object v0
.end method

.method static d()Z
    .locals 1

    .line 158
    :try_start_0
    invoke-static {}, Lcom/criteo/publisher/q;->a()Lcom/criteo/publisher/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/q;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$-GEknBpL5cQNb3iWlhv0UBxI02Y(Lcom/criteo/publisher/q;)Lcom/criteo/publisher/m0/l;
    .locals 0

    invoke-direct {p0}, Lcom/criteo/publisher/q;->R()Lcom/criteo/publisher/m0/l;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$1SqNmBax6FHPAo_12asw1PRuxIs(Lcom/criteo/publisher/q;)Landroid/content/SharedPreferences;
    .locals 0

    invoke-direct {p0}, Lcom/criteo/publisher/q;->ac()Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$2SMzjd3Y3lEwIyXkgKYbpg8mgXc(Lcom/criteo/publisher/q;)Lcom/criteo/publisher/i/c;
    .locals 0

    invoke-direct {p0}, Lcom/criteo/publisher/q;->ab()Lcom/criteo/publisher/i/c;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$3k4Ivl7qMSTQU1ptjCOdyElKAJI(Lcom/criteo/publisher/q;)Lcom/criteo/publisher/x;
    .locals 0

    invoke-direct {p0}, Lcom/criteo/publisher/q;->L()Lcom/criteo/publisher/x;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$4Alx2ugn84btv5IjvtC_tkda45s(Lcom/criteo/publisher/q;)Lcom/criteo/publisher/advancednative/h;
    .locals 0

    invoke-direct {p0}, Lcom/criteo/publisher/q;->ae()Lcom/criteo/publisher/advancednative/h;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$6CYu_PMpDctRtlT6zKb6mqN8THs(Lcom/criteo/publisher/q;)Lcom/criteo/publisher/model/u;
    .locals 0

    invoke-direct {p0}, Lcom/criteo/publisher/q;->au()Lcom/criteo/publisher/model/u;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$7WMksuEVaXjEQp-f4WmrDR9kZYU(Lcom/criteo/publisher/q;)Lcom/criteo/publisher/j/a;
    .locals 0

    invoke-direct {p0}, Lcom/criteo/publisher/q;->Y()Lcom/criteo/publisher/j/a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$7s2SS5sbxeMkg77IesHsP19rRi0(Lcom/criteo/publisher/q;)Lcom/criteo/publisher/i;
    .locals 0

    invoke-direct {p0}, Lcom/criteo/publisher/q;->aa()Lcom/criteo/publisher/i;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$9lHl81dT3wKaL0fr6HgbqwAHYfM(Lcom/criteo/publisher/q;)Lcom/criteo/publisher/a/a;
    .locals 0

    invoke-direct {p0}, Lcom/criteo/publisher/q;->as()Lcom/criteo/publisher/a/a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$BpYjM9oQBbDIFRo50CwAFnYD0rQ()Lcom/criteo/publisher/advancednative/q;
    .locals 1

    invoke-static {}, Lcom/criteo/publisher/q;->aj()Lcom/criteo/publisher/advancednative/q;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$DivLmbohvFQ0O6frOgOm6q_PONA(Lcom/criteo/publisher/q;)Lcom/criteo/publisher/m0/k;
    .locals 0

    invoke-direct {p0}, Lcom/criteo/publisher/q;->ay()Lcom/criteo/publisher/m0/k;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$Dwh8Aii72eEwJFLoKGu_D551mwc(Lcom/criteo/publisher/q;)Lcom/criteo/publisher/advancednative/ImageLoader;
    .locals 0

    invoke-direct {p0}, Lcom/criteo/publisher/q;->af()Lcom/criteo/publisher/advancednative/ImageLoader;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$G1lHhizzzlNeKLk-xodAiDmch94(Lcom/criteo/publisher/q;)Lcom/criteo/publisher/m0/b;
    .locals 0

    invoke-direct {p0}, Lcom/criteo/publisher/q;->aA()Lcom/criteo/publisher/m0/b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$HQsbB3otj-77aMoMWT2S5KUQo2s(Lcom/criteo/publisher/q;)Lcom/criteo/publisher/h/c;
    .locals 0

    invoke-direct {p0}, Lcom/criteo/publisher/q;->Z()Lcom/criteo/publisher/h/c;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$HjgIFX492MM7-3jZCg7tEr8AmME(Lcom/criteo/publisher/q;)Lcom/criteo/publisher/m0/e;
    .locals 0

    invoke-direct {p0}, Lcom/criteo/publisher/q;->ar()Lcom/criteo/publisher/m0/e;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$JEIK42aJurin166DUFDy9ftWkwU(Lcom/criteo/publisher/q;)Lcom/criteo/publisher/logging/k;
    .locals 0

    invoke-direct {p0}, Lcom/criteo/publisher/q;->I()Lcom/criteo/publisher/logging/k;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$JZ9F33iAoLWEI38KOTgwB91EDKg(Lcom/criteo/publisher/q;)Lcom/criteo/publisher/context/a;
    .locals 0

    invoke-direct {p0}, Lcom/criteo/publisher/q;->M()Lcom/criteo/publisher/context/a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$K88u9HrzoNccyFRXix61LhmPCrQ(Lcom/criteo/publisher/q;)Lcom/criteo/publisher/k/a;
    .locals 0

    invoke-direct {p0}, Lcom/criteo/publisher/q;->F()Lcom/criteo/publisher/k/a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$M_D0cISEAyGuJxTpoKkDu3_xCNA(Lcom/criteo/publisher/q;)Lcom/criteo/publisher/j0/e;
    .locals 0

    invoke-direct {p0}, Lcom/criteo/publisher/q;->am()Lcom/criteo/publisher/j0/e;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$NVA5S-aaddyUaYOppMpQl03DZMY(Lcom/criteo/publisher/q;)Lcom/criteo/publisher/f/v;
    .locals 0

    invoke-direct {p0}, Lcom/criteo/publisher/q;->S()Lcom/criteo/publisher/f/v;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$NiF_lUxEaCTHH4nNfn9ba_4wJLU(Lcom/criteo/publisher/q;)Lcom/criteo/publisher/logging/l;
    .locals 0

    invoke-direct {p0}, Lcom/criteo/publisher/q;->K()Lcom/criteo/publisher/logging/l;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$O-ZDm0WoDs5IHl34a_Zl5eyRItY(Lcom/criteo/publisher/q;)Lcom/criteo/publisher/model/p;
    .locals 0

    invoke-direct {p0}, Lcom/criteo/publisher/q;->aq()Lcom/criteo/publisher/model/p;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$PGiI0qH6Prr86aS7RzMZjqAb_mw(Lcom/criteo/publisher/q;)Lcom/criteo/publisher/model/t;
    .locals 0

    invoke-direct {p0}, Lcom/criteo/publisher/q;->ax()Lcom/criteo/publisher/model/t;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$PqI8wAa-2HV9AZ7vTnBTchz3gJw(Lcom/criteo/publisher/q;)Lcom/criteo/publisher/advancednative/b;
    .locals 0

    invoke-direct {p0}, Lcom/criteo/publisher/q;->ah()Lcom/criteo/publisher/advancednative/b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$TYbIVVeJMGqy1eBtOzP5Q2pgEyo(Lcom/criteo/publisher/q;)Lcom/criteo/publisher/logging/c;
    .locals 0

    invoke-direct {p0}, Lcom/criteo/publisher/q;->O()Lcom/criteo/publisher/logging/c;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$T_SKiGDn5R2ZIFCeajg4mEcLqFY(Lcom/criteo/publisher/q;)Lcom/criteo/publisher/m0/c;
    .locals 0

    invoke-direct {p0}, Lcom/criteo/publisher/q;->az()Lcom/criteo/publisher/m0/c;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$UqVHMvQdCV9s_k-Uk0dcwBBVGM4(Lcom/criteo/publisher/q;)Lcom/criteo/publisher/e;
    .locals 0

    invoke-direct {p0}, Lcom/criteo/publisher/q;->av()Lcom/criteo/publisher/e;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$VFy2Jwc57E8HySDN4yAxVVawo8w(Lcom/criteo/publisher/q;)Lcom/criteo/publisher/b/b;
    .locals 0

    invoke-direct {p0}, Lcom/criteo/publisher/q;->ai()Lcom/criteo/publisher/b/b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$WBwXaMvj89Q-eZ6WHvxiQnSU2vE(Lcom/criteo/publisher/q;)Lcom/criteo/publisher/logging/n;
    .locals 0

    invoke-direct {p0}, Lcom/criteo/publisher/q;->G()Lcom/criteo/publisher/logging/n;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$Xdorx6b86oVV3NesXi7u9UgnXio(Lcom/criteo/publisher/q;)Lcom/criteo/publisher/model/x;
    .locals 0

    invoke-direct {p0}, Lcom/criteo/publisher/q;->ao()Lcom/criteo/publisher/model/x;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$Zz2g7Xi3nSXEGEQ5ihAf37vL_f8(Lcom/criteo/publisher/q;)Lcom/criteo/publisher/model/g;
    .locals 0

    invoke-direct {p0}, Lcom/criteo/publisher/q;->at()Lcom/criteo/publisher/model/g;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$aKmzRek9XnYP54IulMk3n1VN_kU(Lcom/criteo/publisher/q;)Lcom/criteo/publisher/f/ab;
    .locals 0

    invoke-direct {p0}, Lcom/criteo/publisher/q;->W()Lcom/criteo/publisher/f/ab;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$aSgZeT6fWGwoLpXXe_hNJs7cnQc(Lcom/criteo/publisher/q;)Lcom/criteo/publisher/advancednative/l;
    .locals 0

    invoke-direct {p0}, Lcom/criteo/publisher/q;->ak()Lcom/criteo/publisher/advancednative/l;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$c8JdG9jJvuhQ2_0fjoN2YXrE8bE(Lcom/criteo/publisher/q;)Lcom/criteo/publisher/logging/h;
    .locals 0

    invoke-direct {p0}, Lcom/criteo/publisher/q;->P()Lcom/criteo/publisher/logging/h;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$ciTA8ZFNYnYruUvn19aRr_df5p8(Lcom/criteo/publisher/q;)Lcom/criteo/publisher/context/b;
    .locals 0

    invoke-direct {p0}, Lcom/criteo/publisher/q;->N()Lcom/criteo/publisher/context/b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$eHcfcllqEIgF--plNCqdMNY4_OQ(Lcom/criteo/publisher/q;)Lcom/squareup/picasso/Picasso;
    .locals 0

    invoke-direct {p0}, Lcom/criteo/publisher/q;->ag()Lcom/squareup/picasso/Picasso;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$gNX-6Ts_jlt3A6d-0_Z9UOVKV3k(Lcom/criteo/publisher/q;)Lcom/criteo/publisher/k/c;
    .locals 0

    invoke-direct {p0}, Lcom/criteo/publisher/q;->aw()Lcom/criteo/publisher/k/c;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$jxnYvEtcWRl3UpaeRMApzDJNU-M(Lcom/criteo/publisher/q;)Lcom/criteo/publisher/m/b;
    .locals 0

    invoke-direct {p0}, Lcom/criteo/publisher/q;->X()Lcom/criteo/publisher/m/b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$lBBjbpi5K_3MlQ74o5rX_03N6ng()Lcom/google/gson/f;
    .locals 1

    invoke-static {}, Lcom/criteo/publisher/q;->Q()Lcom/google/gson/f;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$lDTUCEoC3PG3sA0_0go_ZZTHF5s(Lcom/criteo/publisher/q;)Lcom/criteo/publisher/f/aa;
    .locals 0

    invoke-direct {p0}, Lcom/criteo/publisher/q;->T()Lcom/criteo/publisher/f/aa;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$m1-HlWNSNkIBZ1wC4ZxSpH6AFSY(Lcom/criteo/publisher/q;)Lcom/criteo/publisher/f/z;
    .locals 0

    invoke-direct {p0}, Lcom/criteo/publisher/q;->U()Lcom/criteo/publisher/f/z;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$mZ45yLv8LwKQiDQKF1--mXUU-Cc(Lcom/criteo/publisher/q;)Lcom/criteo/publisher/f/ac;
    .locals 0

    invoke-direct {p0}, Lcom/criteo/publisher/q;->V()Lcom/criteo/publisher/f/ac;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$pUt_j7rvJXtIABN3ZTwT2bg6tWs(Lcom/criteo/publisher/q;)Lcom/criteo/publisher/j0/g;
    .locals 0

    invoke-direct {p0}, Lcom/criteo/publisher/q;->aB()Lcom/criteo/publisher/j0/g;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$t7MqcubEybl28QMP_Bl5fQad0bE(Lcom/criteo/publisher/q;)Lcom/criteo/publisher/c/a;
    .locals 0

    invoke-direct {p0}, Lcom/criteo/publisher/q;->al()Lcom/criteo/publisher/c/a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$tDN_fuUEFotSuOi6R2Lld8mRwB0(Lcom/criteo/publisher/q;)Lcom/criteo/publisher/advancednative/RendererHelper;
    .locals 0

    invoke-direct {p0}, Lcom/criteo/publisher/q;->ad()Lcom/criteo/publisher/advancednative/RendererHelper;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$tVSB2r-QXlkqlWsFk5I97cV8v7E(Lcom/criteo/publisher/q;)Lcom/criteo/publisher/logging/j;
    .locals 0

    invoke-direct {p0}, Lcom/criteo/publisher/q;->H()Lcom/criteo/publisher/logging/j;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$uAjBf-nCR7WhTEPq4Lq168RHsQ8(Lcom/criteo/publisher/q;)Lcom/criteo/publisher/j0/b;
    .locals 0

    invoke-direct {p0}, Lcom/criteo/publisher/q;->an()Lcom/criteo/publisher/j0/b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$vrz3YKdDOa7tmGSwNlTT55uPLZU(Lcom/criteo/publisher/q;)Lcom/criteo/publisher/logging/m;
    .locals 0

    invoke-direct {p0}, Lcom/criteo/publisher/q;->J()Lcom/criteo/publisher/logging/m;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$wb9-YX4VKjk4TGdx3W5zLO1xgvk(Lcom/criteo/publisher/q;)Lcom/criteo/publisher/c/d;
    .locals 0

    invoke-direct {p0}, Lcom/criteo/publisher/q;->ap()Lcom/criteo/publisher/c/d;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A()Lcom/criteo/publisher/logging/h;
    .locals 2

    .line 615
    new-instance v0, Lcom/criteo/publisher/-$$Lambda$q$c8JdG9jJvuhQ2_0fjoN2YXrE8bE;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/-$$Lambda$q$c8JdG9jJvuhQ2_0fjoN2YXrE8bE;-><init>(Lcom/criteo/publisher/q;)V

    const-class v1, Lcom/criteo/publisher/logging/h;

    invoke-direct {p0, v1, v0}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/logging/h;

    return-object v0
.end method

.method public final B()Lcom/criteo/publisher/logging/c;
    .locals 2

    .line 623
    new-instance v0, Lcom/criteo/publisher/-$$Lambda$q$TYbIVVeJMGqy1eBtOzP5Q2pgEyo;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/-$$Lambda$q$TYbIVVeJMGqy1eBtOzP5Q2pgEyo;-><init>(Lcom/criteo/publisher/q;)V

    const-class v1, Lcom/criteo/publisher/logging/c;

    invoke-direct {p0, v1, v0}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/logging/c;

    return-object v0
.end method

.method public final C()Lcom/criteo/publisher/x;
    .locals 2

    .line 647
    new-instance v0, Lcom/criteo/publisher/-$$Lambda$q$3k4Ivl7qMSTQU1ptjCOdyElKAJI;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/-$$Lambda$q$3k4Ivl7qMSTQU1ptjCOdyElKAJI;-><init>(Lcom/criteo/publisher/q;)V

    const-class v1, Lcom/criteo/publisher/x;

    invoke-direct {p0, v1, v0}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/x;

    return-object v0
.end method

.method public final D()Lcom/criteo/publisher/context/d;
    .locals 2

    .line 655
    sget-object v0, Lcom/criteo/publisher/-$$Lambda$q8YDARkVve_9Z-DWuaNKP-bSBZY;->INSTANCE:Lcom/criteo/publisher/-$$Lambda$q8YDARkVve_9Z-DWuaNKP-bSBZY;

    const-class v1, Lcom/criteo/publisher/context/d;

    invoke-direct {p0, v1, v0}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/context/d;

    return-object v0
.end method

.method public final E()Lcom/criteo/publisher/logging/j;
    .locals 2

    .line 692
    new-instance v0, Lcom/criteo/publisher/-$$Lambda$q$tVSB2r-QXlkqlWsFk5I97cV8v7E;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/-$$Lambda$q$tVSB2r-QXlkqlWsFk5I97cV8v7E;-><init>(Lcom/criteo/publisher/q;)V

    const-class v1, Lcom/criteo/publisher/logging/j;

    invoke-direct {p0, v1, v0}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/logging/j;

    return-object v0
.end method

.method final b()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/criteo/publisher/q;->b:Landroid/app/Application;

    if-eqz v0, :cond_0

    return-void

    .line 167
    :cond_0
    new-instance v0, Lcom/criteo/publisher/p;

    const-string v1, "Application reference is required"

    invoke-direct {v0, v1}, Lcom/criteo/publisher/p;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final c()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/criteo/publisher/q;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/criteo/publisher/m0/s;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 173
    :cond_0
    new-instance v0, Lcom/criteo/publisher/p;

    const-string v1, "Criteo Publisher Id is required"

    invoke-direct {v0, v1}, Lcom/criteo/publisher/p;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e()Lcom/criteo/publisher/j0/g;
    .locals 2

    .line 196
    new-instance v0, Lcom/criteo/publisher/-$$Lambda$q$pUt_j7rvJXtIABN3ZTwT2bg6tWs;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/-$$Lambda$q$pUt_j7rvJXtIABN3ZTwT2bg6tWs;-><init>(Lcom/criteo/publisher/q;)V

    const-class v1, Lcom/criteo/publisher/j0/g;

    invoke-direct {p0, v1, v0}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/j0/g;

    return-object v0
.end method

.method public final f()Lcom/criteo/publisher/m0/b;
    .locals 2

    .line 204
    new-instance v0, Lcom/criteo/publisher/-$$Lambda$q$G1lHhizzzlNeKLk-xodAiDmch94;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/-$$Lambda$q$G1lHhizzzlNeKLk-xodAiDmch94;-><init>(Lcom/criteo/publisher/q;)V

    const-class v1, Lcom/criteo/publisher/m0/b;

    invoke-direct {p0, v1, v0}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/m0/b;

    return-object v0
.end method

.method public final g()Lcom/criteo/publisher/m0/k;
    .locals 2

    .line 220
    new-instance v0, Lcom/criteo/publisher/-$$Lambda$q$DivLmbohvFQ0O6frOgOm6q_PONA;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/-$$Lambda$q$DivLmbohvFQ0O6frOgOm6q_PONA;-><init>(Lcom/criteo/publisher/q;)V

    const-class v1, Lcom/criteo/publisher/m0/k;

    invoke-direct {p0, v1, v0}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/m0/k;

    return-object v0
.end method

.method public final h()Ljava/util/concurrent/Executor;
    .locals 2

    .line 227
    new-instance v0, Lcom/criteo/publisher/e/d;

    invoke-direct {v0}, Lcom/criteo/publisher/e/d;-><init>()V

    const-class v1, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {p0, v1, v0}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final i()Lcom/criteo/publisher/e/c;
    .locals 2

    .line 237
    sget-object v0, Lcom/criteo/publisher/-$$Lambda$xnw9oTeSMXyS_kkpsCmvcOQNoeg;->INSTANCE:Lcom/criteo/publisher/-$$Lambda$xnw9oTeSMXyS_kkpsCmvcOQNoeg;

    const-class v1, Lcom/criteo/publisher/e/c;

    invoke-direct {p0, v1, v0}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/e/c;

    return-object v0
.end method

.method public final j()Lcom/criteo/publisher/model/t;
    .locals 2

    .line 242
    new-instance v0, Lcom/criteo/publisher/-$$Lambda$q$PGiI0qH6Prr86aS7RzMZjqAb_mw;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/-$$Lambda$q$PGiI0qH6Prr86aS7RzMZjqAb_mw;-><init>(Lcom/criteo/publisher/q;)V

    const-class v1, Lcom/criteo/publisher/model/t;

    invoke-direct {p0, v1, v0}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/model/t;

    return-object v0
.end method

.method public final k()Lcom/criteo/publisher/k/c;
    .locals 2

    .line 255
    new-instance v0, Lcom/criteo/publisher/-$$Lambda$q$gNX-6Ts_jlt3A6d-0_Z9UOVKV3k;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/-$$Lambda$q$gNX-6Ts_jlt3A6d-0_Z9UOVKV3k;-><init>(Lcom/criteo/publisher/q;)V

    const-class v1, Lcom/criteo/publisher/k/c;

    invoke-direct {p0, v1, v0}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/k/c;

    return-object v0
.end method

.method public final l()Lcom/criteo/publisher/e;
    .locals 2

    .line 262
    new-instance v0, Lcom/criteo/publisher/-$$Lambda$q$UqVHMvQdCV9s_k-Uk0dcwBBVGM4;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/-$$Lambda$q$UqVHMvQdCV9s_k-Uk0dcwBBVGM4;-><init>(Lcom/criteo/publisher/q;)V

    const-class v1, Lcom/criteo/publisher/e;

    invoke-direct {p0, v1, v0}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/e;

    return-object v0
.end method

.method public final m()Lcom/criteo/publisher/model/u;
    .locals 2

    .line 278
    new-instance v0, Lcom/criteo/publisher/-$$Lambda$q$6CYu_PMpDctRtlT6zKb6mqN8THs;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/-$$Lambda$q$6CYu_PMpDctRtlT6zKb6mqN8THs;-><init>(Lcom/criteo/publisher/q;)V

    const-class v1, Lcom/criteo/publisher/model/u;

    invoke-direct {p0, v1, v0}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/model/u;

    return-object v0
.end method

.method public final n()Lcom/criteo/publisher/m0/e;
    .locals 2

    .line 306
    new-instance v0, Lcom/criteo/publisher/-$$Lambda$q$HjgIFX492MM7-3jZCg7tEr8AmME;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/-$$Lambda$q$HjgIFX492MM7-3jZCg7tEr8AmME;-><init>(Lcom/criteo/publisher/q;)V

    const-class v1, Lcom/criteo/publisher/m0/e;

    invoke-direct {p0, v1, v0}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/m0/e;

    return-object v0
.end method

.method public final o()Lcom/criteo/publisher/m0/g;
    .locals 2

    .line 314
    sget-object v0, Lcom/criteo/publisher/-$$Lambda$vkHxNkyHHDGveQEcnVsIVAyL0eU;->INSTANCE:Lcom/criteo/publisher/-$$Lambda$vkHxNkyHHDGveQEcnVsIVAyL0eU;

    const-class v1, Lcom/criteo/publisher/m0/g;

    invoke-direct {p0, v1, v0}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/m0/g;

    return-object v0
.end method

.method public final p()Lcom/criteo/publisher/c/a;
    .locals 2

    .line 376
    new-instance v0, Lcom/criteo/publisher/-$$Lambda$q$t7MqcubEybl28QMP_Bl5fQad0bE;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/-$$Lambda$q$t7MqcubEybl28QMP_Bl5fQad0bE;-><init>(Lcom/criteo/publisher/q;)V

    const-class v1, Lcom/criteo/publisher/c/a;

    invoke-direct {p0, v1, v0}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/c/a;

    return-object v0
.end method

.method public final q()Lcom/criteo/publisher/advancednative/l;
    .locals 2

    .line 397
    new-instance v0, Lcom/criteo/publisher/-$$Lambda$q$aSgZeT6fWGwoLpXXe_hNJs7cnQc;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/-$$Lambda$q$aSgZeT6fWGwoLpXXe_hNJs7cnQc;-><init>(Lcom/criteo/publisher/q;)V

    const-class v1, Lcom/criteo/publisher/advancednative/l;

    invoke-direct {p0, v1, v0}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/advancednative/l;

    return-object v0
.end method

.method public final r()Lcom/criteo/publisher/b/b;
    .locals 2

    .line 429
    new-instance v0, Lcom/criteo/publisher/-$$Lambda$q$VFy2Jwc57E8HySDN4yAxVVawo8w;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/-$$Lambda$q$VFy2Jwc57E8HySDN4yAxVVawo8w;-><init>(Lcom/criteo/publisher/q;)V

    const-class v1, Lcom/criteo/publisher/b/b;

    invoke-direct {p0, v1, v0}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/b/b;

    return-object v0
.end method

.method public final s()Lcom/criteo/publisher/advancednative/b;
    .locals 2

    .line 436
    new-instance v0, Lcom/criteo/publisher/-$$Lambda$q$PqI8wAa-2HV9AZ7vTnBTchz3gJw;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/-$$Lambda$q$PqI8wAa-2HV9AZ7vTnBTchz3gJw;-><init>(Lcom/criteo/publisher/q;)V

    const-class v1, Lcom/criteo/publisher/advancednative/b;

    invoke-direct {p0, v1, v0}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/advancednative/b;

    return-object v0
.end method

.method public final t()Lcom/criteo/publisher/advancednative/h;
    .locals 2

    .line 457
    new-instance v0, Lcom/criteo/publisher/-$$Lambda$q$4Alx2ugn84btv5IjvtC_tkda45s;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/-$$Lambda$q$4Alx2ugn84btv5IjvtC_tkda45s;-><init>(Lcom/criteo/publisher/q;)V

    const-class v1, Lcom/criteo/publisher/advancednative/h;

    invoke-direct {p0, v1, v0}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/advancednative/h;

    return-object v0
.end method

.method public final u()Lcom/criteo/publisher/i/c;
    .locals 2

    .line 483
    new-instance v0, Lcom/criteo/publisher/-$$Lambda$q$2SMzjd3Y3lEwIyXkgKYbpg8mgXc;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/-$$Lambda$q$2SMzjd3Y3lEwIyXkgKYbpg8mgXc;-><init>(Lcom/criteo/publisher/q;)V

    const-class v1, Lcom/criteo/publisher/i/c;

    invoke-direct {p0, v1, v0}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/i/c;

    return-object v0
.end method

.method public final v()Lcom/criteo/publisher/i;
    .locals 2

    .line 504
    new-instance v0, Lcom/criteo/publisher/-$$Lambda$q$7s2SS5sbxeMkg77IesHsP19rRi0;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/-$$Lambda$q$7s2SS5sbxeMkg77IesHsP19rRi0;-><init>(Lcom/criteo/publisher/q;)V

    const-class v1, Lcom/criteo/publisher/i;

    invoke-direct {p0, v1, v0}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/i;

    return-object v0
.end method

.method public final w()Lcom/criteo/publisher/h/c;
    .locals 2

    .line 513
    new-instance v0, Lcom/criteo/publisher/-$$Lambda$q$HQsbB3otj-77aMoMWT2S5KUQo2s;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/-$$Lambda$q$HQsbB3otj-77aMoMWT2S5KUQo2s;-><init>(Lcom/criteo/publisher/q;)V

    const-class v1, Lcom/criteo/publisher/h/c;

    invoke-direct {p0, v1, v0}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/h/c;

    return-object v0
.end method

.method public final x()Lcom/criteo/publisher/j/a;
    .locals 2

    .line 525
    new-instance v0, Lcom/criteo/publisher/-$$Lambda$q$7WMksuEVaXjEQp-f4WmrDR9kZYU;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/-$$Lambda$q$7WMksuEVaXjEQp-f4WmrDR9kZYU;-><init>(Lcom/criteo/publisher/q;)V

    const-class v1, Lcom/criteo/publisher/j/a;

    invoke-direct {p0, v1, v0}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/j/a;

    return-object v0
.end method

.method public final y()Lcom/criteo/publisher/m/b;
    .locals 2

    .line 533
    new-instance v0, Lcom/criteo/publisher/-$$Lambda$q$jxnYvEtcWRl3UpaeRMApzDJNU-M;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/-$$Lambda$q$jxnYvEtcWRl3UpaeRMApzDJNU-M;-><init>(Lcom/criteo/publisher/q;)V

    const-class v1, Lcom/criteo/publisher/m/b;

    invoke-direct {p0, v1, v0}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/m/b;

    return-object v0
.end method

.method public final z()Lcom/criteo/publisher/m0/l;
    .locals 2

    .line 601
    new-instance v0, Lcom/criteo/publisher/-$$Lambda$q$-GEknBpL5cQNb3iWlhv0UBxI02Y;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/-$$Lambda$q$-GEknBpL5cQNb3iWlhv0UBxI02Y;-><init>(Lcom/criteo/publisher/q;)V

    const-class v1, Lcom/criteo/publisher/m0/l;

    invoke-direct {p0, v1, v0}, Lcom/criteo/publisher/q;->a(Ljava/lang/Class;Lcom/criteo/publisher/q$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/m0/l;

    return-object v0
.end method
