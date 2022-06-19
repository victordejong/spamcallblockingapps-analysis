.class final Lcom/google/android/gms/internal/ads/t60;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/xi0;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/vi0;

.field final synthetic b:Lcom/google/android/gms/internal/ads/x50;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/v60;Lcom/google/android/gms/internal/ads/vi0;Lcom/google/android/gms/internal/ads/x50;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/t60;->a:Lcom/google/android/gms/internal/ads/vi0;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/t60;->b:Lcom/google/android/gms/internal/ads/x50;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t60;->a:Lcom/google/android/gms/internal/ads/vi0;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbtv;

    const-string v2, "Unable to obtain a JavascriptEngine."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzbtv;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/vi0;->f(Ljava/lang/Throwable;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t60;->b:Lcom/google/android/gms/internal/ads/x50;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/x50;->g()V

    return-void
.end method
