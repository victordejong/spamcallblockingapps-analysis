.class final synthetic Lcom/google/android/gms/internal/ads/bmy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bmw;

.field private final b:Lcom/google/android/gms/internal/ads/zzauj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bmw;Lcom/google/android/gms/internal/ads/zzauj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bmy;->a:Lcom/google/android/gms/internal/ads/bmw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bmy;->b:Lcom/google/android/gms/internal/ads/zzauj;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bmy;->a:Lcom/google/android/gms/internal/ads/bmw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bmy;->b:Lcom/google/android/gms/internal/ads/zzauj;

    .line 1021
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bmw;->c:Lcom/google/android/gms/internal/ads/boh;

    .line 1022
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/boh;->a(Lcom/google/android/gms/internal/ads/zzauj;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/aq;->dh:Lcom/google/android/gms/internal/ads/af;

    .line 1024
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v1

    .line 1025
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/dbt;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    return-object v0
.end method
