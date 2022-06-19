.class final synthetic Lcom/google/android/gms/internal/ads/anz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/dbi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dbi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/anz;->a:Lcom/google/android/gms/internal/ads/dbi;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anz;->a:Lcom/google/android/gms/internal/ads/dbi;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcnp;

    sget-object v2, Lcom/google/android/gms/internal/ads/cqj;->zzhox:Lcom/google/android/gms/internal/ads/cqj;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzcnp;-><init>(Lcom/google/android/gms/internal/ads/cqj;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/dbi;->a(Ljava/lang/Throwable;)V

    return-void
.end method
