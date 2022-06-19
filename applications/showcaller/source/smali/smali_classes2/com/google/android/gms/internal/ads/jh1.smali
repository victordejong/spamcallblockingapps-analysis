.class final synthetic Lcom/google/android/gms/internal/ads/jh1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/hp0;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/ui0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ui0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jh1;->d:Lcom/google/android/gms/internal/ads/ui0;

    return-void
.end method


# virtual methods
.method public final b(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jh1;->d:Lcom/google/android/gms/internal/ads/ui0;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ui0;->h()V

    return-void

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzehs;

    const/4 v1, 0x1

    const-string v2, "Image Web View failed to load."

    .line 2
    invoke-direct {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzehs;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/vi0;->f(Ljava/lang/Throwable;)Z

    return-void
.end method
