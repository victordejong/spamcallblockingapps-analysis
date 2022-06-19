.class final Lcom/google/android/gms/internal/ads/dow;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/dts;

.field private final b:Lcom/google/android/gms/internal/ads/ecj;

.field private final c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/dts;Lcom/google/android/gms/internal/ads/ecj;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dow;->a:Lcom/google/android/gms/internal/ads/dts;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dow;->b:Lcom/google/android/gms/internal/ads/ecj;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/dow;->c:Ljava/lang/Runnable;

    .line 5
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dow;->a:Lcom/google/android/gms/internal/ads/dts;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dts;->h()Z

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dow;->b:Lcom/google/android/gms/internal/ads/ecj;

    .line 8
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ecj;->c:Lcom/google/android/gms/internal/ads/zzae;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 9
    :goto_0
    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dow;->a:Lcom/google/android/gms/internal/ads/dts;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dow;->b:Lcom/google/android/gms/internal/ads/ecj;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/ecj;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dts;->a(Ljava/lang/Object;)V

    .line 12
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dow;->b:Lcom/google/android/gms/internal/ads/ecj;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/ecj;->d:Z

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dow;->a:Lcom/google/android/gms/internal/ads/dts;

    const-string/jumbo v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dts;->b(Ljava/lang/String;)V

    .line 15
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dow;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dow;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 17
    :cond_0
    return-void

    .line 8
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dow;->a:Lcom/google/android/gms/internal/ads/dts;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dow;->b:Lcom/google/android/gms/internal/ads/ecj;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/ecj;->c:Lcom/google/android/gms/internal/ads/zzae;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dts;->a(Lcom/google/android/gms/internal/ads/zzae;)V

    goto :goto_1

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dow;->a:Lcom/google/android/gms/internal/ads/dts;

    const-string/jumbo v1, "done"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dts;->c(Ljava/lang/String;)V

    goto :goto_2
.end method
