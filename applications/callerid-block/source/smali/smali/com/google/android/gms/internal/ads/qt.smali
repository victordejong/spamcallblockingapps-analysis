.class public Lcom/google/android/gms/internal/ads/qt;
.super Landroid/webkit/WebViewClient;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/wu;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field public static final synthetic B:I


# instance fields
.field private A:Landroid/view/View$OnAttachStateChangeListener;

.field private final b:Lcom/google/android/gms/internal/ads/jt;

.field private final c:Lcom/google/android/gms/internal/ads/wv2;

.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/h9<",
            "-",
            "Lcom/google/android/gms/internal/ads/jt;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/Object;

.field private f:Lcom/google/android/gms/internal/ads/hz2;

.field private g:Lcom/google/android/gms/ads/internal/overlay/q;

.field private h:Lcom/google/android/gms/internal/ads/uu;

.field private i:Lcom/google/android/gms/internal/ads/vu;

.field private j:Lcom/google/android/gms/internal/ads/i8;

.field private k:Lcom/google/android/gms/internal/ads/k8;

.field private l:Z

.field private m:Z

.field private n:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private o:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private p:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private q:Lcom/google/android/gms/ads/internal/overlay/w;

.field private r:Lcom/google/android/gms/internal/ads/fh;

.field private s:Lcom/google/android/gms/ads/internal/b;

.field private t:Lcom/google/android/gms/internal/ads/ah;

.field protected u:Lcom/google/android/gms/internal/ads/tl;

.field private v:Z

.field private w:Z

.field private x:I

.field private y:Z

.field private final z:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/jt;Lcom/google/android/gms/internal/ads/wv2;Z)V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ads/fh;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/jt;->G0()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/x2;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/jt;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/x2;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/fh;-><init>(Lcom/google/android/gms/internal/ads/jt;Landroid/content/Context;Lcom/google/android/gms/internal/ads/x2;)V

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/qt;->d:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/qt;->e:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/qt;->c:Lcom/google/android/gms/internal/ads/wv2;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qt;->b:Lcom/google/android/gms/internal/ads/jt;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/qt;->n:Z

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/qt;->r:Lcom/google/android/gms/internal/ads/fh;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qt;->t:Lcom/google/android/gms/internal/ads/ah;

    new-instance p1, Ljava/util/HashSet;

    sget-object p2, Lcom/google/android/gms/internal/ads/m3;->o3:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string p3, ","

    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qt;->z:Ljava/util/HashSet;

    return-void
.end method

.method static synthetic g(Lcom/google/android/gms/internal/ads/qt;Landroid/view/View;Lcom/google/android/gms/internal/ads/tl;I)V
    .locals 0

    const/16 p3, 0xa

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/qt;->m(Landroid/view/View;Lcom/google/android/gms/internal/ads/tl;I)V

    return-void
.end method

.method static synthetic k(Lcom/google/android/gms/internal/ads/qt;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/qt;->u(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private final m(Landroid/view/View;Lcom/google/android/gms/internal/ads/tl;I)V
    .locals 2

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/tl;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/tl;->b(Landroid/view/View;)V

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/tl;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/ads/internal/util/l1;->i:Lcom/google/android/gms/internal/ads/tv1;

    new-instance v1, Lcom/google/android/gms/internal/ads/kt;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/kt;-><init>(Lcom/google/android/gms/internal/ads/qt;Landroid/view/View;Lcom/google/android/gms/internal/ads/tl;I)V

    const-wide/16 p1, 0x64

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private final n()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qt;->A:Landroid/view/View$OnAttachStateChangeListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qt;->b:Lcom/google/android/gms/internal/ads/jt;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method private static p()Landroid/webkit/WebResourceResponse;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/m3;->r0:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/webkit/WebResourceResponse;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v2, ""

    invoke-direct {v0, v2, v2, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private final s(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x108

    :try_start_0
    invoke-static {p1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    const/4 p1, 0x0

    :goto_0
    add-int/lit8 p1, p1, 0x1

    const/16 v1, 0x14

    if-gt p1, v1, :cond_9

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    instance-of v2, v1, Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_8

    check-cast v1, Ljava/net/HttpURLConnection;

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->d()Lcom/google/android/gms/ads/internal/util/l1;

    move-result-object v3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/qt;->b:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/jt;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/qt;->b:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/jt;->r()Lcom/google/android/gms/internal/ads/zzbbq;

    move-result-object v2

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzbbq;->b:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const v9, 0xea60

    move-object v7, v1

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/ads/internal/util/l1;->G(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;ZI)V

    new-instance v2, Lcom/google/android/gms/internal/ads/oo;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/oo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/oo;->a(Ljava/net/HttpURLConnection;[B)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    invoke-virtual {v2, v1, v4}, Lcom/google/android/gms/internal/ads/oo;->c(Ljava/net/HttpURLConnection;I)V

    const/16 v2, 0x12c

    if-lt v4, v2, :cond_7

    const/16 v2, 0x190

    if-ge v4, v2, :cond_7

    const-string v2, "Location"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v4, "tel:"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return-object v3

    :cond_1
    :try_start_1
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p1, "Protocol is null"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/po;->f(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/qt;->p()Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return-object p1

    :cond_2
    :try_start_2
    const-string v4, "http"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "https"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string p1, "Unsupported scheme: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/po;->f(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/qt;->p()Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return-object p1

    :cond_4
    :try_start_3
    const-string v0, "Redirecting to "

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/po;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v3

    goto/16 :goto_0

    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Missing Location header in redirect"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->d()Lcom/google/android/gms/ads/internal/util/l1;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/l1;->q(Ljava/net/HttpURLConnection;)Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return-object p1

    :cond_8
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid protocol."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_9
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    new-instance p1, Ljava/io/IOException;

    const-string p2, "Too many redirects (20)"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method private final u(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/h9<",
            "-",
            "Lcom/google/android/gms/internal/ads/jt;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/y0;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Received GMSG: "

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p3}, Lcom/google/android/gms/ads/internal/util/y0;->k(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "  "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/y0;->k(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/h9;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qt;->b:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {p3, v0, p1}, Lcom/google/android/gms/internal/ads/h9;->a(Ljava/lang/Object;Ljava/util/Map;)V

    goto :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method public final B()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qt;->e:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/qt;->l:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/qt;->n:Z

    sget-object v1, Lcom/google/android/gms/internal/ads/zo;->e:Lcom/google/android/gms/internal/ads/sz1;

    new-instance v2, Lcom/google/android/gms/internal/ads/lt;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/lt;-><init>(Lcom/google/android/gms/internal/ads/qt;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final C()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qt;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/qt;->p:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final E()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qt;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final F()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qt;->f:Lcom/google/android/gms/internal/ads/hz2;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/hz2;->F()V

    :cond_0
    return-void
.end method

.method public final I()Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qt;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final J()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qt;->h:Lcom/google/android/gms/internal/ads/uu;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/qt;->v:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/qt;->x:I

    if-lez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/qt;->w:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/qt;->m:Z

    if-eqz v0, :cond_4

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/m3;->d1:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qt;->b:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jt;->l()Lcom/google/android/gms/internal/ads/a4;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qt;->b:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jt;->l()Lcom/google/android/gms/internal/ads/a4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/a4;->c()Lcom/google/android/gms/internal/ads/c4;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/qt;->b:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/rq;->i()Lcom/google/android/gms/internal/ads/z3;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "awfllc"

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/ads/t3;->a(Lcom/google/android/gms/internal/ads/c4;Lcom/google/android/gms/internal/ads/z3;[Ljava/lang/String;)Z

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qt;->h:Lcom/google/android/gms/internal/ads/uu;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/qt;->w:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/qt;->m:Z

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/uu;->b(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/qt;->h:Lcom/google/android/gms/internal/ads/uu;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qt;->b:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jt;->A()V

    return-void
.end method

.method public final K(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qt;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/qt;->p:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final N(Lcom/google/android/gms/ads/internal/overlay/zzc;)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qt;->b:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jt;->M()Z

    move-result v0

    new-instance v8, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/qt;->b:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/jt;->o()Lcom/google/android/gms/internal/ads/yu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/yu;->g()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/qt;->f:Lcom/google/android/gms/internal/ads/hz2;

    move-object v3, v2

    :goto_0
    if-eqz v0, :cond_1

    move-object v4, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qt;->g:Lcom/google/android/gms/ads/internal/overlay/q;

    move-object v4, v0

    :goto_1
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/qt;->q:Lcom/google/android/gms/ads/internal/overlay/w;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qt;->b:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jt;->r()Lcom/google/android/gms/internal/ads/zzbbq;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/qt;->b:Lcom/google/android/gms/internal/ads/jt;

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzc;Lcom/google/android/gms/internal/ads/hz2;Lcom/google/android/gms/ads/internal/overlay/q;Lcom/google/android/gms/ads/internal/overlay/w;Lcom/google/android/gms/internal/ads/zzbbq;Lcom/google/android/gms/internal/ads/jt;)V

    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/ads/qt;->X(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final O(Lcom/google/android/gms/ads/internal/util/g0;Lcom/google/android/gms/internal/ads/jz0;Lcom/google/android/gms/internal/ads/jr0;Lcom/google/android/gms/internal/ads/aq1;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12

    move-object v0, p0

    new-instance v11, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/qt;->b:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/jt;->r()Lcom/google/android/gms/internal/ads/zzbbq;

    move-result-object v3

    move-object v1, v11

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/jt;Lcom/google/android/gms/internal/ads/zzbbq;Lcom/google/android/gms/ads/internal/util/g0;Lcom/google/android/gms/internal/ads/jz0;Lcom/google/android/gms/internal/ads/jr0;Lcom/google/android/gms/internal/ads/aq1;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v11}, Lcom/google/android/gms/internal/ads/qt;->X(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final P(ZI)V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qt;->b:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jt;->M()Z

    move-result v0

    new-instance v9, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qt;->b:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jt;->o()Lcom/google/android/gms/internal/ads/yu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yu;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qt;->f:Lcom/google/android/gms/internal/ads/hz2;

    :goto_0
    move-object v2, v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/qt;->g:Lcom/google/android/gms/ads/internal/overlay/q;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/qt;->q:Lcom/google/android/gms/ads/internal/overlay/w;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/qt;->b:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/jt;->r()Lcom/google/android/gms/internal/ads/zzbbq;

    move-result-object v8

    move-object v1, v9

    move v6, p1

    move v7, p2

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/hz2;Lcom/google/android/gms/ads/internal/overlay/q;Lcom/google/android/gms/ads/internal/overlay/w;Lcom/google/android/gms/internal/ads/jt;ZILcom/google/android/gms/internal/ads/zzbbq;)V

    invoke-virtual {p0, v9}, Lcom/google/android/gms/internal/ads/qt;->X(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final R(ZILjava/lang/String;)V
    .locals 14

    move-object v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/qt;->b:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/jt;->M()Z

    move-result v1

    new-instance v13, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/qt;->b:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/jt;->o()Lcom/google/android/gms/internal/ads/yu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/yu;->g()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/qt;->f:Lcom/google/android/gms/internal/ads/hz2;

    :goto_0
    if-eqz v1, :cond_1

    move-object v4, v2

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/pt;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/qt;->b:Lcom/google/android/gms/internal/ads/jt;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/qt;->g:Lcom/google/android/gms/ads/internal/overlay/q;

    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/internal/ads/pt;-><init>(Lcom/google/android/gms/internal/ads/jt;Lcom/google/android/gms/ads/internal/overlay/q;)V

    move-object v4, v1

    :goto_1
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/qt;->j:Lcom/google/android/gms/internal/ads/i8;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/qt;->k:Lcom/google/android/gms/internal/ads/k8;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/qt;->q:Lcom/google/android/gms/ads/internal/overlay/w;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/qt;->b:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/jt;->r()Lcom/google/android/gms/internal/ads/zzbbq;

    move-result-object v12

    move-object v2, v13

    move v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v2 .. v12}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/hz2;Lcom/google/android/gms/ads/internal/overlay/q;Lcom/google/android/gms/internal/ads/i8;Lcom/google/android/gms/internal/ads/k8;Lcom/google/android/gms/ads/internal/overlay/w;Lcom/google/android/gms/internal/ads/jt;ZILjava/lang/String;Lcom/google/android/gms/internal/ads/zzbbq;)V

    invoke-virtual {p0, v13}, Lcom/google/android/gms/internal/ads/qt;->X(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final S0(Z)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/qt;->e:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/qt;->o:Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final T(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 15

    move-object v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/qt;->b:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/jt;->M()Z

    move-result v1

    new-instance v14, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/qt;->b:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/jt;->o()Lcom/google/android/gms/internal/ads/yu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/yu;->g()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/qt;->f:Lcom/google/android/gms/internal/ads/hz2;

    :goto_0
    if-eqz v1, :cond_1

    move-object v4, v2

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/pt;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/qt;->b:Lcom/google/android/gms/internal/ads/jt;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/qt;->g:Lcom/google/android/gms/ads/internal/overlay/q;

    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/internal/ads/pt;-><init>(Lcom/google/android/gms/internal/ads/jt;Lcom/google/android/gms/ads/internal/overlay/q;)V

    move-object v4, v1

    :goto_1
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/qt;->j:Lcom/google/android/gms/internal/ads/i8;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/qt;->k:Lcom/google/android/gms/internal/ads/k8;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/qt;->q:Lcom/google/android/gms/ads/internal/overlay/w;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/qt;->b:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/jt;->r()Lcom/google/android/gms/internal/ads/zzbbq;

    move-result-object v13

    move-object v2, v14

    move/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-direct/range {v2 .. v13}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/hz2;Lcom/google/android/gms/ads/internal/overlay/q;Lcom/google/android/gms/internal/ads/i8;Lcom/google/android/gms/internal/ads/k8;Lcom/google/android/gms/ads/internal/overlay/w;Lcom/google/android/gms/internal/ads/jt;ZILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbbq;)V

    invoke-virtual {p0, v14}, Lcom/google/android/gms/internal/ads/qt;->X(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final U(Lcom/google/android/gms/internal/ads/vu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qt;->i:Lcom/google/android/gms/internal/ads/vu;

    return-void
.end method

.method public final V0(Lcom/google/android/gms/internal/ads/hz2;Lcom/google/android/gms/internal/ads/i8;Lcom/google/android/gms/ads/internal/overlay/q;Lcom/google/android/gms/internal/ads/k8;Lcom/google/android/gms/ads/internal/overlay/w;ZLcom/google/android/gms/internal/ads/k9;Lcom/google/android/gms/ads/internal/b;Lcom/google/android/gms/internal/ads/hh;Lcom/google/android/gms/internal/ads/tl;Lcom/google/android/gms/internal/ads/jz0;Lcom/google/android/gms/internal/ads/tq1;Lcom/google/android/gms/internal/ads/jr0;Lcom/google/android/gms/internal/ads/aq1;Lcom/google/android/gms/internal/ads/i9;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p7

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move-object/from16 v6, p15

    const/4 v7, 0x0

    if-nez p8, :cond_0

    new-instance v8, Lcom/google/android/gms/ads/internal/b;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/qt;->b:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/jt;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9, v5, v7}, Lcom/google/android/gms/ads/internal/b;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/tl;Lcom/google/android/gms/internal/ads/zzavq;)V

    goto :goto_0

    :cond_0
    move-object/from16 v8, p8

    :goto_0
    new-instance v9, Lcom/google/android/gms/internal/ads/ah;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/qt;->b:Lcom/google/android/gms/internal/ads/jt;

    invoke-direct {v9, v10, v4}, Lcom/google/android/gms/internal/ads/ah;-><init>(Lcom/google/android/gms/internal/ads/jt;Lcom/google/android/gms/internal/ads/hh;)V

    iput-object v9, v0, Lcom/google/android/gms/internal/ads/qt;->t:Lcom/google/android/gms/internal/ads/ah;

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/qt;->u:Lcom/google/android/gms/internal/ads/tl;

    sget-object v5, Lcom/google/android/gms/internal/ads/m3;->x0:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Lcom/google/android/gms/internal/ads/h8;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/ads/h8;-><init>(Lcom/google/android/gms/internal/ads/i8;)V

    const-string v9, "/adMetadata"

    invoke-virtual {v0, v9, v5}, Lcom/google/android/gms/internal/ads/qt;->d0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/h9;)V

    :cond_1
    if-eqz v2, :cond_2

    new-instance v5, Lcom/google/android/gms/internal/ads/j8;

    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/ads/j8;-><init>(Lcom/google/android/gms/internal/ads/k8;)V

    const-string v9, "/appEvent"

    invoke-virtual {v0, v9, v5}, Lcom/google/android/gms/internal/ads/qt;->d0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/h9;)V

    :cond_2
    sget-object v5, Lcom/google/android/gms/internal/ads/g9;->k:Lcom/google/android/gms/internal/ads/h9;

    const-string v9, "/backButton"

    invoke-virtual {v0, v9, v5}, Lcom/google/android/gms/internal/ads/qt;->d0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/h9;)V

    sget-object v5, Lcom/google/android/gms/internal/ads/g9;->l:Lcom/google/android/gms/internal/ads/h9;

    const-string v9, "/refresh"

    invoke-virtual {v0, v9, v5}, Lcom/google/android/gms/internal/ads/qt;->d0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/h9;)V

    sget-object v5, Lcom/google/android/gms/internal/ads/g9;->b:Lcom/google/android/gms/internal/ads/h9;

    const-string v9, "/canOpenApp"

    invoke-virtual {v0, v9, v5}, Lcom/google/android/gms/internal/ads/qt;->d0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/h9;)V

    sget-object v5, Lcom/google/android/gms/internal/ads/g9;->a:Lcom/google/android/gms/internal/ads/h9;

    const-string v9, "/canOpenURLs"

    invoke-virtual {v0, v9, v5}, Lcom/google/android/gms/internal/ads/qt;->d0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/h9;)V

    sget-object v5, Lcom/google/android/gms/internal/ads/g9;->c:Lcom/google/android/gms/internal/ads/h9;

    const-string v9, "/canOpenIntents"

    invoke-virtual {v0, v9, v5}, Lcom/google/android/gms/internal/ads/qt;->d0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/h9;)V

    sget-object v5, Lcom/google/android/gms/internal/ads/g9;->e:Lcom/google/android/gms/internal/ads/h9;

    const-string v9, "/close"

    invoke-virtual {v0, v9, v5}, Lcom/google/android/gms/internal/ads/qt;->d0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/h9;)V

    sget-object v5, Lcom/google/android/gms/internal/ads/g9;->f:Lcom/google/android/gms/internal/ads/h9;

    const-string v9, "/customClose"

    invoke-virtual {v0, v9, v5}, Lcom/google/android/gms/internal/ads/qt;->d0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/h9;)V

    sget-object v5, Lcom/google/android/gms/internal/ads/g9;->o:Lcom/google/android/gms/internal/ads/h9;

    const-string v9, "/instrument"

    invoke-virtual {v0, v9, v5}, Lcom/google/android/gms/internal/ads/qt;->d0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/h9;)V

    sget-object v5, Lcom/google/android/gms/internal/ads/g9;->q:Lcom/google/android/gms/internal/ads/h9;

    const-string v9, "/delayPageLoaded"

    invoke-virtual {v0, v9, v5}, Lcom/google/android/gms/internal/ads/qt;->d0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/h9;)V

    sget-object v5, Lcom/google/android/gms/internal/ads/g9;->r:Lcom/google/android/gms/internal/ads/h9;

    const-string v9, "/delayPageClosed"

    invoke-virtual {v0, v9, v5}, Lcom/google/android/gms/internal/ads/qt;->d0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/h9;)V

    sget-object v5, Lcom/google/android/gms/internal/ads/g9;->s:Lcom/google/android/gms/internal/ads/h9;

    const-string v9, "/getLocationInfo"

    invoke-virtual {v0, v9, v5}, Lcom/google/android/gms/internal/ads/qt;->d0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/h9;)V

    sget-object v5, Lcom/google/android/gms/internal/ads/g9;->h:Lcom/google/android/gms/internal/ads/h9;

    const-string v9, "/log"

    invoke-virtual {v0, v9, v5}, Lcom/google/android/gms/internal/ads/qt;->d0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/h9;)V

    new-instance v5, Lcom/google/android/gms/internal/ads/o9;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/qt;->t:Lcom/google/android/gms/internal/ads/ah;

    invoke-direct {v5, v8, v9, v4}, Lcom/google/android/gms/internal/ads/o9;-><init>(Lcom/google/android/gms/ads/internal/b;Lcom/google/android/gms/internal/ads/ah;Lcom/google/android/gms/internal/ads/hh;)V

    const-string v4, "/mraid"

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/ads/qt;->d0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/h9;)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/qt;->r:Lcom/google/android/gms/internal/ads/fh;

    if-eqz v4, :cond_3

    const-string v5, "/mraidLoaded"

    invoke-virtual {v0, v5, v4}, Lcom/google/android/gms/internal/ads/qt;->d0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/h9;)V

    :cond_3
    new-instance v4, Lcom/google/android/gms/internal/ads/s9;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/qt;->t:Lcom/google/android/gms/internal/ads/ah;

    move-object v10, v4

    move-object v11, v8

    move-object/from16 v13, p11

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    invoke-direct/range {v10 .. v15}, Lcom/google/android/gms/internal/ads/s9;-><init>(Lcom/google/android/gms/ads/internal/b;Lcom/google/android/gms/internal/ads/ah;Lcom/google/android/gms/internal/ads/jz0;Lcom/google/android/gms/internal/ads/jr0;Lcom/google/android/gms/internal/ads/aq1;)V

    const-string v5, "/open"

    invoke-virtual {v0, v5, v4}, Lcom/google/android/gms/internal/ads/qt;->d0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/h9;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/rs;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/rs;-><init>()V

    const-string v5, "/precache"

    invoke-virtual {v0, v5, v4}, Lcom/google/android/gms/internal/ads/qt;->d0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/h9;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/g9;->j:Lcom/google/android/gms/internal/ads/h9;

    const-string v5, "/touch"

    invoke-virtual {v0, v5, v4}, Lcom/google/android/gms/internal/ads/qt;->d0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/h9;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/g9;->m:Lcom/google/android/gms/internal/ads/h9;

    const-string v5, "/video"

    invoke-virtual {v0, v5, v4}, Lcom/google/android/gms/internal/ads/qt;->d0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/h9;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/g9;->n:Lcom/google/android/gms/internal/ads/h9;

    const-string v5, "/videoMeta"

    invoke-virtual {v0, v5, v4}, Lcom/google/android/gms/internal/ads/qt;->d0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/h9;)V

    const-string v4, "/httpTrack"

    const-string v5, "/click"

    if-eqz p11, :cond_4

    if-eqz p12, :cond_4

    invoke-static/range {p11 .. p12}, Lcom/google/android/gms/internal/ads/am1;->a(Lcom/google/android/gms/internal/ads/jz0;Lcom/google/android/gms/internal/ads/tq1;)Lcom/google/android/gms/internal/ads/h9;

    move-result-object v9

    invoke-virtual {v0, v5, v9}, Lcom/google/android/gms/internal/ads/qt;->d0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/h9;)V

    invoke-static/range {p11 .. p12}, Lcom/google/android/gms/internal/ads/am1;->b(Lcom/google/android/gms/internal/ads/jz0;Lcom/google/android/gms/internal/ads/tq1;)Lcom/google/android/gms/internal/ads/h9;

    move-result-object v5

    goto :goto_1

    :cond_4
    sget-object v9, Lcom/google/android/gms/internal/ads/g9;->d:Lcom/google/android/gms/internal/ads/h9;

    invoke-virtual {v0, v5, v9}, Lcom/google/android/gms/internal/ads/qt;->d0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/h9;)V

    sget-object v5, Lcom/google/android/gms/internal/ads/g9;->g:Lcom/google/android/gms/internal/ads/h9;

    :goto_1
    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/ads/qt;->d0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/h9;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->a()Lcom/google/android/gms/internal/ads/wm;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/qt;->b:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/jt;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/wm;->g(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Lcom/google/android/gms/internal/ads/n9;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/qt;->b:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/jt;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/n9;-><init>(Landroid/content/Context;)V

    const-string v5, "/logScionEvent"

    invoke-virtual {v0, v5, v4}, Lcom/google/android/gms/internal/ads/qt;->d0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/h9;)V

    :cond_5
    if-eqz v3, :cond_6

    new-instance v4, Lcom/google/android/gms/internal/ads/j9;

    invoke-direct {v4, v3, v7}, Lcom/google/android/gms/internal/ads/j9;-><init>(Lcom/google/android/gms/internal/ads/k9;[B)V

    const-string v3, "/setInterstitialProperties"

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/qt;->d0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/h9;)V

    :cond_6
    if-eqz v6, :cond_7

    sget-object v3, Lcom/google/android/gms/internal/ads/m3;->m5:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "/inspectorNetworkExtras"

    invoke-virtual {v0, v3, v6}, Lcom/google/android/gms/internal/ads/qt;->d0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/h9;)V

    :cond_7
    move-object/from16 v3, p1

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/qt;->f:Lcom/google/android/gms/internal/ads/hz2;

    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/qt;->g:Lcom/google/android/gms/ads/internal/overlay/q;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/qt;->j:Lcom/google/android/gms/internal/ads/i8;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/qt;->k:Lcom/google/android/gms/internal/ads/k8;

    move-object/from16 v1, p5

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/qt;->q:Lcom/google/android/gms/ads/internal/overlay/w;

    iput-object v8, v0, Lcom/google/android/gms/internal/ads/qt;->s:Lcom/google/android/gms/ads/internal/b;

    move/from16 v1, p6

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/qt;->l:Z

    return-void
.end method

.method public final X(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qt;->t:Lcom/google/android/gms/internal/ads/ah;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ah;->k()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->c()Lcom/google/android/gms/ads/internal/overlay/o;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qt;->b:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/jt;->getContext()Landroid/content/Context;

    move-result-object v1

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v1, p1, v0}, Lcom/google/android/gms/ads/internal/overlay/o;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qt;->u:Lcom/google/android/gms/internal/ads/tl;

    if-eqz v0, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->m:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->b:Lcom/google/android/gms/ads/internal/overlay/zzc;

    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/overlay/zzc;->c:Ljava/lang/String;

    :cond_1
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/tl;->u(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final Z(IIZ)V
    .locals 1

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/qt;->r:Lcom/google/android/gms/internal/ads/fh;

    if-eqz p3, :cond_0

    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/fh;->h(II)V

    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/qt;->t:Lcom/google/android/gms/internal/ads/ah;

    if-eqz p3, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p2, v0}, Lcom/google/android/gms/internal/ads/ah;->j(IIZ)V

    :cond_1
    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/qt;->y:Z

    return-void
.end method

.method public final b()Lcom/google/android/gms/ads/internal/b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qt;->s:Lcom/google/android/gms/ads/internal/b;

    return-object v0
.end method

.method public final c()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qt;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/qt;->n:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final c1(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qt;->t:Lcom/google/android/gms/internal/ads/ah;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/ah;->l(II)V

    :cond_0
    return-void
.end method

.method final synthetic d()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qt;->b:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jt;->s0()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qt;->b:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jt;->Q()Lcom/google/android/gms/ads/internal/overlay/n;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/n;->D()V

    :cond_0
    return-void
.end method

.method public final d0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/h9;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/h9<",
            "-",
            "Lcom/google/android/gms/internal/ads/jt;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qt;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qt;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/qt;->d:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qt;->u:Lcom/google/android/gms/internal/ads/tl;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qt;->b:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/jt;->V()Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {v1}, Ld/h/m/t;->R(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/gms/internal/ads/qt;->m(Landroid/view/View;Lcom/google/android/gms/internal/ads/tl;I)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/qt;->n()V

    new-instance v1, Lcom/google/android/gms/internal/ads/nt;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/nt;-><init>(Lcom/google/android/gms/internal/ads/qt;Lcom/google/android/gms/internal/ads/tl;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/qt;->A:Landroid/view/View$OnAttachStateChangeListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qt;->b:Lcom/google/android/gms/internal/ads/jt;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_1
    return-void
.end method

.method public final e0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/h9;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/h9<",
            "-",
            "Lcom/google/android/gms/internal/ads/jt;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qt;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qt;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final synthetic f(Landroid/view/View;Lcom/google/android/gms/internal/ads/tl;I)V
    .locals 0

    add-int/lit8 p3, p3, -0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/qt;->m(Landroid/view/View;Lcom/google/android/gms/internal/ads/tl;I)V

    return-void
.end method

.method public final f0(Ljava/lang/String;Lcom/google/android/gms/common/util/o;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/util/o<",
            "Lcom/google/android/gms/internal/ads/h9<",
            "-",
            "Lcom/google/android/gms/internal/ads/jt;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qt;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qt;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/h9;

    invoke-interface {p2, v3}, Lcom/google/android/gms/common/util/o;->a(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final h()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/qt;->x:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/qt;->x:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/qt;->J()V

    return-void
.end method

.method public final h0()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qt;->u:Lcom/google/android/gms/internal/ads/tl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/tl;->d()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/qt;->u:Lcom/google/android/gms/internal/ads/tl;

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/qt;->n()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qt;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/qt;->d:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/qt;->f:Lcom/google/android/gms/internal/ads/hz2;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/qt;->g:Lcom/google/android/gms/ads/internal/overlay/q;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/qt;->h:Lcom/google/android/gms/internal/ads/uu;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/qt;->i:Lcom/google/android/gms/internal/ads/vu;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/qt;->j:Lcom/google/android/gms/internal/ads/i8;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/qt;->k:Lcom/google/android/gms/internal/ads/k8;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/qt;->l:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/qt;->n:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/qt;->o:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/qt;->q:Lcom/google/android/gms/ads/internal/overlay/w;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/qt;->s:Lcom/google/android/gms/ads/internal/b;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/qt;->r:Lcom/google/android/gms/internal/ads/fh;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/qt;->t:Lcom/google/android/gms/internal/ads/ah;

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/ah;->i(Z)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/qt;->t:Lcom/google/android/gms/internal/ads/ah;

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qt;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/qt;->x:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/qt;->x:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/qt;->J()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qt;->c:Lcom/google/android/gms/internal/ads/wv2;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzui;->W:Lcom/google/android/gms/internal/ads/zzui;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/wv2;->b(Lcom/google/android/gms/internal/ads/zzui;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/qt;->w:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/qt;->J()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qt;->b:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jt;->destroy()V

    return-void
.end method

.method protected final j0(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qt;->b:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/jt;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/qt;->y:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ads/ym;->a(Ljava/lang/String;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1, p2}, Lcom/google/android/gms/internal/ads/qt;->s(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzts;->a(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzts;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->j()Lcom/google/android/gms/internal/ads/fv2;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/fv2;->c(Lcom/google/android/gms/internal/ads/zzts;)Lcom/google/android/gms/internal/ads/zztp;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zztp;->zza()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance p1, Landroid/webkit/WebResourceResponse;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zztp;->a()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {p1, v0, v0, p2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p1

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/oo;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/y4;->b:Lcom/google/android/gms/internal/ads/p4;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/p4;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/qt;->s(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->h()Lcom/google/android/gms/internal/ads/zn;

    move-result-object p2

    const-string v0, "AdWebViewClient.interceptRequest"

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/ads/zn;->g(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/qt;->p()Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public final k0(Lcom/google/android/gms/internal/ads/uu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qt;->h:Lcom/google/android/gms/internal/ads/uu;

    return-void
.end method

.method public final l0(Z)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/qt;->l:Z

    return-void
.end method

.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Loading resource: "

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/y0;->k(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    const-string v0, "gmsg"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p2

    const-string v0, "mobileads.google.com"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/qt;->y0(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/qt;->e:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/qt;->b:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/jt;->p0()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "Blank page loaded, 1..."

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/y0;->k(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/qt;->b:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/jt;->K0()V

    monitor-exit p1

    return-void

    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/qt;->v:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/qt;->i:Lcom/google/android/gms/internal/ads/vu;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/vu;->b()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qt;->i:Lcom/google/android/gms/internal/ads/vu;

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/qt;->J()V

    return-void

    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/qt;->m:Z

    return-void
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/qt;->b:Lcom/google/android/gms/internal/ads/jt;

    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result v0

    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->rendererPriorityAtExit()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/jt;->R0(ZI)Z

    move-result p1

    return p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/ads/qt;->j0(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public final shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x4f

    if-eq p1, p2, :cond_0

    const/16 p2, 0xde

    if-eq p1, p2, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/4 p1, 0x0

    return p1

    :cond_0
    :pswitch_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 9

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "AdWebView shouldOverrideUrlLoading: "

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/y0;->k(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gmsg"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mobileads.google.com"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/qt;->y0(Landroid/net/Uri;)V

    goto/16 :goto_5

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/qt;->l:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qt;->b:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/jt;->V()Landroid/webkit/WebView;

    move-result-object v1

    if-ne p1, v1, :cond_5

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "https"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qt;->f:Lcom/google/android/gms/internal/ads/hz2;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/hz2;->F()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qt;->u:Lcom/google/android/gms/internal/ads/tl;

    if-eqz v0, :cond_3

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/tl;->u(Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/qt;->f:Lcom/google/android/gms/internal/ads/hz2;

    :cond_4
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/qt;->b:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/jt;->V()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->willNotDraw()Z

    move-result p1

    if-nez p1, :cond_a

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/qt;->b:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/jt;->w()Lcom/google/android/gms/internal/ads/zh2;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zh2;->a(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qt;->b:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/jt;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/qt;->b:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/jt;->h()Landroid/app/Activity;

    move-result-object v3

    check-cast v2, Landroid/view/View;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zh2;->e(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzfi; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unable to append parameter to URL: "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_6
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/po;->f(Ljava/lang/String;)V

    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/qt;->s:Lcom/google/android/gms/ads/internal/b;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/b;->b()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_3

    :cond_8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/qt;->s:Lcom/google/android/gms/ads/internal/b;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/internal/b;->c(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    :goto_3
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzc;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v1, "android.intent.action.VIEW"

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/overlay/u;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/qt;->N(Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    goto :goto_5

    :cond_a
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "AdWebView unable to handle URL: "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_b
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/po;->f(Ljava/lang/String;)V

    :goto_5
    const/4 p1, 0x1

    return p1
.end method

.method public final x()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qt;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/qt;->o:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final y0(Landroid/net/Uri;)V
    .locals 5

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qt;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/m3;->n3:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/qt;->z:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sget-object v3, Lcom/google/android/gms/internal/ads/m3;->p3:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v2, v3, :cond_2

    const-string v2, "Parsing gmsg query params on BG thread: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/y0;->k(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->d()Lcom/google/android/gms/ads/internal/util/l1;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/ads/internal/util/l1;->N(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/ot;

    invoke-direct {v3, p0, v1, v0, p1}, Lcom/google/android/gms/internal/ads/ot;-><init>(Lcom/google/android/gms/internal/ads/qt;Ljava/util/List;Ljava/lang/String;Landroid/net/Uri;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zo;->e:Lcom/google/android/gms/internal/ads/sz1;

    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/ads/kz1;->o(Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/gz1;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->d()Lcom/google/android/gms/ads/internal/util/l1;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/l1;->p(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/qt;->u(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x20

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "No GMSG handler found for GMSG: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/y0;->k(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/m3;->n4:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->h()Lcom/google/android/gms/internal/ads/zn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zn;->a()Lcom/google/android/gms/internal/ads/r3;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x2

    if-ge p1, v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_6
    :goto_2
    const-string p1, "null"

    :goto_3
    sget-object v0, Lcom/google/android/gms/internal/ads/zo;->a:Lcom/google/android/gms/internal/ads/sz1;

    new-instance v1, Lcom/google/android/gms/internal/ads/mt;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/mt;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_7
    :goto_4
    return-void
.end method
