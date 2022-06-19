.class public final Lcom/google/android/gms/internal/ads/lz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/daq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/daq<",
        "TI;TO;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/lh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/lh<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/lk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/lk<",
            "TI;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/android/gms/internal/ads/dbt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Lcom/google/android/gms/internal/ads/lc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dbt;Ljava/lang/String;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/lh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Lcom/google/android/gms/internal/ads/lc;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/lk<",
            "TI;>;",
            "Lcom/google/android/gms/internal/ads/lh<",
            "TO;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lz;->d:Lcom/google/android/gms/internal/ads/dbt;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/lz;->c:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/lz;->b:Lcom/google/android/gms/internal/ads/lk;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/lz;->a:Lcom/google/android/gms/internal/ads/lh;

    return-void
.end method


# virtual methods
.method final synthetic a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/lc;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/zp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zp;-><init>()V

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzj;->zzzr()Ljava/lang/String;

    move-result-object v1

    .line 15
    sget-object v2, Lcom/google/android/gms/internal/ads/gs;->p:Lcom/google/android/gms/internal/ads/hu;

    new-instance v3, Lcom/google/android/gms/internal/ads/mb;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/mb;-><init>(Lcom/google/android/gms/internal/ads/lz;Lcom/google/android/gms/internal/ads/zp;)V

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/hu;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hw;)V

    .line 16
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "id"

    .line 17
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lz;->b:Lcom/google/android/gms/internal/ads/lk;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/lk;->a(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "args"

    invoke-virtual {v2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/lz;->c:Ljava/lang/String;

    invoke-interface {p2, p1, v2}, Lcom/google/android/gms/internal/ads/lc;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "TO;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lz;->d:Lcom/google/android/gms/internal/ads/dbt;

    new-instance v1, Lcom/google/android/gms/internal/ads/mc;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/mc;-><init>(Lcom/google/android/gms/internal/ads/lz;Ljava/lang/Object;)V

    .line 9
    sget-object p1, Lcom/google/android/gms/internal/ads/zd;->f:Lcom/google/android/gms/internal/ads/dbs;

    .line 1019
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/daj;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/daq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1
.end method
