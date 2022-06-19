.class public final Lcom/google/android/gms/internal/ads/ls;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/lg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/lg<",
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

.field final b:Lcom/google/android/gms/internal/ads/lk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/lk<",
            "TI;>;"
        }
    .end annotation
.end field

.field final c:Ljava/lang/String;

.field private final d:Lcom/google/android/gms/internal/ads/ke;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ke;Ljava/lang/String;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/lh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/ke;",
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
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ls;->d:Lcom/google/android/gms/internal/ads/ke;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ls;->c:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ls;->b:Lcom/google/android/gms/internal/ads/lk;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ls;->a:Lcom/google/android/gms/internal/ads/lh;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "TO;>;"
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zp;-><init>()V

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ls;->d:Lcom/google/android/gms/internal/ads/ke;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ke;->a()Lcom/google/android/gms/internal/ads/kv;

    move-result-object v1

    .line 12
    new-instance v2, Lcom/google/android/gms/internal/ads/lr;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/google/android/gms/internal/ads/lr;-><init>(Lcom/google/android/gms/internal/ads/ls;Lcom/google/android/gms/internal/ads/kv;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zp;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/lu;

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/internal/ads/lu;-><init>(Lcom/google/android/gms/internal/ads/ls;Lcom/google/android/gms/internal/ads/zp;Lcom/google/android/gms/internal/ads/kv;)V

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zs;->a(Lcom/google/android/gms/internal/ads/zt;Lcom/google/android/gms/internal/ads/zr;)V

    return-object v0
.end method

.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 0
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

    .line 28
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ls;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1
.end method
