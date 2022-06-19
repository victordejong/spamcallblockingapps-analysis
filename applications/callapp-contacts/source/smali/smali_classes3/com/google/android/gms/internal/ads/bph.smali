.class final synthetic Lcom/google/android/gms/internal/ads/bph;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bpg;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/boz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/boz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bph;->a:Lcom/google/android/gms/internal/ads/boz;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzauj;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bph;->a:Lcom/google/android/gms/internal/ads/boz;

    .line 1027
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/boz;->c:Lcom/google/android/gms/internal/ads/dsb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dsb;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/bpk;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzauj;->zzdyv:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/bpk;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1
.end method
