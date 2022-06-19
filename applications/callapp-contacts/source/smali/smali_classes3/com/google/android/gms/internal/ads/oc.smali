.class final Lcom/google/android/gms/internal/ads/oc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/ads/a$a;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/oa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/oa;Lcom/google/ads/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oc;->b:Lcom/google/android/gms/internal/ads/oa;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/oc;->a:Lcom/google/ads/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oc;->b:Lcom/google/android/gms/internal/ads/oa;

    .line 1124
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/oa;->a:Lcom/google/android/gms/internal/ads/ms;

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/oc;->a:Lcom/google/ads/a$a;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/oe;->a(Lcom/google/ads/a$a;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ms;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 5
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
