.class public final Lcom/google/android/gms/internal/ads/cie;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/chb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/chb<",
        "Lcom/google/android/gms/internal/ads/cib;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/xz;

.field final b:Lcom/google/android/gms/internal/ads/yd;

.field private final c:I

.field private final d:Landroid/content/Context;

.field private final e:Ljava/util/concurrent/ScheduledExecutorService;

.field private final f:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/xz;ILandroid/content/Context;Lcom/google/android/gms/internal/ads/yd;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cie;->a:Lcom/google/android/gms/internal/ads/xz;

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/ads/cie;->c:I

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cie;->d:Landroid/content/Context;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/cie;->b:Lcom/google/android/gms/internal/ads/yd;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/cie;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/cie;->f:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/dbt;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Lcom/google/android/gms/internal/ads/cib;",
            ">;"
        }
    .end annotation

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/cid;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/cid;-><init>(Lcom/google/android/gms/internal/ads/cie;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cie;->f:Ljava/util/concurrent/Executor;

    .line 10
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dbh;->a(Lcom/google/android/gms/internal/ads/dar;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dbc;->c(Lcom/google/android/gms/internal/ads/dbt;)Lcom/google/android/gms/internal/ads/dbc;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/cig;->a:Lcom/google/android/gms/internal/ads/cxu;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cie;->f:Ljava/util/concurrent/Executor;

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dbc;->a(Lcom/google/android/gms/internal/ads/cxu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbc;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/aq;->aE:Lcom/google/android/gms/internal/ads/af;

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v1

    .line 15
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/cie;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 16
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/dbc;->a(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/dbc;

    move-result-object v0

    const-class v1, Ljava/lang/Exception;

    new-instance v2, Lcom/google/android/gms/internal/ads/cif;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/cif;-><init>(Lcom/google/android/gms/internal/ads/cie;)V

    .line 1001
    sget-object v3, Lcom/google/android/gms/internal/ads/dba;->zzidl:Lcom/google/android/gms/internal/ads/dba;

    .line 18
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/dbc;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/cxu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbc;

    move-result-object v0

    return-object v0
.end method
