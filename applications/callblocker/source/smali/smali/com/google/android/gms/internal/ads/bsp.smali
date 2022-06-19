.class final synthetic Lcom/google/android/gms/internal/ads/bsp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bsn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bsn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bsp;->a:Lcom/google/android/gms/internal/ads/bsn;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bsp;->a:Lcom/google/android/gms/internal/ads/bsn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bsn;->d()V

    return-void
.end method
