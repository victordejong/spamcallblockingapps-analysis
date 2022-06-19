.class public final Lcom/google/android/gms/internal/ads/yr1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zs1;


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/yq1;

.field private final c:Lcom/google/android/gms/internal/ads/s03;

.field private final d:Lcom/google/android/gms/internal/ads/xj2;

.field private final e:Ljava/util/concurrent/ScheduledExecutorService;

.field private final f:Lcom/google/android/gms/internal/ads/gv1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Received error HTTP response code: (.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/yr1;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/xj2;Lcom/google/android/gms/internal/ads/yq1;Lcom/google/android/gms/internal/ads/s03;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/gv1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yr1;->d:Lcom/google/android/gms/internal/ads/xj2;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/yr1;->b:Lcom/google/android/gms/internal/ads/yq1;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/yr1;->c:Lcom/google/android/gms/internal/ads/s03;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/yr1;->e:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/yr1;->f:Lcom/google/android/gms/internal/ads/gv1;

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/yr1;)Lcom/google/android/gms/internal/ads/gv1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/yr1;->f:Lcom/google/android/gms/internal/ads/gv1;

    return-object p0
.end method

.method static synthetic c()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/yr1;->a:Ljava/util/regex/Pattern;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzcbj;)Lcom/google/android/gms/internal/ads/r03;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcbj;",
            ")",
            "Lcom/google/android/gms/internal/ads/r03<",
            "Lcom/google/android/gms/internal/ads/rj2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yr1;->b:Lcom/google/android/gms/internal/ads/yq1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/yq1;->a(Lcom/google/android/gms/internal/ads/zzcbj;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/vr1;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/vr1;-><init>(Lcom/google/android/gms/internal/ads/yr1;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yr1;->c:Lcom/google/android/gms/internal/ads/s03;

    .line 3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/k03;->i(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/uz2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->O3:Lcom/google/android/gms/internal/ads/cw;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->P3:Lcom/google/android/gms/internal/ads/cw;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/yr1;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 9
    invoke-static {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/k03;->h(Lcom/google/android/gms/internal/ads/r03;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    const-class v0, Ljava/util/concurrent/TimeoutException;

    sget-object v1, Lcom/google/android/gms/internal/ads/wr1;->a:Lcom/google/android/gms/internal/ads/uz2;

    .line 10
    sget-object v2, Lcom/google/android/gms/internal/ads/qi0;->f:Lcom/google/android/gms/internal/ads/s03;

    .line 11
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/k03;->g(Lcom/google/android/gms/internal/ads/r03;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/uz2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/xr1;

    .line 12
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/xr1;-><init>(Lcom/google/android/gms/internal/ads/yr1;)V

    .line 13
    sget-object v1, Lcom/google/android/gms/internal/ads/qi0;->f:Lcom/google/android/gms/internal/ads/s03;

    .line 14
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/k03;->p(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/f03;Ljava/util/concurrent/Executor;)V

    return-object p1
.end method

.method final synthetic d(Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/r03;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/rj2;

    new-instance v1, Lcom/google/android/gms/internal/ads/oj2;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yr1;->d:Lcom/google/android/gms/internal/ads/xj2;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/oj2;-><init>(Lcom/google/android/gms/internal/ads/xj2;)V

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 2
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/qj2;->a(Ljava/io/Reader;)Lcom/google/android/gms/internal/ads/qj2;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/rj2;-><init>(Lcom/google/android/gms/internal/ads/oj2;Lcom/google/android/gms/internal/ads/qj2;)V

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/k03;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method
