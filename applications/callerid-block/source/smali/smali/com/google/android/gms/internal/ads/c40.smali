.class final synthetic Lcom/google/android/gms/internal/ads/c40;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/gz1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/gz1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/c40;->b:Lcom/google/android/gms/internal/ads/gz1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c40;->b:Lcom/google/android/gms/internal/ads/gz1;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcql;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzcql;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/gz1;->a(Ljava/lang/Throwable;)V

    return-void
.end method
