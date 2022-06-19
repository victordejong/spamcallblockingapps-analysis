.class final synthetic Lcom/google/android/gms/internal/ads/blg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bkz;

.field private final b:Lcom/google/android/gms/internal/ads/crt;

.field private final c:Lcom/google/android/gms/internal/ads/crt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bkz;Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/crt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/blg;->a:Lcom/google/android/gms/internal/ads/bkz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/blg;->b:Lcom/google/android/gms/internal/ads/crt;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/blg;->c:Lcom/google/android/gms/internal/ads/crt;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/blg;->a:Lcom/google/android/gms/internal/ads/bkz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/blg;->b:Lcom/google/android/gms/internal/ads/crt;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/blg;->c:Lcom/google/android/gms/internal/ads/crt;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/bkz;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/crt;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
