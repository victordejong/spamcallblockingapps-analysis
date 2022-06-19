.class final synthetic Lcom/google/android/gms/internal/ads/v11;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/x11;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/x11;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/v11;->d:Lcom/google/android/gms/internal/ads/x11;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/v11;->d:Lcom/google/android/gms/internal/ads/x11;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/x11;->h()V

    return-void
.end method
