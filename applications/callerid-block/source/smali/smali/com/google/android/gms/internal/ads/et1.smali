.class public final Lcom/google/android/gms/internal/ads/et1;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile e:Lcom/google/android/gms/internal/ads/zzca;

.field public static final synthetic f:I


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lcom/google/android/gms/tasks/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/g<",
            "Lcom/google/android/gms/internal/ads/dv1;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzca;->b:Lcom/google/android/gms/internal/ads/zzca;

    sput-object v0, Lcom/google/android/gms/internal/ads/et1;->e:Lcom/google/android/gms/internal/ads/zzca;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/g;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/g<",
            "Lcom/google/android/gms/internal/ads/dv1;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/et1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/et1;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/et1;->c:Lcom/google/android/gms/tasks/g;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/et1;->d:Z

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ads/zzca;)V
    .locals 0

    sput-object p0, Lcom/google/android/gms/internal/ads/et1;->e:Lcom/google/android/gms/internal/ads/zzca;

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)Lcom/google/android/gms/internal/ads/et1;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/bt1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/bt1;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/google/android/gms/tasks/j;->c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/et1;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/et1;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/g;Z)V

    return-object v1
.end method

.method private final h(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/tasks/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/Exception;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-boolean p6, p0, Lcom/google/android/gms/internal/ads/et1;->d:Z

    if-nez p6, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/et1;->c:Lcom/google/android/gms/tasks/g;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/et1;->b:Ljava/util/concurrent/Executor;

    sget-object p3, Lcom/google/android/gms/internal/ads/ct1;->a:Lcom/google/android/gms/tasks/a;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/tasks/g;->g(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/a;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/se0;->E()Lcom/google/android/gms/internal/ads/n80;

    move-result-object p6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/et1;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Lcom/google/android/gms/internal/ads/n80;->q(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/n80;

    invoke-virtual {p6, p2, p3}, Lcom/google/android/gms/internal/ads/n80;->r(J)Lcom/google/android/gms/internal/ads/n80;

    sget-object p2, Lcom/google/android/gms/internal/ads/et1;->e:Lcom/google/android/gms/internal/ads/zzca;

    invoke-virtual {p6, p2}, Lcom/google/android/gms/internal/ads/n80;->w(Lcom/google/android/gms/internal/ads/zzca;)Lcom/google/android/gms/internal/ads/n80;

    if-eqz p4, :cond_1

    invoke-static {p4}, Lcom/google/android/gms/internal/ads/vw1;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p6, p2}, Lcom/google/android/gms/internal/ads/n80;->s(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/n80;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p6, p2}, Lcom/google/android/gms/internal/ads/n80;->t(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/n80;

    :cond_1
    if-eqz p7, :cond_2

    invoke-virtual {p6, p7}, Lcom/google/android/gms/internal/ads/n80;->u(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/n80;

    :cond_2
    if-eqz p5, :cond_3

    invoke-virtual {p6, p5}, Lcom/google/android/gms/internal/ads/n80;->v(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/n80;

    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/et1;->c:Lcom/google/android/gms/tasks/g;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/et1;->b:Ljava/util/concurrent/Executor;

    new-instance p4, Lcom/google/android/gms/internal/ads/dt1;

    invoke-direct {p4, p6, p1}, Lcom/google/android/gms/internal/ads/dt1;-><init>(Lcom/google/android/gms/internal/ads/n80;I)V

    invoke-virtual {p2, p3, p4}, Lcom/google/android/gms/tasks/g;->g(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/a;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final c(IJ)Lcom/google/android/gms/tasks/g;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/et1;->h(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method

.method public final d(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/g;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/Exception;",
            ")",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/et1;->h(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method

.method public final e(IJLjava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/tasks/g;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/et1;->h(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method

.method public final f(ILjava/lang/String;)Lcom/google/android/gms/tasks/g;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/et1;->h(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method

.method public final g(IJLjava/lang/String;)Lcom/google/android/gms/tasks/g;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/et1;->h(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method
