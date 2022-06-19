.class public Lcom/google/android/gms/internal/ads/ads;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/afe;


# instance fields
.field private A:Landroid/view/View$OnAttachStateChangeListener;

.field protected a:Lcom/google/android/gms/internal/ads/adt;

.field final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/hi<",
            "-",
            "Lcom/google/android/gms/internal/ads/adt;",
            ">;>;>;"
        }
    .end annotation
.end field

.field final c:Ljava/lang/Object;

.field d:Z

.field protected e:Lcom/google/android/gms/internal/ads/vy;

.field f:Z

.field private final g:Lcom/google/android/gms/internal/ads/ehk;

.field private h:Lcom/google/android/gms/internal/ads/eir;

.field private i:Lcom/google/android/gms/ads/internal/overlay/zzp;

.field private j:Lcom/google/android/gms/internal/ads/afd;

.field private k:Lcom/google/android/gms/internal/ads/afg;

.field private l:Lcom/google/android/gms/internal/ads/go;

.field private m:Lcom/google/android/gms/internal/ads/gq;

.field private n:Lcom/google/android/gms/internal/ads/aff;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Lcom/google/android/gms/ads/internal/overlay/zzx;

.field private final t:Lcom/google/android/gms/internal/ads/px;

.field private u:Lcom/google/android/gms/ads/internal/zza;

.field private v:Lcom/google/android/gms/internal/ads/pp;

.field private w:Z

.field private x:Z

.field private y:I

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
.method public constructor <init>(Lcom/google/android/gms/internal/ads/adt;Lcom/google/android/gms/internal/ads/ehk;Z)V
    .locals 6

    .line 1
    new-instance v4, Lcom/google/android/gms/internal/ads/px;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/adt;->w()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/ab;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/adt;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/ab;-><init>(Landroid/content/Context;)V

    invoke-direct {v4, p1, v0, v1}, Lcom/google/android/gms/internal/ads/px;-><init>(Lcom/google/android/gms/internal/ads/adt;Landroid/content/Context;Lcom/google/android/gms/internal/ads/ab;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 4
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ads;-><init>(Lcom/google/android/gms/internal/ads/adt;Lcom/google/android/gms/internal/ads/ehk;ZLcom/google/android/gms/internal/ads/px;Lcom/google/android/gms/internal/ads/pp;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/adt;Lcom/google/android/gms/internal/ads/ehk;ZLcom/google/android/gms/internal/ads/px;Lcom/google/android/gms/internal/ads/pp;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 7
    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/ads;->b:Ljava/util/HashMap;

    .line 8
    new-instance p5, Ljava/lang/Object;

    invoke-direct {p5}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/ads;->c:Ljava/lang/Object;

    const/4 p5, 0x0

    .line 9
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/ads;->d:Z

    .line 10
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ads;->g:Lcom/google/android/gms/internal/ads/ehk;

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ads;->a:Lcom/google/android/gms/internal/ads/adt;

    .line 12
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/ads;->o:Z

    .line 13
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ads;->t:Lcom/google/android/gms/internal/ads/px;

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ads;->v:Lcom/google/android/gms/internal/ads/pp;

    .line 15
    new-instance p1, Ljava/util/HashSet;

    sget-object p2, Lcom/google/android/gms/internal/ads/aq;->dm:Lcom/google/android/gms/internal/ads/af;

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object p2

    .line 18
    check-cast p2, Ljava/lang/String;

    const-string p3, ","

    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ads;->z:Ljava/util/HashSet;

    return-void
.end method

.method private final a(Landroid/view/View;Lcom/google/android/gms/internal/ads/vy;I)V
    .locals 2

    .line 108
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/vy;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    .line 109
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/vy;->a(Landroid/view/View;)V

    .line 110
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/vy;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lcom/google/android/gms/internal/ads/cxg;

    new-instance v1, Lcom/google/android/gms/internal/ads/adx;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/adx;-><init>(Lcom/google/android/gms/internal/ads/ads;Landroid/view/View;Lcom/google/android/gms/internal/ads/vy;I)V

    const-wide/16 p1, 0x64

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/cxg;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private final a(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ads;->v:Lcom/google/android/gms/internal/ads/pp;

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pp;->a()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 193
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzku()Lcom/google/android/gms/ads/internal/overlay/zzo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ads;->a:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/adt;->getContext()Landroid/content/Context;

    move-result-object v1

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v1, p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzo;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    .line 194
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ads;->e:Lcom/google/android/gms/internal/ads/vy;

    if-eqz v0, :cond_2

    .line 195
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 196
    iget-object v1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdue:Lcom/google/android/gms/ads/internal/overlay/zzb;

    if-eqz v1, :cond_1

    .line 197
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdue:Lcom/google/android/gms/ads/internal/overlay/zzb;

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/zzb;->url:Ljava/lang/String;

    .line 198
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ads;->e:Lcom/google/android/gms/internal/ads/vy;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/vy;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/ads;Landroid/view/View;Lcom/google/android/gms/internal/ads/vy;I)V
    .locals 0

    .line 420
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/ads;->a(Landroid/view/View;Lcom/google/android/gms/internal/ads/vy;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/ads;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 421
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/ads;->a(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private final a(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/hi<",
            "-",
            "Lcom/google/android/gms/internal/ads/adt;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 404
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzd;->zzyz()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Received GMSG: "

    .line 405
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

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
    invoke-static {p3}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    .line 406
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

    .line 407
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "  "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    goto :goto_1

    .line 409
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/hi;

    .line 410
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ads;->a:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {p3, v0, p1}, Lcom/google/android/gms/internal/ads/hi;->a(Ljava/lang/Object;Ljava/util/Map;)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method private final b(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x108

    .line 314
    :try_start_0
    invoke-static {p1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    const/4 p1, 0x0

    :goto_0
    add-int/lit8 p1, p1, 0x1

    const/16 v1, 0x14

    if-gt p1, v1, :cond_9

    .line 316
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    const/16 v2, 0x2710

    .line 317
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 318
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 319
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

    .line 320
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 322
    :cond_0
    instance-of v2, v1, Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_8

    .line 324
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 325
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    move-result-object v3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ads;->a:Lcom/google/android/gms/internal/ads/adt;

    .line 326
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/adt;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ads;->a:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/adt;->k()Lcom/google/android/gms/internal/ads/zzbar;

    move-result-object v2

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzbar;->zzbrz:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const v9, 0xea60

    move-object v7, v1

    .line 328
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/ads/internal/util/zzj;->zza(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;ZI)V

    .line 329
    new-instance v2, Lcom/google/android/gms/internal/ads/yu;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/yu;-><init>()V

    const/4 v3, 0x0

    .line 330
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/yu;->a(Ljava/net/HttpURLConnection;[B)V

    .line 331
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 332
    invoke-virtual {v2, v1, v4}, Lcom/google/android/gms/internal/ads/yu;->a(Ljava/net/HttpURLConnection;I)V

    const/16 v2, 0x12c

    if-lt v4, v2, :cond_7

    const/16 v2, 0x190

    if-ge v4, v2, :cond_7

    const-string v2, "Location"

    .line 334
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v4, "tel:"

    .line 337
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 339
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return-object v3

    .line 341
    :cond_1
    :try_start_1
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 342
    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p1, "Protocol is null"

    .line 344
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    .line 345
    invoke-static {}, Lcom/google/android/gms/internal/ads/ads;->p()Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return-object p1

    :cond_2
    :try_start_2
    const-string v4, "http"

    .line 348
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "https"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string p1, "Unsupported scheme: "

    .line 349
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_2
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    .line 350
    invoke-static {}, Lcom/google/android/gms/internal/ads/ads;->p()Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 351
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return-object p1

    :cond_4
    :try_start_3
    const-string v0, "Redirecting to "

    .line 353
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

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
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzdz(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v3

    goto/16 :goto_0

    .line 336
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Missing Location header in redirect"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 356
    :cond_7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzj;->zzd(Ljava/net/HttpURLConnection;)Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 357
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return-object p1

    .line 323
    :cond_8
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid protocol."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 359
    :cond_9
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 363
    new-instance p1, Ljava/io/IOException;

    const/16 p2, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Too many redirects (20)"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 361
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 362
    throw p1
.end method

.method private final n()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ads;->A:Landroid/view/View$OnAttachStateChangeListener;

    if-nez v0, :cond_0

    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ads;->a:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->s()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ads;->A:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method private final o()V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ads;->j:Lcom/google/android/gms/internal/ads/afd;

    if-eqz v0, :cond_3

    .line 143
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ads;->w:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/ads;->y:I

    if-lez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ads;->x:Z

    if-eqz v0, :cond_3

    .line 144
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->bl:Lcom/google/android/gms/internal/ads/af;

    .line 145
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 146
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ads;->a:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->j()Lcom/google/android/gms/internal/ads/bf;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ads;->a:Lcom/google/android/gms/internal/ads/adt;

    .line 148
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->j()Lcom/google/android/gms/internal/ads/bf;

    move-result-object v0

    .line 2018
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bf;->b:Lcom/google/android/gms/internal/ads/bi;

    .line 148
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ads;->a:Lcom/google/android/gms/internal/ads/adt;

    .line 149
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/adt;->c()Lcom/google/android/gms/internal/ads/bg;

    move-result-object v1

    const-string v2, "awfllc"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ay;->a(Lcom/google/android/gms/internal/ads/bi;Lcom/google/android/gms/internal/ads/bg;[Ljava/lang/String;)Z

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ads;->j:Lcom/google/android/gms/internal/ads/afd;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/ads;->x:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/afd;->zzam(Z)V

    const/4 v0, 0x0

    .line 152
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ads;->j:Lcom/google/android/gms/internal/ads/afd;

    .line 153
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ads;->a:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->M()V

    return-void
.end method

.method private static p()Landroid/webkit/WebResourceResponse;
    .locals 3

    .line 307
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->as:Lcom/google/android/gms/internal/ads/af;

    .line 308
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 309
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
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


# virtual methods
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

    const-string v0, ""

    .line 290
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ads;->a:Lcom/google/android/gms/internal/ads/adt;

    .line 291
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/adt;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/ads;->f:Z

    .line 292
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ads/xg;->a(Ljava/lang/String;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    .line 293
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 294
    invoke-direct {p0, v1, p2}, Lcom/google/android/gms/internal/ads/ads;->b(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 295
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzti;->zzbs(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzti;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 297
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlb()Lcom/google/android/gms/internal/ads/egn;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/egn;->a(Lcom/google/android/gms/internal/ads/zzti;)Lcom/google/android/gms/internal/ads/zzth;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 298
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzth;->zznc()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 299
    new-instance p1, Landroid/webkit/WebResourceResponse;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzth;->zznd()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {p1, v0, v0, p2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p1

    .line 300
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/yu;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/ck;->b:Lcom/google/android/gms/internal/ads/bz;

    .line 301
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bz;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 302
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ads;->b(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

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

    .line 305
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lcom/google/android/gms/internal/ads/yd;

    move-result-object p2

    const-string v0, "AdWebViewClient.interceptRequest"

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/ads/yd;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 306
    invoke-static {}, Lcom/google/android/gms/internal/ads/ads;->p()Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public final a()Lcom/google/android/gms/ads/internal/zza;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ads;->u:Lcom/google/android/gms/ads/internal/zza;

    return-object v0
.end method

.method public final a(II)V
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ads;->t:Lcom/google/android/gms/internal/ads/px;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/px;->a(II)V

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ads;->v:Lcom/google/android/gms/internal/ads/pp;

    if-eqz v0, :cond_0

    .line 1207
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/pp;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 1208
    :try_start_0
    iput p1, v0, Lcom/google/android/gms/internal/ads/pp;->c:I

    .line 1209
    iput p2, v0, Lcom/google/android/gms/internal/ads/pp;->d:I

    .line 1211
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    return-void
.end method

.method public final a(Landroid/net/Uri;)V
    .locals 5

    .line 379
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 380
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ads;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 382
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v2

    .line 383
    sget-object v3, Lcom/google/android/gms/internal/ads/aq;->dl:Lcom/google/android/gms/internal/ads/af;

    .line 384
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v3

    .line 385
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ads;->z:Ljava/util/HashSet;

    .line 386
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 387
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sget-object v3, Lcom/google/android/gms/internal/ads/aq;->dn:Lcom/google/android/gms/internal/ads/af;

    .line 388
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v3

    .line 389
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v2, v3, :cond_1

    const-string v2, "Parsing gmsg query params on BG thread: "

    .line 390
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    .line 391
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/ads/internal/util/zzj;->zzh(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/adz;

    invoke-direct {v3, p0, v1, v0, p1}, Lcom/google/android/gms/internal/ads/adz;-><init>(Lcom/google/android/gms/internal/ads/ads;Ljava/util/List;Ljava/lang/String;Landroid/net/Uri;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zd;->e:Lcom/google/android/gms/internal/ads/dbs;

    .line 392
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/ads/dbh;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbi;Ljava/util/concurrent/Executor;)V

    return-void

    .line 393
    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzj;->zzg(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object p1

    .line 394
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/ads;->a(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    return-void

    .line 396
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "No GMSG handler found for GMSG: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    .line 397
    sget-object p1, Lcom/google/android/gms/internal/ads/aq;->el:Lcom/google/android/gms/internal/ads/af;

    .line 398
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object p1

    .line 399
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 400
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lcom/google/android/gms/internal/ads/yd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/yd;->a()Lcom/google/android/gms/internal/ads/ax;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 402
    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zd;->a:Lcom/google/android/gms/internal/ads/dbs;

    new-instance v1, Lcom/google/android/gms/internal/ads/adu;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/adu;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/dbs;->execute(Ljava/lang/Runnable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/internal/overlay/zzb;)V
    .locals 9

    .line 155
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ads;->a:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->G()Z

    move-result v0

    .line 156
    new-instance v8, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 157
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ads;->a:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/adt;->z()Lcom/google/android/gms/internal/ads/afh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/afh;->d()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ads;->h:Lcom/google/android/gms/internal/ads/eir;

    move-object v3, v2

    :goto_0
    if-eqz v0, :cond_1

    move-object v4, v1

    goto :goto_1

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ads;->i:Lcom/google/android/gms/ads/internal/overlay/zzp;

    move-object v4, v0

    :goto_1
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/ads;->s:Lcom/google/android/gms/ads/internal/overlay/zzx;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ads;->a:Lcom/google/android/gms/internal/ads/adt;

    .line 159
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->k()Lcom/google/android/gms/internal/ads/zzbar;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/ads;->a:Lcom/google/android/gms/internal/ads/adt;

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzb;Lcom/google/android/gms/internal/ads/eir;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/ads/internal/overlay/zzx;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/internal/ads/adt;)V

    .line 160
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/ads/ads;->a(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/internal/util/zzbg;Lcom/google/android/gms/internal/ads/brs;Lcom/google/android/gms/internal/ads/bli;Lcom/google/android/gms/internal/ads/cty;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12

    move-object v0, p0

    .line 162
    new-instance v11, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/ads;->a:Lcom/google/android/gms/internal/ads/adt;

    .line 163
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/adt;->k()Lcom/google/android/gms/internal/ads/zzbar;

    move-result-object v3

    move-object v1, v11

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/adt;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/ads/internal/util/zzbg;Lcom/google/android/gms/internal/ads/brs;Lcom/google/android/gms/internal/ads/bli;Lcom/google/android/gms/internal/ads/cty;Ljava/lang/String;Ljava/lang/String;I)V

    .line 164
    invoke-direct {p0, v11}, Lcom/google/android/gms/internal/ads/ads;->a(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/afd;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ads;->j:Lcom/google/android/gms/internal/ads/afd;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/afg;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ads;->k:Lcom/google/android/gms/internal/ads/afg;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/eir;Lcom/google/android/gms/internal/ads/go;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/internal/ads/gq;Lcom/google/android/gms/ads/internal/overlay/zzx;ZLcom/google/android/gms/internal/ads/hk;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/pz;Lcom/google/android/gms/internal/ads/vy;Lcom/google/android/gms/internal/ads/brs;Lcom/google/android/gms/internal/ads/cus;Lcom/google/android/gms/internal/ads/bli;Lcom/google/android/gms/internal/ads/cty;)V
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p7

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    if-nez p8, :cond_0

    .line 25
    new-instance v6, Lcom/google/android/gms/ads/internal/zza;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/ads;->a:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/adt;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v6, v7, v5, v8}, Lcom/google/android/gms/ads/internal/zza;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/vy;Lcom/google/android/gms/internal/ads/zzatu;)V

    move-object v12, v6

    goto :goto_0

    :cond_0
    move-object/from16 v12, p8

    .line 26
    :goto_0
    new-instance v6, Lcom/google/android/gms/internal/ads/pp;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/ads;->a:Lcom/google/android/gms/internal/ads/adt;

    invoke-direct {v6, v7, v4}, Lcom/google/android/gms/internal/ads/pp;-><init>(Lcom/google/android/gms/internal/ads/adt;Lcom/google/android/gms/internal/ads/pz;)V

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/ads;->v:Lcom/google/android/gms/internal/ads/pp;

    .line 27
    iput-object v5, v0, Lcom/google/android/gms/internal/ads/ads;->e:Lcom/google/android/gms/internal/ads/vy;

    .line 28
    sget-object v5, Lcom/google/android/gms/internal/ads/aq;->az:Lcom/google/android/gms/internal/ads/af;

    .line 29
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v5

    .line 30
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 31
    new-instance v5, Lcom/google/android/gms/internal/ads/gl;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/ads/gl;-><init>(Lcom/google/android/gms/internal/ads/go;)V

    const-string v6, "/adMetadata"

    invoke-virtual {p0, v6, v5}, Lcom/google/android/gms/internal/ads/ads;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    .line 32
    :cond_1
    new-instance v5, Lcom/google/android/gms/internal/ads/gn;

    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/ads/gn;-><init>(Lcom/google/android/gms/internal/ads/gq;)V

    const-string v6, "/appEvent"

    invoke-virtual {p0, v6, v5}, Lcom/google/android/gms/internal/ads/ads;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    .line 33
    sget-object v5, Lcom/google/android/gms/internal/ads/gs;->k:Lcom/google/android/gms/internal/ads/hi;

    const-string v6, "/backButton"

    invoke-virtual {p0, v6, v5}, Lcom/google/android/gms/internal/ads/ads;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    .line 34
    sget-object v5, Lcom/google/android/gms/internal/ads/gs;->l:Lcom/google/android/gms/internal/ads/hi;

    const-string v6, "/refresh"

    invoke-virtual {p0, v6, v5}, Lcom/google/android/gms/internal/ads/ads;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    .line 35
    sget-object v5, Lcom/google/android/gms/internal/ads/gs;->b:Lcom/google/android/gms/internal/ads/hi;

    const-string v6, "/canOpenApp"

    invoke-virtual {p0, v6, v5}, Lcom/google/android/gms/internal/ads/ads;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    .line 36
    sget-object v5, Lcom/google/android/gms/internal/ads/gs;->a:Lcom/google/android/gms/internal/ads/hi;

    const-string v6, "/canOpenURLs"

    invoke-virtual {p0, v6, v5}, Lcom/google/android/gms/internal/ads/ads;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    .line 37
    sget-object v5, Lcom/google/android/gms/internal/ads/gs;->c:Lcom/google/android/gms/internal/ads/hi;

    const-string v6, "/canOpenIntents"

    invoke-virtual {p0, v6, v5}, Lcom/google/android/gms/internal/ads/ads;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    .line 38
    sget-object v5, Lcom/google/android/gms/internal/ads/gs;->e:Lcom/google/android/gms/internal/ads/hi;

    const-string v6, "/close"

    invoke-virtual {p0, v6, v5}, Lcom/google/android/gms/internal/ads/ads;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    .line 39
    sget-object v5, Lcom/google/android/gms/internal/ads/gs;->f:Lcom/google/android/gms/internal/ads/hi;

    const-string v6, "/customClose"

    invoke-virtual {p0, v6, v5}, Lcom/google/android/gms/internal/ads/ads;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    .line 40
    sget-object v5, Lcom/google/android/gms/internal/ads/gs;->o:Lcom/google/android/gms/internal/ads/hi;

    const-string v6, "/instrument"

    invoke-virtual {p0, v6, v5}, Lcom/google/android/gms/internal/ads/ads;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    .line 41
    sget-object v5, Lcom/google/android/gms/internal/ads/gs;->q:Lcom/google/android/gms/internal/ads/hi;

    const-string v6, "/delayPageLoaded"

    invoke-virtual {p0, v6, v5}, Lcom/google/android/gms/internal/ads/ads;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    .line 42
    sget-object v5, Lcom/google/android/gms/internal/ads/gs;->r:Lcom/google/android/gms/internal/ads/hi;

    const-string v6, "/delayPageClosed"

    invoke-virtual {p0, v6, v5}, Lcom/google/android/gms/internal/ads/ads;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    .line 43
    sget-object v5, Lcom/google/android/gms/internal/ads/gs;->s:Lcom/google/android/gms/internal/ads/hi;

    const-string v6, "/getLocationInfo"

    invoke-virtual {p0, v6, v5}, Lcom/google/android/gms/internal/ads/ads;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    .line 44
    sget-object v5, Lcom/google/android/gms/internal/ads/gs;->h:Lcom/google/android/gms/internal/ads/hi;

    const-string v6, "/log"

    invoke-virtual {p0, v6, v5}, Lcom/google/android/gms/internal/ads/ads;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    .line 45
    new-instance v5, Lcom/google/android/gms/internal/ads/hr;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/ads;->v:Lcom/google/android/gms/internal/ads/pp;

    invoke-direct {v5, v12, v6, v4}, Lcom/google/android/gms/internal/ads/hr;-><init>(Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/pp;Lcom/google/android/gms/internal/ads/pz;)V

    const-string v4, "/mraid"

    invoke-virtual {p0, v4, v5}, Lcom/google/android/gms/internal/ads/ads;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    .line 46
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/ads;->t:Lcom/google/android/gms/internal/ads/px;

    const-string v5, "/mraidLoaded"

    invoke-virtual {p0, v5, v4}, Lcom/google/android/gms/internal/ads/ads;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    .line 47
    new-instance v13, Lcom/google/android/gms/internal/ads/hq;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/ads;->v:Lcom/google/android/gms/internal/ads/pp;

    move-object v4, v13

    move-object v5, v12

    move-object/from16 v7, p11

    move-object/from16 v8, p13

    move-object/from16 v9, p14

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/hq;-><init>(Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/pp;Lcom/google/android/gms/internal/ads/brs;Lcom/google/android/gms/internal/ads/bli;Lcom/google/android/gms/internal/ads/cty;)V

    const-string v4, "/open"

    invoke-virtual {p0, v4, v13}, Lcom/google/android/gms/internal/ads/ads;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    .line 48
    new-instance v4, Lcom/google/android/gms/internal/ads/acz;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/acz;-><init>()V

    const-string v5, "/precache"

    invoke-virtual {p0, v5, v4}, Lcom/google/android/gms/internal/ads/ads;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    .line 49
    sget-object v4, Lcom/google/android/gms/internal/ads/gs;->j:Lcom/google/android/gms/internal/ads/hi;

    const-string v5, "/touch"

    invoke-virtual {p0, v5, v4}, Lcom/google/android/gms/internal/ads/ads;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    .line 50
    sget-object v4, Lcom/google/android/gms/internal/ads/gs;->m:Lcom/google/android/gms/internal/ads/hi;

    const-string v5, "/video"

    invoke-virtual {p0, v5, v4}, Lcom/google/android/gms/internal/ads/ads;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    .line 51
    sget-object v4, Lcom/google/android/gms/internal/ads/gs;->n:Lcom/google/android/gms/internal/ads/hi;

    const-string v5, "/videoMeta"

    invoke-virtual {p0, v5, v4}, Lcom/google/android/gms/internal/ads/ads;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    const-string v4, "/httpTrack"

    const-string v5, "/click"

    if-eqz v10, :cond_2

    if-eqz v11, :cond_2

    .line 2001
    new-instance v6, Lcom/google/android/gms/internal/ads/cpt;

    invoke-direct {v6, v11, v10}, Lcom/google/android/gms/internal/ads/cpt;-><init>(Lcom/google/android/gms/internal/ads/cus;Lcom/google/android/gms/internal/ads/brs;)V

    .line 55
    invoke-virtual {p0, v5, v6}, Lcom/google/android/gms/internal/ads/ads;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    .line 2002
    new-instance v5, Lcom/google/android/gms/internal/ads/cpv;

    invoke-direct {v5, v11, v10}, Lcom/google/android/gms/internal/ads/cpv;-><init>(Lcom/google/android/gms/internal/ads/cus;Lcom/google/android/gms/internal/ads/brs;)V

    .line 58
    invoke-virtual {p0, v4, v5}, Lcom/google/android/gms/internal/ads/ads;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    goto :goto_1

    .line 59
    :cond_2
    sget-object v6, Lcom/google/android/gms/internal/ads/gs;->d:Lcom/google/android/gms/internal/ads/hi;

    invoke-virtual {p0, v5, v6}, Lcom/google/android/gms/internal/ads/ads;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    .line 60
    sget-object v5, Lcom/google/android/gms/internal/ads/gs;->g:Lcom/google/android/gms/internal/ads/hi;

    invoke-virtual {p0, v4, v5}, Lcom/google/android/gms/internal/ads/ads;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    .line 61
    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlt()Lcom/google/android/gms/internal/ads/wo;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/ads;->a:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/adt;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/wo;->a(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 62
    new-instance v4, Lcom/google/android/gms/internal/ads/ho;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/ads;->a:Lcom/google/android/gms/internal/ads/adt;

    .line 63
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/adt;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/ho;-><init>(Landroid/content/Context;)V

    const-string v5, "/logScionEvent"

    .line 64
    invoke-virtual {p0, v5, v4}, Lcom/google/android/gms/internal/ads/ads;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    :cond_3
    if-eqz v3, :cond_4

    .line 66
    new-instance v4, Lcom/google/android/gms/internal/ads/hl;

    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/hl;-><init>(Lcom/google/android/gms/internal/ads/hk;)V

    const-string v3, "/setInterstitialProperties"

    invoke-virtual {p0, v3, v4}, Lcom/google/android/gms/internal/ads/ads;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    :cond_4
    move-object v3, p1

    .line 67
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/ads;->h:Lcom/google/android/gms/internal/ads/eir;

    move-object/from16 v3, p3

    .line 68
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/ads;->i:Lcom/google/android/gms/ads/internal/overlay/zzp;

    .line 69
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/ads;->l:Lcom/google/android/gms/internal/ads/go;

    .line 70
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/ads;->m:Lcom/google/android/gms/internal/ads/gq;

    move-object/from16 v1, p5

    .line 71
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/ads;->s:Lcom/google/android/gms/ads/internal/overlay/zzx;

    .line 72
    iput-object v12, v0, Lcom/google/android/gms/internal/ads/ads;->u:Lcom/google/android/gms/ads/internal/zza;

    move/from16 v1, p6

    .line 74
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/ads;->d:Z

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/hi<",
            "-",
            "Lcom/google/android/gms/internal/ads/adt;",
            ">;)V"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ads;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ads;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    .line 203
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 204
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ads;->b:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_0
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Z)V
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ads;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 417
    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/ads;->q:Z

    .line 418
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(ZI)V
    .locals 10

    .line 166
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ads;->a:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->G()Z

    move-result v0

    .line 167
    new-instance v9, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ads;->a:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->z()Lcom/google/android/gms/internal/ads/afh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/afh;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ads;->h:Lcom/google/android/gms/internal/ads/eir;

    :goto_0
    move-object v2, v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ads;->i:Lcom/google/android/gms/ads/internal/overlay/zzp;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ads;->s:Lcom/google/android/gms/ads/internal/overlay/zzx;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/ads;->a:Lcom/google/android/gms/internal/ads/adt;

    .line 169
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/adt;->k()Lcom/google/android/gms/internal/ads/zzbar;

    move-result-object v8

    move-object v1, v9

    move v6, p1

    move v7, p2

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/eir;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/ads/internal/overlay/zzx;Lcom/google/android/gms/internal/ads/adt;ZILcom/google/android/gms/internal/ads/zzbar;)V

    .line 170
    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/ads/ads;->a(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final a(ZILjava/lang/String;)V
    .locals 14

    move-object v0, p0

    .line 172
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ads;->a:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/adt;->G()Z

    move-result v1

    .line 173
    new-instance v13, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 174
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/ads;->a:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/adt;->z()Lcom/google/android/gms/internal/ads/afh;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/afh;->d()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/ads;->h:Lcom/google/android/gms/internal/ads/eir;

    :goto_0
    if-eqz v1, :cond_1

    move-object v4, v2

    goto :goto_1

    .line 177
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/ady;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/ads;->a:Lcom/google/android/gms/internal/ads/adt;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/ads;->i:Lcom/google/android/gms/ads/internal/overlay/zzp;

    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/internal/ads/ady;-><init>(Lcom/google/android/gms/internal/ads/adt;Lcom/google/android/gms/ads/internal/overlay/zzp;)V

    move-object v4, v1

    :goto_1
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/ads;->l:Lcom/google/android/gms/internal/ads/go;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/ads;->m:Lcom/google/android/gms/internal/ads/gq;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/ads;->s:Lcom/google/android/gms/ads/internal/overlay/zzx;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/ads;->a:Lcom/google/android/gms/internal/ads/adt;

    .line 178
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/adt;->k()Lcom/google/android/gms/internal/ads/zzbar;

    move-result-object v12

    move-object v2, v13

    move v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v2 .. v12}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/eir;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/internal/ads/go;Lcom/google/android/gms/internal/ads/gq;Lcom/google/android/gms/ads/internal/overlay/zzx;Lcom/google/android/gms/internal/ads/adt;ZILjava/lang/String;Lcom/google/android/gms/internal/ads/zzbar;)V

    .line 179
    invoke-direct {p0, v13}, Lcom/google/android/gms/internal/ads/ads;->a(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final a(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 15

    move-object v0, p0

    .line 181
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ads;->a:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/adt;->G()Z

    move-result v1

    .line 182
    new-instance v14, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 183
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/ads;->a:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/adt;->z()Lcom/google/android/gms/internal/ads/afh;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/afh;->d()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/ads;->h:Lcom/google/android/gms/internal/ads/eir;

    :goto_0
    if-eqz v1, :cond_1

    move-object v4, v2

    goto :goto_1

    .line 186
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/ady;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/ads;->a:Lcom/google/android/gms/internal/ads/adt;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/ads;->i:Lcom/google/android/gms/ads/internal/overlay/zzp;

    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/internal/ads/ady;-><init>(Lcom/google/android/gms/internal/ads/adt;Lcom/google/android/gms/ads/internal/overlay/zzp;)V

    move-object v4, v1

    :goto_1
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/ads;->l:Lcom/google/android/gms/internal/ads/go;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/ads;->m:Lcom/google/android/gms/internal/ads/gq;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/ads;->s:Lcom/google/android/gms/ads/internal/overlay/zzx;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/ads;->a:Lcom/google/android/gms/internal/ads/adt;

    .line 187
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/adt;->k()Lcom/google/android/gms/internal/ads/zzbar;

    move-result-object v13

    move-object v2, v14

    move/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-direct/range {v2 .. v13}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/eir;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/internal/ads/go;Lcom/google/android/gms/internal/ads/gq;Lcom/google/android/gms/ads/internal/overlay/zzx;Lcom/google/android/gms/internal/ads/adt;ZILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbar;)V

    .line 188
    invoke-direct {p0, v14}, Lcom/google/android/gms/internal/ads/ads;->a(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final b(II)V
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ads;->v:Lcom/google/android/gms/internal/ads/pp;

    if-eqz v0, :cond_0

    .line 2215
    iput p1, v0, Lcom/google/android/gms/internal/ads/pp;->c:I

    .line 2216
    iput p2, v0, Lcom/google/android/gms/internal/ads/pp;->d:I

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ads;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 81
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/ads;->o:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 82
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final c()Z
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ads;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 84
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/ads;->p:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 85
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final d()Z
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ads;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/ads;->q:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 88
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final e()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ads;->c:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 90
    :try_start_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 91
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final f()Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ads;->c:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 93
    :try_start_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 94
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final g()V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ads;->e:Lcom/google/android/gms/internal/ads/vy;

    if-eqz v0, :cond_1

    .line 119
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ads;->a:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/adt;->r()Landroid/webkit/WebView;

    move-result-object v1

    .line 120
    invoke-static {v1}, Landroidx/core/view/v;->E(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    .line 121
    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/gms/internal/ads/ads;->a(Landroid/view/View;Lcom/google/android/gms/internal/ads/vy;I)V

    return-void

    .line 123
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ads;->n()V

    .line 124
    new-instance v1, Lcom/google/android/gms/internal/ads/adw;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/adw;-><init>(Lcom/google/android/gms/internal/ads/ads;Lcom/google/android/gms/internal/ads/vy;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ads;->A:Landroid/view/View$OnAttachStateChangeListener;

    .line 125
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ads;->a:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->s()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ads;->A:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_1
    return-void
.end method

.method public final h()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ads;->c:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 128
    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/ads;->r:Z

    .line 129
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    iget v0, p0, Lcom/google/android/gms/internal/ads/ads;->y:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/ads;->y:I

    .line 131
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ads;->o()V

    return-void

    :catchall_0
    move-exception v1

    .line 129
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final i()V
    .locals 1

    .line 133
    iget v0, p0, Lcom/google/android/gms/internal/ads/ads;->y:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/ads;->y:I

    .line 134
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ads;->o()V

    return-void
.end method

.method public final j()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ads;->g:Lcom/google/android/gms/internal/ads/ehk;

    if-eqz v0, :cond_0

    .line 137
    sget-object v1, Lcom/google/android/gms/internal/ads/ehn$a$b;->zzbyq:Lcom/google/android/gms/internal/ads/ehn$a$b;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ehk;->a(Lcom/google/android/gms/internal/ads/ehn$a$b;)V

    :cond_0
    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ads;->x:Z

    .line 139
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ads;->o()V

    .line 140
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ads;->a:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->destroy()V

    return-void
.end method

.method public final k()V
    .locals 4

    .line 224
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ads;->e:Lcom/google/android/gms/internal/ads/vy;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 225
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/vy;->d()V

    .line 226
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ads;->e:Lcom/google/android/gms/internal/ads/vy;

    .line 227
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ads;->n()V

    .line 228
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ads;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 229
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ads;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 230
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ads;->h:Lcom/google/android/gms/internal/ads/eir;

    .line 231
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ads;->i:Lcom/google/android/gms/ads/internal/overlay/zzp;

    .line 232
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ads;->j:Lcom/google/android/gms/internal/ads/afd;

    .line 233
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ads;->k:Lcom/google/android/gms/internal/ads/afg;

    .line 234
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ads;->l:Lcom/google/android/gms/internal/ads/go;

    .line 235
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ads;->m:Lcom/google/android/gms/internal/ads/gq;

    const/4 v2, 0x0

    .line 236
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/ads;->d:Z

    .line 237
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/ads;->o:Z

    .line 238
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/ads;->p:Z

    .line 239
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/ads;->r:Z

    .line 240
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ads;->s:Lcom/google/android/gms/ads/internal/overlay/zzx;

    .line 241
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ads;->n:Lcom/google/android/gms/internal/ads/aff;

    .line 242
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ads;->v:Lcom/google/android/gms/internal/ads/pp;

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    .line 243
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/pp;->a(Z)V

    .line 244
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ads;->v:Lcom/google/android/gms/internal/ads/pp;

    .line 245
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

.method public final l()V
    .locals 3

    .line 366
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ads;->c:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 367
    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/ads;->d:Z

    const/4 v1, 0x1

    .line 368
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/ads;->o:Z

    .line 369
    sget-object v1, Lcom/google/android/gms/internal/ads/zd;->e:Lcom/google/android/gms/internal/ads/dbs;

    new-instance v2, Lcom/google/android/gms/internal/ads/adv;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/adv;-><init>(Lcom/google/android/gms/internal/ads/ads;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/dbs;->execute(Ljava/lang/Runnable;)V

    .line 370
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final m()V
    .locals 2

    .line 413
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ads;->c:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 414
    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/ads;->p:Z

    .line 415
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onAdClicked()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ads;->h:Lcom/google/android/gms/internal/ads/eir;

    if-eqz v0, :cond_0

    .line 77
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/eir;->onAdClicked()V

    :cond_0
    return-void
.end method

.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 250
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
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    .line 251
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 252
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    const-string v0, "gmsg"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 253
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p2

    const-string v0, "mobileads.google.com"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 254
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ads;->a(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 95
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ads;->c:Ljava/lang/Object;

    monitor-enter p1

    .line 96
    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ads;->a:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/adt;->H()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "Blank page loaded, 1..."

    .line 97
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    .line 98
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ads;->a:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/adt;->I()V

    .line 99
    monitor-exit p1

    return-void

    .line 100
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 101
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/ads;->w:Z

    .line 103
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ads;->k:Lcom/google/android/gms/internal/ads/afg;

    if-eqz p1, :cond_1

    .line 104
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/afg;->a()V

    const/4 p1, 0x0

    .line 105
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ads;->k:Lcom/google/android/gms/internal/ads/afg;

    .line 106
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ads;->o()V

    return-void

    :catchall_0
    move-exception p2

    .line 100
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 1

    .line 419
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ads;->a:Lcom/google/android/gms/internal/ads/adt;

    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result v0

    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->rendererPriorityAtExit()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/adt;->a(ZI)Z

    move-result p1

    return p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 0

    .line 289
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/ads/ads;->a(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 0

    .line 376
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

    .line 256
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
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    .line 257
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gmsg"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 259
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mobileads.google.com"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/ads;->a(Landroid/net/Uri;)V

    goto/16 :goto_7

    .line 261
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/ads;->d:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ads;->a:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/adt;->r()Landroid/webkit/WebView;

    move-result-object v1

    if-ne p1, v1, :cond_6

    .line 262
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v3, "http"

    .line 263
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "https"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_6

    .line 265
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ads;->h:Lcom/google/android/gms/internal/ads/eir;

    if-eqz v0, :cond_5

    .line 266
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/eir;->onAdClicked()V

    .line 267
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ads;->e:Lcom/google/android/gms/internal/ads/vy;

    if-eqz v0, :cond_4

    .line 268
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/vy;->a(Ljava/lang/String;)V

    :cond_4
    const/4 v0, 0x0

    .line 269
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ads;->h:Lcom/google/android/gms/internal/ads/eir;

    .line 270
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 271
    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ads;->a:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/adt;->r()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->willNotDraw()Z

    move-result p1

    if-nez p1, :cond_b

    .line 272
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ads;->a:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/adt;->E()Lcom/google/android/gms/internal/ads/die;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 273
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/die;->a(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 274
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ads;->a:Lcom/google/android/gms/internal/ads/adt;

    .line 275
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/adt;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ads;->a:Lcom/google/android/gms/internal/ads/adt;

    .line 276
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/adt;->s()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ads;->a:Lcom/google/android/gms/internal/ads/adt;

    .line 277
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/adt;->d()Landroid/app/Activity;

    move-result-object v4

    .line 278
    invoke-virtual {p1, v0, v1, v3, v4}, Lcom/google/android/gms/internal/ads/die;->a(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzeh; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_4

    :catch_0
    nop

    const-string p1, "Unable to append parameter to URL: "

    .line 281
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_7
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v1

    :goto_3
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    .line 282
    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ads;->u:Lcom/google/android/gms/ads/internal/zza;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zza;->zzkc()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_5

    .line 286
    :cond_9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ads;->u:Lcom/google/android/gms/ads/internal/zza;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/internal/zza;->zzbk(Ljava/lang/String;)V

    goto :goto_7

    .line 283
    :cond_a
    :goto_5
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzb;

    .line 284
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

    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/ads/internal/overlay/zzb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/overlay/zzv;)V

    .line 285
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ads;->a(Lcom/google/android/gms/ads/internal/overlay/zzb;)V

    goto :goto_7

    :cond_b
    const-string p1, "AdWebView unable to handle URL: "

    .line 287
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_c
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_6
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    :goto_7
    return v2
.end method
