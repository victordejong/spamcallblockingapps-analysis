.class public final Lcom/google/android/gms/internal/ads/cip;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/chb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/chb<",
        "Lcom/google/android/gms/internal/ads/ciq;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/xv;

.field private b:Lcom/google/android/gms/internal/ads/dbs;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/xv;Lcom/google/android/gms/internal/ads/dbs;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cip;->a:Lcom/google/android/gms/internal/ads/xv;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cip;->b:Lcom/google/android/gms/internal/ads/dbs;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cip;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/dbt;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Lcom/google/android/gms/internal/ads/ciq;",
            ">;"
        }
    .end annotation

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zp;-><init>()V

    const/4 v0, 0x0

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    .line 8
    sget-object v1, Lcom/google/android/gms/internal/ads/aq;->du:Lcom/google/android/gms/internal/ads/af;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v1

    .line 10
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cip;->a:Lcom/google/android/gms/internal/ads/xv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/xv;->a()Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cip;->a:Lcom/google/android/gms/internal/ads/xv;

    .line 14
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/xv;->b()Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/dbt;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 15
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/dbh;->a([Lcom/google/android/gms/internal/ads/dbt;)Lcom/google/android/gms/internal/ads/dbm;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/cis;

    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/internal/ads/cis;-><init>(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbt;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zd;->a:Lcom/google/android/gms/internal/ads/dbs;

    .line 16
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/ads/dbm;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    return-object v0
.end method
