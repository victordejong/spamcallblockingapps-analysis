.class public abstract Lcom/google/android/gms/internal/measurement/ec;
.super Ljava/lang/Object;
.source "SourceFile"


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
.field public static final synthetic c:I = 0x0

.field private static final d:Ljava/lang/Object;

.field private static volatile e:Lcom/google/android/gms/internal/measurement/eb; = null

.field private static volatile f:Z = false

.field private static final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/internal/measurement/ec<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private static final h:Lcom/google/android/gms/internal/measurement/ee;

.field private static final j:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field final a:Lcom/google/android/gms/internal/measurement/ea;

.field final b:Ljava/lang/String;

.field private final i:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private volatile k:I

.field private volatile l:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/ec;->d:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 1
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/ec;->g:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lcom/google/android/gms/internal/measurement/ee;

    sget-object v1, Lcom/google/android/gms/internal/measurement/dv;->a:Lcom/google/android/gms/internal/measurement/ef;

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/ee;-><init>(Lcom/google/android/gms/internal/measurement/ef;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/ec;->h:Lcom/google/android/gms/internal/measurement/ee;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/ec;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/ea;Ljava/lang/String;Ljava/lang/Object;ZLcom/google/android/gms/internal/measurement/dw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, -0x1

    iput p4, p0, Lcom/google/android/gms/internal/measurement/ec;->k:I

    iget-object p4, p1, Lcom/google/android/gms/internal/measurement/ea;->b:Landroid/net/Uri;

    if-eqz p4, :cond_0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ec;->a:Lcom/google/android/gms/internal/measurement/ea;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/ec;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/ec;->i:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/ec;->m:Z

    return-void

    .line 0
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must pass a valid SharedPreferences file name or ContentProvider URI"

    .line 1
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static a()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/ec;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/ec;->d:Ljava/lang/Object;

    .line 1
    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/ec;->e:Lcom/google/android/gms/internal/measurement/eb;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object p0, v2

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/eb;->a()Landroid/content/Context;

    move-result-object v1

    if-eq v1, p0, :cond_2

    .line 3
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/dj;->b()V

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ed;->b()V

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/dp;->a()V

    new-instance v1, Lcom/google/android/gms/internal/measurement/dt;

    .line 6
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/dt;-><init>(Landroid/content/Context;)V

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/eo;->a(Lcom/google/android/gms/internal/measurement/ek;)Lcom/google/android/gms/internal/measurement/ek;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/measurement/dg;

    .line 8
    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/measurement/dg;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/ek;)V

    sput-object v2, Lcom/google/android/gms/internal/measurement/ec;->e:Lcom/google/android/gms/internal/measurement/eb;

    sget-object p0, Lcom/google/android/gms/internal/measurement/ec;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 10
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
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

.method public final b()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ec;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ec;->b:Ljava/lang/String;

    const-string v1, "flagName must not be null"

    .line 30
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 0
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/ec;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/ec;->k:I

    if-ge v1, v0, :cond_f

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/measurement/ec;->k:I

    if-ge v1, v0, :cond_e

    sget-object v1, Lcom/google/android/gms/internal/measurement/ec;->e:Lcom/google/android/gms/internal/measurement/eb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "Must call PhenotypeFlag.init() first"

    if-eqz v1, :cond_d

    .line 3
    :try_start_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/eb;->a()Landroid/content/Context;

    move-result-object v2

    .line 4
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/dp;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/dp;

    move-result-object v2

    const-string v3, "gms:phenotype:phenotype_flag:debug_bypass_phenotype"

    .line 5
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/dp;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 6
    sget-object v4, Lcom/google/android/gms/internal/measurement/de;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "PhenotypeFlag"

    const/4 v4, 0x3

    .line 7
    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Bypass reading Phenotype values for flag: "

    .line 1001
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/ec;->b:Ljava/lang/String;

    .line 8
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 22
    :cond_1
    new-instance v4, Ljava/lang/String;

    .line 8
    invoke-direct {v4, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_2
    :goto_0
    move-object v2, v3

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/ec;->a:Lcom/google/android/gms/internal/measurement/ea;

    .line 9
    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/ea;->b:Landroid/net/Uri;

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/eb;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/ec;->a:Lcom/google/android/gms/internal/measurement/ea;

    .line 10
    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/ea;->b:Landroid/net/Uri;

    .line 11
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/measurement/dr;->a(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/eb;->a()Landroid/content/Context;

    move-result-object v2

    .line 13
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/ec;->a:Lcom/google/android/gms/internal/measurement/ea;

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/ea;->b:Landroid/net/Uri;

    .line 14
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/measurement/dj;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/google/android/gms/internal/measurement/dj;

    move-result-object v2

    goto :goto_1

    :cond_4
    move-object v2, v3

    goto :goto_1

    .line 17
    :cond_5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/eb;->a()Landroid/content/Context;

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ed;->a()Lcom/google/android/gms/internal/measurement/ed;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_2

    .line 3001
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/ec;->b:Ljava/lang/String;

    .line 16
    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/measurement/dm;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 17
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/ec;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_6

    goto :goto_4

    .line 18
    :cond_6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/eb;->a()Landroid/content/Context;

    move-result-object v2

    .line 19
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/dp;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/dp;

    move-result-object v2

    .line 20
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/ec;->b:Ljava/lang/String;

    .line 21
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/dp;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 22
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/ec;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    :cond_7
    move-object v2, v3

    :goto_3
    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/ec;->i:Ljava/lang/Object;

    .line 8
    :cond_8
    :goto_4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/eb;->b()Lcom/google/android/gms/internal/measurement/ek;

    move-result-object v1

    .line 23
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/ek;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/ei;

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ei;->a()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ei;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/dq;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/ec;->a:Lcom/google/android/gms/internal/measurement/ea;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/ea;->b:Landroid/net/Uri;

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/ec;->b:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 2001
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/dq;->a:Ljava/util/Map;

    .line 2002
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_a

    .line 2003
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 2004
    :cond_9
    new-instance v2, Ljava/lang/String;

    .line 2003
    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2004
    :goto_5
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    :cond_a
    if-nez v3, :cond_b

    .line 26
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/ec;->i:Ljava/lang/Object;

    goto :goto_6

    .line 27
    :cond_b
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/ec;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 26
    :cond_c
    :goto_6
    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/ec;->l:Ljava/lang/Object;

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ec;->k:I

    goto :goto_7

    .line 30
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 29
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_e
    :goto_7
    monitor-exit p0

    goto :goto_8

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_f
    :goto_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ec;->l:Ljava/lang/Object;

    return-object v0
.end method
