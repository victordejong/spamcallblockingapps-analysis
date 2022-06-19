.class final Lcom/google/android/gms/internal/ads/ts1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/u51;


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Lcom/google/android/gms/internal/ads/lg0;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/lg0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ts1;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ts1;->e:Lcom/google/android/gms/internal/ads/lg0;

    return-void
.end method


# virtual methods
.method public final S(Lcom/google/android/gms/internal/ads/rj2;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/rj2;->b:Lcom/google/android/gms/internal/ads/qj2;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/qj2;->b:Lcom/google/android/gms/internal/ads/jj2;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/jj2;->d:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ts1;->e:Lcom/google/android/gms/internal/ads/lg0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ts1;->d:Landroid/content/Context;

    .line 3
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/rj2;->a:Lcom/google/android/gms/internal/ads/oj2;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/oj2;->a:Lcom/google/android/gms/internal/ads/xj2;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/xj2;->d:Lcom/google/android/gms/internal/ads/zzbdg;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/lg0;->i(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdg;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ts1;->e:Lcom/google/android/gms/internal/ads/lg0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ts1;->d:Landroid/content/Context;

    .line 4
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/rj2;->b:Lcom/google/android/gms/internal/ads/qj2;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/qj2;->b:Lcom/google/android/gms/internal/ads/jj2;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/jj2;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/lg0;->u(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final u(Lcom/google/android/gms/internal/ads/zzcbj;)V
    .locals 0

    return-void
.end method
