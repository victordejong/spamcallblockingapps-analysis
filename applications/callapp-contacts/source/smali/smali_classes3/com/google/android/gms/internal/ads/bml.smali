.class final synthetic Lcom/google/android/gms/internal/ads/bml;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bmi;

.field private final b:Lcom/google/android/gms/internal/ads/it;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bmi;Lcom/google/android/gms/internal/ads/it;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bml;->a:Lcom/google/android/gms/internal/ads/bmi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bml;->b:Lcom/google/android/gms/internal/ads/it;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bml;->a:Lcom/google/android/gms/internal/ads/bmi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bml;->b:Lcom/google/android/gms/internal/ads/it;

    .line 1169
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bmi;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/it;->a(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 1172
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/za;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
