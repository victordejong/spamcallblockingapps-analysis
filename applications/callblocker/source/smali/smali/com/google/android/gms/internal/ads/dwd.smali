.class final Lcom/google/android/gms/internal/ads/dwd;
.super Lcom/google/android/gms/internal/ads/yo;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/yo",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/dwa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dwa;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dwd;->a:Lcom/google/android/gms/internal/ads/dwa;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/yo;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwd;->a:Lcom/google/android/gms/internal/ads/dwa;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dwa;->a(Lcom/google/android/gms/internal/ads/dwa;)V

    .line 3
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/yo;->cancel(Z)Z

    move-result v0

    return v0
.end method
