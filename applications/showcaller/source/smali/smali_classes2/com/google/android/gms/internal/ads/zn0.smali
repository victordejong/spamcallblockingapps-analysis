.class final synthetic Lcom/google/android/gms/internal/ads/zn0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zn0;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zn0;->d:Ljava/lang/String;

    sget v1, Lcom/google/android/gms/internal/ads/do0;->d:I

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->h()Lcom/google/android/gms/internal/ads/ph0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ph0;->e()Lcom/google/android/gms/internal/ads/pw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/pw;->e(Ljava/lang/String;)V

    return-void
.end method
