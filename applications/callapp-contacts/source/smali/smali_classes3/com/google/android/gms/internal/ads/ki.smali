.class final synthetic Lcom/google/android/gms/internal/ads/ki;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/jt;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ke;

.field private final b:Lcom/google/android/gms/internal/ads/kz;

.field private final c:Lcom/google/android/gms/internal/ads/ju;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ke;Lcom/google/android/gms/internal/ads/kz;Lcom/google/android/gms/internal/ads/ju;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ki;->a:Lcom/google/android/gms/internal/ads/ke;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ki;->b:Lcom/google/android/gms/internal/ads/kz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ki;->c:Lcom/google/android/gms/internal/ads/ju;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ki;->a:Lcom/google/android/gms/internal/ads/ke;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ki;->b:Lcom/google/android/gms/internal/ads/kz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ki;->c:Lcom/google/android/gms/internal/ads/ju;

    .line 2
    sget-object v3, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lcom/google/android/gms/internal/ads/cxg;

    new-instance v4, Lcom/google/android/gms/internal/ads/kl;

    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/gms/internal/ads/kl;-><init>(Lcom/google/android/gms/internal/ads/ke;Lcom/google/android/gms/internal/ads/kz;Lcom/google/android/gms/internal/ads/ju;)V

    sget v0, Lcom/google/android/gms/internal/ads/kt;->b:I

    int-to-long v0, v0

    invoke-virtual {v3, v4, v0, v1}, Lcom/google/android/gms/internal/ads/cxg;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
