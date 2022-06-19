.class final synthetic Lcom/google/android/gms/internal/ads/biw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bix;

.field private final b:Lcom/google/android/gms/internal/ads/pw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bix;Lcom/google/android/gms/internal/ads/pw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/biw;->a:Lcom/google/android/gms/internal/ads/bix;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/biw;->b:Lcom/google/android/gms/internal/ads/pw;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/biw;->a:Lcom/google/android/gms/internal/ads/bix;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/biw;->b:Lcom/google/android/gms/internal/ads/pw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/bix;->b(Lcom/google/android/gms/internal/ads/pw;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
