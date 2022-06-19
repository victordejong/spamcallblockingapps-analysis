.class final Lcom/google/android/gms/internal/ads/bm;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/google/android/gms/common/util/f;

.field private c:Lcom/google/android/gms/ads/internal/util/a1;

.field private d:Lcom/google/android/gms/internal/ads/wm;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/am;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/bm;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bm;->a:Landroid/content/Context;

    return-object p0
.end method

.method public final b(Lcom/google/android/gms/common/util/f;)Lcom/google/android/gms/internal/ads/bm;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bm;->b:Lcom/google/android/gms/common/util/f;

    return-object p0
.end method

.method public final c(Lcom/google/android/gms/ads/internal/util/a1;)Lcom/google/android/gms/internal/ads/bm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bm;->c:Lcom/google/android/gms/ads/internal/util/a1;

    return-object p0
.end method

.method public final d(Lcom/google/android/gms/internal/ads/wm;)Lcom/google/android/gms/internal/ads/bm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bm;->d:Lcom/google/android/gms/internal/ads/wm;

    return-object p0
.end method

.method public final e()Lcom/google/android/gms/internal/ads/xm;
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bm;->a:Landroid/content/Context;

    const-class v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/jh2;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bm;->b:Lcom/google/android/gms/common/util/f;

    const-class v1, Lcom/google/android/gms/common/util/f;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/jh2;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bm;->c:Lcom/google/android/gms/ads/internal/util/a1;

    const-class v1, Lcom/google/android/gms/ads/internal/util/a1;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/jh2;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bm;->d:Lcom/google/android/gms/internal/ads/wm;

    const-class v1, Lcom/google/android/gms/internal/ads/wm;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/jh2;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/dm;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bm;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bm;->b:Lcom/google/android/gms/common/util/f;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/bm;->c:Lcom/google/android/gms/ads/internal/util/a1;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/bm;->d:Lcom/google/android/gms/internal/ads/wm;

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/dm;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/util/f;Lcom/google/android/gms/ads/internal/util/a1;Lcom/google/android/gms/internal/ads/wm;Lcom/google/android/gms/internal/ads/am;)V

    return-object v0
.end method
