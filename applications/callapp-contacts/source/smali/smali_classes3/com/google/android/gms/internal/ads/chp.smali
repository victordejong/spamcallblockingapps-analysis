.class public final Lcom/google/android/gms/internal/ads/chp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/chb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/chb<",
        "Lcom/google/android/gms/internal/ads/chm;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/xz;

.field private final c:Ljava/util/concurrent/ScheduledExecutorService;

.field private final d:Ljava/util/concurrent/Executor;

.field private final e:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/xz;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/chp;->b:Lcom/google/android/gms/internal/ads/xz;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/chp;->a:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/chp;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/chp;->d:Ljava/util/concurrent/Executor;

    .line 6
    iput p5, p0, Lcom/google/android/gms/internal/ads/chp;->e:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/dbt;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Lcom/google/android/gms/internal/ads/chm;",
            ">;"
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->aD:Lcom/google/android/gms/internal/ads/af;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/chp;->b:Lcom/google/android/gms/internal/ads/xz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/chp;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/xz;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dbc;->c(Lcom/google/android/gms/internal/ads/dbt;)Lcom/google/android/gms/internal/ads/dbc;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/cho;->a:Lcom/google/android/gms/internal/ads/cxu;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/chp;->d:Ljava/util/concurrent/Executor;

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dbc;->a(Lcom/google/android/gms/internal/ads/cxu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbc;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/aq;->aE:Lcom/google/android/gms/internal/ads/af;

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v1

    .line 16
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/chp;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 17
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/dbc;->a(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/dbc;

    move-result-object v0

    const-class v1, Ljava/lang/Throwable;

    new-instance v2, Lcom/google/android/gms/internal/ads/chr;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/chr;-><init>(Lcom/google/android/gms/internal/ads/chp;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/chp;->d:Ljava/util/concurrent/Executor;

    .line 18
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/dbc;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/cxu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbc;

    move-result-object v0

    return-object v0

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Did not ad Ad ID into query param."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    return-object v0
.end method
