.class final synthetic Lcom/google/android/gms/internal/ads/cvp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/e;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cvo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cvo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cvp;->a:Lcom/google/android/gms/internal/ads/cvo;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cvp;->a:Lcom/google/android/gms/internal/ads/cvo;

    .line 1024
    instance-of v1, p1, Ljava/lang/InterruptedException;

    if-eqz v1, :cond_0

    .line 1025
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 1026
    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cvo;->b:Lcom/google/android/gms/internal/ads/cuy;

    const/16 v1, 0x7e9

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/cuy;->a(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/h;

    return-void
.end method
