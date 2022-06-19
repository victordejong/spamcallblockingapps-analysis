.class public Lcom/google/android/gms/internal/ads/acs;
.super Landroid/webkit/WebViewClient;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/aef;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field protected a:Lcom/google/android/gms/internal/ads/act;

.field protected b:Lcom/google/android/gms/internal/ads/st;

.field private final c:Lcom/google/android/gms/internal/ads/dwi;

.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/fa",
            "<-",
            "Lcom/google/android/gms/internal/ads/act;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/Object;

.field private f:Lcom/google/android/gms/internal/ads/dxs;

.field private g:Lcom/google/android/gms/ads/internal/overlay/o;

.field private h:Lcom/google/android/gms/internal/ads/aee;

.field private i:Lcom/google/android/gms/internal/ads/aeh;

.field private j:Lcom/google/android/gms/internal/ads/ei;

.field private k:Lcom/google/android/gms/internal/ads/ek;

.field private l:Lcom/google/android/gms/internal/ads/aeg;

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

.field private q:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private r:Lcom/google/android/gms/ads/internal/overlay/t;

.field private final s:Lcom/google/android/gms/internal/ads/np;

.field private t:Lcom/google/android/gms/ads/internal/c;

.field private u:Lcom/google/android/gms/internal/ads/ni;

.field private v:Z

.field private w:Z

.field private x:I

.field private y:Z

.field private z:Landroid/view/View$OnAttachStateChangeListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/act;Lcom/google/android/gms/internal/ads/dwi;Z)V
    .locals 6

    .prologue
    .line 1
    new-instance v4, Lcom/google/android/gms/internal/ads/np;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/act;->q()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/ecp;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/act;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/ecp;-><init>(Landroid/content/Context;)V

    invoke-direct {v4, p1, v0, v1}, Lcom/google/android/gms/internal/ads/np;-><init>(Lcom/google/android/gms/internal/ads/act;Landroid/content/Context;Lcom/google/android/gms/internal/ads/ecp;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 4
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/acs;-><init>(Lcom/google/android/gms/internal/ads/act;Lcom/google/android/gms/internal/ads/dwi;ZLcom/google/android/gms/internal/ads/np;Lcom/google/android/gms/internal/ads/ni;)V

    .line 5
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/act;Lcom/google/android/gms/internal/ads/dwi;ZLcom/google/android/gms/internal/ads/np;Lcom/google/android/gms/internal/ads/ni;)V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->d:Ljava/util/HashMap;

    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->e:Ljava/lang/Object;

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/acs;->m:Z

    .line 10
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/acs;->c:Lcom/google/android/gms/internal/ads/dwi;

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/acs;->a:Lcom/google/android/gms/internal/ads/act;

    .line 12
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/acs;->n:Z

    .line 13
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/acs;->s:Lcom/google/android/gms/internal/ads/np;

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->u:Lcom/google/android/gms/internal/ads/ni;

    .line 15
    return-void
.end method

.method private final a(Landroid/view/View;Lcom/google/android/gms/internal/ads/st;I)V
    .locals 4

    .prologue
    .line 97
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/st;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    .line 98
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/st;->a(Landroid/view/View;)V

    .line 99
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/st;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    sget-object v0, Lcom/google/android/gms/internal/ads/ve;->a:Lcom/google/android/gms/internal/ads/cnz;

    new-instance v1, Lcom/google/android/gms/internal/ads/acx;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/acx;-><init>(Lcom/google/android/gms/internal/ads/acs;Landroid/view/View;Lcom/google/android/gms/internal/ads/st;I)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/cnz;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 101
    :cond_0
    return-void
.end method

.method private final a(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 171
    .line 172
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->u:Lcom/google/android/gms/internal/ads/ni;

    if-eqz v0, :cond_3

    .line 173
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->u:Lcom/google/android/gms/internal/ads/ni;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ni;->a()Z

    move-result v0

    .line 174
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->b()Lcom/google/android/gms/ads/internal/overlay/n;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/acs;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/act;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v2, p1, v1}, Lcom/google/android/gms/ads/internal/overlay/n;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    .line 175
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->b:Lcom/google/android/gms/internal/ads/st;

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->l:Ljava/lang/String;

    .line 177
    if-nez v0, :cond_1

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->a:Lcom/google/android/gms/ads/internal/overlay/d;

    if-eqz v1, :cond_1

    .line 178
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->a:Lcom/google/android/gms/ads/internal/overlay/d;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/d;->a:Ljava/lang/String;

    .line 179
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/acs;->b:Lcom/google/android/gms/internal/ads/st;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/st;->a(Ljava/lang/String;)V

    .line 180
    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/acs;Landroid/view/View;Lcom/google/android/gms/internal/ads/st;I)V
    .locals 0

    .prologue
    .line 385
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/acs;->a(Landroid/view/View;Lcom/google/android/gms/internal/ads/st;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/acs;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 386
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/acs;->a(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private final a(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/fa",
            "<-",
            "Lcom/google/android/gms/internal/ads/act;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 369
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    const-string/jumbo v1, "Received GMSG: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 371
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 372
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "  "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 370
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 374
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/fa;

    .line 375
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/acs;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0, v2, p1}, Lcom/google/android/gms/internal/ads/fa;->a(Ljava/lang/Object;Ljava/util/Map;)V

    goto :goto_2

    .line 377
    :cond_2
    return-void
.end method

.method private final b(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/16 v8, 0x2710

    const/4 v4, 0x0

    .line 293
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move v0, v4

    move-object v6, v1

    .line 295
    :goto_0
    add-int/lit8 v5, v0, 0x1

    const/16 v0, 0x14

    if-gt v5, v0, :cond_9

    .line 296
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 297
    invoke-virtual {v2, v8}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 298
    invoke-virtual {v2, v8}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 299
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 300
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 302
    :cond_0
    instance-of v0, v2, Ljava/net/HttpURLConnection;

    if-nez v0, :cond_1

    .line 303
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Invalid protocol."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v0, v2

    .line 304
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 305
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/acs;->a:Lcom/google/android/gms/internal/ads/act;

    .line 306
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/act;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/acs;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/act;->j()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/yd;->a:Ljava/lang/String;

    .line 307
    invoke-virtual {v1, v2, v7, v4, v0}, Lcom/google/android/gms/internal/ads/ve;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V

    .line 308
    new-instance v1, Lcom/google/android/gms/internal/ads/xv;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/xv;-><init>()V

    .line 309
    invoke-virtual {v1, v0, v3}, Lcom/google/android/gms/internal/ads/xv;->a(Ljava/net/HttpURLConnection;[B)V

    .line 310
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 311
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/xv;->a(Ljava/net/HttpURLConnection;I)V

    .line 312
    const/16 v1, 0x12c

    if-lt v2, v1, :cond_8

    const/16 v1, 0x190

    if-ge v2, v1, :cond_8

    .line 313
    const-string/jumbo v1, "Location"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 314
    if-nez v1, :cond_2

    .line 315
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Missing Location header in redirect"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_2
    const-string/jumbo v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, v3

    .line 329
    :goto_2
    return-object v0

    .line 318
    :cond_3
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v6, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 319
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v6

    .line 320
    if-nez v6, :cond_4

    .line 321
    const-string/jumbo v0, "Protocol is null"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 322
    invoke-static {}, Lcom/google/android/gms/internal/ads/acs;->p()Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_2

    .line 323
    :cond_4
    const-string/jumbo v7, "http"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string/jumbo v7, "https"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 324
    const-string/jumbo v1, "Unsupported scheme: "

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 325
    invoke-static {}, Lcom/google/android/gms/internal/ads/acs;->p()Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_2

    .line 324
    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 326
    :cond_6
    const-string/jumbo v6, "Redirecting to "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/uu;->b(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move v0, v5

    move-object v6, v2

    .line 328
    goto/16 :goto_0

    .line 326
    :cond_7
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 329
    :cond_8
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ve;->a(Ljava/net/HttpURLConnection;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_2

    .line 330
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const/16 v1, 0x20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "Too many redirects (20)"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final n()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->z:Landroid/view/View$OnAttachStateChangeListener;

    if-nez v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/acs;->z:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_0
.end method

.method private final o()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->h:Lcom/google/android/gms/internal/ads/aee;

    if-eqz v0, :cond_2

    .line 135
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/acs;->v:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/acs;->x:I

    if-lez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/acs;->w:Z

    if-eqz v0, :cond_2

    .line 136
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/acs;->h:Lcom/google/android/gms/internal/ads/aee;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/acs;->w:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/aee;->a(Z)V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->h:Lcom/google/android/gms/internal/ads/aee;

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->G()V

    .line 139
    return-void

    .line 136
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static p()Landroid/webkit/WebResourceResponse;
    .locals 5

    .prologue
    .line 288
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->ag:Lcom/google/android/gms/internal/ads/ect;

    .line 289
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 290
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    new-instance v0, Landroid/webkit/WebResourceResponse;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    new-instance v3, Ljava/io/ByteArrayInputStream;

    const/4 v4, 0x0

    new-array v4, v4, [B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 292
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    .prologue
    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->a:Lcom/google/android/gms/internal/ads/act;

    .line 272
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/acs;->y:Z

    .line 273
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/tq;->a(Ljava/lang/String;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    .line 274
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 275
    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/ads/acs;->b(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 287
    :goto_0
    return-object v0

    .line 276
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dvu;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dvu;

    move-result-object v0

    .line 277
    if-eqz v0, :cond_1

    .line 278
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->i()Lcom/google/android/gms/internal/ads/dvl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/dvl;->a(Lcom/google/android/gms/internal/ads/dvu;)Lcom/google/android/gms/internal/ads/dvt;

    move-result-object v1

    .line 279
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dvt;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    new-instance v0, Landroid/webkit/WebResourceResponse;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dvt;->b()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 285
    :catch_0
    move-exception v0

    .line 286
    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v1

    const-string/jumbo v2, "AdWebViewClient.interceptRequest"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/ug;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 287
    invoke-static {}, Lcom/google/android/gms/internal/ads/acs;->p()Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_0

    .line 281
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/xv;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/al;->b:Lcom/google/android/gms/internal/ads/ab;

    .line 282
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 283
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/acs;->b(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 284
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 285
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final a()Lcom/google/android/gms/ads/internal/c;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->t:Lcom/google/android/gms/ads/internal/c;

    return-object v0
.end method

.method public final a(II)V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->u:Lcom/google/android/gms/internal/ads/ni;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->u:Lcom/google/android/gms/internal/ads/ni;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/ni;->a(II)V

    .line 343
    :cond_0
    return-void
.end method

.method public final a(IIZ)V
    .locals 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->s:Lcom/google/android/gms/internal/ads/np;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/np;->a(II)V

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->u:Lcom/google/android/gms/internal/ads/ni;

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->u:Lcom/google/android/gms/internal/ads/ni;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/ni;->a(IIZ)V

    .line 19
    :cond_0
    return-void
.end method

.method public final a(Landroid/net/Uri;)V
    .locals 4

    .prologue
    .line 347
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 348
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 349
    if-eqz v0, :cond_2

    .line 350
    sget-object v1, Lcom/google/android/gms/internal/ads/edi;->cB:Lcom/google/android/gms/internal/ads/ect;

    .line 351
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v1

    .line 352
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 353
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ve;->b(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v1

    .line 354
    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/gms/internal/ads/acs;->a(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/ve;->a(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v1

    .line 357
    new-instance v3, Lcom/google/android/gms/internal/ads/acz;

    invoke-direct {v3, p0, v0, v2}, Lcom/google/android/gms/internal/ads/acz;-><init>(Lcom/google/android/gms/internal/ads/acs;Ljava/util/List;Ljava/lang/String;)V

    .line 358
    sget-object v0, Lcom/google/android/gms/internal/ads/yg;->f:Lcom/google/android/gms/internal/ads/crs;

    .line 359
    invoke-static {v1, v3, v0}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/crh;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    .line 361
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x20

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "No GMSG handler found for GMSG: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 362
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->dA:Lcom/google/android/gms/internal/ads/ect;

    .line 363
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 364
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ug;->a()Lcom/google/android/gms/internal/ads/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 367
    sget-object v0, Lcom/google/android/gms/internal/ads/yg;->a:Lcom/google/android/gms/internal/ads/crs;

    new-instance v1, Lcom/google/android/gms/internal/ads/acu;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/acu;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/crs;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/ads/internal/overlay/d;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 140
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->A()Z

    move-result v1

    .line 141
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 142
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/acs;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/act;->t()Lcom/google/android/gms/internal/ads/aei;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/aei;->e()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v3

    .line 143
    :goto_0
    if-eqz v1, :cond_1

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/acs;->r:Lcom/google/android/gms/ads/internal/overlay/t;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/acs;->a:Lcom/google/android/gms/internal/ads/act;

    .line 144
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/act;->j()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/overlay/d;Lcom/google/android/gms/internal/ads/dxs;Lcom/google/android/gms/ads/internal/overlay/o;Lcom/google/android/gms/ads/internal/overlay/t;Lcom/google/android/gms/internal/ads/yd;)V

    .line 145
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/acs;->a(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    .line 146
    return-void

    .line 142
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/acs;->f:Lcom/google/android/gms/internal/ads/dxs;

    goto :goto_0

    .line 143
    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/acs;->g:Lcom/google/android/gms/ads/internal/overlay/o;

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/aee;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/acs;->h:Lcom/google/android/gms/internal/ads/aee;

    .line 228
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/aeh;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/acs;->i:Lcom/google/android/gms/internal/ads/aeh;

    .line 230
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dxs;Lcom/google/android/gms/internal/ads/ei;Lcom/google/android/gms/ads/internal/overlay/o;Lcom/google/android/gms/internal/ads/ek;Lcom/google/android/gms/ads/internal/overlay/t;ZLcom/google/android/gms/internal/ads/fd;Lcom/google/android/gms/ads/internal/c;Lcom/google/android/gms/internal/ads/ns;Lcom/google/android/gms/internal/ads/st;)V
    .locals 3

    .prologue
    .line 20
    if-nez p8, :cond_0

    .line 21
    new-instance p8, Lcom/google/android/gms/ads/internal/c;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p8, v0, p10, v1}, Lcom/google/android/gms/ads/internal/c;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/st;Lcom/google/android/gms/internal/ads/pk;)V

    .line 22
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/ni;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/acs;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-direct {v0, v1, p9}, Lcom/google/android/gms/internal/ads/ni;-><init>(Lcom/google/android/gms/internal/ads/act;Lcom/google/android/gms/internal/ads/ns;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->u:Lcom/google/android/gms/internal/ads/ni;

    .line 23
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/acs;->b:Lcom/google/android/gms/internal/ads/st;

    .line 24
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->am:Lcom/google/android/gms/internal/ads/ect;

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 26
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    const-string/jumbo v0, "/adMetadata"

    new-instance v1, Lcom/google/android/gms/internal/ads/eg;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/eg;-><init>(Lcom/google/android/gms/internal/ads/ei;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/acs;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 28
    :cond_1
    const-string/jumbo v0, "/appEvent"

    new-instance v1, Lcom/google/android/gms/internal/ads/eh;

    invoke-direct {v1, p4}, Lcom/google/android/gms/internal/ads/eh;-><init>(Lcom/google/android/gms/internal/ads/ek;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/acs;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 29
    const-string/jumbo v0, "/backButton"

    sget-object v1, Lcom/google/android/gms/internal/ads/em;->j:Lcom/google/android/gms/internal/ads/fa;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/acs;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 30
    const-string/jumbo v0, "/refresh"

    sget-object v1, Lcom/google/android/gms/internal/ads/em;->k:Lcom/google/android/gms/internal/ads/fa;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/acs;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 31
    const-string/jumbo v0, "/canOpenURLs"

    sget-object v1, Lcom/google/android/gms/internal/ads/em;->a:Lcom/google/android/gms/internal/ads/fa;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/acs;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 32
    const-string/jumbo v0, "/canOpenIntents"

    sget-object v1, Lcom/google/android/gms/internal/ads/em;->b:Lcom/google/android/gms/internal/ads/fa;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/acs;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 33
    const-string/jumbo v0, "/click"

    sget-object v1, Lcom/google/android/gms/internal/ads/em;->c:Lcom/google/android/gms/internal/ads/fa;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/acs;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 34
    const-string/jumbo v0, "/close"

    sget-object v1, Lcom/google/android/gms/internal/ads/em;->d:Lcom/google/android/gms/internal/ads/fa;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/acs;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 35
    const-string/jumbo v0, "/customClose"

    sget-object v1, Lcom/google/android/gms/internal/ads/em;->e:Lcom/google/android/gms/internal/ads/fa;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/acs;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 36
    const-string/jumbo v0, "/instrument"

    sget-object v1, Lcom/google/android/gms/internal/ads/em;->n:Lcom/google/android/gms/internal/ads/fa;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/acs;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 37
    const-string/jumbo v0, "/delayPageLoaded"

    sget-object v1, Lcom/google/android/gms/internal/ads/em;->p:Lcom/google/android/gms/internal/ads/fa;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/acs;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 38
    const-string/jumbo v0, "/delayPageClosed"

    sget-object v1, Lcom/google/android/gms/internal/ads/em;->q:Lcom/google/android/gms/internal/ads/fa;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/acs;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 39
    const-string/jumbo v0, "/getLocationInfo"

    sget-object v1, Lcom/google/android/gms/internal/ads/em;->r:Lcom/google/android/gms/internal/ads/fa;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/acs;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 40
    const-string/jumbo v0, "/httpTrack"

    sget-object v1, Lcom/google/android/gms/internal/ads/em;->f:Lcom/google/android/gms/internal/ads/fa;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/acs;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 41
    const-string/jumbo v0, "/log"

    sget-object v1, Lcom/google/android/gms/internal/ads/em;->g:Lcom/google/android/gms/internal/ads/fa;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/acs;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 42
    const-string/jumbo v0, "/mraid"

    new-instance v1, Lcom/google/android/gms/internal/ads/ff;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/acs;->u:Lcom/google/android/gms/internal/ads/ni;

    invoke-direct {v1, p8, v2, p9}, Lcom/google/android/gms/internal/ads/ff;-><init>(Lcom/google/android/gms/ads/internal/c;Lcom/google/android/gms/internal/ads/ni;Lcom/google/android/gms/internal/ads/ns;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/acs;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 43
    const-string/jumbo v0, "/mraidLoaded"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/acs;->s:Lcom/google/android/gms/internal/ads/np;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/acs;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 44
    const-string/jumbo v0, "/open"

    new-instance v1, Lcom/google/android/gms/internal/ads/fe;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/acs;->u:Lcom/google/android/gms/internal/ads/ni;

    invoke-direct {v1, p8, v2}, Lcom/google/android/gms/internal/ads/fe;-><init>(Lcom/google/android/gms/ads/internal/c;Lcom/google/android/gms/internal/ads/ni;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/acs;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 45
    const-string/jumbo v0, "/precache"

    new-instance v1, Lcom/google/android/gms/internal/ads/acc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/acc;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/acs;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 46
    const-string/jumbo v0, "/touch"

    sget-object v1, Lcom/google/android/gms/internal/ads/em;->i:Lcom/google/android/gms/internal/ads/fa;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/acs;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 47
    const-string/jumbo v0, "/video"

    sget-object v1, Lcom/google/android/gms/internal/ads/em;->l:Lcom/google/android/gms/internal/ads/fa;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/acs;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 48
    const-string/jumbo v0, "/videoMeta"

    sget-object v1, Lcom/google/android/gms/internal/ads/em;->m:Lcom/google/android/gms/internal/ads/fa;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/acs;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 49
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->A()Lcom/google/android/gms/internal/ads/ta;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/acs;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/act;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ta;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    const-string/jumbo v0, "/logScionEvent"

    new-instance v1, Lcom/google/android/gms/internal/ads/fc;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/acs;->a:Lcom/google/android/gms/internal/ads/act;

    .line 51
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/act;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/fc;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/acs;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 54
    :cond_2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/acs;->f:Lcom/google/android/gms/internal/ads/dxs;

    .line 55
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/acs;->g:Lcom/google/android/gms/ads/internal/overlay/o;

    .line 56
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/acs;->j:Lcom/google/android/gms/internal/ads/ei;

    .line 57
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/acs;->k:Lcom/google/android/gms/internal/ads/ek;

    .line 58
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/acs;->r:Lcom/google/android/gms/ads/internal/overlay/t;

    .line 59
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/acs;->t:Lcom/google/android/gms/ads/internal/c;

    .line 61
    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/acs;->m:Z

    .line 62
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/common/util/n;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/util/n",
            "<",
            "Lcom/google/android/gms/internal/ads/fa",
            "<-",
            "Lcom/google/android/gms/internal/ads/act;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 194
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/acs;->e:Ljava/lang/Object;

    monitor-enter v2

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 196
    if-nez v0, :cond_0

    .line 197
    monitor-exit v2

    .line 204
    :goto_0
    return-void

    .line 198
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 199
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/fa;

    .line 200
    invoke-interface {p2, v1}, Lcom/google/android/gms/common/util/n;->a(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 201
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 203
    :cond_2
    :try_start_1
    invoke-interface {v0, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 204
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/fa",
            "<-",
            "Lcom/google/android/gms/internal/ads/act;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/acs;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 183
    if-nez v0, :cond_0

    .line 184
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 185
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/acs;->d:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 331
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/acs;->m:Z

    .line 332
    return-void
.end method

.method public final a(ZI)V
    .locals 8

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->A()Z

    move-result v1

    .line 148
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 149
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/acs;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/act;->t()Lcom/google/android/gms/internal/ads/aei;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/aei;->e()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/acs;->g:Lcom/google/android/gms/ads/internal/overlay/o;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/acs;->r:Lcom/google/android/gms/ads/internal/overlay/t;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/acs;->a:Lcom/google/android/gms/internal/ads/act;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/acs;->a:Lcom/google/android/gms/internal/ads/act;

    .line 150
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/act;->j()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v7

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/dxs;Lcom/google/android/gms/ads/internal/overlay/o;Lcom/google/android/gms/ads/internal/overlay/t;Lcom/google/android/gms/internal/ads/act;ZILcom/google/android/gms/internal/ads/yd;)V

    .line 151
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/acs;->a(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    .line 152
    return-void

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/acs;->f:Lcom/google/android/gms/internal/ads/dxs;

    goto :goto_0
.end method

.method public final a(ZILjava/lang/String;)V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 153
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->A()Z

    move-result v3

    .line 154
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 155
    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/acs;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/act;->t()Lcom/google/android/gms/internal/ads/aei;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/aei;->e()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v2

    .line 156
    :goto_0
    if-eqz v3, :cond_1

    .line 158
    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/acs;->j:Lcom/google/android/gms/internal/ads/ei;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/acs;->k:Lcom/google/android/gms/internal/ads/ek;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/acs;->r:Lcom/google/android/gms/ads/internal/overlay/t;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/acs;->a:Lcom/google/android/gms/internal/ads/act;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/acs;->a:Lcom/google/android/gms/internal/ads/act;

    .line 159
    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/act;->j()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v10

    move v7, p1

    move v8, p2

    move-object v9, p3

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/dxs;Lcom/google/android/gms/ads/internal/overlay/o;Lcom/google/android/gms/internal/ads/ei;Lcom/google/android/gms/internal/ads/ek;Lcom/google/android/gms/ads/internal/overlay/t;Lcom/google/android/gms/internal/ads/act;ZILjava/lang/String;Lcom/google/android/gms/internal/ads/yd;)V

    .line 160
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/acs;->a(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    .line 161
    return-void

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/acs;->f:Lcom/google/android/gms/internal/ads/dxs;

    goto :goto_0

    .line 158
    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/ads/acy;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/acs;->a:Lcom/google/android/gms/internal/ads/act;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/acs;->g:Lcom/google/android/gms/ads/internal/overlay/o;

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/ads/acy;-><init>(Lcom/google/android/gms/internal/ads/act;Lcom/google/android/gms/ads/internal/overlay/o;)V

    goto :goto_1
.end method

.method public final a(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->A()Z

    move-result v2

    .line 163
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 164
    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/acs;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/act;->t()Lcom/google/android/gms/internal/ads/aei;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/aei;->e()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 165
    :goto_0
    if-eqz v2, :cond_1

    .line 166
    const/4 v2, 0x0

    .line 167
    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/acs;->j:Lcom/google/android/gms/internal/ads/ei;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/acs;->k:Lcom/google/android/gms/internal/ads/ek;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/acs;->r:Lcom/google/android/gms/ads/internal/overlay/t;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/acs;->a:Lcom/google/android/gms/internal/ads/act;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/acs;->a:Lcom/google/android/gms/internal/ads/act;

    .line 168
    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/act;->j()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v11

    move v7, p1

    move v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/dxs;Lcom/google/android/gms/ads/internal/overlay/o;Lcom/google/android/gms/internal/ads/ei;Lcom/google/android/gms/internal/ads/ek;Lcom/google/android/gms/ads/internal/overlay/t;Lcom/google/android/gms/internal/ads/act;ZILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/yd;)V

    .line 169
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/acs;->a(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    .line 170
    return-void

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/acs;->f:Lcom/google/android/gms/internal/ads/dxs;

    goto :goto_0

    .line 167
    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/ads/acy;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/acs;->a:Lcom/google/android/gms/internal/ads/act;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/acs;->g:Lcom/google/android/gms/ads/internal/overlay/o;

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/ads/acy;-><init>(Lcom/google/android/gms/internal/ads/act;Lcom/google/android/gms/ads/internal/overlay/o;)V

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/fa",
            "<-",
            "Lcom/google/android/gms/internal/ads/act;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/acs;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 190
    if-nez v0, :cond_0

    .line 191
    monitor-exit v1

    .line 193
    :goto_0
    return-void

    .line 192
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 193
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 339
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/acs;->y:Z

    .line 340
    return-void
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 64
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/acs;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 65
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/acs;->n:Z

    monitor-exit v1

    return v0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c(Z)V
    .locals 2

    .prologue
    .line 378
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/acs;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 379
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/acs;->o:Z

    .line 380
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 67
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/acs;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 68
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/acs;->o:Z

    monitor-exit v1

    return v0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final d(Z)V
    .locals 2

    .prologue
    .line 381
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/acs;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 382
    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/acs;->p:Z

    .line 383
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final d()Z
    .locals 2

    .prologue
    .line 70
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/acs;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 71
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/acs;->p:Z

    monitor-exit v1

    return v0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final e()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 2

    .prologue
    .line 73
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/acs;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 74
    const/4 v0, 0x0

    :try_start_0
    monitor-exit v1

    return-object v0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final f()Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .locals 2

    .prologue
    .line 76
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/acs;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 77
    const/4 v0, 0x0

    :try_start_0
    monitor-exit v1

    return-object v0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final g()V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->b:Lcom/google/android/gms/internal/ads/st;

    .line 107
    if-eqz v0, :cond_0

    .line 108
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/acs;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/act;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 109
    invoke-static {v1}, Landroidx/core/h/u;->B(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    const/16 v2, 0xa

    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/gms/internal/ads/acs;->a(Landroid/view/View;Lcom/google/android/gms/internal/ads/st;I)V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/acs;->n()V

    .line 113
    new-instance v1, Lcom/google/android/gms/internal/ads/acw;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/acw;-><init>(Lcom/google/android/gms/internal/ads/acs;Lcom/google/android/gms/internal/ads/st;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/acs;->z:Landroid/view/View$OnAttachStateChangeListener;

    .line 114
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/acs;->z:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_0
.end method

.method public final h()V
    .locals 2

    .prologue
    .line 116
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/acs;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 117
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/acs;->q:Z

    .line 118
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    iget v0, p0, Lcom/google/android/gms/internal/ads/acs;->x:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/acs;->x:I

    .line 120
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/acs;->o()V

    .line 121
    return-void

    .line 118
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/google/android/gms/internal/ads/acs;->x:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/acs;->x:I

    .line 123
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/acs;->o()V

    .line 124
    return-void
.end method

.method public final j()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->c:Lcom/google/android/gms/internal/ads/dwi;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->c:Lcom/google/android/gms/internal/ads/dwi;

    sget-object v1, Lcom/google/android/gms/internal/ads/dwk$a$a;->S:Lcom/google/android/gms/internal/ads/dwk$a$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dwi;->a(Lcom/google/android/gms/internal/ads/dwk$a$a;)V

    .line 127
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/acs;->w:Z

    .line 128
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/acs;->o()V

    .line 129
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->cE:Lcom/google/android/gms/internal/ads/ect;

    .line 130
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 131
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->destroy()V

    .line 133
    :cond_1
    return-void
.end method

.method public final k()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 205
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->b:Lcom/google/android/gms/internal/ads/st;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->b:Lcom/google/android/gms/internal/ads/st;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/st;->d()V

    .line 207
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/acs;->b:Lcom/google/android/gms/internal/ads/st;

    .line 208
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/acs;->n()V

    .line 209
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/acs;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->f:Lcom/google/android/gms/internal/ads/dxs;

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->g:Lcom/google/android/gms/ads/internal/overlay/o;

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->h:Lcom/google/android/gms/internal/ads/aee;

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->i:Lcom/google/android/gms/internal/ads/aeh;

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->j:Lcom/google/android/gms/internal/ads/ei;

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->k:Lcom/google/android/gms/internal/ads/ek;

    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/acs;->m:Z

    .line 218
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/acs;->n:Z

    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/acs;->o:Z

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/acs;->q:Z

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->r:Lcom/google/android/gms/ads/internal/overlay/t;

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->l:Lcom/google/android/gms/internal/ads/aeg;

    .line 223
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->u:Lcom/google/android/gms/internal/ads/ni;

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->u:Lcom/google/android/gms/internal/ads/ni;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/ni;->a(Z)V

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->u:Lcom/google/android/gms/internal/ads/ni;

    .line 226
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final l()Lcom/google/android/gms/internal/ads/st;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->b:Lcom/google/android/gms/internal/ads/st;

    return-object v0
.end method

.method public final m()V
    .locals 3

    .prologue
    .line 334
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/acs;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 335
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/acs;->m:Z

    .line 336
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/acs;->n:Z

    .line 337
    sget-object v0, Lcom/google/android/gms/internal/ads/yg;->e:Lcom/google/android/gms/internal/ads/crs;

    new-instance v2, Lcom/google/android/gms/internal/ads/acv;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/acv;-><init>(Lcom/google/android/gms/internal/ads/acs;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/crs;->execute(Ljava/lang/Runnable;)V

    .line 338
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 231
    const-string/jumbo v1, "Loading resource: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 232
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 233
    const-string/jumbo v1, "gmsg"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "mobileads.google.com"

    .line 234
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/acs;->a(Landroid/net/Uri;)V

    .line 236
    :cond_0
    return-void

    .line 231
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 84
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/acs;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const-string/jumbo v0, "Blank page loaded, 1..."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->C()V

    .line 88
    monitor-exit v1

    .line 96
    :goto_0
    return-void

    .line 89
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/acs;->v:Z

    .line 92
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->i:Lcom/google/android/gms/internal/ads/aeh;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->i:Lcom/google/android/gms/internal/ads/aeh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aeh;->a()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->i:Lcom/google/android/gms/internal/ads/aeh;

    .line 95
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/acs;->o()V

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->M()Lcom/google/android/gms/internal/ads/dvk;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dvk;->a()Landroid/webkit/WebView;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 81
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/dvk;->a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 82
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 83
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result v1

    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->rendererPriorityAtExit()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/act;->a(ZI)Z

    move-result v0

    return v0
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 270
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/ads/acs;->a(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 344
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 346
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 345
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 344
    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x58 -> :sswitch_0
        0x59 -> :sswitch_0
        0x5a -> :sswitch_0
        0x5b -> :sswitch_0
        0x7e -> :sswitch_0
        0x7f -> :sswitch_0
        0x80 -> :sswitch_0
        0x81 -> :sswitch_0
        0x82 -> :sswitch_0
        0xde -> :sswitch_0
    .end sparse-switch
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 237
    const-string/jumbo v1, "AdWebView shouldOverrideUrlLoading: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 238
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 239
    const-string/jumbo v1, "gmsg"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "mobileads.google.com"

    .line 240
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/acs;->a(Landroid/net/Uri;)V

    :goto_1
    move v0, v8

    .line 269
    :goto_2
    return v0

    .line 237
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 242
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/acs;->m:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/acs;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/act;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    if-ne p1, v1, :cond_6

    .line 243
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 244
    const-string/jumbo v2, "http"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "https"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_2
    move v1, v8

    .line 245
    :goto_3
    if-eqz v1, :cond_6

    .line 246
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->f:Lcom/google/android/gms/internal/ads/dxs;

    if-eqz v0, :cond_4

    .line 247
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->f:Lcom/google/android/gms/internal/ads/dxs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dxs;->e()V

    .line 248
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->b:Lcom/google/android/gms/internal/ads/st;

    if-eqz v0, :cond_3

    .line 249
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->b:Lcom/google/android/gms/internal/ads/st;

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/st;->a(Ljava/lang/String;)V

    .line 250
    :cond_3
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/acs;->f:Lcom/google/android/gms/internal/ads/dxs;

    .line 251
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_2

    .line 244
    :cond_5
    const/4 v1, 0x0

    goto :goto_3

    .line 252
    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/acs;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/act;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->willNotDraw()Z

    move-result v1

    if-nez v1, :cond_b

    .line 253
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/acs;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/act;->y()Lcom/google/android/gms/internal/ads/ctl;

    move-result-object v1

    .line 254
    if-eqz v1, :cond_7

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ctl;->a(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 255
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/acs;->a:Lcom/google/android/gms/internal/ads/act;

    .line 256
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/act;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/acs;->a:Lcom/google/android/gms/internal/ads/act;

    .line 257
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/act;->getView()Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/acs;->a:Lcom/google/android/gms/internal/ads/act;

    .line 258
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/act;->f()Landroid/app/Activity;

    move-result-object v5

    .line 259
    invoke-virtual {v1, v0, v2, v4, v5}, Lcom/google/android/gms/internal/ads/ctl;->a(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdw; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_7
    move-object v2, v0

    .line 263
    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->t:Lcom/google/android/gms/ads/internal/c;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->t:Lcom/google/android/gms/ads/internal/c;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/c;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 264
    :cond_8
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/d;

    const-string/jumbo v1, "android.intent.action.VIEW"

    .line 265
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/overlay/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/acs;->a(Lcom/google/android/gms/ads/internal/overlay/d;)V

    goto/16 :goto_1

    .line 262
    :catch_0
    move-exception v1

    const-string/jumbo v2, "Unable to append parameter to URL: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    move-object v2, v0

    goto :goto_4

    :cond_9
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5

    .line 267
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acs;->t:Lcom/google/android/gms/ads/internal/c;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/internal/c;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 268
    :cond_b
    const-string/jumbo v1, "AdWebView unable to handle URL: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_6
.end method
