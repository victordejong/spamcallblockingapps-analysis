.class final Lcom/google/android/gms/internal/ads/kr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zt<",
        "Lcom/google/android/gms/internal/ads/ju;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/kz;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/ke;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ke;Lcom/google/android/gms/internal/ads/kz;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/kr;->b:Lcom/google/android/gms/internal/ads/ke;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/kr;->a:Lcom/google/android/gms/internal/ads/kz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/kr;->b:Lcom/google/android/gms/internal/ads/ke;

    .line 1077
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ke;->a:Ljava/lang/Object;

    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kr;->b:Lcom/google/android/gms/internal/ads/ke;

    const/4 v1, 0x0

    .line 1078
    iput v1, v0, Lcom/google/android/gms/internal/ads/ke;->g:I

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kr;->b:Lcom/google/android/gms/internal/ads/ke;

    .line 1079
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ke;->f:Lcom/google/android/gms/internal/ads/kz;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kr;->a:Lcom/google/android/gms/internal/ads/kz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kr;->b:Lcom/google/android/gms/internal/ads/ke;

    .line 2079
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/ke;->f:Lcom/google/android/gms/internal/ads/kz;

    if-eq v0, v1, :cond_0

    const-string v0, "New JS engine is loaded, marking previous one as destroyable."

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kr;->b:Lcom/google/android/gms/internal/ads/ke;

    .line 3079
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ke;->f:Lcom/google/android/gms/internal/ads/kz;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/kz;->c()V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kr;->b:Lcom/google/android/gms/internal/ads/ke;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kr;->a:Lcom/google/android/gms/internal/ads/kz;

    .line 3080
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/ke;->f:Lcom/google/android/gms/internal/ads/kz;

    .line 9
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
