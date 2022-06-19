.class final Lcom/google/android/gms/internal/ads/p0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:Lcom/google/android/gms/internal/ads/q0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/q0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/p0;->d:Lcom/google/android/gms/internal/ads/q0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p0;->d:Lcom/google/android/gms/internal/ads/q0;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/q0;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/kw;->a(Landroid/content/Context;)V

    return-void
.end method
