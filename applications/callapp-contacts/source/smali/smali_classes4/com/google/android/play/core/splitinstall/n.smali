.class final Lcom/google/android/play/core/splitinstall/n;
.super Ljava/lang/Object;


# static fields
.field private static final b:Lcom/google/android/play/core/internal/h;

.field private static final c:Landroid/content/Intent;


# instance fields
.field a:Lcom/google/android/play/core/internal/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/r<",
            "Lcom/google/android/play/core/internal/ak;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/play/core/internal/h;

    const-string v1, "SplitInstallService"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/splitinstall/n;->b:Lcom/google/android/play/core/internal/h;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.play.core.splitinstall.BIND_SPLIT_INSTALL_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/google/android/play/core/splitinstall/n;->c:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/splitinstall/n;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/play/core/internal/ao;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/play/core/internal/r;

    invoke-static {p1}, Lcom/google/android/play/core/splitcompat/q;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/google/android/play/core/splitinstall/n;->b:Lcom/google/android/play/core/internal/h;

    sget-object v5, Lcom/google/android/play/core/splitinstall/n;->c:Landroid/content/Intent;

    sget-object v6, Lcom/google/android/play/core/splitinstall/h;->a:Lcom/google/android/play/core/internal/n;

    const-string v4, "SplitInstallService"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/play/core/internal/r;-><init>(Landroid/content/Context;Lcom/google/android/play/core/internal/h;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/play/core/internal/n;)V

    iput-object v0, p0, Lcom/google/android/play/core/splitinstall/n;->a:Lcom/google/android/play/core/internal/r;

    :cond_0
    return-void
.end method

.method static synthetic a()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "playcore_version_code"

    const/16 v2, 0x2af8

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/play/core/splitinstall/n;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/n;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "module_name"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static synthetic b()Lcom/google/android/play/core/internal/h;
    .locals 1

    sget-object v0, Lcom/google/android/play/core/splitinstall/n;->b:Lcom/google/android/play/core/internal/h;

    return-object v0
.end method

.method static synthetic b(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "language"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static c()Lcom/google/android/play/core/tasks/d;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/play/core/tasks/d<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/play/core/splitinstall/n;->b:Lcom/google/android/play/core/internal/h;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, -0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const-string v3, "onError(%d)"

    invoke-virtual {v0, v3, v1}, Lcom/google/android/play/core/internal/h;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/play/core/splitinstall/SplitInstallException;

    invoke-direct {v0, v2}, Lcom/google/android/play/core/splitinstall/SplitInstallException;-><init>(I)V

    invoke-static {v0}, Lcom/google/android/play/core/tasks/f;->a(Ljava/lang/Exception;)Lcom/google/android/play/core/tasks/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(I)Lcom/google/android/play/core/tasks/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/play/core/tasks/d<",
            "Lcom/google/android/play/core/splitinstall/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/n;->a:Lcom/google/android/play/core/internal/r;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/play/core/splitinstall/n;->c()Lcom/google/android/play/core/tasks/d;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lcom/google/android/play/core/splitinstall/n;->b:Lcom/google/android/play/core/internal/h;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "getSessionState(%d)"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/internal/h;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/play/core/tasks/p;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/p;-><init>()V

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/n;->a:Lcom/google/android/play/core/internal/r;

    new-instance v2, Lcom/google/android/play/core/splitinstall/j;

    invoke-direct {v2, p0, v0, p1, v0}, Lcom/google/android/play/core/splitinstall/j;-><init>(Lcom/google/android/play/core/splitinstall/n;Lcom/google/android/play/core/tasks/p;ILcom/google/android/play/core/tasks/p;)V

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/internal/r;->a(Lcom/google/android/play/core/internal/i;)V

    .line 2000
    iget-object p1, v0, Lcom/google/android/play/core/tasks/p;->a:Lcom/google/android/play/core/tasks/s;

    return-object p1
.end method

.method public final a(Ljava/util/Collection;Ljava/util/Collection;)Lcom/google/android/play/core/tasks/d;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/play/core/tasks/d<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/n;->a:Lcom/google/android/play/core/internal/r;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/play/core/splitinstall/n;->c()Lcom/google/android/play/core/tasks/d;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lcom/google/android/play/core/splitinstall/n;->b:Lcom/google/android/play/core/internal/h;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v2, "startInstall(%s,%s)"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/internal/h;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/play/core/tasks/p;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/p;-><init>()V

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/n;->a:Lcom/google/android/play/core/internal/r;

    new-instance v2, Lcom/google/android/play/core/splitinstall/i;

    move-object v3, v2

    move-object v4, p0

    move-object v5, v0

    move-object v6, p1

    move-object v7, p2

    move-object v8, v0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/play/core/splitinstall/i;-><init>(Lcom/google/android/play/core/splitinstall/n;Lcom/google/android/play/core/tasks/p;Ljava/util/Collection;Ljava/util/Collection;Lcom/google/android/play/core/tasks/p;)V

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/internal/r;->a(Lcom/google/android/play/core/internal/i;)V

    .line 1000
    iget-object p1, v0, Lcom/google/android/play/core/tasks/p;->a:Lcom/google/android/play/core/tasks/s;

    return-object p1
.end method
