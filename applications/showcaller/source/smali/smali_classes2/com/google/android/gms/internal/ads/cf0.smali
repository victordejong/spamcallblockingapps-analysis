.class public final Lcom/google/android/gms/internal/ads/cf0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/hf0;


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final synthetic b:I


# instance fields
.field private final c:Lcom/google/android/gms/internal/ads/ih3;

.field private final d:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/di3;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/content/Context;

.field h:Z

.field private final i:Lcom/google/android/gms/internal/ads/zzcdv;

.field private final j:Ljava/lang/Object;

.field private k:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Z

.field private m:Z

.field private final n:Lcom/google/android/gms/internal/ads/ef0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/cf0;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgz;Lcom/google/android/gms/internal/ads/zzcdv;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ef0;[B)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p6, Ljava/util/ArrayList;

    invoke-direct {p6}, Ljava/util/ArrayList;-><init>()V

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/cf0;->e:Ljava/util/List;

    new-instance p6, Ljava/util/ArrayList;

    .line 2
    invoke-direct {p6}, Ljava/util/ArrayList;-><init>()V

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/cf0;->f:Ljava/util/List;

    new-instance p6, Ljava/lang/Object;

    invoke-direct {p6}, Ljava/lang/Object;-><init>()V

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/cf0;->j:Ljava/lang/Object;

    new-instance p6, Ljava/util/HashSet;

    .line 3
    invoke-direct {p6}, Ljava/util/HashSet;-><init>()V

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/cf0;->k:Ljava/util/HashSet;

    const/4 p6, 0x0

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/cf0;->l:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/cf0;->m:Z

    const-string p6, "SafeBrowsing config is not present."

    .line 4
    invoke-static {p3, p6}, Lcom/google/android/gms/common/internal/o;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p6

    if-eqz p6, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cf0;->g:Landroid/content/Context;

    new-instance p1, Ljava/util/LinkedHashMap;

    .line 6
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cf0;->d:Ljava/util/LinkedHashMap;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/cf0;->n:Lcom/google/android/gms/internal/ads/ef0;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cf0;->i:Lcom/google/android/gms/internal/ads/zzcdv;

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzcdv;->h:Ljava/util/List;

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/cf0;->k:Ljava/util/HashSet;

    sget-object p6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 8
    invoke-virtual {p3, p6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cf0;->k:Ljava/util/HashSet;

    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string p5, "cookie"

    .line 9
    invoke-virtual {p5, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/hi3;->F()Lcom/google/android/gms/internal/ads/ih3;

    move-result-object p1

    const/16 p3, 0x9

    .line 11
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/ih3;->F(I)Lcom/google/android/gms/internal/ads/ih3;

    .line 12
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/ads/ih3;->r(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ih3;

    .line 13
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/ads/ih3;->s(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ih3;

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/kh3;->C()Lcom/google/android/gms/internal/ads/jh3;

    move-result-object p3

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/cf0;->i:Lcom/google/android/gms/internal/ads/zzcdv;

    iget-object p4, p4, Lcom/google/android/gms/internal/ads/zzcdv;->d:Ljava/lang/String;

    if-eqz p4, :cond_2

    .line 15
    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/ads/jh3;->q(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/jh3;

    .line 16
    :cond_2
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/ee3;->n()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/kh3;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/ih3;->t(Lcom/google/android/gms/internal/ads/kh3;)Lcom/google/android/gms/internal/ads/ih3;

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/gi3;->C()Lcom/google/android/gms/internal/ads/fi3;

    move-result-object p3

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/cf0;->g:Landroid/content/Context;

    .line 18
    invoke-static {p4}, Lcom/google/android/gms/common/k/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/k/b;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/common/k/b;->g()Z

    move-result p4

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/ads/fi3;->s(Z)Lcom/google/android/gms/internal/ads/fi3;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzcgz;->d:Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 19
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/fi3;->q(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/fi3;

    .line 20
    :cond_3
    invoke-static {}, Lcom/google/android/gms/common/c;->f()Lcom/google/android/gms/common/c;

    move-result-object p2

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/cf0;->g:Landroid/content/Context;

    invoke-virtual {p2, p4}, Lcom/google/android/gms/common/c;->a(Landroid/content/Context;)I

    move-result p2

    int-to-long p4, p2

    const-wide/16 v0, 0x0

    cmp-long p2, p4, v0

    if-lez p2, :cond_4

    .line 21
    invoke-virtual {p3, p4, p5}, Lcom/google/android/gms/internal/ads/fi3;->r(J)Lcom/google/android/gms/internal/ads/fi3;

    .line 22
    :cond_4
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/ee3;->n()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/gi3;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/ih3;->C(Lcom/google/android/gms/internal/ads/gi3;)Lcom/google/android/gms/internal/ads/ih3;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cf0;->c:Lcom/google/android/gms/internal/ads/ih3;

    return-void
.end method

.method static synthetic d()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/cf0;->a:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cf0;->i:Lcom/google/android/gms/internal/ads/zzcdv;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzcdv;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/cf0;->l:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->d()Lcom/google/android/gms/ads/internal/util/c2;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    goto :goto_4

    .line 2
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v2

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 5
    invoke-static {v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_3
    move-object v3, v1

    .line 6
    :goto_0
    :try_start_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v3, v1

    :goto_1
    const-string v4, "Fail to capture the web view"

    .line 7
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/ads/ei0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    if-nez v3, :cond_6

    .line 8
    :try_start_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    if-eqz v2, :cond_5

    if-nez v3, :cond_4

    goto :goto_3

    .line 10
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Landroid/graphics/Canvas;

    .line 11
    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v6, 0x0

    .line 12
    invoke-virtual {p1, v6, v6, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 13
    invoke-virtual {p1, v5}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    move-object v1, v4

    goto :goto_4

    :cond_5
    :goto_3
    const-string p1, "Width or height of view is zero"

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    const-string v2, "Fail to capture the webview"

    .line 15
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/ei0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_6
    move-object v1, v3

    :goto_4
    if-nez v1, :cond_7

    const-string p1, "Failed to capture the webview bitmap."

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/gf0;->a(Ljava/lang/String;)V

    return-void

    :cond_7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/cf0;->l:Z

    new-instance p1, Lcom/google/android/gms/internal/ads/xe0;

    .line 17
    invoke-direct {p1, p0, v1}, Lcom/google/android/gms/internal/ads/xe0;-><init>(Lcom/google/android/gms/internal/ads/cf0;Landroid/graphics/Bitmap;)V

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/c2;->V(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()Lcom/google/android/gms/internal/ads/zzcdv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cf0;->i:Lcom/google/android/gms/internal/ads/zzcdv;

    return-object v0
.end method

.method public final c(Ljava/lang/String;Ljava/util/Map;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cf0;->j:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x3

    if-ne p3, v1, :cond_0

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/cf0;->m:Z

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cf0;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-ne p3, v1, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/cf0;->d:Ljava/util/LinkedHashMap;

    .line 2
    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/di3;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ci3;->a(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/di3;->v(I)Lcom/google/android/gms/internal/ads/di3;

    .line 3
    :cond_1
    monitor-exit v0

    return-void

    .line 4
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/ei3;->E()Lcom/google/android/gms/internal/ads/di3;

    move-result-object v1

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/ci3;->a(I)I

    move-result p3

    if-eqz p3, :cond_3

    .line 5
    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/ads/di3;->v(I)Lcom/google/android/gms/internal/ads/di3;

    :cond_3
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/cf0;->d:Ljava/util/LinkedHashMap;

    .line 6
    invoke-virtual {p3}, Ljava/util/LinkedHashMap;->size()I

    move-result p3

    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/ads/di3;->q(I)Lcom/google/android/gms/internal/ads/di3;

    .line 7
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/di3;->r(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/di3;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/qh3;->C()Lcom/google/android/gms/internal/ads/nh3;

    move-result-object p3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cf0;->k:Ljava/util/HashSet;

    .line 9
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_7

    if-eqz p2, :cond_7

    .line 10
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_1

    :cond_5
    const-string v3, ""

    .line 12
    :goto_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_2

    :cond_6
    const-string v2, ""

    :goto_2
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 13
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/cf0;->k:Ljava/util/HashSet;

    .line 14
    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/mh3;->C()Lcom/google/android/gms/internal/ads/lh3;

    move-result-object v4

    .line 16
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgex;->zzv(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/lh3;->q(Lcom/google/android/gms/internal/ads/zzgex;)Lcom/google/android/gms/internal/ads/lh3;

    .line 17
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgex;->zzv(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/lh3;->r(Lcom/google/android/gms/internal/ads/zzgex;)Lcom/google/android/gms/internal/ads/lh3;

    .line 18
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/ee3;->n()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/mh3;

    .line 19
    invoke-virtual {p3, v2}, Lcom/google/android/gms/internal/ads/nh3;->q(Lcom/google/android/gms/internal/ads/mh3;)Lcom/google/android/gms/internal/ads/nh3;

    goto :goto_0

    .line 20
    :cond_7
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/ee3;->n()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/qh3;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/di3;->s(Lcom/google/android/gms/internal/ads/qh3;)Lcom/google/android/gms/internal/ads/di3;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/cf0;->d:Ljava/util/LinkedHashMap;

    .line 21
    invoke-virtual {p2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final e()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/util/o;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cf0;->i:Lcom/google/android/gms/internal/ads/zzcdv;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzcdv;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/cf0;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final synthetic f(Ljava/util/Map;)Lcom/google/android/gms/internal/ads/r03;
    .locals 10

    const/4 v0, 0x1

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 1
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "matches"

    .line 4
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/cf0;->j:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/cf0;->j:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/cf0;->d:Ljava/util/LinkedHashMap;

    .line 6
    invoke-virtual {v7, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/di3;

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v7, :cond_3

    :try_start_3
    const-string v3, "Cannot find the corresponding resource object for "

    .line 7
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 8
    :cond_2
    new-instance v2, Ljava/lang/String;

    .line 9
    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/gf0;->a(Ljava/lang/String;)V

    .line 10
    monitor-exit v4

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_4

    .line 11
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "threat_type"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/di3;->t(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/di3;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/cf0;->h:Z

    if-lez v5, :cond_5

    const/4 v2, 0x1

    :cond_5
    or-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/cf0;->h:Z

    .line 12
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 13
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1

    :catchall_1
    move-exception p1

    .line 14
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1

    .line 15
    :cond_6
    :goto_3
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/cf0;->h:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cf0;->j:Ljava/lang/Object;

    monitor-enter p1
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cf0;->c:Lcom/google/android/gms/internal/ads/ih3;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/ih3;->F(I)Lcom/google/android/gms/internal/ads/ih3;

    .line 16
    monitor-exit p1

    goto :goto_4

    :catchall_2
    move-exception v0

    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0

    :cond_7
    :goto_4
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/cf0;->h:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cf0;->i:Lcom/google/android/gms/internal/ads/zzcdv;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzcdv;->j:Z

    if-nez v2, :cond_a

    :cond_8
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/cf0;->m:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cf0;->i:Lcom/google/android/gms/internal/ads/zzcdv;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzcdv;->i:Z

    if-nez v2, :cond_a

    :cond_9
    if-nez p1, :cond_f

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cf0;->i:Lcom/google/android/gms/internal/ads/zzcdv;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzcdv;->g:Z

    if-eqz p1, :cond_f

    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cf0;->j:Ljava/lang/Object;

    monitor-enter p1
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    :try_start_9
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cf0;->d:Ljava/util/LinkedHashMap;

    .line 17
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/di3;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/cf0;->c:Lcom/google/android/gms/internal/ads/ih3;

    .line 18
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ee3;->n()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/ei3;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/ih3;->w(Lcom/google/android/gms/internal/ads/ei3;)Lcom/google/android/gms/internal/ads/ih3;

    goto :goto_5

    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cf0;->c:Lcom/google/android/gms/internal/ads/ih3;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cf0;->e:Ljava/util/List;

    .line 19
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/ih3;->D(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/ih3;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cf0;->c:Lcom/google/android/gms/internal/ads/ih3;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cf0;->f:Ljava/util/List;

    .line 20
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/ih3;->E(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/ih3;

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/gf0;->b()Z

    move-result v2

    if-eqz v2, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cf0;->c:Lcom/google/android/gms/internal/ads/ih3;

    .line 22
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ih3;->q()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/cf0;->c:Lcom/google/android/gms/internal/ads/ih3;

    .line 23
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/ih3;->x()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x35

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Sending SB report\n  url: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n  clickUrl: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n  resources: \n"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cf0;->c:Lcom/google/android/gms/internal/ads/ih3;

    .line 24
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ih3;->v()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/ei3;

    const-string v5, "    ["

    .line 25
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/ei3;->D()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] "

    .line 27
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/ei3;->C()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/gf0;->a(Ljava/lang/String;)V

    :cond_d
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cf0;->c:Lcom/google/android/gms/internal/ads/ih3;

    .line 30
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ee3;->n()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/hi3;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/tc3;->K()[B

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cf0;->i:Lcom/google/android/gms/internal/ads/zzcdv;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzcdv;->e:Ljava/lang/String;

    new-instance v4, Lcom/google/android/gms/ads/internal/util/r0;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/cf0;->g:Landroid/content/Context;

    .line 31
    invoke-direct {v4, v5}, Lcom/google/android/gms/ads/internal/util/r0;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-virtual {v4, v0, v3, v1, v2}, Lcom/google/android/gms/ads/internal/util/r0;->b(ILjava/lang/String;Ljava/util/Map;[B)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/ads/gf0;->b()Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v1, Lcom/google/android/gms/internal/ads/ze0;->d:Ljava/lang/Runnable;

    .line 34
    sget-object v2, Lcom/google/android/gms/internal/ads/qi0;->a:Lcom/google/android/gms/internal/ads/s03;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/r03;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_e
    sget-object v1, Lcom/google/android/gms/internal/ads/af0;->a:Lcom/google/android/gms/internal/ads/nu2;

    .line 35
    sget-object v2, Lcom/google/android/gms/internal/ads/qi0;->f:Lcom/google/android/gms/internal/ads/s03;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/k03;->j(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/nu2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    .line 36
    monitor-exit p1

    goto :goto_7

    :catchall_3
    move-exception v0

    .line 37
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw v0

    .line 38
    :cond_f
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/k03;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_0

    :goto_7
    return-object v0

    :catch_0
    move-exception p1

    .line 39
    sget-object v0, Lcom/google/android/gms/internal/ads/fy;->b:Lcom/google/android/gms/internal/ads/nx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/nx;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "Failed to get SafeBrowsing metadata"

    .line 40
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ei0;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_10
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Safebrowsing report transmission failed."

    .line 41
    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/k03;->c(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method

.method final synthetic g(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgex;->zzB()Lcom/google/android/gms/internal/ads/fd3;

    move-result-object v0

    .line 2
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cf0;->j:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cf0;->c:Lcom/google/android/gms/internal/ads/ih3;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/xh3;->C()Lcom/google/android/gms/internal/ads/vh3;

    move-result-object v2

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fd3;->a()Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/vh3;->r(Lcom/google/android/gms/internal/ads/zzgex;)Lcom/google/android/gms/internal/ads/vh3;

    const-string v0, "image/png"

    .line 5
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/vh3;->q(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/vh3;

    const/4 v0, 0x2

    .line 6
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/vh3;->s(I)Lcom/google/android/gms/internal/ads/vh3;

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ee3;->n()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/xh3;

    .line 8
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ih3;->B(Lcom/google/android/gms/internal/ads/xh3;)Lcom/google/android/gms/internal/ads/ih3;

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

.method public final y(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cf0;->j:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cf0;->c:Lcom/google/android/gms/internal/ads/ih3;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ih3;->A()Lcom/google/android/gms/internal/ads/ih3;

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cf0;->c:Lcom/google/android/gms/internal/ads/ih3;

    .line 3
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/ih3;->y(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ih3;

    .line 4
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzg()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cf0;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cf0;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/k03;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/ye0;

    .line 3
    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/ye0;-><init>(Lcom/google/android/gms/internal/ads/cf0;)V

    .line 4
    sget-object v3, Lcom/google/android/gms/internal/ads/qi0;->f:Lcom/google/android/gms/internal/ads/s03;

    .line 5
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/k03;->i(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/uz2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v1

    const-wide/16 v4, 0xa

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/google/android/gms/internal/ads/qi0;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    invoke-static {v1, v4, v5, v2, v6}, Lcom/google/android/gms/internal/ads/k03;->h(Lcom/google/android/gms/internal/ads/r03;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v2

    new-instance v4, Lcom/google/android/gms/internal/ads/bf0;

    .line 7
    invoke-direct {v4, p0, v2}, Lcom/google/android/gms/internal/ads/bf0;-><init>(Lcom/google/android/gms/internal/ads/cf0;Lcom/google/android/gms/internal/ads/r03;)V

    invoke-static {v1, v4, v3}, Lcom/google/android/gms/internal/ads/k03;->p(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/f03;Ljava/util/concurrent/Executor;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/cf0;->a:Ljava/util/List;

    .line 8
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
