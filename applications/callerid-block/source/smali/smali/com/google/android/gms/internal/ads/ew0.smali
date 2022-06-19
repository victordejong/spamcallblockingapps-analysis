.class final Lcom/google/android/gms/internal/ads/ew0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/la0;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/ads/wm;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/wm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ew0;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ew0;->c:Lcom/google/android/gms/internal/ads/wm;

    return-void
.end method


# virtual methods
.method public final I(Lcom/google/android/gms/internal/ads/zzawc;)V
    .locals 0

    return-void
.end method

.method public final p(Lcom/google/android/gms/internal/ads/ml1;)V
    .locals 3

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/ml1;->b:Lcom/google/android/gms/internal/ads/kl1;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kl1;->b:Lcom/google/android/gms/internal/ads/dl1;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dl1;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ew0;->c:Lcom/google/android/gms/internal/ads/wm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ew0;->b:Landroid/content/Context;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/ml1;->a:Lcom/google/android/gms/internal/ads/il1;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/il1;->a:Lcom/google/android/gms/internal/ads/sl1;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/sl1;->d:Lcom/google/android/gms/internal/ads/zzys;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/wm;->i(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzys;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ew0;->c:Lcom/google/android/gms/internal/ads/wm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ew0;->b:Landroid/content/Context;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ml1;->b:Lcom/google/android/gms/internal/ads/kl1;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/kl1;->b:Lcom/google/android/gms/internal/ads/dl1;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/dl1;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/wm;->u(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
