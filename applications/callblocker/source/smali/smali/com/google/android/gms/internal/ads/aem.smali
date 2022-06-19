.class public final Lcom/google/android/gms/internal/ads/aem;
.super Lcom/google/android/gms/internal/ads/aev;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/aef;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field protected a:Lcom/google/android/gms/internal/ads/act;

.field private final b:Lcom/google/android/gms/internal/ads/ho;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ho",
            "<",
            "Lcom/google/android/gms/internal/ads/act;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Object;

.field private d:Lcom/google/android/gms/internal/ads/dxs;

.field private e:Lcom/google/android/gms/ads/internal/overlay/o;

.field private f:Lcom/google/android/gms/internal/ads/aee;

.field private g:Lcom/google/android/gms/internal/ads/aeh;

.field private h:Lcom/google/android/gms/internal/ads/ei;

.field private i:Lcom/google/android/gms/internal/ads/ek;

.field private j:Lcom/google/android/gms/internal/ads/aeg;

.field private k:Z

.field private volatile l:Z

.field private m:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

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

.field private p:Lcom/google/android/gms/ads/internal/overlay/t;

.field private q:Lcom/google/android/gms/internal/ads/np;

.field private r:Lcom/google/android/gms/ads/internal/c;

.field private s:Lcom/google/android/gms/internal/ads/ni;

.field private t:Lcom/google/android/gms/internal/ads/st;

.field private u:Z

.field private v:Z

.field private w:I

.field private x:Z

.field private y:Landroid/view/View$OnAttachStateChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aev;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->c:Ljava/lang/Object;

    .line 3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aem;->k:Z

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/ho;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ho;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->b:Lcom/google/android/gms/internal/ads/ho;

    .line 5
    return-void
.end method

.method private final a(Landroid/view/View;Lcom/google/android/gms/internal/ads/st;I)V
    .locals 4

    .prologue
    .line 95
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/st;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    .line 96
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/st;->a(Landroid/view/View;)V

    .line 97
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/st;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    sget-object v0, Lcom/google/android/gms/internal/ads/ve;->a:Lcom/google/android/gms/internal/ads/cnz;

    new-instance v1, Lcom/google/android/gms/internal/ads/aeo;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/aeo;-><init>(Lcom/google/android/gms/internal/ads/aem;Landroid/view/View;Lcom/google/android/gms/internal/ads/st;I)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/cnz;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 99
    :cond_0
    return-void
.end method

.method private final a(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 163
    .line 164
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->s:Lcom/google/android/gms/internal/ads/ni;

    if-eqz v0, :cond_3

    .line 165
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->s:Lcom/google/android/gms/internal/ads/ni;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ni;->a()Z

    move-result v0

    .line 166
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->b()Lcom/google/android/gms/ads/internal/overlay/n;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aem;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/act;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v2, p1, v1}, Lcom/google/android/gms/ads/internal/overlay/n;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    .line 167
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->t:Lcom/google/android/gms/internal/ads/st;

    if-eqz v0, :cond_2

    .line 168
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->l:Ljava/lang/String;

    .line 169
    if-nez v0, :cond_1

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->a:Lcom/google/android/gms/ads/internal/overlay/d;

    if-eqz v1, :cond_1

    .line 170
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->a:Lcom/google/android/gms/ads/internal/overlay/d;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/d;->a:Ljava/lang/String;

    .line 171
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aem;->t:Lcom/google/android/gms/internal/ads/st;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/st;->a(Ljava/lang/String;)V

    .line 172
    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/aem;Landroid/view/View;Lcom/google/android/gms/internal/ads/st;I)V
    .locals 0

    .prologue
    .line 336
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/aem;->a(Landroid/view/View;Lcom/google/android/gms/internal/ads/st;I)V

    return-void
.end method

.method private final e(Lcom/google/android/gms/internal/ads/aey;)Landroid/webkit/WebResourceResponse;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/16 v8, 0x2710

    const/4 v4, 0x0

    .line 276
    new-instance v1, Ljava/net/URL;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/aey;->a:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move v0, v4

    move-object v6, v1

    .line 278
    :goto_0
    add-int/lit8 v5, v0, 0x1

    const/16 v0, 0x14

    if-gt v5, v0, :cond_9

    .line 279
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 280
    invoke-virtual {v2, v8}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 281
    invoke-virtual {v2, v8}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 282
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/aey;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 283
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 285
    :cond_0
    instance-of v0, v2, Ljava/net/HttpURLConnection;

    if-nez v0, :cond_1

    .line 286
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Invalid protocol."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v0, v2

    .line 287
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 288
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aem;->a:Lcom/google/android/gms/internal/ads/act;

    .line 289
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/act;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/aem;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/act;->j()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/yd;->a:Ljava/lang/String;

    .line 290
    invoke-virtual {v1, v2, v7, v4, v0}, Lcom/google/android/gms/internal/ads/ve;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V

    .line 291
    new-instance v1, Lcom/google/android/gms/internal/ads/xv;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/xv;-><init>()V

    .line 292
    invoke-virtual {v1, v0, v3}, Lcom/google/android/gms/internal/ads/xv;->a(Ljava/net/HttpURLConnection;[B)V

    .line 293
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 294
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/xv;->a(Ljava/net/HttpURLConnection;I)V

    .line 295
    const/16 v1, 0x12c

    if-lt v2, v1, :cond_8

    const/16 v1, 0x190

    if-ge v2, v1, :cond_8

    .line 296
    const-string/jumbo v1, "Location"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 297
    if-nez v1, :cond_2

    .line 298
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Missing Location header in redirect"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_2
    const-string/jumbo v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, v3

    .line 312
    :goto_2
    return-object v0

    .line 301
    :cond_3
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v6, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 302
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v6

    .line 303
    if-nez v6, :cond_4

    .line 304
    const-string/jumbo v0, "Protocol is null"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 305
    invoke-static {}, Lcom/google/android/gms/internal/ads/aem;->p()Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_2

    .line 306
    :cond_4
    const-string/jumbo v7, "http"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string/jumbo v7, "https"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 307
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

    .line 308
    invoke-static {}, Lcom/google/android/gms/internal/ads/aem;->p()Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_2

    .line 307
    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 309
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

    .line 310
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move v0, v5

    move-object v6, v2

    .line 311
    goto/16 :goto_0

    .line 309
    :cond_7
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 312
    :cond_8
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ve;->a(Ljava/net/HttpURLConnection;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_2

    .line 313
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
    .line 100
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->y:Landroid/view/View$OnAttachStateChangeListener;

    if-nez v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aem;->y:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_0
.end method

.method private final o()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->f:Lcom/google/android/gms/internal/ads/aee;

    if-eqz v0, :cond_2

    .line 127
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aem;->u:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/aem;->w:I

    if-lez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aem;->v:Z

    if-eqz v0, :cond_2

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aem;->f:Lcom/google/android/gms/internal/ads/aee;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aem;->v:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/aee;->a(Z)V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->f:Lcom/google/android/gms/internal/ads/aee;

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->G()V

    .line 131
    return-void

    .line 128
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static p()Landroid/webkit/WebResourceResponse;
    .locals 5

    .prologue
    .line 271
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->ag:Lcom/google/android/gms/internal/ads/ect;

    .line 272
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 273
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    new-instance v0, Landroid/webkit/WebResourceResponse;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    new-instance v3, Ljava/io/ByteArrayInputStream;

    const/4 v4, 0x0

    new-array v4, v4, [B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 275
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/ads/internal/c;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->r:Lcom/google/android/gms/ads/internal/c;

    return-object v0
.end method

.method public final a(II)V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->s:Lcom/google/android/gms/internal/ads/ni;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->s:Lcom/google/android/gms/internal/ads/ni;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/ni;->a(II)V

    .line 326
    :cond_0
    return-void
.end method

.method public final a(IIZ)V
    .locals 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->q:Lcom/google/android/gms/internal/ads/np;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/np;->a(II)V

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->s:Lcom/google/android/gms/internal/ads/ni;

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->s:Lcom/google/android/gms/internal/ads/ni;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/ni;->a(IIZ)V

    .line 19
    :cond_0
    return-void
.end method

.method public final a(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->b:Lcom/google/android/gms/internal/ads/ho;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ho;->b(Landroid/net/Uri;)V

    .line 334
    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/internal/overlay/d;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 132
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->A()Z

    move-result v1

    .line 133
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 134
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aem;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/act;->t()Lcom/google/android/gms/internal/ads/aei;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/aei;->e()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v3

    .line 135
    :goto_0
    if-eqz v1, :cond_1

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/aem;->p:Lcom/google/android/gms/ads/internal/overlay/t;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aem;->a:Lcom/google/android/gms/internal/ads/act;

    .line 136
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/act;->j()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/overlay/d;Lcom/google/android/gms/internal/ads/dxs;Lcom/google/android/gms/ads/internal/overlay/o;Lcom/google/android/gms/ads/internal/overlay/t;Lcom/google/android/gms/internal/ads/yd;)V

    .line 137
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/aem;->a(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    .line 138
    return-void

    .line 134
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aem;->d:Lcom/google/android/gms/internal/ads/dxs;

    goto :goto_0

    .line 135
    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/aem;->e:Lcom/google/android/gms/ads/internal/overlay/o;

    goto :goto_1
.end method

.method final a(Lcom/google/android/gms/internal/ads/act;Z)V
    .locals 4

    .prologue
    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/np;

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/act;->q()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/ecp;

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/act;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/ecp;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/np;-><init>(Lcom/google/android/gms/internal/ads/act;Landroid/content/Context;Lcom/google/android/gms/internal/ads/ecp;)V

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aem;->a:Lcom/google/android/gms/internal/ads/act;

    .line 11
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/aem;->l:Z

    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->q:Lcom/google/android/gms/internal/ads/np;

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->s:Lcom/google/android/gms/internal/ads/ni;

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->b:Lcom/google/android/gms/internal/ads/ho;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ho;->a(Ljava/lang/Object;)V

    .line 15
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/aee;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aem;->f:Lcom/google/android/gms/internal/ads/aee;

    .line 193
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/aeh;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aem;->g:Lcom/google/android/gms/internal/ads/aeh;

    .line 195
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/aey;)V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aem;->u:Z

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->g:Lcom/google/android/gms/internal/ads/aeh;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->g:Lcom/google/android/gms/internal/ads/aeh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aeh;->a()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->g:Lcom/google/android/gms/internal/ads/aeh;

    .line 93
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aem;->o()V

    .line 94
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dxs;Lcom/google/android/gms/internal/ads/ei;Lcom/google/android/gms/ads/internal/overlay/o;Lcom/google/android/gms/internal/ads/ek;Lcom/google/android/gms/ads/internal/overlay/t;ZLcom/google/android/gms/internal/ads/fd;Lcom/google/android/gms/ads/internal/c;Lcom/google/android/gms/internal/ads/ns;Lcom/google/android/gms/internal/ads/st;)V
    .locals 3

    .prologue
    .line 26
    if-nez p8, :cond_0

    .line 27
    new-instance p8, Lcom/google/android/gms/ads/internal/c;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p8, v0, p10, v1}, Lcom/google/android/gms/ads/internal/c;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/st;Lcom/google/android/gms/internal/ads/pk;)V

    .line 28
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/ni;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aem;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-direct {v0, v1, p9}, Lcom/google/android/gms/internal/ads/ni;-><init>(Lcom/google/android/gms/internal/ads/act;Lcom/google/android/gms/internal/ads/ns;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->s:Lcom/google/android/gms/internal/ads/ni;

    .line 29
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/aem;->t:Lcom/google/android/gms/internal/ads/st;

    .line 30
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->am:Lcom/google/android/gms/internal/ads/ect;

    .line 31
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 32
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    const-string/jumbo v0, "/adMetadata"

    new-instance v1, Lcom/google/android/gms/internal/ads/eg;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/eg;-><init>(Lcom/google/android/gms/internal/ads/ei;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/aem;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 34
    :cond_1
    const-string/jumbo v0, "/appEvent"

    new-instance v1, Lcom/google/android/gms/internal/ads/eh;

    invoke-direct {v1, p4}, Lcom/google/android/gms/internal/ads/eh;-><init>(Lcom/google/android/gms/internal/ads/ek;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/aem;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 35
    const-string/jumbo v0, "/backButton"

    sget-object v1, Lcom/google/android/gms/internal/ads/em;->j:Lcom/google/android/gms/internal/ads/fa;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/aem;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 36
    const-string/jumbo v0, "/refresh"

    sget-object v1, Lcom/google/android/gms/internal/ads/em;->k:Lcom/google/android/gms/internal/ads/fa;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/aem;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 37
    const-string/jumbo v0, "/canOpenURLs"

    sget-object v1, Lcom/google/android/gms/internal/ads/em;->a:Lcom/google/android/gms/internal/ads/fa;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/aem;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 38
    const-string/jumbo v0, "/canOpenIntents"

    sget-object v1, Lcom/google/android/gms/internal/ads/em;->b:Lcom/google/android/gms/internal/ads/fa;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/aem;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 39
    const-string/jumbo v0, "/click"

    sget-object v1, Lcom/google/android/gms/internal/ads/em;->c:Lcom/google/android/gms/internal/ads/fa;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/aem;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 40
    const-string/jumbo v0, "/close"

    sget-object v1, Lcom/google/android/gms/internal/ads/em;->d:Lcom/google/android/gms/internal/ads/fa;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/aem;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 41
    const-string/jumbo v0, "/customClose"

    sget-object v1, Lcom/google/android/gms/internal/ads/em;->e:Lcom/google/android/gms/internal/ads/fa;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/aem;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 42
    const-string/jumbo v0, "/instrument"

    sget-object v1, Lcom/google/android/gms/internal/ads/em;->n:Lcom/google/android/gms/internal/ads/fa;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/aem;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 43
    const-string/jumbo v0, "/delayPageLoaded"

    sget-object v1, Lcom/google/android/gms/internal/ads/em;->p:Lcom/google/android/gms/internal/ads/fa;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/aem;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 44
    const-string/jumbo v0, "/delayPageClosed"

    sget-object v1, Lcom/google/android/gms/internal/ads/em;->q:Lcom/google/android/gms/internal/ads/fa;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/aem;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 45
    const-string/jumbo v0, "/getLocationInfo"

    sget-object v1, Lcom/google/android/gms/internal/ads/em;->r:Lcom/google/android/gms/internal/ads/fa;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/aem;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 46
    const-string/jumbo v0, "/httpTrack"

    sget-object v1, Lcom/google/android/gms/internal/ads/em;->f:Lcom/google/android/gms/internal/ads/fa;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/aem;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 47
    const-string/jumbo v0, "/log"

    sget-object v1, Lcom/google/android/gms/internal/ads/em;->g:Lcom/google/android/gms/internal/ads/fa;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/aem;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 48
    const-string/jumbo v0, "/mraid"

    new-instance v1, Lcom/google/android/gms/internal/ads/ff;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aem;->s:Lcom/google/android/gms/internal/ads/ni;

    invoke-direct {v1, p8, v2, p9}, Lcom/google/android/gms/internal/ads/ff;-><init>(Lcom/google/android/gms/ads/internal/c;Lcom/google/android/gms/internal/ads/ni;Lcom/google/android/gms/internal/ads/ns;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/aem;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 49
    const-string/jumbo v0, "/mraidLoaded"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aem;->q:Lcom/google/android/gms/internal/ads/np;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/aem;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 50
    const-string/jumbo v0, "/open"

    new-instance v1, Lcom/google/android/gms/internal/ads/fe;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aem;->s:Lcom/google/android/gms/internal/ads/ni;

    invoke-direct {v1, p8, v2}, Lcom/google/android/gms/internal/ads/fe;-><init>(Lcom/google/android/gms/ads/internal/c;Lcom/google/android/gms/internal/ads/ni;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/aem;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 51
    const-string/jumbo v0, "/precache"

    new-instance v1, Lcom/google/android/gms/internal/ads/acc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/acc;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/aem;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 52
    const-string/jumbo v0, "/touch"

    sget-object v1, Lcom/google/android/gms/internal/ads/em;->i:Lcom/google/android/gms/internal/ads/fa;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/aem;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 53
    const-string/jumbo v0, "/video"

    sget-object v1, Lcom/google/android/gms/internal/ads/em;->l:Lcom/google/android/gms/internal/ads/fa;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/aem;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 54
    const-string/jumbo v0, "/videoMeta"

    sget-object v1, Lcom/google/android/gms/internal/ads/em;->m:Lcom/google/android/gms/internal/ads/fa;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/aem;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 55
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->A()Lcom/google/android/gms/internal/ads/ta;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aem;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/act;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ta;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    const-string/jumbo v0, "/logScionEvent"

    new-instance v1, Lcom/google/android/gms/internal/ads/fc;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aem;->a:Lcom/google/android/gms/internal/ads/act;

    .line 57
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/act;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/fc;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/aem;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 60
    :cond_2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aem;->d:Lcom/google/android/gms/internal/ads/dxs;

    .line 61
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/aem;->e:Lcom/google/android/gms/ads/internal/overlay/o;

    .line 62
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aem;->h:Lcom/google/android/gms/internal/ads/ei;

    .line 63
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/aem;->i:Lcom/google/android/gms/internal/ads/ek;

    .line 64
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/aem;->p:Lcom/google/android/gms/ads/internal/overlay/t;

    .line 65
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/aem;->r:Lcom/google/android/gms/ads/internal/c;

    .line 67
    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/aem;->k:Z

    .line 68
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/common/util/n;)V
    .locals 1
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
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->b:Lcom/google/android/gms/internal/ads/ho;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/ho;->a(Ljava/lang/String;Lcom/google/android/gms/common/util/n;)V

    .line 25
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V
    .locals 1
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
    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->b:Lcom/google/android/gms/internal/ads/ho;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/ho;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 21
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 314
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/aem;->k:Z

    .line 315
    return-void
.end method

.method public final a(ZI)V
    .locals 8

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->A()Z

    move-result v1

    .line 140
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 141
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aem;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/act;->t()Lcom/google/android/gms/internal/ads/aei;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/aei;->e()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aem;->e:Lcom/google/android/gms/ads/internal/overlay/o;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/aem;->p:Lcom/google/android/gms/ads/internal/overlay/t;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/aem;->a:Lcom/google/android/gms/internal/ads/act;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/aem;->a:Lcom/google/android/gms/internal/ads/act;

    .line 142
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/act;->j()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v7

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/dxs;Lcom/google/android/gms/ads/internal/overlay/o;Lcom/google/android/gms/ads/internal/overlay/t;Lcom/google/android/gms/internal/ads/act;ZILcom/google/android/gms/internal/ads/yd;)V

    .line 143
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/aem;->a(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    .line 144
    return-void

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aem;->d:Lcom/google/android/gms/internal/ads/dxs;

    goto :goto_0
.end method

.method public final a(ZILjava/lang/String;)V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 145
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->A()Z

    move-result v3

    .line 146
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 147
    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aem;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/act;->t()Lcom/google/android/gms/internal/ads/aei;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/aei;->e()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v2

    .line 148
    :goto_0
    if-eqz v3, :cond_1

    .line 150
    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/aem;->h:Lcom/google/android/gms/internal/ads/ei;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/aem;->i:Lcom/google/android/gms/internal/ads/ek;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/aem;->p:Lcom/google/android/gms/ads/internal/overlay/t;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/aem;->a:Lcom/google/android/gms/internal/ads/act;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/aem;->a:Lcom/google/android/gms/internal/ads/act;

    .line 151
    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/act;->j()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v10

    move v7, p1

    move v8, p2

    move-object v9, p3

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/dxs;Lcom/google/android/gms/ads/internal/overlay/o;Lcom/google/android/gms/internal/ads/ei;Lcom/google/android/gms/internal/ads/ek;Lcom/google/android/gms/ads/internal/overlay/t;Lcom/google/android/gms/internal/ads/act;ZILjava/lang/String;Lcom/google/android/gms/internal/ads/yd;)V

    .line 152
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/aem;->a(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    .line 153
    return-void

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aem;->d:Lcom/google/android/gms/internal/ads/dxs;

    goto :goto_0

    .line 150
    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/ads/aeq;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/aem;->a:Lcom/google/android/gms/internal/ads/act;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/aem;->e:Lcom/google/android/gms/ads/internal/overlay/o;

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/ads/aeq;-><init>(Lcom/google/android/gms/internal/ads/act;Lcom/google/android/gms/ads/internal/overlay/o;)V

    goto :goto_1
.end method

.method public final a(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->A()Z

    move-result v2

    .line 155
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 156
    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aem;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/act;->t()Lcom/google/android/gms/internal/ads/aei;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/aei;->e()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 157
    :goto_0
    if-eqz v2, :cond_1

    .line 158
    const/4 v2, 0x0

    .line 159
    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/aem;->h:Lcom/google/android/gms/internal/ads/ei;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/aem;->i:Lcom/google/android/gms/internal/ads/ek;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/aem;->p:Lcom/google/android/gms/ads/internal/overlay/t;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/aem;->a:Lcom/google/android/gms/internal/ads/act;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/aem;->a:Lcom/google/android/gms/internal/ads/act;

    .line 160
    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/act;->j()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v11

    move v7, p1

    move v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/dxs;Lcom/google/android/gms/ads/internal/overlay/o;Lcom/google/android/gms/internal/ads/ei;Lcom/google/android/gms/internal/ads/ek;Lcom/google/android/gms/ads/internal/overlay/t;Lcom/google/android/gms/internal/ads/act;ZILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/yd;)V

    .line 161
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/aem;->a(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    .line 162
    return-void

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aem;->d:Lcom/google/android/gms/internal/ads/dxs;

    goto :goto_0

    .line 159
    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/ads/aeq;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/aem;->a:Lcom/google/android/gms/internal/ads/act;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/aem;->e:Lcom/google/android/gms/ads/internal/overlay/o;

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/ads/aeq;-><init>(Lcom/google/android/gms/internal/ads/act;Lcom/google/android/gms/ads/internal/overlay/o;)V

    goto :goto_1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/aey;)V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->b:Lcom/google/android/gms/internal/ads/ho;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/aey;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ho;->a(Landroid/net/Uri;)Z

    .line 197
    return-void
.end method

.method public final b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V
    .locals 1
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
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->b:Lcom/google/android/gms/internal/ads/ho;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/ho;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 23
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 322
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/aem;->x:Z

    .line 323
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aem;->l:Z

    return v0
.end method

.method public final c(Z)V
    .locals 2

    .prologue
    .line 327
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aem;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 328
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aem;->m:Z

    .line 329
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
    .line 71
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aem;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 72
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aem;->m:Z

    monitor-exit v1

    return v0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c(Lcom/google/android/gms/internal/ads/aey;)Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 198
    const-string/jumbo v2, "AdWebView shouldOverrideUrlLoading: "

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/aey;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 199
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/aey;->b:Landroid/net/Uri;

    .line 200
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aem;->b:Lcom/google/android/gms/internal/ads/ho;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ho;->a(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v8

    .line 229
    :goto_1
    return v0

    .line 198
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_1
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/aem;->k:Z

    if-eqz v2, :cond_6

    .line 203
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 204
    const-string/jumbo v4, "http"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "https"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    move v2, v8

    .line 205
    :goto_2
    if-eqz v2, :cond_6

    .line 206
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->d:Lcom/google/android/gms/internal/ads/dxs;

    if-eqz v0, :cond_4

    .line 207
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->d:Lcom/google/android/gms/internal/ads/dxs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dxs;->e()V

    .line 208
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->t:Lcom/google/android/gms/internal/ads/st;

    if-eqz v0, :cond_3

    .line 209
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->t:Lcom/google/android/gms/internal/ads/st;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/aey;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/st;->a(Ljava/lang/String;)V

    .line 210
    :cond_3
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/aem;->d:Lcom/google/android/gms/internal/ads/dxs;

    :cond_4
    move v0, v1

    .line 211
    goto :goto_1

    :cond_5
    move v2, v1

    .line 204
    goto :goto_2

    .line 212
    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aem;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/act;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->willNotDraw()Z

    move-result v1

    if-nez v1, :cond_b

    .line 213
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aem;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/act;->y()Lcom/google/android/gms/internal/ads/ctl;

    move-result-object v1

    .line 214
    if-eqz v1, :cond_7

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ctl;->a(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 215
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aem;->a:Lcom/google/android/gms/internal/ads/act;

    .line 216
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/act;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/aem;->a:Lcom/google/android/gms/internal/ads/act;

    .line 217
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/act;->getView()Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/aem;->a:Lcom/google/android/gms/internal/ads/act;

    .line 218
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/act;->f()Landroid/app/Activity;

    move-result-object v5

    .line 219
    invoke-virtual {v1, v0, v2, v4, v5}, Lcom/google/android/gms/internal/ads/ctl;->a(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdw; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_7
    move-object v2, v0

    .line 223
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->r:Lcom/google/android/gms/ads/internal/c;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->r:Lcom/google/android/gms/ads/internal/c;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/c;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 224
    :cond_8
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/d;

    const-string/jumbo v1, "android.intent.action.VIEW"

    .line 225
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/overlay/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/aem;->a(Lcom/google/android/gms/ads/internal/overlay/d;)V

    :goto_4
    move v0, v8

    .line 229
    goto/16 :goto_1

    .line 222
    :catch_0
    move-exception v1

    const-string/jumbo v2, "Unable to append parameter to URL: "

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/aey;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    move-object v2, v0

    goto :goto_3

    :cond_9
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5

    .line 227
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->r:Lcom/google/android/gms/ads/internal/c;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/aey;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/c;->a(Ljava/lang/String;)V

    goto :goto_4

    .line 228
    :cond_b
    const-string/jumbo v1, "AdWebView unable to handle URL: "

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/aey;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    goto :goto_4

    :cond_c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public final d(Lcom/google/android/gms/internal/ads/aey;)Landroid/webkit/WebResourceResponse;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 230
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->t:Lcom/google/android/gms/internal/ads/st;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->t:Lcom/google/android/gms/internal/ads/st;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/aey;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/aey;->c:Ljava/util/Map;

    const/4 v4, 0x1

    invoke-interface {v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/st;->a(Ljava/lang/String;Ljava/util/Map;I)V

    .line 233
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/aey;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 234
    const-string/jumbo v2, "mraid.js"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    .line 252
    :goto_0
    if-eqz v0, :cond_4

    .line 270
    :goto_1
    return-object v0

    .line 236
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aem;->m()V

    .line 237
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->t()Lcom/google/android/gms/internal/ads/aei;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aei;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 238
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->E:Lcom/google/android/gms/internal/ads/ect;

    .line 239
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 240
    check-cast v0, Ljava/lang/String;

    .line 248
    :goto_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aem;->a:Lcom/google/android/gms/internal/ads/act;

    .line 249
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/act;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/aem;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/act;->j()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/yd;->a:Ljava/lang/String;

    .line 250
    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/ads/ve;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_0

    .line 241
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->A()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 242
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->D:Lcom/google/android/gms/internal/ads/ect;

    .line 243
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 244
    check-cast v0, Ljava/lang/String;

    goto :goto_2

    .line 245
    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->C:Lcom/google/android/gms/internal/ads/ect;

    .line 246
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 247
    check-cast v0, Ljava/lang/String;

    goto :goto_2

    .line 254
    :cond_4
    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/aey;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aem;->a:Lcom/google/android/gms/internal/ads/act;

    .line 255
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/act;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/aem;->x:Z

    .line 256
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/tq;->a(Ljava/lang/String;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    .line 257
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/aey;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 258
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/aem;->e(Lcom/google/android/gms/internal/ads/aey;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_1

    .line 259
    :cond_5
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/aey;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dvu;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dvu;

    move-result-object v0

    .line 260
    if-eqz v0, :cond_6

    .line 261
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->i()Lcom/google/android/gms/internal/ads/dvl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/dvl;->a(Lcom/google/android/gms/internal/ads/dvu;)Lcom/google/android/gms/internal/ads/dvt;

    move-result-object v2

    .line 262
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dvt;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 263
    new-instance v0, Landroid/webkit/WebResourceResponse;

    const-string/jumbo v1, ""

    const-string/jumbo v3, ""

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dvt;->b()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 268
    :catch_0
    move-exception v0

    .line 269
    :goto_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v1

    const-string/jumbo v2, "AdWebViewClient.interceptRequest"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/ug;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 270
    invoke-static {}, Lcom/google/android/gms/internal/ads/aem;->p()Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto/16 :goto_1

    .line 264
    :cond_6
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/xv;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/google/android/gms/internal/ads/al;->b:Lcom/google/android/gms/internal/ads/ab;

    .line 265
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 266
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/aem;->e(Lcom/google/android/gms/internal/ads/aey;)Landroid/webkit/WebResourceResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto/16 :goto_1

    :cond_7
    move-object v0, v1

    .line 267
    goto/16 :goto_1

    .line 268
    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method public final d(Z)V
    .locals 2

    .prologue
    .line 330
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aem;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 331
    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/aem;->n:Z

    .line 332
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
    .line 74
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aem;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 75
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aem;->n:Z

    monitor-exit v1

    return v0

    .line 76
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
    .line 77
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aem;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 78
    const/4 v0, 0x0

    :try_start_0
    monitor-exit v1

    return-object v0

    .line 79
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
    .line 80
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aem;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 81
    const/4 v0, 0x0

    :try_start_0
    monitor-exit v1

    return-object v0

    .line 82
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
    .line 104
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->t:Lcom/google/android/gms/internal/ads/st;

    .line 105
    if-eqz v0, :cond_0

    .line 106
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aem;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/act;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 107
    invoke-static {v1}, Landroidx/core/h/u;->B(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    const/16 v2, 0xa

    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/gms/internal/ads/aem;->a(Landroid/view/View;Lcom/google/android/gms/internal/ads/st;I)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aem;->n()V

    .line 111
    new-instance v1, Lcom/google/android/gms/internal/ads/aen;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/aen;-><init>(Lcom/google/android/gms/internal/ads/aem;Lcom/google/android/gms/internal/ads/st;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/aem;->y:Landroid/view/View$OnAttachStateChangeListener;

    .line 112
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aem;->y:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_0
.end method

.method public final h()V
    .locals 2

    .prologue
    .line 114
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aem;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 115
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aem;->o:Z

    .line 116
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    iget v0, p0, Lcom/google/android/gms/internal/ads/aem;->w:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/aem;->w:I

    .line 118
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aem;->o()V

    .line 119
    return-void

    .line 116
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
    .line 120
    iget v0, p0, Lcom/google/android/gms/internal/ads/aem;->w:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/aem;->w:I

    .line 121
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aem;->o()V

    .line 122
    return-void
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aem;->v:Z

    .line 124
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aem;->o()V

    .line 125
    return-void
.end method

.method public final k()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 173
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->t:Lcom/google/android/gms/internal/ads/st;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->t:Lcom/google/android/gms/internal/ads/st;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/st;->d()V

    .line 175
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/aem;->t:Lcom/google/android/gms/internal/ads/st;

    .line 176
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aem;->n()V

    .line 177
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->b:Lcom/google/android/gms/internal/ads/ho;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ho;->d()V

    .line 178
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->b:Lcom/google/android/gms/internal/ads/ho;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ho;->a(Ljava/lang/Object;)V

    .line 179
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aem;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 180
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->d:Lcom/google/android/gms/internal/ads/dxs;

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->e:Lcom/google/android/gms/ads/internal/overlay/o;

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->f:Lcom/google/android/gms/internal/ads/aee;

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->g:Lcom/google/android/gms/internal/ads/aeh;

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->h:Lcom/google/android/gms/internal/ads/ei;

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->i:Lcom/google/android/gms/internal/ads/ek;

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->p:Lcom/google/android/gms/ads/internal/overlay/t;

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->j:Lcom/google/android/gms/internal/ads/aeg;

    .line 188
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->s:Lcom/google/android/gms/internal/ads/ni;

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->s:Lcom/google/android/gms/internal/ads/ni;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/ni;->a(Z)V

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->s:Lcom/google/android/gms/internal/ads/ni;

    .line 191
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
    .line 316
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->t:Lcom/google/android/gms/internal/ads/st;

    return-object v0
.end method

.method public final m()V
    .locals 3

    .prologue
    .line 317
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aem;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 318
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aem;->k:Z

    .line 319
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aem;->l:Z

    .line 320
    sget-object v0, Lcom/google/android/gms/internal/ads/yg;->e:Lcom/google/android/gms/internal/ads/crs;

    new-instance v2, Lcom/google/android/gms/internal/ads/ael;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/ael;-><init>(Lcom/google/android/gms/internal/ads/aem;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/crs;->execute(Ljava/lang/Runnable;)V

    .line 321
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->M()Lcom/google/android/gms/internal/ads/dvk;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dvk;->a()Landroid/webkit/WebView;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 85
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/dvk;->a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 86
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/aev;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 87
    return-void
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result v1

    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->rendererPriorityAtExit()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/act;->a(ZI)Z

    move-result v0

    return v0
.end method
