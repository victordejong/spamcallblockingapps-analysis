.class final synthetic Lcom/google/android/gms/internal/ads/bpb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/daq;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/boz;

.field private final b:Lcom/google/android/gms/internal/ads/bpg;

.field private final c:Lcom/google/android/gms/internal/ads/zzauj;

.field private final d:Lcom/google/android/gms/internal/ads/daq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/boz;Lcom/google/android/gms/internal/ads/bpg;Lcom/google/android/gms/internal/ads/zzauj;Lcom/google/android/gms/internal/ads/daq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bpb;->a:Lcom/google/android/gms/internal/ads/boz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bpb;->b:Lcom/google/android/gms/internal/ads/bpg;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bpb;->c:Lcom/google/android/gms/internal/ads/zzauj;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bpb;->d:Lcom/google/android/gms/internal/ads/daq;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bpb;->a:Lcom/google/android/gms/internal/ads/boz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bpb;->b:Lcom/google/android/gms/internal/ads/bpg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bpb;->c:Lcom/google/android/gms/internal/ads/zzauj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bpb;->d:Lcom/google/android/gms/internal/ads/daq;

    .line 1030
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/bpg;->a(Lcom/google/android/gms/internal/ads/zzauj;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/boz;->a:Lcom/google/android/gms/internal/ads/dbs;

    .line 2019
    invoke-static {v0, v2, p1}, Lcom/google/android/gms/internal/ads/daj;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/daq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1
.end method
