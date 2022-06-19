.class final Lcom/google/android/gms/internal/ads/abr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/abs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/abs;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/abr;->a:Lcom/google/android/gms/internal/ads/abs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->y()Lcom/google/android/gms/internal/ads/abu;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/abr;->a:Lcom/google/android/gms/internal/ads/abs;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/abu;->b(Lcom/google/android/gms/internal/ads/abs;)V

    .line 4
    return-void
.end method
