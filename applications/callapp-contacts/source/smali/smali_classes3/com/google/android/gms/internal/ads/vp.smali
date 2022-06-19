.class final synthetic Lcom/google/android/gms/internal/ads/vp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/vq;

.field private final b:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/vq;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vp;->a:Lcom/google/android/gms/internal/ads/vq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/vp;->b:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vp;->a:Lcom/google/android/gms/internal/ads/vq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vp;->b:Landroid/graphics/Bitmap;

    .line 1166
    invoke-static {}, Lcom/google/android/gms/internal/ads/dlw;->h()Lcom/google/android/gms/internal/ads/dmf;

    move-result-object v2

    .line 1167
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1168
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/vq;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 1169
    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/vq;->a:Lcom/google/android/gms/internal/ads/drf$b$b;

    .line 1170
    invoke-static {}, Lcom/google/android/gms/internal/ads/drf$b$f;->a()Lcom/google/android/gms/internal/ads/drf$b$f$b;

    move-result-object v3

    .line 1171
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dmf;->a()Lcom/google/android/gms/internal/ads/dlw;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/drf$b$f$b;->a(Lcom/google/android/gms/internal/ads/dlw;)Lcom/google/android/gms/internal/ads/drf$b$f$b;

    move-result-object v2

    const-string v3, "image/png"

    .line 1172
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/drf$b$f$b;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/drf$b$f$b;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/drf$b$f$a;->zzjcu:Lcom/google/android/gms/internal/ads/drf$b$f$a;

    .line 1173
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/drf$b$f$b;->a(Lcom/google/android/gms/internal/ads/drf$b$f$a;)Lcom/google/android/gms/internal/ads/drf$b$f$b;

    move-result-object v2

    .line 2067
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dnh$b;->d()Lcom/google/android/gms/internal/ads/dnh;

    move-result-object v2

    .line 1174
    check-cast v2, Lcom/google/android/gms/internal/ads/dnh;

    check-cast v2, Lcom/google/android/gms/internal/ads/drf$b$f;

    .line 1175
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/drf$b$b;->a(Lcom/google/android/gms/internal/ads/drf$b$f;)Lcom/google/android/gms/internal/ads/drf$b$b;

    .line 1176
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
