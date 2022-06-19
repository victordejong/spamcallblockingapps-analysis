.class final synthetic Lcom/google/android/gms/internal/ads/bpe;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bpe;->a:Lcom/google/android/gms/internal/ads/boz;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzauj;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bpe;->a:Lcom/google/android/gms/internal/ads/boz;

    .line 1028
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/boz;->b:Lcom/google/android/gms/internal/ads/bon;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzauj;->zzdyv:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/bon;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1
.end method
