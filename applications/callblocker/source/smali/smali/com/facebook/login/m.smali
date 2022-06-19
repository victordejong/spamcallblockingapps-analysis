.class public Lcom/facebook/login/m;
.super Ljava/lang/Object;
.source "LoginManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/m$c;,
        Lcom/facebook/login/m$b;,
        Lcom/facebook/login/m$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile b:Lcom/facebook/login/m;


# instance fields
.field private c:Lcom/facebook/login/i;

.field private d:Lcom/facebook/login/b;

.field private final e:Landroid/content/SharedPreferences;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lcom/facebook/login/m;->c()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/facebook/login/m;->a:Ljava/util/Set;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    sget-object v0, Lcom/facebook/login/i;->a:Lcom/facebook/login/i;

    iput-object v0, p0, Lcom/facebook/login/m;->c:Lcom/facebook/login/i;

    .line 75
    sget-object v0, Lcom/facebook/login/b;->c:Lcom/facebook/login/b;

    iput-object v0, p0, Lcom/facebook/login/m;->d:Lcom/facebook/login/b;

    .line 77
    const-string/jumbo v0, "rerequest"

    iput-object v0, p0, Lcom/facebook/login/m;->f:Ljava/lang/String;

    .line 80
    invoke-static {}, Lcom/facebook/internal/y;->a()V

    .line 81
    invoke-static {}, Lcom/facebook/j;->h()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.facebook.loginManager"

    const/4 v2, 0x0

    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/m;->e:Landroid/content/SharedPreferences;

    .line 83
    return-void
.end method

.method public static a()Lcom/facebook/login/m;
    .locals 2

    .prologue
    .line 90
    sget-object v0, Lcom/facebook/login/m;->b:Lcom/facebook/login/m;

    if-nez v0, :cond_1

    .line 91
    const-class v1, Lcom/facebook/login/m;

    monitor-enter v1

    .line 92
    :try_start_0
    sget-object v0, Lcom/facebook/login/m;->b:Lcom/facebook/login/m;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/facebook/login/m;

    invoke-direct {v0}, Lcom/facebook/login/m;-><init>()V

    sput-object v0, Lcom/facebook/login/m;->b:Lcom/facebook/login/m;

    .line 95
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_1
    sget-object v0, Lcom/facebook/login/m;->b:Lcom/facebook/login/m;

    return-object v0

    .line 95
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static a(Lcom/facebook/login/j$c;Lcom/facebook/a;)Lcom/facebook/login/o;
    .locals 3

    .prologue
    .line 704
    invoke-virtual {p0}, Lcom/facebook/login/j$c;->a()Ljava/util/Set;

    move-result-object v0

    .line 705
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/facebook/a;->g()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 709
    invoke-virtual {p0}, Lcom/facebook/login/j$c;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 710
    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 713
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 714
    invoke-interface {v2, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 715
    new-instance v0, Lcom/facebook/login/o;

    invoke-direct {v0, p1, v1, v2}, Lcom/facebook/login/o;-><init>(Lcom/facebook/a;Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/facebook/login/j$c;)V
    .locals 1

    .prologue
    .line 620
    invoke-static {p1}, Lcom/facebook/login/m$c;->a(Landroid/content/Context;)Lcom/facebook/login/l;

    move-result-object v0

    .line 621
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 622
    invoke-virtual {v0, p2}, Lcom/facebook/login/l;->a(Lcom/facebook/login/j$c;)V

    .line 624
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/facebook/login/j$d$a;Ljava/util/Map;Ljava/lang/Exception;ZLcom/facebook/login/j$c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/login/j$d$a;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Exception;",
            "Z",
            "Lcom/facebook/login/j$c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 633
    invoke-static {p1}, Lcom/facebook/login/m$c;->a(Landroid/content/Context;)Lcom/facebook/login/l;

    move-result-object v0

    .line 634
    if-nez v0, :cond_0

    .line 658
    :goto_0
    return-void

    .line 637
    :cond_0
    if-nez p6, :cond_1

    .line 639
    const-string/jumbo v1, "fb_mobile_login_complete"

    const-string/jumbo v2, "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest."

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 644
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 645
    const-string/jumbo v3, "try_login_activity"

    if-eqz p5, :cond_2

    const-string/jumbo v1, "1"

    :goto_1
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    invoke-virtual {p6}, Lcom/facebook/login/j$c;->e()Ljava/lang/String;

    move-result-object v1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 651
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/login/l;->a(Ljava/lang/String;Ljava/util/Map;Lcom/facebook/login/j$d$a;Ljava/util/Map;Ljava/lang/Exception;)V

    goto :goto_0

    .line 645
    :cond_2
    const-string/jumbo v1, "0"

    goto :goto_1
.end method

.method private a(Lcom/facebook/a;Lcom/facebook/login/j$c;Lcom/facebook/FacebookException;ZLcom/facebook/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/a;",
            "Lcom/facebook/login/j$c;",
            "Lcom/facebook/FacebookException;",
            "Z",
            "Lcom/facebook/h",
            "<",
            "Lcom/facebook/login/o;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 724
    if-eqz p1, :cond_0

    .line 725
    invoke-static {p1}, Lcom/facebook/a;->a(Lcom/facebook/a;)V

    .line 726
    invoke-static {}, Lcom/facebook/r;->b()V

    .line 729
    :cond_0
    if-eqz p5, :cond_2

    .line 730
    if-eqz p1, :cond_3

    .line 731
    invoke-static {p2, p1}, Lcom/facebook/login/m;->a(Lcom/facebook/login/j$c;Lcom/facebook/a;)Lcom/facebook/login/o;

    move-result-object v0

    .line 734
    :goto_0
    if-nez p4, :cond_1

    if-eqz v0, :cond_4

    .line 736
    invoke-virtual {v0}, Lcom/facebook/login/o;->b()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 737
    :cond_1
    invoke-interface {p5}, Lcom/facebook/h;->a()V

    .line 745
    :cond_2
    :goto_1
    return-void

    .line 731
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 738
    :cond_4
    if-eqz p3, :cond_5

    .line 739
    invoke-interface {p5, p3}, Lcom/facebook/h;->a(Lcom/facebook/FacebookException;)V

    goto :goto_1

    .line 740
    :cond_5
    if-eqz p1, :cond_2

    .line 741
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/facebook/login/m;->a(Z)V

    .line 742
    invoke-interface {p5, v0}, Lcom/facebook/h;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private a(Lcom/facebook/login/r;Lcom/facebook/login/j$c;)V
    .locals 7

    .prologue
    .line 588
    invoke-interface {p1}, Lcom/facebook/login/r;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/facebook/login/m;->a(Landroid/content/Context;Lcom/facebook/login/j$c;)V

    .line 591
    sget-object v0, Lcom/facebook/internal/d$b;->a:Lcom/facebook/internal/d$b;

    .line 592
    invoke-virtual {v0}, Lcom/facebook/internal/d$b;->a()I

    move-result v0

    new-instance v1, Lcom/facebook/login/m$3;

    invoke-direct {v1, p0}, Lcom/facebook/login/m$3;-><init>(Lcom/facebook/login/m;)V

    .line 591
    invoke-static {v0, v1}, Lcom/facebook/internal/d;->a(ILcom/facebook/internal/d$a;)V

    .line 601
    invoke-direct {p0, p1, p2}, Lcom/facebook/login/m;->b(Lcom/facebook/login/r;Lcom/facebook/login/j$c;)Z

    move-result v0

    .line 603
    if-nez v0, :cond_0

    .line 604
    new-instance v4, Lcom/facebook/FacebookException;

    const-string/jumbo v0, "Log in attempt failed: FacebookActivity could not be started. Please make sure you added FacebookActivity to the AndroidManifest."

    invoke-direct {v4, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 607
    const/4 v5, 0x0

    .line 609
    invoke-interface {p1}, Lcom/facebook/login/r;->a()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/facebook/login/j$d$a;->c:Lcom/facebook/login/j$d$a;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v6, p2

    .line 608
    invoke-direct/range {v0 .. v6}, Lcom/facebook/login/m;->a(Landroid/content/Context;Lcom/facebook/login/j$d$a;Ljava/util/Map;Ljava/lang/Exception;ZLcom/facebook/login/j$c;)V

    .line 615
    throw v4

    .line 617
    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 857
    iget-object v0, p0, Lcom/facebook/login/m;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 858
    const-string/jumbo v1, "express_login_allowed"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 859
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 860
    return-void
.end method

.method private a(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 682
    invoke-static {}, Lcom/facebook/j;->h()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 683
    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 684
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private b(Lcom/facebook/login/r;Lcom/facebook/login/j$c;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 664
    invoke-virtual {p0, p2}, Lcom/facebook/login/m;->a(Lcom/facebook/login/j$c;)Landroid/content/Intent;

    move-result-object v1

    .line 666
    invoke-direct {p0, v1}, Lcom/facebook/login/m;->a(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 678
    :goto_0
    return v0

    .line 673
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/login/j;->d()I

    move-result v2

    .line 671
    invoke-interface {p1, v1, v2}, Lcom/facebook/login/r;->a(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    const/4 v0, 0x1

    goto :goto_0

    .line 674
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 543
    if-eqz p0, :cond_1

    const-string/jumbo v0, "publish"

    .line 544
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "manage"

    .line 545
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/login/m;->a:Ljava/util/Set;

    .line 546
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 543
    :goto_0
    return v0

    .line 546
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 550
    new-instance v0, Lcom/facebook/login/m$2;

    invoke-direct {v0}, Lcom/facebook/login/m$2;-><init>()V

    .line 555
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/facebook/login/j$c;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 688
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 689
    invoke-static {}, Lcom/facebook/j;->h()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/FacebookActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 690
    invoke-virtual {p1}, Lcom/facebook/login/j$c;->b()Lcom/facebook/login/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/login/i;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 693
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 694
    const-string/jumbo v2, "request"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 695
    const-string/jumbo v2, "com.facebook.LoginFragment:Request"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 697
    return-object v0
.end method

.method protected a(Ljava/util/Collection;)Lcom/facebook/login/j$c;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/login/j$c;"
        }
    .end annotation

    .prologue
    .line 559
    new-instance v0, Lcom/facebook/login/j$c;

    iget-object v1, p0, Lcom/facebook/login/m;->c:Lcom/facebook/login/i;

    if-eqz p1, :cond_0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 561
    :goto_0
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/login/m;->d:Lcom/facebook/login/b;

    iget-object v4, p0, Lcom/facebook/login/m;->f:Ljava/lang/String;

    .line 565
    invoke-static {}, Lcom/facebook/j;->l()Ljava/lang/String;

    move-result-object v5

    .line 566
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/login/j$c;-><init>(Lcom/facebook/login/i;Ljava/util/Set;Lcom/facebook/login/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    invoke-static {}, Lcom/facebook/a;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/login/j$c;->a(Z)V

    .line 569
    return-object v0

    .line 559
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    goto :goto_0
.end method

.method public a(Lcom/facebook/login/b;)Lcom/facebook/login/m;
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/facebook/login/m;->d:Lcom/facebook/login/b;

    .line 295
    return-object p0
.end method

.method public a(Lcom/facebook/login/i;)Lcom/facebook/login/m;
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/facebook/login/m;->c:Lcom/facebook/login/i;

    .line 277
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/facebook/login/m;
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/facebook/login/m;->f:Ljava/lang/String;

    .line 313
    return-object p0
.end method

.method public a(Landroid/app/Activity;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 509
    invoke-virtual {p0, p2}, Lcom/facebook/login/m;->a(Ljava/util/Collection;)Lcom/facebook/login/j$c;

    move-result-object v0

    .line 510
    new-instance v1, Lcom/facebook/login/m$a;

    invoke-direct {v1, p1}, Lcom/facebook/login/m$a;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/login/m;->a(Lcom/facebook/login/r;Lcom/facebook/login/j$c;)V

    .line 511
    return-void
.end method

.method public a(Landroid/app/Fragment;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 490
    new-instance v0, Lcom/facebook/internal/n;

    invoke-direct {v0, p1}, Lcom/facebook/internal/n;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {p0, v0, p2}, Lcom/facebook/login/m;->a(Lcom/facebook/internal/n;Ljava/util/Collection;)V

    .line 491
    return-void
.end method

.method public a(Landroidx/fragment/app/Fragment;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 481
    new-instance v0, Lcom/facebook/internal/n;

    invoke-direct {v0, p1}, Lcom/facebook/internal/n;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0, p2}, Lcom/facebook/login/m;->a(Lcom/facebook/internal/n;Ljava/util/Collection;)V

    .line 482
    return-void
.end method

.method public a(Lcom/facebook/f;Lcom/facebook/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/f;",
            "Lcom/facebook/h",
            "<",
            "Lcom/facebook/login/o;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    instance-of v0, p1, Lcom/facebook/internal/d;

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v1, "Unexpected CallbackManager, please use the provided Factory."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    check-cast p1, Lcom/facebook/internal/d;

    sget-object v0, Lcom/facebook/internal/d$b;->a:Lcom/facebook/internal/d$b;

    .line 170
    invoke-virtual {v0}, Lcom/facebook/internal/d$b;->a()I

    move-result v0

    new-instance v1, Lcom/facebook/login/m$1;

    invoke-direct {v1, p0, p2}, Lcom/facebook/login/m$1;-><init>(Lcom/facebook/login/m;Lcom/facebook/h;)V

    .line 169
    invoke-virtual {p1, v0, v1}, Lcom/facebook/internal/d;->b(ILcom/facebook/internal/d$a;)V

    .line 181
    return-void
.end method

.method public a(Lcom/facebook/internal/n;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/internal/n;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 499
    invoke-virtual {p0, p2}, Lcom/facebook/login/m;->a(Ljava/util/Collection;)Lcom/facebook/login/j$c;

    move-result-object v0

    .line 500
    new-instance v1, Lcom/facebook/login/m$b;

    invoke-direct {v1, p1}, Lcom/facebook/login/m$b;-><init>(Lcom/facebook/internal/n;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/login/m;->a(Lcom/facebook/login/r;Lcom/facebook/login/j$c;)V

    .line 501
    return-void
.end method

.method a(ILandroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/login/m;->a(ILandroid/content/Intent;Lcom/facebook/h;)Z

    move-result v0

    return v0
.end method

.method a(ILandroid/content/Intent;Lcom/facebook/h;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Intent;",
            "Lcom/facebook/h",
            "<",
            "Lcom/facebook/login/o;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 202
    const/4 v5, 0x0

    .line 203
    const/4 v4, 0x0

    .line 204
    sget-object v2, Lcom/facebook/login/j$d$a;->c:Lcom/facebook/login/j$d$a;

    .line 205
    const/4 v3, 0x0

    .line 206
    const/4 v6, 0x0

    .line 208
    const/4 v1, 0x0

    .line 209
    if-eqz p2, :cond_2

    .line 210
    const-string/jumbo v0, "com.facebook.LoginFragment:Result"

    .line 211
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/login/j$d;

    .line 212
    if-eqz v0, :cond_6

    .line 213
    iget-object v6, v0, Lcom/facebook/login/j$d;->e:Lcom/facebook/login/j$c;

    .line 214
    iget-object v8, v0, Lcom/facebook/login/j$d;->a:Lcom/facebook/login/j$d$a;

    .line 215
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 216
    iget-object v2, v0, Lcom/facebook/login/j$d;->a:Lcom/facebook/login/j$d$a;

    sget-object v3, Lcom/facebook/login/j$d$a;->a:Lcom/facebook/login/j$d$a;

    if-ne v2, v3, :cond_0

    .line 217
    iget-object v2, v0, Lcom/facebook/login/j$d;->b:Lcom/facebook/a;

    move-object v3, v5

    .line 224
    :goto_0
    iget-object v4, v0, Lcom/facebook/login/j$d;->f:Ljava/util/Map;

    move-object v0, v6

    move-object v7, v4

    move-object v9, v8

    move-object v10, v2

    move-object v5, v3

    :goto_1
    move v11, v1

    move-object v6, v0

    move-object v3, v7

    move-object v2, v9

    move-object v8, v10

    .line 231
    :goto_2
    if-nez v5, :cond_3

    if-nez v8, :cond_3

    if-nez v11, :cond_3

    .line 232
    new-instance v4, Lcom/facebook/FacebookException;

    const-string/jumbo v0, "Unexpected call to LoginManager.onActivityResult"

    invoke-direct {v4, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 235
    :goto_3
    const/4 v5, 0x1

    .line 236
    const/4 v1, 0x0

    move-object v0, p0

    .line 237
    invoke-direct/range {v0 .. v6}, Lcom/facebook/login/m;->a(Landroid/content/Context;Lcom/facebook/login/j$d$a;Ljava/util/Map;Ljava/lang/Exception;ZLcom/facebook/login/j$c;)V

    move-object v7, p0

    move-object v9, v6

    move-object v10, v4

    move-object/from16 v12, p3

    .line 245
    invoke-direct/range {v7 .. v12}, Lcom/facebook/login/m;->a(Lcom/facebook/a;Lcom/facebook/login/j$c;Lcom/facebook/FacebookException;ZLcom/facebook/h;)V

    .line 247
    const/4 v0, 0x1

    return v0

    .line 219
    :cond_0
    new-instance v3, Lcom/facebook/FacebookAuthorizationException;

    iget-object v2, v0, Lcom/facebook/login/j$d;->c:Ljava/lang/String;

    invoke-direct {v3, v2}, Lcom/facebook/FacebookAuthorizationException;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    goto :goto_0

    .line 221
    :cond_1
    if-nez p1, :cond_5

    .line 222
    const/4 v1, 0x1

    move-object v2, v4

    move-object v3, v5

    goto :goto_0

    .line 226
    :cond_2
    if-nez p1, :cond_4

    .line 227
    const/4 v1, 0x1

    .line 228
    sget-object v2, Lcom/facebook/login/j$d$a;->b:Lcom/facebook/login/j$d$a;

    move v11, v1

    move-object v8, v4

    goto :goto_2

    :cond_3
    move-object v4, v5

    goto :goto_3

    :cond_4
    move v11, v1

    move-object v8, v4

    goto :goto_2

    :cond_5
    move-object v2, v4

    move-object v3, v5

    goto :goto_0

    :cond_6
    move-object v0, v6

    move-object v7, v3

    move-object v9, v2

    move-object v10, v4

    goto :goto_1
.end method

.method public b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 320
    invoke-static {v0}, Lcom/facebook/a;->a(Lcom/facebook/a;)V

    .line 321
    invoke-static {v0}, Lcom/facebook/r;->a(Lcom/facebook/r;)V

    .line 322
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/login/m;->a(Z)V

    .line 323
    return-void
.end method
