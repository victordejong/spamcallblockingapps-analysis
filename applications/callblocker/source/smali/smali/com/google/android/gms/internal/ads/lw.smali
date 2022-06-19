.class final Lcom/google/android/gms/internal/ads/lw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/ads/a$a;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/ls;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ls;Lcom/google/ads/a$a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lw;->b:Lcom/google/android/gms/internal/ads/ls;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/lw;->a:Lcom/google/ads/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lw;->b:Lcom/google/android/gms/internal/ads/ls;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ls;->a(Lcom/google/android/gms/internal/ads/ls;)Lcom/google/android/gms/internal/ads/ku;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lw;->a:Lcom/google/ads/a$a;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/lx;->a(Lcom/google/ads/a$a;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ku;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :goto_0
    return-void

    .line 4
    :catch_0
    move-exception v0

    .line 5
    const-string/jumbo v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
