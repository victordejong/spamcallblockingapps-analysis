.class final Lcom/google/android/gms/internal/ads/km;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/hi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/hi<",
        "Lcom/google/android/gms/internal/ads/lc;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/die;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/ju;

.field private final synthetic c:Lcom/google/android/gms/ads/internal/util/zzbs;

.field private final synthetic d:Lcom/google/android/gms/internal/ads/ke;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ke;Lcom/google/android/gms/internal/ads/die;Lcom/google/android/gms/internal/ads/ju;Lcom/google/android/gms/ads/internal/util/zzbs;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/km;->d:Lcom/google/android/gms/internal/ads/ke;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/km;->a:Lcom/google/android/gms/internal/ads/die;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/km;->b:Lcom/google/android/gms/internal/ads/ju;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/km;->c:Lcom/google/android/gms/ads/internal/util/zzbs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/km;->d:Lcom/google/android/gms/internal/ads/ke;

    .line 1077
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ke;->a:Ljava/lang/Object;

    .line 3
    monitor-enter p1

    :try_start_0
    const-string p2, "JS Engine is requesting an update"

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzd;->zzey(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/km;->d:Lcom/google/android/gms/internal/ads/ke;

    .line 1082
    iget p2, p2, Lcom/google/android/gms/internal/ads/ke;->g:I

    if-nez p2, :cond_0

    const-string p2, "Starting reload."

    .line 6
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzd;->zzey(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/km;->d:Lcom/google/android/gms/internal/ads/ke;

    const/4 v0, 0x2

    .line 2078
    iput v0, p2, Lcom/google/android/gms/internal/ads/ke;->g:I

    .line 8
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/km;->d:Lcom/google/android/gms/internal/ads/ke;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/km;->a:Lcom/google/android/gms/internal/ads/die;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/ke;->a(Lcom/google/android/gms/internal/ads/die;)Lcom/google/android/gms/internal/ads/kz;

    .line 9
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/km;->b:Lcom/google/android/gms/internal/ads/ju;

    const-string v0, "/requestReload"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/km;->c:Lcom/google/android/gms/ads/internal/util/zzbs;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/util/zzbs;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/hi;

    .line 11
    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/internal/ads/ju;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    .line 12
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
