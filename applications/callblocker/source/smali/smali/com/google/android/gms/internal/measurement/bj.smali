.class public abstract Lcom/google/android/gms/internal/measurement/bj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static c:Z

.field private static d:Lcom/google/android/gms/internal/measurement/by;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/by",
            "<",
            "Lcom/google/android/gms/internal/measurement/bx",
            "<",
            "Lcom/google/android/gms/internal/measurement/bf;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final h:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final e:Lcom/google/android/gms/internal/measurement/bp;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private volatile i:I

.field private volatile j:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/bj;->a:Ljava/lang/Object;

    .line 97
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/measurement/bj;->b:Landroid/content/Context;

    .line 98
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/internal/measurement/bj;->c:Z

    .line 99
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/bj;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/measurement/bp;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/bp;",
            "Ljava/lang/String;",
            "TT;Z)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/bj;->i:I

    .line 18
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/bp;->b:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Must pass a valid SharedPreferences file name or ContentProvider URI"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/bj;->e:Lcom/google/android/gms/internal/measurement/bp;

    .line 21
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/bj;->f:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/bj;->g:Ljava/lang/Object;

    .line 23
    iput-boolean p4, p0, Lcom/google/android/gms/internal/measurement/bj;->k:Z

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/bp;Ljava/lang/String;Ljava/lang/Object;ZLcom/google/android/gms/internal/measurement/bl;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/bj;-><init>(Lcom/google/android/gms/internal/measurement/bp;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/bp;Ljava/lang/String;DZ)Lcom/google/android/gms/internal/measurement/bj;
    .locals 3

    .prologue
    .line 93
    const-wide/high16 v0, -0x3ff8000000000000L    # -3.0

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/measurement/bj;->b(Lcom/google/android/gms/internal/measurement/bp;Ljava/lang/String;DZ)Lcom/google/android/gms/internal/measurement/bj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/bp;Ljava/lang/String;JZ)Lcom/google/android/gms/internal/measurement/bj;
    .locals 2

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/measurement/bj;->b(Lcom/google/android/gms/internal/measurement/bp;Ljava/lang/String;JZ)Lcom/google/android/gms/internal/measurement/bj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/bp;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/bj;
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/bj;->b(Lcom/google/android/gms/internal/measurement/bp;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/bj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/bp;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/measurement/bj;
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/bj;->b(Lcom/google/android/gms/internal/measurement/bp;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/measurement/bj;

    move-result-object v0

    return-object v0
.end method

.method private final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 25
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/bj;->f:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/bj;->f:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static a()V
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/google/android/gms/internal/measurement/bj;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 15
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 1
    sget-object v1, Lcom/google/android/gms/internal/measurement/bj;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    if-nez v0, :cond_1

    .line 5
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/bj;->b:Landroid/content/Context;

    if-eq v0, p0, :cond_0

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/av;->c()V

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/bs;->a()V

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/be;->a()V

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/measurement/bj;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 10
    sput-object p0, Lcom/google/android/gms/internal/measurement/bj;->b:Landroid/content/Context;

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/measurement/bm;->a:Lcom/google/android/gms/internal/measurement/by;

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/cb;->a(Lcom/google/android/gms/internal/measurement/by;)Lcom/google/android/gms/internal/measurement/by;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/bj;->d:Lcom/google/android/gms/internal/measurement/by;

    .line 13
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move-object p0, v0

    goto :goto_0
.end method

.method private static b(Lcom/google/android/gms/internal/measurement/bp;Ljava/lang/String;DZ)Lcom/google/android/gms/internal/measurement/bj;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/bp;",
            "Ljava/lang/String;",
            "DZ)",
            "Lcom/google/android/gms/internal/measurement/bj",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Lcom/google/android/gms/internal/measurement/bn;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/bn;-><init>(Lcom/google/android/gms/internal/measurement/bp;Ljava/lang/String;Ljava/lang/Double;Z)V

    return-object v0
.end method

.method private static b(Lcom/google/android/gms/internal/measurement/bp;Ljava/lang/String;JZ)Lcom/google/android/gms/internal/measurement/bj;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/bp;",
            "Ljava/lang/String;",
            "JZ)",
            "Lcom/google/android/gms/internal/measurement/bj",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Lcom/google/android/gms/internal/measurement/bl;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/bl;-><init>(Lcom/google/android/gms/internal/measurement/bp;Ljava/lang/String;Ljava/lang/Long;Z)V

    return-object v0
.end method

.method private static b(Lcom/google/android/gms/internal/measurement/bp;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/bj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/bp;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/google/android/gms/internal/measurement/bj",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Lcom/google/android/gms/internal/measurement/bq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/bq;-><init>(Lcom/google/android/gms/internal/measurement/bp;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method private static b(Lcom/google/android/gms/internal/measurement/bp;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/measurement/bj;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/bp;",
            "Ljava/lang/String;",
            "ZZ)",
            "Lcom/google/android/gms/internal/measurement/bj",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    new-instance v0, Lcom/google/android/gms/internal/measurement/bo;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/bo;-><init>(Lcom/google/android/gms/internal/measurement/bp;Ljava/lang/String;Ljava/lang/Boolean;Z)V

    return-object v0
.end method

.method static final synthetic d()Lcom/google/android/gms/internal/measurement/bx;
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/google/android/gms/internal/measurement/bi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/bi;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/measurement/bj;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/bi;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/bx;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method abstract a(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/bj;->e:Lcom/google/android/gms/internal/measurement/bp;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/bp;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/bj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/measurement/bj;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    .line 28
    iget v0, p0, Lcom/google/android/gms/internal/measurement/bj;->i:I

    if-ge v0, v4, :cond_3

    .line 29
    monitor-enter p0

    .line 30
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/bj;->i:I

    if-ge v0, v4, :cond_2

    .line 32
    sget-object v0, Lcom/google/android/gms/internal/measurement/bj;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must call PhenotypeFlag.init() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 37
    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/measurement/bj;->b:Landroid/content/Context;

    .line 38
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/be;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/be;

    move-result-object v0

    const-string/jumbo v5, "gms:phenotype:phenotype_flag:debug_bypass_phenotype"

    .line 40
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/measurement/be;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 41
    if-eqz v0, :cond_4

    sget-object v5, Lcom/google/android/gms/internal/measurement/au;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 42
    :goto_0
    if-eqz v0, :cond_5

    move v0, v1

    .line 43
    :goto_1
    if-nez v0, :cond_7

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/bj;->e:Lcom/google/android/gms/internal/measurement/bp;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/bp;->b:Landroid/net/Uri;

    if-eqz v0, :cond_6

    .line 46
    sget-object v0, Lcom/google/android/gms/internal/measurement/bj;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/bj;->e:Lcom/google/android/gms/internal/measurement/bp;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/bp;->b:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/bh;->a(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 47
    sget-object v0, Lcom/google/android/gms/internal/measurement/bj;->b:Landroid/content/Context;

    .line 48
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/bj;->e:Lcom/google/android/gms/internal/measurement/bp;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/bp;->b:Landroid/net/Uri;

    .line 49
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/av;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/google/android/gms/internal/measurement/av;

    move-result-object v0

    .line 51
    :goto_2
    if-eqz v0, :cond_8

    .line 52
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/bj;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_8

    .line 54
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/bj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 60
    :goto_3
    if-eqz v1, :cond_a

    .line 75
    :cond_1
    :goto_4
    sget-object v0, Lcom/google/android/gms/internal/measurement/bj;->d:Lcom/google/android/gms/internal/measurement/by;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/by;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/bx;

    .line 76
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bx;->a()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 78
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bx;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/bf;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/bj;->e:Lcom/google/android/gms/internal/measurement/bp;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/bp;->b:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/bj;->e:Lcom/google/android/gms/internal/measurement/bp;

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/bp;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/bj;->f:Ljava/lang/String;

    .line 79
    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/google/android/gms/internal/measurement/bf;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/bj;->g:Ljava/lang/Object;

    .line 82
    :goto_5
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/bj;->j:Ljava/lang/Object;

    .line 83
    iput v4, p0, Lcom/google/android/gms/internal/measurement/bj;->i:I

    .line 84
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/bj;->j:Ljava/lang/Object;

    return-object v0

    :cond_4
    move v0, v3

    .line 41
    goto :goto_0

    :cond_5
    move v0, v3

    .line 42
    goto :goto_1

    .line 50
    :cond_6
    :try_start_2
    sget-object v0, Lcom/google/android/gms/internal/measurement/bj;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/bs;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/bs;

    move-result-object v0

    goto :goto_2

    .line 56
    :cond_7
    const-string/jumbo v0, "PhenotypeFlag"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 57
    const-string/jumbo v1, "PhenotypeFlag"

    const-string/jumbo v3, "Bypass reading Phenotype values for flag: "

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/bj;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object v1, v2

    .line 58
    goto :goto_3

    .line 57
    :cond_9
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_6

    .line 63
    :cond_a
    sget-object v0, Lcom/google/android/gms/internal/measurement/bj;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/be;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/be;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/bj;->e:Lcom/google/android/gms/internal/measurement/bp;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/bp;->c:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/bj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/az;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_b

    .line 68
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/bj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 71
    :goto_7
    if-nez v1, :cond_1

    .line 73
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/bj;->g:Ljava/lang/Object;

    goto/16 :goto_4

    :cond_b
    move-object v1, v2

    .line 69
    goto :goto_7

    .line 80
    :cond_c
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/bj;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_5

    :cond_d
    move-object v0, v1

    .line 81
    goto :goto_5

    :cond_e
    move-object v0, v2

    goto/16 :goto_2
.end method
