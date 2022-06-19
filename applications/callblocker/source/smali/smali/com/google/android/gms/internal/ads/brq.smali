.class final synthetic Lcom/google/android/gms/internal/ads/brq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ckj;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bro;

.field private final b:Lcom/google/android/gms/internal/ads/r;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bro;Lcom/google/android/gms/internal/ads/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/brq;->a:Lcom/google/android/gms/internal/ads/bro;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/brq;->b:Lcom/google/android/gms/internal/ads/r;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/brq;->a:Lcom/google/android/gms/internal/ads/bro;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/brq;->b:Lcom/google/android/gms/internal/ads/r;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/bro;->a(Lcom/google/android/gms/internal/ads/r;)V

    return-void
.end method
