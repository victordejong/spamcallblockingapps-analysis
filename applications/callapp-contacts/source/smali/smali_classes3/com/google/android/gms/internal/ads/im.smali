.class final Lcom/google/android/gms/internal/ads/im;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/ih;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ih;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/im;->a:Lcom/google/android/gms/internal/ads/ih;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/im;->a:Lcom/google/android/gms/internal/ads/ih;

    .line 2056
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ih;->a:Lcom/google/android/gms/internal/ads/ia;

    if-eqz v1, :cond_0

    .line 2058
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ih;->a:Lcom/google/android/gms/internal/ads/ia;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ia;->disconnect()V

    .line 2059
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    :cond_0
    return-void
.end method
