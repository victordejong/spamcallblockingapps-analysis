.class final synthetic Lcom/google/android/gms/internal/ads/cis;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/dbt;

.field private final b:Lcom/google/android/gms/internal/ads/dbt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cis;->a:Lcom/google/android/gms/internal/ads/dbt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cis;->b:Lcom/google/android/gms/internal/ads/dbt;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cis;->a:Lcom/google/android/gms/internal/ads/dbt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cis;->b:Lcom/google/android/gms/internal/ads/dbt;

    .line 2
    new-instance v2, Lcom/google/android/gms/internal/ads/ciq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dbt;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dbt;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/ciq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
