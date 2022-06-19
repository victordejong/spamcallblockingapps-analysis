.class public final Lcom/iab/omid/library/mopub/adsession/c;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/iab/omid/library/mopub/adsession/i;

.field final b:Landroid/webkit/WebView;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iab/omid/library/mopub/adsession/j;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/iab/omid/library/mopub/adsession/j;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Lcom/iab/omid/library/mopub/adsession/d;


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/mopub/adsession/i;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/iab/omid/library/mopub/adsession/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iab/omid/library/mopub/adsession/i;",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/iab/omid/library/mopub/adsession/j;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/iab/omid/library/mopub/adsession/d;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/mopub/adsession/c;->c:Ljava/util/List;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/iab/omid/library/mopub/adsession/c;->d:Ljava/util/Map;

    iput-object p1, p0, Lcom/iab/omid/library/mopub/adsession/c;->a:Lcom/iab/omid/library/mopub/adsession/i;

    iput-object p2, p0, Lcom/iab/omid/library/mopub/adsession/c;->b:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/iab/omid/library/mopub/adsession/c;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/iab/omid/library/mopub/adsession/c;->h:Lcom/iab/omid/library/mopub/adsession/d;

    if-eqz p4, :cond_0

    invoke-interface {v0, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/iab/omid/library/mopub/adsession/j;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/iab/omid/library/mopub/adsession/c;->d:Ljava/util/Map;

    invoke-interface {p4, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p5, p0, Lcom/iab/omid/library/mopub/adsession/c;->g:Ljava/lang/String;

    iput-object p6, p0, Lcom/iab/omid/library/mopub/adsession/c;->f:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/iab/omid/library/mopub/adsession/i;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/mopub/adsession/c;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iab/omid/library/mopub/adsession/i;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/iab/omid/library/mopub/adsession/j;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/iab/omid/library/mopub/adsession/c;"
        }
    .end annotation

    const-string v0, "Partner is null"

    invoke-static {p0, v0}, Lcom/iab/omid/library/mopub/d/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "OM SDK JS script content is null"

    invoke-static {p1, v0}, Lcom/iab/omid/library/mopub/d/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "VerificationScriptResources is null"

    invoke-static {p2, v0}, Lcom/iab/omid/library/mopub/d/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CustomReferenceData is greater than 256 characters"

    invoke-static {p4, v0}, Lcom/iab/omid/library/mopub/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/iab/omid/library/mopub/adsession/c;

    sget-object v8, Lcom/iab/omid/library/mopub/adsession/d;->NATIVE:Lcom/iab/omid/library/mopub/adsession/d;

    const/4 v3, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/iab/omid/library/mopub/adsession/c;-><init>(Lcom/iab/omid/library/mopub/adsession/i;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/iab/omid/library/mopub/adsession/d;)V

    return-object v0
.end method
