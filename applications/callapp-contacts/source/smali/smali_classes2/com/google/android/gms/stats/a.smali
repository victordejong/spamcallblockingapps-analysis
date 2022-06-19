.class public final Lcom/google/android/gms/stats/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/stats/a$a;
    }
.end annotation


# static fields
.field public static i:Ljava/util/concurrent/ScheduledExecutorService;

.field private static volatile o:Lcom/google/android/gms/stats/a$a;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Landroid/os/PowerManager$WakeLock;

.field public c:Landroid/os/WorkSource;

.field public final d:Ljava/lang/String;

.field public e:Z

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public g:I

.field public h:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final j:I

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Landroid/content/Context;

.field private final n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/concurrent/Future<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 118
    new-instance v0, Lcom/google/android/gms/stats/b;

    invoke-direct {v0}, Lcom/google/android/gms/stats/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/stats/a;->o:Lcom/google/android/gms/stats/a$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 7

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v6, v0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    .line 3
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/stats/a;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p5

    .line 5
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/stats/a;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p0, p0, Lcom/google/android/gms/stats/a;->a:Ljava/lang/Object;

    const/4 p4, 0x1

    .line 9
    iput-boolean p4, p0, Lcom/google/android/gms/stats/a;->e:Z

    .line 10
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/google/android/gms/stats/a;->f:Ljava/util/Map;

    .line 11
    new-instance p4, Ljava/util/HashSet;

    invoke-direct {p4}, Ljava/util/HashSet;-><init>()V

    invoke-static {p4}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/gms/stats/a;->n:Ljava/util/Set;

    .line 12
    new-instance p4, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p6, 0x0

    invoke-direct {p4, p6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p4, p0, Lcom/google/android/gms/stats/a;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string p4, "WakeLock: context must not be null"

    .line 13
    invoke-static {p1, p4}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "WakeLock: wakeLockName must not be empty"

    .line 14
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    iput p2, p0, Lcom/google/android/gms/stats/a;->j:I

    const/4 p4, 0x0

    .line 16
    iput-object p4, p0, Lcom/google/android/gms/stats/a;->k:Ljava/lang/String;

    .line 17
    iput-object p4, p0, Lcom/google/android/gms/stats/a;->l:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/gms/stats/a;->m:Landroid/content/Context;

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p6

    const-string v0, "com.google.android.gms"

    invoke-virtual {v0, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_1

    const-string p6, "*gcore*:"

    .line 20
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p6, v0

    :goto_0
    iput-object p6, p0, Lcom/google/android/gms/stats/a;->d:Ljava/lang/String;

    goto :goto_1

    .line 21
    :cond_1
    iput-object p3, p0, Lcom/google/android/gms/stats/a;->d:Ljava/lang/String;

    :goto_1
    const-string p6, "power"

    .line 23
    invoke-virtual {p1, p6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroid/os/PowerManager;

    .line 24
    invoke-virtual {p6, p2, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/stats/a;->b:Landroid/os/PowerManager$WakeLock;

    .line 25
    invoke-static {p1}, Lcom/google/android/gms/common/util/t;->a(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 26
    invoke-static {p5}, Lcom/google/android/gms/common/util/r;->a(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p5

    .line 30
    :cond_2
    invoke-static {p1, p5}, Lcom/google/android/gms/common/util/t;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/WorkSource;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/stats/a;->c:Landroid/os/WorkSource;

    if-eqz p1, :cond_4

    .line 33
    invoke-static {p4}, Lcom/google/android/gms/common/util/t;->a(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 34
    iget-object p3, p0, Lcom/google/android/gms/stats/a;->c:Landroid/os/WorkSource;

    if-eqz p3, :cond_3

    .line 35
    invoke-virtual {p3, p1}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    goto :goto_2

    .line 36
    :cond_3
    iput-object p1, p0, Lcom/google/android/gms/stats/a;->c:Landroid/os/WorkSource;

    .line 37
    :goto_2
    iget-object p1, p0, Lcom/google/android/gms/stats/a;->c:Landroid/os/WorkSource;

    .line 38
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 41
    :goto_3
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WakeLock"

    invoke-static {p2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_4
    :goto_4
    sget-object p1, Lcom/google/android/gms/stats/a;->i:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez p1, :cond_5

    .line 43
    invoke-static {}, Lcom/google/android/gms/common/b/a;->a()Lcom/google/android/gms/common/b/a$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/b/a$a;->a()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    sput-object p1, Lcom/google/android/gms/stats/a;->i:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_5
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/stats/a;)V
    .locals 0

    .line 117
    invoke-virtual {p0}, Lcom/google/android/gms/stats/a;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/google/android/gms/stats/a;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/stats/a;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/google/android/gms/stats/a;->d:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " was already released!"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "WakeLock"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/stats/a;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    goto :goto_1

    .line 109
    :cond_0
    throw v0

    :cond_1
    :goto_1
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .line 112
    iget-boolean v0, p0, Lcom/google/android/gms/stats/a;->e:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/stats/a;->k:Ljava/lang/String;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/stats/a;->k:Ljava/lang/String;

    return-object v0
.end method
