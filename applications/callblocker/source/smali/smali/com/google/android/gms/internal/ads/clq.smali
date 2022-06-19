.class public final Lcom/google/android/gms/internal/ads/clq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.1.0"


# static fields
.field private static volatile d:Lcom/google/android/gms/internal/ads/akn$a$c;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lcom/google/android/gms/tasks/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/g",
            "<",
            "Lcom/google/android/gms/internal/ads/dwn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/android/gms/internal/ads/akn$a$c;->a:Lcom/google/android/gms/internal/ads/akn$a$c;

    sput-object v0, Lcom/google/android/gms/internal/ads/clq;->d:Lcom/google/android/gms/internal/ads/akn$a$c;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/g",
            "<",
            "Lcom/google/android/gms/internal/ads/dwn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/clq;->a:Landroid/content/Context;

    .line 8
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/clq;->b:Ljava/util/concurrent/Executor;

    .line 9
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/clq;->c:Lcom/google/android/gms/tasks/g;

    .line 10
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/clq;
    .locals 2

    .prologue
    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/cls;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/cls;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/tasks/j;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/google/android/gms/internal/ads/clq;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/ads/clq;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/g;)V

    return-object v1
.end method

.method static final synthetic a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/dwn;
    .locals 3

    .prologue
    .line 35
    new-instance v0, Lcom/google/android/gms/internal/ads/dwn;

    const-string/jumbo v1, "GLAS"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/ads/dwn;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final a(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/tasks/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/Exception;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/g",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/akn$a;->a()Lcom/google/android/gms/internal/ads/akn$a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/clq;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/akn$a$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/akn$a$a;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/akn$a$a;->a(J)Lcom/google/android/gms/internal/ads/akn$a$a;

    move-result-object v0

    .line 16
    sget-object v1, Lcom/google/android/gms/internal/ads/clq;->d:Lcom/google/android/gms/internal/ads/akn$a$c;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/akn$a$a;->a(Lcom/google/android/gms/internal/ads/akn$a$c;)Lcom/google/android/gms/internal/ads/akn$a$a;

    .line 17
    if-eqz p4, :cond_0

    .line 19
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/cou;->c(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/akn$a$a;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/akn$a$a;

    move-result-object v1

    .line 20
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/akn$a$a;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/akn$a$a;

    .line 21
    :cond_0
    if-eqz p7, :cond_1

    .line 22
    invoke-virtual {v0, p7}, Lcom/google/android/gms/internal/ads/akn$a$a;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/akn$a$a;

    .line 23
    :cond_1
    if-eqz p5, :cond_2

    .line 24
    invoke-virtual {v0, p5}, Lcom/google/android/gms/internal/ads/akn$a$a;->e(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/akn$a$a;

    .line 26
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/clq;->c:Lcom/google/android/gms/tasks/g;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/clq;->b:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/android/gms/internal/ads/clr;

    invoke-direct {v3, v0, p1}, Lcom/google/android/gms/internal/ads/clr;-><init>(Lcom/google/android/gms/internal/ads/akn$a$a;I)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/tasks/g;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/a;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    return-object v0
.end method

.method static final synthetic a(Lcom/google/android/gms/internal/ads/akn$a$a;ILcom/google/android/gms/tasks/g;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 27
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/g;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/g;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dwn;

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dcw$a;->g()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/dcw;

    check-cast v1, Lcom/google/android/gms/internal/ads/akn$a;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/day;->l()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dwn;->a([B)Lcom/google/android/gms/internal/ads/dws;

    move-result-object v0

    .line 31
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dws;->b(I)Lcom/google/android/gms/internal/ads/dws;

    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dws;->a()V

    .line 33
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 34
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Lcom/google/android/gms/internal/ads/akn$a$c;)V
    .locals 0

    .prologue
    .line 1
    sput-object p0, Lcom/google/android/gms/internal/ads/clq;->d:Lcom/google/android/gms/internal/ads/akn$a$c;

    .line 2
    return-void
.end method


# virtual methods
.method public final a(IJ)Lcom/google/android/gms/tasks/g;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Lcom/google/android/gms/tasks/g",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 11
    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/clq;->a(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    return-object v0
.end method

.method public final a(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/g;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/Exception;",
            ")",
            "Lcom/google/android/gms/tasks/g",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 12
    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v6, v5

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/clq;->a(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    return-object v0
.end method

.method public final a(IJLjava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/tasks/g;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/tasks/g",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 13
    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v5, p4

    move-object v6, v4

    move-object v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/clq;->a(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    return-object v0
.end method

.method public final a(ILjava/lang/String;)Lcom/google/android/gms/tasks/g;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/g",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 14
    const/16 v1, 0xfa7

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/clq;->a(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    return-object v0
.end method
