.class public final Lcom/google/android/gms/internal/ads/bjr;
.super Lcom/google/android/gms/internal/ads/bjp;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# static fields
.field private static final f:Ljava/util/regex/Pattern;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bix;

.field private final b:Lcom/google/android/gms/internal/ads/crs;

.field private final c:Lcom/google/android/gms/internal/ads/chh;

.field private final d:Ljava/util/concurrent/ScheduledExecutorService;

.field private final e:Lcom/google/android/gms/internal/ads/bmg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "Received error HTTP response code: (.*)"

    .line 32
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/bjr;->f:Ljava/util/regex/Pattern;

    .line 33
    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/asc;Lcom/google/android/gms/internal/ads/chh;Lcom/google/android/gms/internal/ads/bix;Lcom/google/android/gms/internal/ads/crs;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/bmg;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/bjp;-><init>(Lcom/google/android/gms/internal/ads/asc;)V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bjr;->c:Lcom/google/android/gms/internal/ads/chh;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bjr;->a:Lcom/google/android/gms/internal/ads/bix;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bjr;->b:Lcom/google/android/gms/internal/ads/crs;

    .line 5
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bjr;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/bjr;->e:Lcom/google/android/gms/internal/ads/bmg;

    .line 7
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/bjr;)Lcom/google/android/gms/internal/ads/bmg;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bjr;->e:Lcom/google/android/gms/internal/ads/bmg;

    return-object v0
.end method

.method static synthetic a()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/android/gms/internal/ads/bjr;->f:Ljava/util/regex/Pattern;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/pw;)Lcom/google/android/gms/internal/ads/crt;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/pw;",
            ")",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/chd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bjr;->a:Lcom/google/android/gms/internal/ads/bix;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/bix;->a(Lcom/google/android/gms/internal/ads/pw;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 9
    new-instance v1, Lcom/google/android/gms/internal/ads/bju;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/bju;-><init>(Lcom/google/android/gms/internal/ads/bjr;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bjr;->b:Lcom/google/android/gms/internal/ads/crs;

    .line 10
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/cqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v1

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->cw:Lcom/google/android/gms/internal/ads/ect;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->cx:Lcom/google/android/gms/internal/ads/ect;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bjr;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 18
    invoke-static {v1, v2, v3, v0, v4}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 19
    const-class v1, Ljava/util/concurrent/TimeoutException;

    sget-object v2, Lcom/google/android/gms/internal/ads/bjt;->a:Lcom/google/android/gms/internal/ads/cqt;

    .line 20
    sget-object v3, Lcom/google/android/gms/internal/ads/yg;->f:Lcom/google/android/gms/internal/ads/crs;

    .line 21
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/cqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 22
    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/bjw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/bjw;-><init>(Lcom/google/android/gms/internal/ads/bjr;)V

    .line 23
    sget-object v2, Lcom/google/android/gms/internal/ads/yg;->f:Lcom/google/android/gms/internal/ads/crs;

    .line 24
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/crh;Ljava/util/concurrent/Executor;)V

    .line 25
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method final synthetic a(Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/crt;
    .locals 3

    .prologue
    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/chd;

    new-instance v1, Lcom/google/android/gms/internal/ads/cgx;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bjr;->c:Lcom/google/android/gms/internal/ads/chh;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/cgx;-><init>(Lcom/google/android/gms/internal/ads/chh;)V

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 27
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/cha;->a(Ljava/io/Reader;)Lcom/google/android/gms/internal/ads/cha;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/chd;-><init>(Lcom/google/android/gms/internal/ads/cgx;Lcom/google/android/gms/internal/ads/cha;)V

    .line 28
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method
