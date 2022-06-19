.class public final Lcom/google/android/gms/measurement/internal/dr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/gms/measurement/internal/dp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/measurement/internal/dp",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/Object;

.field private volatile g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private volatile h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/dr;->f:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/measurement/internal/dp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TV;TV;",
            "Lcom/google/android/gms/measurement/internal/dp",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/dr;->e:Ljava/lang/Object;

    .line 3
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/dr;->g:Ljava/lang/Object;

    .line 4
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/dr;->h:Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/dr;->a:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/dr;->c:Ljava/lang/Object;

    .line 7
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/dr;->d:Ljava/lang/Object;

    .line 8
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/dr;->b:Lcom/google/android/gms/measurement/internal/dp;

    .line 9
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/measurement/internal/dp;Lcom/google/android/gms/measurement/internal/dm;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/dr;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/measurement/internal/dp;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/dr;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/dr;->g:Ljava/lang/Object;

    .line 13
    monitor-exit v1

    .line 14
    if-eqz p1, :cond_0

    .line 48
    :goto_0
    return-object p1

    .line 13
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 16
    :cond_0
    sget-object v0, Lcom/google/android/gms/measurement/internal/do;->a:Lcom/google/android/gms/measurement/internal/kk;

    if-nez v0, :cond_1

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/dr;->c:Ljava/lang/Object;

    goto :goto_0

    .line 18
    :cond_1
    sget-object v0, Lcom/google/android/gms/measurement/internal/do;->a:Lcom/google/android/gms/measurement/internal/kk;

    .line 19
    sget-object v1, Lcom/google/android/gms/measurement/internal/dr;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 20
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/measurement/internal/kk;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/dr;->h:Ljava/lang/Object;

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/dr;->c:Ljava/lang/Object;

    :goto_1
    monitor-exit v1

    goto :goto_0

    .line 22
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 21
    :cond_2
    :try_start_2
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/dr;->h:Ljava/lang/Object;

    goto :goto_1

    .line 22
    :cond_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 23
    :try_start_3
    invoke-static {}, Lcom/google/android/gms/measurement/internal/t;->aQ()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/dr;

    .line 25
    invoke-static {}, Lcom/google/android/gms/measurement/internal/kk;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Refreshing flag cache must be done on a worker thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    .line 36
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/dr;->b:Lcom/google/android/gms/measurement/internal/dp;

    if-nez v0, :cond_7

    .line 37
    sget-object v0, Lcom/google/android/gms/measurement/internal/do;->a:Lcom/google/android/gms/measurement/internal/kk;

    .line 39
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/dr;->c:Ljava/lang/Object;

    goto :goto_0

    .line 27
    :cond_5
    :try_start_4
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/dr;->b:Lcom/google/android/gms/measurement/internal/dp;

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/dr;->b:Lcom/google/android/gms/measurement/internal/dp;

    invoke-interface {v1}, Lcom/google/android/gms/measurement/internal/dp;->a()Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v1

    .line 31
    :goto_3
    :try_start_5
    sget-object v4, Lcom/google/android/gms/measurement/internal/dr;->f:Ljava/lang/Object;

    monitor-enter v4
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0

    .line 32
    :try_start_6
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/dr;->h:Ljava/lang/Object;

    .line 33
    monitor-exit v4

    goto :goto_2

    :catchall_2
    move-exception v0

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_0

    :cond_6
    move-object v1, v2

    .line 27
    goto :goto_3

    .line 30
    :catch_1
    move-exception v1

    move-object v1, v2

    goto :goto_3

    .line 40
    :cond_7
    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/dr;->b:Lcom/google/android/gms/measurement/internal/dp;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/dp;->a()Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_3

    move-result-object p1

    goto :goto_0

    .line 42
    :catch_2
    move-exception v0

    sget-object v0, Lcom/google/android/gms/measurement/internal/do;->a:Lcom/google/android/gms/measurement/internal/kk;

    .line 44
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/dr;->c:Ljava/lang/Object;

    goto :goto_0

    .line 46
    :catch_3
    move-exception v0

    sget-object v0, Lcom/google/android/gms/measurement/internal/do;->a:Lcom/google/android/gms/measurement/internal/kk;

    .line 48
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/dr;->c:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/dr;->a:Ljava/lang/String;

    return-object v0
.end method
