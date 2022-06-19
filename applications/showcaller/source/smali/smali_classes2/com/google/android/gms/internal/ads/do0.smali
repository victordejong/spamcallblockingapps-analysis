.class public Lcom/google/android/gms/internal/ads/do0;
.super Landroid/webkit/WebViewClient;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/jp0;


# static fields
.field public static final synthetic d:I


# instance fields
.field private A:Z

.field private B:Z

.field private C:I

.field private D:Z

.field private final E:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private F:Landroid/view/View$OnAttachStateChangeListener;

.field private final e:Lcom/google/android/gms/internal/ads/wn0;

.field private final f:Lcom/google/android/gms/internal/ads/pm;

.field private final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/n20<",
            "-",
            "Lcom/google/android/gms/internal/ads/wn0;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final h:Ljava/lang/Object;

.field private i:Lcom/google/android/gms/internal/ads/kq;

.field private j:Lcom/google/android/gms/ads/internal/overlay/o;

.field private k:Lcom/google/android/gms/internal/ads/hp0;

.field private l:Lcom/google/android/gms/internal/ads/ip0;

.field private m:Lcom/google/android/gms/internal/ads/m10;

.field private n:Lcom/google/android/gms/internal/ads/o10;

.field private o:Lcom/google/android/gms/internal/ads/qa1;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Lcom/google/android/gms/ads/internal/overlay/u;

.field private v:Lcom/google/android/gms/internal/ads/qa0;

.field private w:Lcom/google/android/gms/ads/internal/b;

.field private x:Lcom/google/android/gms/internal/ads/la0;

.field protected y:Lcom/google/android/gms/internal/ads/hf0;

.field private z:Lcom/google/android/gms/internal/ads/bp2;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/wn0;Lcom/google/android/gms/internal/ads/pm;Z)V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/qa0;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/wn0;->v0()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/tv;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/wn0;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/tv;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/qa0;-><init>(Lcom/google/android/gms/internal/ads/wn0;Landroid/content/Context;Lcom/google/android/gms/internal/ads/tv;)V

    .line 3
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    .line 4
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/do0;->g:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/do0;->h:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/do0;->f:Lcom/google/android/gms/internal/ads/pm;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/do0;->e:Lcom/google/android/gms/internal/ads/wn0;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/do0;->r:Z

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/do0;->v:Lcom/google/android/gms/internal/ads/qa0;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/do0;->x:Lcom/google/android/gms/internal/ads/la0;

    new-instance p1, Ljava/util/HashSet;

    .line 5
    sget-object p2, Lcom/google/android/gms/internal/ads/kw;->U3:Lcom/google/android/gms/internal/ads/cw;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object p2

    .line 7
    check-cast p2, Ljava/lang/String;

    const-string p3, ","

    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/do0;->E:Ljava/util/HashSet;

    return-void
.end method

.method private static final H(ZLcom/google/android/gms/internal/ads/wn0;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/wn0;->o()Lcom/google/android/gms/internal/ads/mp0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/mp0;->g()Z

    move-result p0

    if-nez p0, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/wn0;->E()Ljava/lang/String;

    move-result-object p0

    const-string p1, "interstitial_mb"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic S(Lcom/google/android/gms/internal/ads/do0;Landroid/view/View;Lcom/google/android/gms/internal/ads/hf0;I)V
    .locals 0

    const/16 p3, 0xa

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/do0;->q(Landroid/view/View;Lcom/google/android/gms/internal/ads/hf0;I)V

    return-void
.end method

.method static synthetic m(Lcom/google/android/gms/internal/ads/do0;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/n20<",
            "-",
            "Lcom/google/android/gms/internal/ads/wn0;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/do0;->y(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private final q(Landroid/view/View;Lcom/google/android/gms/internal/ads/hf0;I)V
    .locals 2

    .line 1
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/hf0;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    .line 2
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/hf0;->a(Landroid/view/View;)V

    .line 3
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/hf0;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/google/android/gms/ads/internal/util/c2;->a:Lcom/google/android/gms/internal/ads/au2;

    new-instance v1, Lcom/google/android/gms/internal/ads/xn0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/xn0;-><init>(Lcom/google/android/gms/internal/ads/do0;Landroid/view/View;Lcom/google/android/gms/internal/ads/hf0;I)V

    const-wide/16 p1, 0x64

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private final r()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/do0;->F:Landroid/view/View$OnAttachStateChangeListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/do0;->e:Lcom/google/android/gms/internal/ads/wn0;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method private static u()Landroid/webkit/WebResourceResponse;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->v0:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
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

.method private final v(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;
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

    .line 1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x108

    .line 2
    :try_start_0
    invoke-static {p1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    const/4 p1, 0x0

    :goto_0
    add-int/lit8 p1, p1, 0x1

    const/16 v1, 0x14

    if-gt p1, v1, :cond_9

    .line 3
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    const/16 v2, 0x2710

    .line 4
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 5
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 6
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

    .line 7
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 8
    :cond_0
    instance-of v2, v1, Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_8

    .line 9
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->d()Lcom/google/android/gms/ads/internal/util/c2;

    move-result-object v3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/do0;->e:Lcom/google/android/gms/internal/ads/wn0;

    .line 11
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/wn0;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/do0;->e:Lcom/google/android/gms/internal/ads/wn0;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/wn0;->zzt()Lcom/google/android/gms/internal/ads/zzcgz;

    move-result-object v2

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzcgz;->d:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const v9, 0xea60

    move-object v7, v1

    .line 12
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/ads/internal/util/c2;->M(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;ZI)V

    .line 13
    new-instance v2, Lcom/google/android/gms/internal/ads/di0;

    const/4 v3, 0x0

    .line 14
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/di0;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/di0;->a(Ljava/net/HttpURLConnection;[B)V

    .line 16
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 17
    invoke-virtual {v2, v1, v4}, Lcom/google/android/gms/internal/ads/di0;->c(Ljava/net/HttpURLConnection;I)V

    const/16 v2, 0x12c

    if-lt v4, v2, :cond_7

    const/16 v2, 0x190

    if-ge v4, v2, :cond_7

    const-string v2, "Location"

    .line 18
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v4, "tel:"

    .line 19
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 20
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return-object v3

    :cond_1
    :try_start_1
    new-instance v3, Ljava/net/URL;

    .line 21
    invoke-direct {v3, v0, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p1, "Protocol is null"

    .line 23
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/ads/do0;->u()Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return-object p1

    :cond_2
    :try_start_2
    const-string v4, "http"

    .line 26
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

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 28
    :cond_3
    new-instance p2, Ljava/lang/String;

    .line 29
    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/ads/do0;->u()Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return-object p1

    :cond_4
    :try_start_3
    const-string v0, "Redirecting to "

    .line 32
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 34
    :cond_5
    new-instance v2, Ljava/lang/String;

    .line 35
    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ei0;->a(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v3

    goto/16 :goto_0

    .line 37
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Missing Location header in redirect"

    .line 38
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_7
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->d()Lcom/google/android/gms/ads/internal/util/c2;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/c2;->s(Ljava/net/HttpURLConnection;)Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 40
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return-object p1

    .line 41
    :cond_8
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid protocol."

    .line 42
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 43
    :cond_9
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    new-instance p1, Ljava/io/IOException;

    const-string p2, "Too many redirects (20)"

    .line 44
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 45
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 46
    throw p1
.end method

.method private final y(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/n20<",
            "-",
            "Lcom/google/android/gms/internal/ads/wn0;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/o1;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Received GMSG: "

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 3
    :cond_0
    new-instance p3, Ljava/lang/String;

    .line 4
    invoke-direct {p3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p3}, Lcom/google/android/gms/ads/internal/util/o1;->k(Ljava/lang/String;)V

    .line 5
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

    .line 6
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

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/o1;->k(Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/n20;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/do0;->e:Lcom/google/android/gms/internal/ads/wn0;

    .line 8
    invoke-interface {p3, v0, p1}, Lcom/google/android/gms/internal/ads/n20;->a(Ljava/lang/Object;Ljava/util/Map;)V

    goto :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method public final C0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/n20<",
            "-",
            "Lcom/google/android/gms/internal/ads/wn0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/do0;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/do0;->g:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final D0(Ljava/lang/String;Lcom/google/android/gms/common/util/p;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/util/p<",
            "Lcom/google/android/gms/internal/ads/n20<",
            "-",
            "Lcom/google/android/gms/internal/ads/wn0;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/do0;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/do0;->g:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/n20;

    .line 6
    invoke-interface {p2, v3}, Lcom/google/android/gms/common/util/p;->a(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final E0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/do0;->y:Lcom/google/android/gms/internal/ads/hf0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/hf0;->zzg()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/do0;->y:Lcom/google/android/gms/internal/ads/hf0;

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/do0;->r()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/do0;->h:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/do0;->g:Ljava/util/HashMap;

    .line 4
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/do0;->i:Lcom/google/android/gms/internal/ads/kq;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/do0;->j:Lcom/google/android/gms/ads/internal/overlay/o;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/do0;->k:Lcom/google/android/gms/internal/ads/hp0;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/do0;->l:Lcom/google/android/gms/internal/ads/ip0;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/do0;->m:Lcom/google/android/gms/internal/ads/m10;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/do0;->n:Lcom/google/android/gms/internal/ads/o10;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/do0;->p:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/do0;->r:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/do0;->s:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/do0;->u:Lcom/google/android/gms/ads/internal/overlay/u;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/do0;->w:Lcom/google/android/gms/ads/internal/b;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/do0;->v:Lcom/google/android/gms/internal/ads/qa0;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/do0;->x:Lcom/google/android/gms/internal/ads/la0;

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    .line 5
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/la0;->i(Z)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/do0;->x:Lcom/google/android/gms/internal/ads/la0;

    :cond_1
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/do0;->z:Lcom/google/android/gms/internal/ads/bp2;

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final G0(IIZ)V
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/do0;->v:Lcom/google/android/gms/internal/ads/qa0;

    if-eqz p3, :cond_0

    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/qa0;->h(II)V

    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/do0;->x:Lcom/google/android/gms/internal/ads/la0;

    if-eqz p3, :cond_1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p3, p1, p2, v0}, Lcom/google/android/gms/internal/ads/la0;->j(IIZ)V

    :cond_1
    return-void
.end method

.method public final I()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/do0;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/do0;->s:Z

    .line 2
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final J()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/do0;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/do0;->t:Z

    .line 2
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final K0(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/do0;->x:Lcom/google/android/gms/internal/ads/la0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/la0;->l(II)V

    :cond_0
    return-void
.end method

.method public final N()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/do0;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final O()Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/do0;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final U()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/do0;->k:Lcom/google/android/gms/internal/ads/hp0;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/do0;->A:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/do0;->C:I

    if-lez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/do0;->B:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/do0;->q:Z

    if-eqz v0, :cond_4

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->l1:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/do0;->e:Lcom/google/android/gms/internal/ads/wn0;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->k()Lcom/google/android/gms/internal/ads/xw;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/do0;->e:Lcom/google/android/gms/internal/ads/wn0;

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->k()Lcom/google/android/gms/internal/ads/xw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xw;->c()Lcom/google/android/gms/internal/ads/ax;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/do0;->e:Lcom/google/android/gms/internal/ads/wn0;

    .line 5
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/kk0;->zzi()Lcom/google/android/gms/internal/ads/ww;

    move-result-object v1

    const-string v2, "awfllc"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/rw;->a(Lcom/google/android/gms/internal/ads/ax;Lcom/google/android/gms/internal/ads/ww;[Ljava/lang/String;)Z

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/do0;->k:Lcom/google/android/gms/internal/ads/hp0;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/do0;->B:Z

    const/4 v2, 0x0

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/do0;->q:Z

    if-nez v1, :cond_3

    const/4 v2, 0x1

    .line 7
    :cond_3
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/hp0;->b(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/do0;->k:Lcom/google/android/gms/internal/ads/hp0;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/do0;->e:Lcom/google/android/gms/internal/ads/wn0;

    .line 8
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->K()V

    return-void
.end method

.method public final V(Lcom/google/android/gms/internal/ads/ip0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/do0;->l:Lcom/google/android/gms/internal/ads/ip0;

    return-void
.end method

.method public final Y(Lcom/google/android/gms/ads/internal/overlay/zzc;Z)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/do0;->e:Lcom/google/android/gms/internal/ads/wn0;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->T()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/do0;->e:Lcom/google/android/gms/internal/ads/wn0;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/do0;->H(ZLcom/google/android/gms/internal/ads/wn0;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3
    :cond_1
    :goto_0
    new-instance p2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    move-object v5, v3

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/do0;->i:Lcom/google/android/gms/internal/ads/kq;

    move-object v5, v1

    :goto_1
    if-eqz v0, :cond_3

    move-object v6, v3

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/do0;->j:Lcom/google/android/gms/ads/internal/overlay/o;

    move-object v6, v0

    :goto_2
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/do0;->u:Lcom/google/android/gms/ads/internal/overlay/u;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/do0;->e:Lcom/google/android/gms/internal/ads/wn0;

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->zzt()Lcom/google/android/gms/internal/ads/zzcgz;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/do0;->e:Lcom/google/android/gms/internal/ads/wn0;

    if-eqz v2, :cond_4

    move-object v10, v3

    goto :goto_3

    .line 5
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/do0;->o:Lcom/google/android/gms/internal/ads/qa1;

    move-object v10, v0

    :goto_3
    move-object v3, p2

    move-object v4, p1

    .line 6
    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzc;Lcom/google/android/gms/internal/ads/kq;Lcom/google/android/gms/ads/internal/overlay/o;Lcom/google/android/gms/ads/internal/overlay/u;Lcom/google/android/gms/internal/ads/zzcgz;Lcom/google/android/gms/internal/ads/wn0;Lcom/google/android/gms/internal/ads/qa1;)V

    .line 7
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/do0;->j0(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;
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

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zx;->a:Lcom/google/android/gms/internal/ads/nx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/nx;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/do0;->z:Lcom/google/android/gms/internal/ads/bp2;

    if-eqz v0, :cond_0

    const-string v0, "oda"

    .line 2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/do0;->z:Lcom/google/android/gms/internal/ads/bp2;

    .line 4
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/bp2;->b(Ljava/lang/String;)V

    .line 5
    new-instance p1, Landroid/webkit/WebResourceResponse;

    new-instance p2, Ljava/io/ByteArrayInputStream;

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-direct {p2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p1, v1, v1, p2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/do0;->e:Lcom/google/android/gms/internal/ads/wn0;

    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/do0;->D:Z

    .line 7
    invoke-static {p1, v0, v2}, Lcom/google/android/gms/internal/ads/ng0;->a(Ljava/lang/String;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 9
    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/ads/do0;->v(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 10
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayn;->k0(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzayn;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->j()Lcom/google/android/gms/internal/ads/yl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/yl;->f(Lcom/google/android/gms/internal/ads/zzayn;)Lcom/google/android/gms/internal/ads/zzayk;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayk;->zza()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    new-instance p1, Landroid/webkit/WebResourceResponse;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayk;->k0()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {p1, v1, v1, p2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p1

    .line 13
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/di0;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/gms/internal/ads/vx;->b:Lcom/google/android/gms/internal/ads/nx;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/nx;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/do0;->v(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 16
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->h()Lcom/google/android/gms/internal/ads/ph0;

    move-result-object p2

    const-string v0, "AdWebViewClient.interceptRequest"

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/ads/ph0;->k(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/do0;->u()Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/do0;->o:Lcom/google/android/gms/internal/ads/qa1;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/qa1;->b()V

    :cond_0
    return-void
.end method

.method public final b0(Lcom/google/android/gms/ads/internal/util/u0;Lcom/google/android/gms/internal/ads/dw1;Lcom/google/android/gms/internal/ads/rn1;Lcom/google/android/gms/internal/ads/jo2;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12

    move-object v0, p0

    .line 1
    new-instance v11, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/do0;->e:Lcom/google/android/gms/internal/ads/wn0;

    .line 2
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/wn0;->zzt()Lcom/google/android/gms/internal/ads/zzcgz;

    move-result-object v3

    move-object v1, v11

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/wn0;Lcom/google/android/gms/internal/ads/zzcgz;Lcom/google/android/gms/ads/internal/util/u0;Lcom/google/android/gms/internal/ads/dw1;Lcom/google/android/gms/internal/ads/rn1;Lcom/google/android/gms/internal/ads/jo2;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p0, v11}, Lcom/google/android/gms/internal/ads/do0;->j0(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final c()Lcom/google/android/gms/ads/internal/b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/do0;->w:Lcom/google/android/gms/ads/internal/b;

    return-object v0
.end method

.method public final d(Z)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/do0;->p:Z

    return-void
.end method

.method public final d0(ZIZ)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/do0;->e:Lcom/google/android/gms/internal/ads/wn0;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->T()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/do0;->e:Lcom/google/android/gms/internal/ads/wn0;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/do0;->H(ZLcom/google/android/gms/internal/ads/wn0;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :cond_1
    :goto_0
    new-instance p3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move-object v3, v2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/do0;->i:Lcom/google/android/gms/internal/ads/kq;

    move-object v3, v0

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/do0;->j:Lcom/google/android/gms/ads/internal/overlay/o;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/do0;->u:Lcom/google/android/gms/ads/internal/overlay/u;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/do0;->e:Lcom/google/android/gms/internal/ads/wn0;

    .line 4
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/wn0;->zzt()Lcom/google/android/gms/internal/ads/zzcgz;

    move-result-object v9

    if-eqz v1, :cond_3

    move-object v10, v2

    goto :goto_2

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/do0;->o:Lcom/google/android/gms/internal/ads/qa1;

    move-object v10, v0

    :goto_2
    move-object v2, p3

    move v7, p1

    move v8, p2

    .line 6
    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/kq;Lcom/google/android/gms/ads/internal/overlay/o;Lcom/google/android/gms/ads/internal/overlay/u;Lcom/google/android/gms/internal/ads/wn0;ZILcom/google/android/gms/internal/ads/zzcgz;Lcom/google/android/gms/internal/ads/qa1;)V

    .line 7
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/do0;->j0(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final e()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/do0;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/do0;->r:Z

    .line 2
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final f0(Lcom/google/android/gms/internal/ads/hp0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/do0;->k:Lcom/google/android/gms/internal/ads/hp0;

    return-void
.end method

.method public final g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/do0;->y:Lcom/google/android/gms/internal/ads/hf0;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/do0;->e:Lcom/google/android/gms/internal/ads/wn0;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/wn0;->F()Landroid/webkit/WebView;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lb/h/l/w;->U(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    .line 3
    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/gms/internal/ads/do0;->q(Landroid/view/View;Lcom/google/android/gms/internal/ads/hf0;I)V

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/do0;->r()V

    .line 5
    new-instance v1, Lcom/google/android/gms/internal/ads/ao0;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/ao0;-><init>(Lcom/google/android/gms/internal/ads/do0;Lcom/google/android/gms/internal/ads/hf0;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/do0;->F:Landroid/view/View$OnAttachStateChangeListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/do0;->e:Lcom/google/android/gms/internal/ads/wn0;

    check-cast v0, Landroid/view/View;

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_1
    return-void
.end method

.method public final g0(ZILjava/lang/String;Z)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/do0;->e:Lcom/google/android/gms/internal/ads/wn0;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/wn0;->T()Z

    move-result v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/do0;->e:Lcom/google/android/gms/internal/ads/wn0;

    .line 2
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/do0;->H(ZLcom/google/android/gms/internal/ads/wn0;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3
    :cond_1
    :goto_0
    new-instance v15, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    move-object v5, v4

    goto :goto_1

    .line 4
    :cond_2
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/do0;->i:Lcom/google/android/gms/internal/ads/kq;

    move-object v5, v2

    :goto_1
    if-eqz v1, :cond_3

    move-object v6, v4

    goto :goto_2

    .line 5
    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/ads/co0;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/do0;->e:Lcom/google/android/gms/internal/ads/wn0;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/do0;->j:Lcom/google/android/gms/ads/internal/overlay/o;

    .line 6
    invoke-direct {v1, v2, v6}, Lcom/google/android/gms/internal/ads/co0;-><init>(Lcom/google/android/gms/internal/ads/wn0;Lcom/google/android/gms/ads/internal/overlay/o;)V

    move-object v6, v1

    .line 7
    :goto_2
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/do0;->m:Lcom/google/android/gms/internal/ads/m10;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/do0;->n:Lcom/google/android/gms/internal/ads/o10;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/do0;->u:Lcom/google/android/gms/ads/internal/overlay/u;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/do0;->e:Lcom/google/android/gms/internal/ads/wn0;

    .line 8
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/wn0;->zzt()Lcom/google/android/gms/internal/ads/zzcgz;

    move-result-object v14

    if-eqz v3, :cond_4

    move-object v1, v4

    goto :goto_3

    .line 9
    :cond_4
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/do0;->o:Lcom/google/android/gms/internal/ads/qa1;

    :goto_3
    move-object v4, v15

    move/from16 v11, p1

    move/from16 v12, p2

    move-object/from16 v13, p3

    move-object v2, v15

    move-object v15, v1

    .line 10
    invoke-direct/range {v4 .. v15}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/kq;Lcom/google/android/gms/ads/internal/overlay/o;Lcom/google/android/gms/internal/ads/m10;Lcom/google/android/gms/internal/ads/o10;Lcom/google/android/gms/ads/internal/overlay/u;Lcom/google/android/gms/internal/ads/wn0;ZILjava/lang/String;Lcom/google/android/gms/internal/ads/zzcgz;Lcom/google/android/gms/internal/ads/qa1;)V

    .line 11
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/do0;->j0(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/do0;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/do0;->C:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/do0;->C:I

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/do0;->U()V

    return-void

    :catchall_0
    move-exception v1

    .line 4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final i()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/do0;->C:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/do0;->C:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/do0;->U()V

    return-void
.end method

.method public final i0(ZILjava/lang/String;Ljava/lang/String;Z)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/do0;->e:Lcom/google/android/gms/internal/ads/wn0;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/wn0;->T()Z

    move-result v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/do0;->e:Lcom/google/android/gms/internal/ads/wn0;

    .line 2
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/do0;->H(ZLcom/google/android/gms/internal/ads/wn0;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3
    :cond_1
    :goto_0
    new-instance v15, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    move-object v5, v4

    goto :goto_1

    .line 4
    :cond_2
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/do0;->i:Lcom/google/android/gms/internal/ads/kq;

    move-object v5, v2

    :goto_1
    if-eqz v1, :cond_3

    move-object v6, v4

    goto :goto_2

    .line 5
    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/ads/co0;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/do0;->e:Lcom/google/android/gms/internal/ads/wn0;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/do0;->j:Lcom/google/android/gms/ads/internal/overlay/o;

    .line 6
    invoke-direct {v1, v2, v6}, Lcom/google/android/gms/internal/ads/co0;-><init>(Lcom/google/android/gms/internal/ads/wn0;Lcom/google/android/gms/ads/internal/overlay/o;)V

    move-object v6, v1

    .line 7
    :goto_2
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/do0;->m:Lcom/google/android/gms/internal/ads/m10;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/do0;->n:Lcom/google/android/gms/internal/ads/o10;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/do0;->u:Lcom/google/android/gms/ads/internal/overlay/u;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/do0;->e:Lcom/google/android/gms/internal/ads/wn0;

    .line 8
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/wn0;->zzt()Lcom/google/android/gms/internal/ads/zzcgz;

    move-result-object v1

    if-eqz v3, :cond_4

    move-object/from16 v16, v4

    goto :goto_3

    .line 9
    :cond_4
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/do0;->o:Lcom/google/android/gms/internal/ads/qa1;

    move-object/from16 v16, v2

    :goto_3
    move-object v4, v15

    move/from16 v11, p1

    move/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object v2, v15

    move-object v15, v1

    .line 10
    invoke-direct/range {v4 .. v16}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/kq;Lcom/google/android/gms/ads/internal/overlay/o;Lcom/google/android/gms/internal/ads/m10;Lcom/google/android/gms/internal/ads/o10;Lcom/google/android/gms/ads/internal/overlay/u;Lcom/google/android/gms/internal/ads/wn0;ZILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcgz;Lcom/google/android/gms/internal/ads/qa1;)V

    .line 11
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/do0;->j0(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/do0;->f:Lcom/google/android/gms/internal/ads/pm;

    if-eqz v0, :cond_0

    const/16 v1, 0x2715

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/pm;->c(I)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/do0;->B:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/do0;->U()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/do0;->e:Lcom/google/android/gms/internal/ads/wn0;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->destroy()V

    return-void
.end method

.method public final j0(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/do0;->x:Lcom/google/android/gms/internal/ads/la0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/la0;->k()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->c()Lcom/google/android/gms/ads/internal/overlay/m;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/do0;->e:Lcom/google/android/gms/internal/ads/wn0;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/wn0;->getContext()Landroid/content/Context;

    move-result-object v1

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v1, p1, v0}, Lcom/google/android/gms/ads/internal/overlay/m;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/do0;->y:Lcom/google/android/gms/internal/ads/hf0;

    if-eqz v0, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->o:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:Lcom/google/android/gms/ads/internal/overlay/zzc;

    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/overlay/zzc;->e:Ljava/lang/String;

    .line 3
    :cond_1
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/hf0;->y(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final k0(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/do0;->h:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/do0;->s:Z

    .line 2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final l(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/do0;->D:Z

    return-void
.end method

.method final synthetic n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/do0;->e:Lcom/google/android/gms/internal/ads/wn0;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->M()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/do0;->e:Lcom/google/android/gms/internal/ads/wn0;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->Q()Lcom/google/android/gms/ads/internal/overlay/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/l;->w()V

    :cond_0
    return-void
.end method

.method public final o0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/n20<",
            "-",
            "Lcom/google/android/gms/internal/ads/wn0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/do0;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/do0;->g:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/do0;->g:Ljava/util/HashMap;

    .line 4
    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Loading resource: "

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/String;

    .line 3
    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/o1;->k(Ljava/lang/String;)V

    .line 4
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    const-string v0, "gmsg"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p2

    const-string v0, "mobileads.google.com"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/do0;->y0(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/do0;->h:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/do0;->e:Lcom/google/android/gms/internal/ads/wn0;

    .line 2
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/wn0;->h0()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "Blank page loaded, 1..."

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/o1;->k(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/do0;->e:Lcom/google/android/gms/internal/ads/wn0;

    .line 4
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/wn0;->W0()V

    .line 5
    monitor-exit p1

    return-void

    .line 6
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/do0;->A:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/do0;->l:Lcom/google/android/gms/internal/ads/ip0;

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ip0;->b()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/do0;->l:Lcom/google/android/gms/internal/ads/ip0;

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/do0;->U()V

    return-void

    :catchall_0
    move-exception p2

    .line 9
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/do0;->q:Z

    return-void
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/do0;->e:Lcom/google/android/gms/internal/ads/wn0;

    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result v0

    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->rendererPriorityAtExit()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/wn0;->w0(ZI)Z

    move-result p1

    return p1
.end method

.method final synthetic p(Landroid/view/View;Lcom/google/android/gms/internal/ads/hf0;I)V
    .locals 0

    add-int/lit8 p3, p3, -0x1

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/do0;->q(Landroid/view/View;Lcom/google/android/gms/internal/ads/hf0;I)V

    return-void
.end method

.method public final q0(Lcom/google/android/gms/internal/ads/kq;Lcom/google/android/gms/internal/ads/m10;Lcom/google/android/gms/ads/internal/overlay/o;Lcom/google/android/gms/internal/ads/o10;Lcom/google/android/gms/ads/internal/overlay/u;ZLcom/google/android/gms/internal/ads/q20;Lcom/google/android/gms/ads/internal/b;Lcom/google/android/gms/internal/ads/sa0;Lcom/google/android/gms/internal/ads/hf0;Lcom/google/android/gms/internal/ads/dw1;Lcom/google/android/gms/internal/ads/bp2;Lcom/google/android/gms/internal/ads/rn1;Lcom/google/android/gms/internal/ads/jo2;Lcom/google/android/gms/internal/ads/o20;Lcom/google/android/gms/internal/ads/qa1;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p7

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p15

    move-object/from16 v13, p16

    const/4 v14, 0x0

    if-nez p8, :cond_0

    .line 1
    new-instance v6, Lcom/google/android/gms/ads/internal/b;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/do0;->e:Lcom/google/android/gms/internal/ads/wn0;

    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/wn0;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, v5, v14}, Lcom/google/android/gms/ads/internal/b;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/hf0;Lcom/google/android/gms/internal/ads/zzcax;)V

    move-object v15, v6

    goto :goto_0

    :cond_0
    move-object/from16 v15, p8

    .line 2
    :goto_0
    new-instance v6, Lcom/google/android/gms/internal/ads/la0;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/do0;->e:Lcom/google/android/gms/internal/ads/wn0;

    invoke-direct {v6, v7, v4}, Lcom/google/android/gms/internal/ads/la0;-><init>(Lcom/google/android/gms/internal/ads/wn0;Lcom/google/android/gms/internal/ads/sa0;)V

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/do0;->x:Lcom/google/android/gms/internal/ads/la0;

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/do0;->y:Lcom/google/android/gms/internal/ads/hf0;

    .line 3
    sget-object v5, Lcom/google/android/gms/internal/ads/kw;->C0:Lcom/google/android/gms/internal/ads/cw;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v5

    .line 5
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Lcom/google/android/gms/internal/ads/l10;

    .line 6
    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/ads/l10;-><init>(Lcom/google/android/gms/internal/ads/m10;)V

    const-string v6, "/adMetadata"

    invoke-virtual {v0, v6, v5}, Lcom/google/android/gms/internal/ads/do0;->o0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    :cond_1
    if-eqz v2, :cond_2

    new-instance v5, Lcom/google/android/gms/internal/ads/n10;

    .line 7
    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/ads/n10;-><init>(Lcom/google/android/gms/internal/ads/o10;)V

    const-string v6, "/appEvent"

    invoke-virtual {v0, v6, v5}, Lcom/google/android/gms/internal/ads/do0;->o0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    .line 8
    :cond_2
    sget-object v5, Lcom/google/android/gms/internal/ads/m20;->j:Lcom/google/android/gms/internal/ads/n20;

    const-string v6, "/backButton"

    invoke-virtual {v0, v6, v5}, Lcom/google/android/gms/internal/ads/do0;->o0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    sget-object v5, Lcom/google/android/gms/internal/ads/m20;->k:Lcom/google/android/gms/internal/ads/n20;

    const-string v6, "/refresh"

    .line 9
    invoke-virtual {v0, v6, v5}, Lcom/google/android/gms/internal/ads/do0;->o0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    sget-object v5, Lcom/google/android/gms/internal/ads/m20;->b:Lcom/google/android/gms/internal/ads/n20;

    const-string v6, "/canOpenApp"

    .line 10
    invoke-virtual {v0, v6, v5}, Lcom/google/android/gms/internal/ads/do0;->o0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    sget-object v5, Lcom/google/android/gms/internal/ads/m20;->a:Lcom/google/android/gms/internal/ads/n20;

    const-string v6, "/canOpenURLs"

    .line 11
    invoke-virtual {v0, v6, v5}, Lcom/google/android/gms/internal/ads/do0;->o0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    sget-object v5, Lcom/google/android/gms/internal/ads/m20;->c:Lcom/google/android/gms/internal/ads/n20;

    const-string v6, "/canOpenIntents"

    .line 12
    invoke-virtual {v0, v6, v5}, Lcom/google/android/gms/internal/ads/do0;->o0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    sget-object v5, Lcom/google/android/gms/internal/ads/m20;->d:Lcom/google/android/gms/internal/ads/n20;

    const-string v6, "/close"

    .line 13
    invoke-virtual {v0, v6, v5}, Lcom/google/android/gms/internal/ads/do0;->o0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    sget-object v5, Lcom/google/android/gms/internal/ads/m20;->e:Lcom/google/android/gms/internal/ads/n20;

    const-string v6, "/customClose"

    .line 14
    invoke-virtual {v0, v6, v5}, Lcom/google/android/gms/internal/ads/do0;->o0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    sget-object v5, Lcom/google/android/gms/internal/ads/m20;->n:Lcom/google/android/gms/internal/ads/n20;

    const-string v6, "/instrument"

    .line 15
    invoke-virtual {v0, v6, v5}, Lcom/google/android/gms/internal/ads/do0;->o0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    sget-object v5, Lcom/google/android/gms/internal/ads/m20;->p:Lcom/google/android/gms/internal/ads/n20;

    const-string v6, "/delayPageLoaded"

    .line 16
    invoke-virtual {v0, v6, v5}, Lcom/google/android/gms/internal/ads/do0;->o0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    sget-object v5, Lcom/google/android/gms/internal/ads/m20;->q:Lcom/google/android/gms/internal/ads/n20;

    const-string v6, "/delayPageClosed"

    .line 17
    invoke-virtual {v0, v6, v5}, Lcom/google/android/gms/internal/ads/do0;->o0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    sget-object v5, Lcom/google/android/gms/internal/ads/m20;->r:Lcom/google/android/gms/internal/ads/n20;

    const-string v6, "/getLocationInfo"

    .line 18
    invoke-virtual {v0, v6, v5}, Lcom/google/android/gms/internal/ads/do0;->o0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    sget-object v5, Lcom/google/android/gms/internal/ads/m20;->g:Lcom/google/android/gms/internal/ads/n20;

    const-string v6, "/log"

    .line 19
    invoke-virtual {v0, v6, v5}, Lcom/google/android/gms/internal/ads/do0;->o0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    .line 20
    new-instance v5, Lcom/google/android/gms/internal/ads/u20;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/do0;->x:Lcom/google/android/gms/internal/ads/la0;

    invoke-direct {v5, v15, v6, v4}, Lcom/google/android/gms/internal/ads/u20;-><init>(Lcom/google/android/gms/ads/internal/b;Lcom/google/android/gms/internal/ads/la0;Lcom/google/android/gms/internal/ads/sa0;)V

    const-string v4, "/mraid"

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/ads/do0;->o0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/do0;->v:Lcom/google/android/gms/internal/ads/qa0;

    if-eqz v4, :cond_3

    const-string v5, "/mraidLoaded"

    .line 21
    invoke-virtual {v0, v5, v4}, Lcom/google/android/gms/internal/ads/do0;->o0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    :cond_3
    new-instance v9, Lcom/google/android/gms/internal/ads/z20;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/do0;->x:Lcom/google/android/gms/internal/ads/la0;

    move-object v4, v9

    move-object v5, v15

    move-object/from16 v7, p11

    move-object/from16 v8, p13

    move-object v14, v9

    move-object/from16 v9, p14

    .line 22
    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/z20;-><init>(Lcom/google/android/gms/ads/internal/b;Lcom/google/android/gms/internal/ads/la0;Lcom/google/android/gms/internal/ads/dw1;Lcom/google/android/gms/internal/ads/rn1;Lcom/google/android/gms/internal/ads/jo2;)V

    const-string v4, "/open"

    invoke-virtual {v0, v4, v14}, Lcom/google/android/gms/internal/ads/do0;->o0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/lm0;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/lm0;-><init>()V

    const-string v5, "/precache"

    .line 23
    invoke-virtual {v0, v5, v4}, Lcom/google/android/gms/internal/ads/do0;->o0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/m20;->i:Lcom/google/android/gms/internal/ads/n20;

    const-string v5, "/touch"

    .line 24
    invoke-virtual {v0, v5, v4}, Lcom/google/android/gms/internal/ads/do0;->o0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/m20;->l:Lcom/google/android/gms/internal/ads/n20;

    const-string v5, "/video"

    .line 25
    invoke-virtual {v0, v5, v4}, Lcom/google/android/gms/internal/ads/do0;->o0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/m20;->m:Lcom/google/android/gms/internal/ads/n20;

    const-string v5, "/videoMeta"

    .line 26
    invoke-virtual {v0, v5, v4}, Lcom/google/android/gms/internal/ads/do0;->o0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    const-string v4, "/httpTrack"

    const-string v5, "/click"

    if-eqz v10, :cond_4

    if-eqz v11, :cond_4

    invoke-static {v10, v11, v13}, Lcom/google/android/gms/internal/ads/gk2;->a(Lcom/google/android/gms/internal/ads/dw1;Lcom/google/android/gms/internal/ads/bp2;Lcom/google/android/gms/internal/ads/qa1;)Lcom/google/android/gms/internal/ads/n20;

    move-result-object v6

    .line 27
    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/internal/ads/do0;->o0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    invoke-static/range {p11 .. p12}, Lcom/google/android/gms/internal/ads/gk2;->b(Lcom/google/android/gms/internal/ads/dw1;Lcom/google/android/gms/internal/ads/bp2;)Lcom/google/android/gms/internal/ads/n20;

    move-result-object v5

    .line 28
    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/ads/do0;->o0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    goto :goto_1

    .line 29
    :cond_4
    invoke-static/range {p16 .. p16}, Lcom/google/android/gms/internal/ads/m20;->b(Lcom/google/android/gms/internal/ads/qa1;)Lcom/google/android/gms/internal/ads/n20;

    move-result-object v6

    .line 30
    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/internal/ads/do0;->o0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    sget-object v5, Lcom/google/android/gms/internal/ads/m20;->f:Lcom/google/android/gms/internal/ads/n20;

    .line 31
    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/ads/do0;->o0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    .line 32
    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->a()Lcom/google/android/gms/internal/ads/lg0;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/do0;->e:Lcom/google/android/gms/internal/ads/wn0;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/wn0;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/lg0;->g(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Lcom/google/android/gms/internal/ads/t20;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/do0;->e:Lcom/google/android/gms/internal/ads/wn0;

    .line 33
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/wn0;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/t20;-><init>(Landroid/content/Context;)V

    const-string v5, "/logScionEvent"

    .line 34
    invoke-virtual {v0, v5, v4}, Lcom/google/android/gms/internal/ads/do0;->o0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    :cond_5
    if-eqz v3, :cond_6

    new-instance v4, Lcom/google/android/gms/internal/ads/p20;

    const/4 v5, 0x0

    .line 35
    invoke-direct {v4, v3, v5}, Lcom/google/android/gms/internal/ads/p20;-><init>(Lcom/google/android/gms/internal/ads/q20;[B)V

    const-string v3, "/setInterstitialProperties"

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/do0;->o0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    :cond_6
    if-eqz v12, :cond_7

    sget-object v3, Lcom/google/android/gms/internal/ads/kw;->p6:Lcom/google/android/gms/internal/ads/cw;

    .line 36
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v3

    .line 37
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "/inspectorNetworkExtras"

    .line 38
    invoke-virtual {v0, v3, v12}, Lcom/google/android/gms/internal/ads/do0;->o0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    :cond_7
    move-object/from16 v3, p1

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/do0;->i:Lcom/google/android/gms/internal/ads/kq;

    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/do0;->j:Lcom/google/android/gms/ads/internal/overlay/o;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/do0;->m:Lcom/google/android/gms/internal/ads/m10;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/do0;->n:Lcom/google/android/gms/internal/ads/o10;

    move-object/from16 v1, p5

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/do0;->u:Lcom/google/android/gms/ads/internal/overlay/u;

    iput-object v15, v0, Lcom/google/android/gms/internal/ads/do0;->w:Lcom/google/android/gms/ads/internal/b;

    iput-object v13, v0, Lcom/google/android/gms/internal/ads/do0;->o:Lcom/google/android/gms/internal/ads/qa1;

    move/from16 v1, p6

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/do0;->p:Z

    iput-object v11, v0, Lcom/google/android/gms/internal/ads/do0;->z:Lcom/google/android/gms/internal/ads/bp2;

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 0

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/ads/do0;->a(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public final shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1
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
    .locals 12

    .line 1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "AdWebView shouldOverrideUrlLoading: "

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/String;

    .line 3
    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/o1;->k(Ljava/lang/String;)V

    .line 4
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gmsg"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mobileads.google.com"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/do0;->y0(Landroid/net/Uri;)V

    goto/16 :goto_5

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/do0;->p:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/do0;->e:Lcom/google/android/gms/internal/ads/wn0;

    .line 8
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/wn0;->F()Landroid/webkit/WebView;

    move-result-object v1

    if-ne p1, v1, :cond_6

    .line 9
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v3, "http"

    .line 10
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "https"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/do0;->i:Lcom/google/android/gms/internal/ads/kq;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 11
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/kq;->z0()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/do0;->y:Lcom/google/android/gms/internal/ads/hf0;

    if-eqz v0, :cond_3

    .line 12
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/hf0;->y(Ljava/lang/String;)V

    :cond_3
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/do0;->i:Lcom/google/android/gms/internal/ads/kq;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/do0;->o:Lcom/google/android/gms/internal/ads/qa1;

    if-eqz v0, :cond_5

    .line 13
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/qa1;->b()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/do0;->o:Lcom/google/android/gms/internal/ads/qa1;

    .line 14
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/do0;->e:Lcom/google/android/gms/internal/ads/wn0;

    .line 15
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/wn0;->F()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->willNotDraw()Z

    move-result p1

    if-nez p1, :cond_b

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/do0;->e:Lcom/google/android/gms/internal/ads/wn0;

    .line 16
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/wn0;->A()Lcom/google/android/gms/internal/ads/u;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 17
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/u;->a(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/do0;->e:Lcom/google/android/gms/internal/ads/wn0;

    .line 18
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/wn0;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/do0;->e:Lcom/google/android/gms/internal/ads/wn0;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/wn0;->g()Landroid/app/Activity;

    move-result-object v4

    check-cast v3, Landroid/view/View;

    .line 19
    invoke-virtual {p1, v0, v1, v3, v4}, Lcom/google/android/gms/internal/ads/u;->e(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzaat; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    .line 20
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unable to append parameter to URL: "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_7
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    .line 21
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/do0;->w:Lcom/google/android/gms/ads/internal/b;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/b;->b()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_3

    .line 22
    :cond_9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/do0;->w:Lcom/google/android/gms/ads/internal/b;

    .line 23
    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/internal/b;->c(Ljava/lang/String;)V

    goto :goto_5

    .line 24
    :cond_a
    :goto_3
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzc;

    .line 25
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v4, "android.intent.action.VIEW"

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/overlay/s;)V

    .line 26
    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/internal/ads/do0;->Y(Lcom/google/android/gms/ads/internal/overlay/zzc;Z)V

    goto :goto_5

    .line 27
    :cond_b
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "AdWebView unable to handle URL: "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_c
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    :goto_5
    return v2
.end method

.method public final t()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/do0;->h:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/do0;->p:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/do0;->r:Z

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/qi0;->e:Lcom/google/android/gms/internal/ads/s03;

    new-instance v2, Lcom/google/android/gms/internal/ads/yn0;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/yn0;-><init>(Lcom/google/android/gms/internal/ads/do0;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final u0(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/do0;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/do0;->t:Z

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final y0(Landroid/net/Uri;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/do0;->g:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v2

    .line 4
    sget-object v3, Lcom/google/android/gms/internal/ads/kw;->T3:Lcom/google/android/gms/internal/ads/cw;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v3

    .line 6
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/do0;->E:Ljava/util/HashSet;

    .line 7
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    sget-object v3, Lcom/google/android/gms/internal/ads/kw;->V3:Lcom/google/android/gms/internal/ads/cw;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v3

    .line 9
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v2, v3, :cond_2

    const-string v2, "Parsing gmsg query params on BG thread: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 10
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 11
    :cond_1
    new-instance v3, Ljava/lang/String;

    .line 12
    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/o1;->k(Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->d()Lcom/google/android/gms/ads/internal/util/c2;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/ads/internal/util/c2;->T(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/bo0;

    invoke-direct {v3, p0, v1, v0, p1}, Lcom/google/android/gms/internal/ads/bo0;-><init>(Lcom/google/android/gms/internal/ads/do0;Ljava/util/List;Ljava/lang/String;Landroid/net/Uri;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/qi0;->e:Lcom/google/android/gms/internal/ads/s03;

    .line 14
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/ads/k03;->p(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/f03;Ljava/util/concurrent/Executor;)V

    return-void

    .line 15
    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->d()Lcom/google/android/gms/ads/internal/util/c2;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/c2;->r(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object p1

    .line 16
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/do0;->y(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    return-void

    .line 17
    :cond_3
    :goto_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    const-string v1, "No GMSG handler found for GMSG: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/o1;->k(Ljava/lang/String;)V

    .line 18
    sget-object p1, Lcom/google/android/gms/internal/ads/kw;->a5:Lcom/google/android/gms/internal/ads/cw;

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object p1

    .line 20
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->h()Lcom/google/android/gms/internal/ads/ph0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ph0;->e()Lcom/google/android/gms/internal/ads/pw;

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

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_6
    :goto_2
    const-string p1, "null"

    .line 23
    :goto_3
    sget-object v0, Lcom/google/android/gms/internal/ads/qi0;->a:Lcom/google/android/gms/internal/ads/s03;

    new-instance v1, Lcom/google/android/gms/internal/ads/zn0;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zn0;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_7
    :goto_4
    return-void
.end method

.method public final z0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/do0;->i:Lcom/google/android/gms/internal/ads/kq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/kq;->z0()V

    :cond_0
    return-void
.end method
