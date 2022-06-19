.class final synthetic Lcom/google/android/gms/internal/ads/bxm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/csr;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bxj;

.field private final b:Lcom/google/android/gms/internal/ads/cpk;

.field private final c:Lcom/google/android/gms/internal/ads/cov;

.field private final d:Lcom/google/android/gms/internal/ads/bsn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bxj;Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/bsn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bxm;->a:Lcom/google/android/gms/internal/ads/bxj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bxm;->b:Lcom/google/android/gms/internal/ads/cpk;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bxm;->c:Lcom/google/android/gms/internal/ads/cov;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bxm;->d:Lcom/google/android/gms/internal/ads/bsn;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bxm;->a:Lcom/google/android/gms/internal/ads/bxj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bxm;->b:Lcom/google/android/gms/internal/ads/cpk;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bxm;->c:Lcom/google/android/gms/internal/ads/cov;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bxm;->d:Lcom/google/android/gms/internal/ads/bsn;

    .line 1040
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bxj;->a:Lcom/google/android/gms/internal/ads/bss;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/bss;->a(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/bsn;)V

    return-void
.end method
