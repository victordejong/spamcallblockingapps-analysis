.class final synthetic Lcom/google/android/gms/internal/ads/buh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/btx;

.field private final b:[Lcom/google/android/gms/internal/ads/bcy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/btx;[Lcom/google/android/gms/internal/ads/bcy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/buh;->a:Lcom/google/android/gms/internal/ads/btx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/buh;->b:[Lcom/google/android/gms/internal/ads/bcy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/buh;->a:Lcom/google/android/gms/internal/ads/btx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/buh;->b:[Lcom/google/android/gms/internal/ads/bcy;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/btx;->a([Lcom/google/android/gms/internal/ads/bcy;)V

    return-void
.end method
