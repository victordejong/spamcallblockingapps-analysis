.class public final Lcom/google/android/gms/internal/ads/mr2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field private static volatile a:I = 0x1

.field public static final synthetic b:I


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Ljava/util/concurrent/Executor;

.field private final e:Lcom/google/android/gms/tasks/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/g<",
            "Lcom/google/android/gms/internal/ads/jt2;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

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
            "Lcom/google/android/gms/internal/ads/jt2;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mr2;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/mr2;->d:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/mr2;->e:Lcom/google/android/gms/tasks/g;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/mr2;->f:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)Lcom/google/android/gms/internal/ads/mr2;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/jr2;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/jr2;-><init>(Landroid/content/Context;Z)V

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/tasks/j;->c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/mr2;

    .line 3
    invoke-direct {v1, p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/mr2;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/g;Z)V

    return-object v1
.end method

.method static g(I)V
    .locals 0

    sput p0, Lcom/google/android/gms/internal/ads/mr2;->a:I

    return-void
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

    .line 1
    iget-boolean p6, p0, Lcom/google/android/gms/internal/ads/mr2;->f:Z

    if-nez p6, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/mr2;->e:Lcom/google/android/gms/tasks/g;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/mr2;->d:Ljava/util/concurrent/Executor;

    sget-object p3, Lcom/google/android/gms/internal/ads/kr2;->a:Lcom/google/android/gms/tasks/a;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/tasks/g;->i(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/a;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/y04;->C()Lcom/google/android/gms/internal/ads/u04;

    move-result-object p6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mr2;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Lcom/google/android/gms/internal/ads/u04;->q(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/u04;

    invoke-virtual {p6, p2, p3}, Lcom/google/android/gms/internal/ads/u04;->r(J)Lcom/google/android/gms/internal/ads/u04;

    sget p2, Lcom/google/android/gms/internal/ads/mr2;->a:I

    .line 3
    invoke-virtual {p6, p2}, Lcom/google/android/gms/internal/ads/u04;->x(I)Lcom/google/android/gms/internal/ads/u04;

    if-eqz p4, :cond_1

    .line 4
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/kv2;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p6, p2}, Lcom/google/android/gms/internal/ads/u04;->s(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/u04;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p6, p2}, Lcom/google/android/gms/internal/ads/u04;->t(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/u04;

    :cond_1
    if-eqz p7, :cond_2

    .line 6
    invoke-virtual {p6, p7}, Lcom/google/android/gms/internal/ads/u04;->v(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/u04;

    :cond_2
    if-eqz p5, :cond_3

    .line 7
    invoke-virtual {p6, p5}, Lcom/google/android/gms/internal/ads/u04;->w(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/u04;

    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/mr2;->e:Lcom/google/android/gms/tasks/g;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/mr2;->d:Ljava/util/concurrent/Executor;

    .line 8
    new-instance p4, Lcom/google/android/gms/internal/ads/lr2;

    invoke-direct {p4, p6, p1}, Lcom/google/android/gms/internal/ads/lr2;-><init>(Lcom/google/android/gms/internal/ads/u04;I)V

    invoke-virtual {p2, p3, p4}, Lcom/google/android/gms/tasks/g;->i(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/a;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final b(IJ)Lcom/google/android/gms/tasks/g;
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

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/mr2;->h(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method

.method public final c(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/g;
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

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/mr2;->h(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method

.method public final d(IJLjava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/tasks/g;
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

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/mr2;->h(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method

.method public final e(ILjava/lang/String;)Lcom/google/android/gms/tasks/g;
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

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/mr2;->h(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method

.method public final f(IJLjava/lang/String;)Lcom/google/android/gms/tasks/g;
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

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/mr2;->h(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method
