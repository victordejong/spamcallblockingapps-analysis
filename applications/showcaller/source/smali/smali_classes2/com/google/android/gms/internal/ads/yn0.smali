.class final synthetic Lcom/google/android/gms/internal/ads/yn0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/do0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/do0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yn0;->d:Lcom/google/android/gms/internal/ads/do0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yn0;->d:Lcom/google/android/gms/internal/ads/do0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/do0;->n()V

    return-void
.end method
