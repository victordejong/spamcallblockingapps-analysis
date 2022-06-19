.class final synthetic Lcom/google/android/gms/internal/ads/a60;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/b60;

.field private final e:Lcom/google/android/gms/internal/ads/x40;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/b60;Lcom/google/android/gms/internal/ads/x40;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/a60;->d:Lcom/google/android/gms/internal/ads/b60;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/a60;->e:Lcom/google/android/gms/internal/ads/x40;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/a60;->e:Lcom/google/android/gms/internal/ads/x40;

    sget-object v1, Lcom/google/android/gms/internal/ads/m20;->o:Lcom/google/android/gms/internal/ads/c30;

    const-string v2, "/result"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/e60;->U(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/x40;->zzi()V

    return-void
.end method
