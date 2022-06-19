.class public final Lcom/google/android/gms/internal/ads/np2;
.super Lcom/google/android/gms/internal/ads/kp2;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/mp2;

.field private final c:Lcom/google/android/gms/internal/ads/lp2;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/xp2;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/google/android/gms/internal/ads/fr2;

.field private f:Lcom/google/android/gms/internal/ads/iq2;

.field private g:Z

.field private h:Z

.field private final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^[a-zA-Z0-9 ]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/np2;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/lp2;Lcom/google/android/gms/internal/ads/mp2;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/kp2;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/np2;->d:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/np2;->g:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/np2;->h:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/np2;->c:Lcom/google/android/gms/internal/ads/lp2;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/np2;->b:Lcom/google/android/gms/internal/ads/mp2;

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/np2;->i:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/np2;->k(Landroid/view/View;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/mp2;->i()Lcom/google/android/gms/internal/ads/zzfgf;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/google/android/gms/internal/ads/zzfgf;->d:Lcom/google/android/gms/internal/ads/zzfgf;

    if-eq v1, v2, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/mp2;->i()Lcom/google/android/gms/internal/ads/zzfgf;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfgf;->f:Lcom/google/android/gms/internal/ads/zzfgf;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/lq2;

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/mp2;->e()Ljava/util/Map;

    move-result-object p2

    .line 7
    invoke-direct {v1, p2, v0}, Lcom/google/android/gms/internal/ads/lq2;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/np2;->f:Lcom/google/android/gms/internal/ads/iq2;

    goto :goto_1

    .line 8
    :cond_1
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/ads/jq2;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/mp2;->f()Landroid/webkit/WebView;

    move-result-object p2

    .line 9
    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/jq2;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/np2;->f:Lcom/google/android/gms/internal/ads/iq2;

    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/np2;->f:Lcom/google/android/gms/internal/ads/iq2;

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/iq2;->a()V

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/up2;->a()Lcom/google/android/gms/internal/ads/up2;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/up2;->b(Lcom/google/android/gms/internal/ads/np2;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/np2;->f:Lcom/google/android/gms/internal/ads/iq2;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aq2;->a()Lcom/google/android/gms/internal/ads/aq2;

    move-result-object v0

    .line 12
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/iq2;->d()Landroid/webkit/WebView;

    move-result-object p2

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/lp2;->b()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/internal/ads/aq2;->b(Landroid/webkit/WebView;Lorg/json/JSONObject;)V

    return-void
.end method

.method private final k(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/fr2;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/fr2;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/np2;->e:Lcom/google/android/gms/internal/ads/fr2;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/np2;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/np2;->g:Z

    invoke-static {}, Lcom/google/android/gms/internal/ads/up2;->a()Lcom/google/android/gms/internal/ads/up2;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/up2;->c(Lcom/google/android/gms/internal/ads/np2;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/bq2;->a()Lcom/google/android/gms/internal/ads/bq2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bq2;->f()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/np2;->f:Lcom/google/android/gms/internal/ads/iq2;

    .line 3
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iq2;->j(F)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/np2;->f:Lcom/google/android/gms/internal/ads/iq2;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/np2;->b:Lcom/google/android/gms/internal/ads/mp2;

    .line 4
    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/internal/ads/iq2;->h(Lcom/google/android/gms/internal/ads/np2;Lcom/google/android/gms/internal/ads/mp2;)V

    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/np2;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/np2;->i()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/np2;->k(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/np2;->f:Lcom/google/android/gms/internal/ads/iq2;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/iq2;->k()V

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/up2;->a()Lcom/google/android/gms/internal/ads/up2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/up2;->e()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 6
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/np2;

    if-eq v1, p0, :cond_2

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/np2;->i()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 8
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/np2;->e:Lcom/google/android/gms/internal/ads/fr2;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/np2;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/np2;->e:Lcom/google/android/gms/internal/ads/fr2;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/np2;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/np2;->d:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/np2;->h:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/np2;->f:Lcom/google/android/gms/internal/ads/iq2;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aq2;->a()Lcom/google/android/gms/internal/ads/aq2;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/iq2;->d()Landroid/webkit/WebView;

    move-result-object v0

    .line 4
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/aq2;->d(Landroid/webkit/WebView;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/up2;->a()Lcom/google/android/gms/internal/ads/up2;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/up2;->d(Lcom/google/android/gms/internal/ads/np2;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/np2;->f:Lcom/google/android/gms/internal/ads/iq2;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/iq2;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/np2;->f:Lcom/google/android/gms/internal/ads/iq2;

    return-void
.end method

.method public final d(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfgi;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/np2;->h:Z

    if-nez p3, :cond_4

    sget-object p3, Lcom/google/android/gms/internal/ads/np2;->a:Ljava/util/regex/Pattern;

    const-string v0, "Ad overlay"

    invoke-virtual {p3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/regex/Matcher;->matches()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 2
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/np2;->d:Ljava/util/List;

    .line 3
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/xp2;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/xp2;->a()Lcom/google/android/gms/internal/ads/fr2;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/np2;->d:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/internal/ads/xp2;

    .line 5
    invoke-direct {v1, p1, p2, v0}, Lcom/google/android/gms/internal/ads/xp2;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfgi;Ljava/lang/String;)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void

    .line 6
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "FriendlyObstruction has improperly formatted detailed reason"

    .line 7
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-void
.end method

.method public final f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/xp2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/np2;->d:Ljava/util/List;

    return-object v0
.end method

.method public final g()Lcom/google/android/gms/internal/ads/iq2;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/np2;->f:Lcom/google/android/gms/internal/ads/iq2;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/np2;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/np2;->e:Lcom/google/android/gms/internal/ads/fr2;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/np2;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/np2;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
