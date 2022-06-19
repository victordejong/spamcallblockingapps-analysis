.class public final Lcom/google/android/gms/internal/ads/oy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/pc;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Lcom/google/android/gms/internal/ads/pc;

.field private static c:Lcom/google/android/gms/internal/ads/pc;


# instance fields
.field private final d:Ljava/lang/Object;

.field private final e:Landroid/content/Context;

.field private final f:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Thread;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/ExecutorService;

.field private final h:Lcom/google/android/gms/internal/ads/yd;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/oy;->a:Ljava/lang/Object;

    .line 121
    sput-object v1, Lcom/google/android/gms/internal/ads/oy;->b:Lcom/google/android/gms/internal/ads/pc;

    .line 122
    sput-object v1, Lcom/google/android/gms/internal/ads/oy;->c:Lcom/google/android/gms/internal/ads/pc;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/yd;->a()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/oy;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;)V

    .line 29
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/oy;->d:Ljava/lang/Object;

    .line 32
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/oy;->f:Ljava/util/WeakHashMap;

    .line 34
    invoke-static {}, Lcom/google/android/gms/internal/ads/cnv;->a()Lcom/google/android/gms/internal/ads/cns;

    move-result-object v0

    sget v1, Lcom/google/android/gms/internal/ads/cnw;->a:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/cns;->a(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/oy;->g:Ljava/util/concurrent/ExecutorService;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oy;->e:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/oy;->h:Lcom/google/android/gms/internal/ads/yd;

    .line 38
    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri$Builder;
    .locals 7

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/oy;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/common/c/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/c/b;->a()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 88
    :goto_0
    const-string/jumbo v1, "unknown"

    .line 89
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/oy;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 93
    :goto_1
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v3, "https"

    .line 94
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "//pagead2.googlesyndication.com/pagead/gen_204"

    .line 95
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "is_aia"

    .line 96
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "id"

    const-string/jumbo v3, "gmob-apps-report-exception"

    .line 97
    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "os"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 98
    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "api"

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 99
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "device"

    .line 101
    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 102
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 103
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 104
    :goto_2
    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "js"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/oy;->h:Lcom/google/android/gms/internal/ads/yd;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/yd;->a:Ljava/lang/String;

    .line 105
    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "appid"

    .line 106
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "exceptiontype"

    .line 107
    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "stacktrace"

    .line 108
    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "eids"

    const-string/jumbo v2, ","

    .line 109
    invoke-static {}, Lcom/google/android/gms/internal/ads/edi;->a()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "exceptionkey"

    .line 111
    invoke-virtual {v0, v1, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "cl"

    const-string/jumbo v2, "305933803"

    .line 112
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "rc"

    const-string/jumbo v2, "dev"

    .line 113
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "session_id"

    .line 114
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "sampling_rate"

    .line 115
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "pb_tm"

    sget-object v2, Lcom/google/android/gms/internal/ads/aw;->c:Lcom/google/android/gms/internal/ads/ab;

    .line 116
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ab;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 118
    return-object v0

    .line 86
    :catch_0
    move-exception v1

    .line 87
    const-string/jumbo v2, "Error fetching instant app info"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 92
    :catch_1
    move-exception v2

    const-string/jumbo v2, "Cannot obtain package name, proceeding."

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/yb;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 103
    :cond_0
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/pc;
    .locals 2

    .prologue
    .line 1
    sget-object v1, Lcom/google/android/gms/internal/ads/oy;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 2
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/oy;->b:Lcom/google/android/gms/internal/ads/pc;

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/aw;->e:Lcom/google/android/gms/internal/ads/ab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/oy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/oy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/oy;->b:Lcom/google/android/gms/internal/ads/pc;

    .line 6
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/oy;->b:Lcom/google/android/gms/internal/ads/pc;

    return-object v0

    .line 5
    :cond_1
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/ads/pb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/pb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/oy;->b:Lcom/google/android/gms/internal/ads/pc;

    goto :goto_0

    .line 6
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;)Lcom/google/android/gms/internal/ads/pc;
    .locals 6

    .prologue
    .line 8
    sget-object v1, Lcom/google/android/gms/internal/ads/oy;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 9
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/oy;->c:Lcom/google/android/gms/internal/ads/pc;

    if-nez v0, :cond_1

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/ads/aw;->e:Lcom/google/android/gms/internal/ads/ab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/oy;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/oy;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;)V

    .line 13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/oy;->d:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    :try_start_1
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/oy;->f:Ljava/util/WeakHashMap;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    .line 19
    new-instance v4, Lcom/google/android/gms/internal/ads/oz;

    invoke-direct {v4, v0, v3}, Lcom/google/android/gms/internal/ads/oz;-><init>(Lcom/google/android/gms/internal/ads/oy;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-virtual {v2, v4}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 21
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    .line 22
    new-instance v3, Lcom/google/android/gms/internal/ads/pa;

    invoke-direct {v3, v0, v2}, Lcom/google/android/gms/internal/ads/pa;-><init>(Lcom/google/android/gms/internal/ads/oy;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v3}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 23
    sput-object v0, Lcom/google/android/gms/internal/ads/oy;->c:Lcom/google/android/gms/internal/ads/pc;

    .line 26
    :cond_1
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/ads/oy;->c:Lcom/google/android/gms/internal/ads/pc;

    return-object v0

    .line 17
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 26
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 25
    :cond_2
    :try_start_5
    new-instance v0, Lcom/google/android/gms/internal/ads/pb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/pb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/oy;->c:Lcom/google/android/gms/internal/ads/pc;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method

.method static final synthetic a(Lcom/google/android/gms/internal/ads/yf;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/yf;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 39
    .line 40
    if-eqz p2, :cond_5

    move v2, v3

    move v0, v3

    move-object v5, p2

    .line 43
    :goto_0
    if-eqz v5, :cond_3

    .line 44
    invoke-virtual {v5}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    .line 45
    array-length v7, v6

    move v4, v3

    :goto_1
    if-ge v4, v7, :cond_2

    aget-object v8, v6, v4

    .line 46
    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/xr;->b(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v0, v1

    .line 48
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v2, v1

    .line 50
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 51
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    move-object v5, v4

    .line 52
    goto :goto_0

    .line 53
    :cond_3
    if-eqz v0, :cond_5

    if-nez v2, :cond_5

    .line 54
    :goto_2
    if-eqz v1, :cond_4

    .line 56
    const-string/jumbo v0, ""

    .line 57
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p2, v0, v1}, Lcom/google/android/gms/internal/ads/oy;->a(Ljava/lang/Throwable;Ljava/lang/String;F)V

    .line 58
    :cond_4
    return-void

    :cond_5
    move v1, v3

    .line 53
    goto :goto_2
.end method

.method public final a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 59
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/oy;->a(Ljava/lang/Throwable;Ljava/lang/String;F)V

    .line 60
    return-void
.end method

.method public final a(Ljava/lang/Throwable;Ljava/lang/String;F)V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 61
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/xr;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    .line 62
    if-nez v2, :cond_1

    .line 82
    :cond_0
    return-void

    .line 64
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 65
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 66
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/dap;->a(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V

    .line 67
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    .line 68
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    float-to-double v6, p3

    cmpg-double v2, v2, v6

    if-gez v2, :cond_2

    move v3, v0

    .line 69
    :goto_0
    const/4 v2, 0x0

    cmpl-float v2, p3, v2

    if-lez v2, :cond_3

    .line 70
    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p3

    float-to-int v0, v0

    move v2, v0

    .line 72
    :goto_1
    if-eqz v3, :cond_0

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    invoke-direct {p0, v4, v5, p2, v2}, Lcom/google/android/gms/internal/ads/oy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    :goto_2
    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Ljava/lang/String;

    .line 79
    new-instance v4, Lcom/google/android/gms/internal/ads/yf;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/yf;-><init>()V

    .line 80
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/oy;->g:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lcom/google/android/gms/internal/ads/ox;

    invoke-direct {v6, v4, v1}, Lcom/google/android/gms/internal/ads/ox;-><init>(Lcom/google/android/gms/internal/ads/yf;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_2
    move v3, v1

    .line 68
    goto :goto_0

    :cond_3
    move v2, v0

    .line 71
    goto :goto_1
.end method
