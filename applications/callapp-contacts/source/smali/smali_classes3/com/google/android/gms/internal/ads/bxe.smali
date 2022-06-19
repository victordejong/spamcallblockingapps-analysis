.class final synthetic Lcom/google/android/gms/internal/ads/bxe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bxb;

.field private final b:Lcom/google/android/gms/internal/ads/cpk;

.field private final c:Lcom/google/android/gms/internal/ads/cov;

.field private final d:Lcom/google/android/gms/internal/ads/bsn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bxb;Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/bsn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bxe;->a:Lcom/google/android/gms/internal/ads/bxb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bxe;->b:Lcom/google/android/gms/internal/ads/cpk;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bxe;->c:Lcom/google/android/gms/internal/ads/cov;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bxe;->d:Lcom/google/android/gms/internal/ads/bsn;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bxe;->b:Lcom/google/android/gms/internal/ads/cpk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bxe;->c:Lcom/google/android/gms/internal/ads/cov;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bxe;->d:Lcom/google/android/gms/internal/ads/bsn;

    .line 1036
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/bwz;->c(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/bsn;)V

    return-void
.end method
