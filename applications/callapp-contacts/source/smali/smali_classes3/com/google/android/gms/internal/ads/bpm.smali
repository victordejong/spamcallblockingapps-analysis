.class final synthetic Lcom/google/android/gms/internal/ads/bpm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/dbt;

.field private final b:Lcom/google/android/gms/internal/ads/dbt;

.field private final c:Lcom/google/android/gms/internal/ads/dbt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bpm;->a:Lcom/google/android/gms/internal/ads/dbt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bpm;->b:Lcom/google/android/gms/internal/ads/dbt;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bpm;->c:Lcom/google/android/gms/internal/ads/dbt;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bpm;->a:Lcom/google/android/gms/internal/ads/dbt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bpm;->b:Lcom/google/android/gms/internal/ads/dbt;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bpm;->c:Lcom/google/android/gms/internal/ads/dbt;

    .line 2
    new-instance v3, Lcom/google/android/gms/internal/ads/bpy;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dbt;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/bqb;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dbt;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/dbt;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/ta;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/bpy;-><init>(Lcom/google/android/gms/internal/ads/bqb;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/ta;)V

    return-object v3
.end method
