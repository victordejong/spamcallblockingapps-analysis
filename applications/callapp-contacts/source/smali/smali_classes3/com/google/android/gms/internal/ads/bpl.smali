.class final synthetic Lcom/google/android/gms/internal/ads/bpl;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bpl;->a:Lcom/google/android/gms/internal/ads/dbt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bpl;->b:Lcom/google/android/gms/internal/ads/dbt;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bpl;->a:Lcom/google/android/gms/internal/ads/dbt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bpl;->b:Lcom/google/android/gms/internal/ads/dbt;

    .line 2
    new-instance v2, Lcom/google/android/gms/internal/ads/bpy;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dbt;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/bqb;

    .line 4
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dbt;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/bpv;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/bpv;->b:Lorg/json/JSONObject;

    .line 5
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dbt;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/bpv;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/bpv;->a:Lcom/google/android/gms/internal/ads/ta;

    invoke-direct {v2, v0, v3, v1}, Lcom/google/android/gms/internal/ads/bpy;-><init>(Lcom/google/android/gms/internal/ads/bqb;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/ta;)V

    return-object v2
.end method
