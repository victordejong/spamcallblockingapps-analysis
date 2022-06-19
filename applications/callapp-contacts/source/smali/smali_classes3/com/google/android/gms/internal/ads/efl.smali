.class final Lcom/google/android/gms/internal/ads/efl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/z;

.field private final b:Lcom/google/android/gms/internal/ads/fa;

.field private final c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/z;Lcom/google/android/gms/internal/ads/fa;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/efl;->a:Lcom/google/android/gms/internal/ads/z;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/efl;->b:Lcom/google/android/gms/internal/ads/fa;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/efl;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/efl;->a:Lcom/google/android/gms/internal/ads/z;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/z;->isCanceled()Z

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/efl;->b:Lcom/google/android/gms/internal/ads/fa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fa;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/efl;->a:Lcom/google/android/gms/internal/ads/z;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/efl;->b:Lcom/google/android/gms/internal/ads/fa;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/fa;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/z;->zza(Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/efl;->a:Lcom/google/android/gms/internal/ads/z;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/efl;->b:Lcom/google/android/gms/internal/ads/fa;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/fa;->c:Lcom/google/android/gms/internal/ads/zzap;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/z;->zzb(Lcom/google/android/gms/internal/ads/zzap;)V

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/efl;->b:Lcom/google/android/gms/internal/ads/fa;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/fa;->d:Z

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/efl;->a:Lcom/google/android/gms/internal/ads/z;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/z;->zzc(Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/efl;->a:Lcom/google/android/gms/internal/ads/z;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/z;->zzd(Ljava/lang/String;)V

    .line 13
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/efl;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 14
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method
