.class final synthetic Lcom/google/android/gms/internal/ads/g7;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/i7;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/i7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/g7;->d:Lcom/google/android/gms/internal/ads/i7;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/g7;->d:Lcom/google/android/gms/internal/ads/i7;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/i7;->f(Lcom/google/android/gms/internal/ads/i7;)V

    return-void
.end method
