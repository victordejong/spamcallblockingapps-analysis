.class final Lcom/google/android/gms/internal/ads/ij;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:Lcom/google/android/gms/internal/ads/gd;

.field final synthetic e:Lcom/google/android/gms/internal/ads/jj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/jj;Lcom/google/android/gms/internal/ads/gd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ij;->e:Lcom/google/android/gms/internal/ads/jj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ij;->d:Lcom/google/android/gms/internal/ads/gd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ij;->d:Lcom/google/android/gms/internal/ads/gd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/gd;->a()V

    return-void
.end method
