.class public final Lcom/google/android/gms/internal/ads/cuy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile d:Lcom/google/android/gms/internal/ads/aut$a$c;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lcom/google/android/gms/tasks/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/h<",
            "Lcom/google/android/gms/internal/ads/ehq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    sget-object v0, Lcom/google/android/gms/internal/ads/aut$a$c;->zzep:Lcom/google/android/gms/internal/ads/aut$a$c;

    sput-object v0, Lcom/google/android/gms/internal/ads/cuy;->d:Lcom/google/android/gms/internal/ads/aut$a$c;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/h<",
            "Lcom/google/android/gms/internal/ads/ehq;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cuy;->a:Landroid/content/Context;

    .line 8
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cuy;->b:Ljava/util/concurrent/Executor;

    .line 9
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cuy;->c:Lcom/google/android/gms/tasks/h;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/cuy;
    .locals 2

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/cva;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/cva;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/tasks/k;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/h;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/google/android/gms/internal/ads/cuy;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/ads/cuy;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/h;)V

    return-object v1
.end method

.method static final synthetic a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/ehq;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/google/android/gms/internal/ads/ehq;

    const-string v1, "GLAS"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/ads/ehq;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final a(IJLjava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/Exception;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/h<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/aut$a;->a()Lcom/google/android/gms/internal/ads/aut$a$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cuy;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/aut$a$b;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/aut$a$b;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/aut$a$b;->a(J)Lcom/google/android/gms/internal/ads/aut$a$b;

    move-result-object p2

    .line 17
    sget-object p3, Lcom/google/android/gms/internal/ads/cuy;->d:Lcom/google/android/gms/internal/ads/aut$a$c;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/aut$a$b;->a(Lcom/google/android/gms/internal/ads/aut$a$c;)Lcom/google/android/gms/internal/ads/aut$a$b;

    if-eqz p4, :cond_0

    .line 20
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/cyq;->c(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/aut$a$b;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/aut$a$b;

    move-result-object p3

    .line 21
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/ads/aut$a$b;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/aut$a$b;

    :cond_0
    if-eqz p6, :cond_1

    .line 23
    invoke-virtual {p2, p6}, Lcom/google/android/gms/internal/ads/aut$a$b;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/aut$a$b;

    :cond_1
    if-eqz p5, :cond_2

    .line 25
    invoke-virtual {p2, p5}, Lcom/google/android/gms/internal/ads/aut$a$b;->e(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/aut$a$b;

    .line 27
    :cond_2
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/cuy;->c:Lcom/google/android/gms/tasks/h;

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/cuy;->b:Ljava/util/concurrent/Executor;

    new-instance p5, Lcom/google/android/gms/internal/ads/cuz;

    invoke-direct {p5, p2, p1}, Lcom/google/android/gms/internal/ads/cuz;-><init>(Lcom/google/android/gms/internal/ads/aut$a$b;I)V

    invoke-virtual {p3, p4, p5}, Lcom/google/android/gms/tasks/h;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/b;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    return-object p1
.end method

.method static final synthetic a(Lcom/google/android/gms/internal/ads/aut$a$b;ILcom/google/android/gms/tasks/h;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/h;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/h;->d()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/ehq;

    .line 1067
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dnh$b;->d()Lcom/google/android/gms/internal/ads/dnh;

    move-result-object p0

    .line 31
    check-cast p0, Lcom/google/android/gms/internal/ads/dnh;

    check-cast p0, Lcom/google/android/gms/internal/ads/aut$a;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dln;->g()[B

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/ehq;->a([B)Lcom/google/android/gms/internal/ads/ehu;

    move-result-object p0

    .line 2016
    iput p1, p0, Lcom/google/android/gms/internal/ads/ehu;->b:I

    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ehu;->a()V

    .line 34
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 35
    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method static a(Lcom/google/android/gms/internal/ads/aut$a$c;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/google/android/gms/internal/ads/cuy;->d:Lcom/google/android/gms/internal/ads/aut$a$c;

    return-void
.end method


# virtual methods
.method public final a(IJ)Lcom/google/android/gms/tasks/h;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Lcom/google/android/gms/tasks/h<",
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

    .line 11
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/cuy;->a(IJLjava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    return-object p1
.end method

.method public final a(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/h;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/Exception;",
            ")",
            "Lcom/google/android/gms/tasks/h<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    .line 12
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/cuy;->a(IJLjava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    return-object p1
.end method

.method public final a(IJLjava/lang/String;)Lcom/google/android/gms/tasks/h;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/h<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v5, p4

    .line 13
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/cuy;->a(IJLjava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    return-object p1
.end method

.method public final a(ILjava/lang/String;)Lcom/google/android/gms/tasks/h;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/h<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v6, p2

    .line 14
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/cuy;->a(IJLjava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    return-object p1
.end method

.method public final b(IJLjava/lang/String;)Lcom/google/android/gms/tasks/h;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/h<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v6, p4

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/cuy;->a(IJLjava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    return-object p1
.end method
