.class final synthetic Lcom/google/android/gms/internal/ads/wr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/wo;

.field private final b:Lcom/google/android/gms/internal/ads/wo$a;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/wo;Lcom/google/android/gms/internal/ads/wo$a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wr;->a:Lcom/google/android/gms/internal/ads/wo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/wr;->b:Lcom/google/android/gms/internal/ads/wo$a;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/wr;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wr;->a:Lcom/google/android/gms/internal/ads/wo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wr;->b:Lcom/google/android/gms/internal/ads/wo$a;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/wr;->c:Ljava/lang/String;

    .line 1325
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/wo;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/afl;

    if-eqz v3, :cond_0

    .line 1327
    :try_start_0
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/wo;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/afl;

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/wo$a;->a(Lcom/google/android/gms/internal/ads/afl;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 v1, 0x0

    .line 1330
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/wo;->a(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
