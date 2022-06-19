.class public final Lcom/iab/omid/library/mopub/b/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iab/omid/library/mopub/a/c;
.implements Lcom/iab/omid/library/mopub/b/b$a;


# static fields
.field private static c:Lcom/iab/omid/library/mopub/b/f;


# instance fields
.field public a:F

.field public b:Lcom/iab/omid/library/mopub/a/d;

.field private final d:Lcom/iab/omid/library/mopub/a/e;

.field private final e:Lcom/iab/omid/library/mopub/a/b;

.field private f:Lcom/iab/omid/library/mopub/b/a;


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/mopub/a/e;Lcom/iab/omid/library/mopub/a/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/iab/omid/library/mopub/b/f;->a:F

    iput-object p1, p0, Lcom/iab/omid/library/mopub/b/f;->d:Lcom/iab/omid/library/mopub/a/e;

    iput-object p2, p0, Lcom/iab/omid/library/mopub/b/f;->e:Lcom/iab/omid/library/mopub/a/b;

    return-void
.end method

.method public static a()Lcom/iab/omid/library/mopub/b/f;
    .locals 3

    sget-object v0, Lcom/iab/omid/library/mopub/b/f;->c:Lcom/iab/omid/library/mopub/b/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iab/omid/library/mopub/a/b;

    invoke-direct {v0}, Lcom/iab/omid/library/mopub/a/b;-><init>()V

    new-instance v1, Lcom/iab/omid/library/mopub/a/e;

    invoke-direct {v1}, Lcom/iab/omid/library/mopub/a/e;-><init>()V

    new-instance v2, Lcom/iab/omid/library/mopub/b/f;

    invoke-direct {v2, v1, v0}, Lcom/iab/omid/library/mopub/b/f;-><init>(Lcom/iab/omid/library/mopub/a/e;Lcom/iab/omid/library/mopub/a/b;)V

    sput-object v2, Lcom/iab/omid/library/mopub/b/f;->c:Lcom/iab/omid/library/mopub/b/f;

    :cond_0
    sget-object v0, Lcom/iab/omid/library/mopub/b/f;->c:Lcom/iab/omid/library/mopub/b/f;

    return-object v0
.end method


# virtual methods
.method public final a(F)V
    .locals 2

    iput p1, p0, Lcom/iab/omid/library/mopub/b/f;->a:F

    .line 3000
    iget-object v0, p0, Lcom/iab/omid/library/mopub/b/f;->f:Lcom/iab/omid/library/mopub/b/a;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/iab/omid/library/mopub/b/a;->a()Lcom/iab/omid/library/mopub/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/iab/omid/library/mopub/b/f;->f:Lcom/iab/omid/library/mopub/b/a;

    :cond_0
    iget-object v0, p0, Lcom/iab/omid/library/mopub/b/f;->f:Lcom/iab/omid/library/mopub/b/a;

    .line 4000
    iget-object v0, v0, Lcom/iab/omid/library/mopub/b/a;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iab/omid/library/mopub/adsession/k;

    .line 5000
    iget-object v1, v1, Lcom/iab/omid/library/mopub/adsession/k;->c:Lcom/iab/omid/library/mopub/f/a;

    invoke-virtual {v1, p1}, Lcom/iab/omid/library/mopub/f/a;->a(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/iab/omid/library/mopub/g/a;->a()Lcom/iab/omid/library/mopub/g/a;

    .line 1000
    invoke-static {}, Lcom/iab/omid/library/mopub/g/a;->b()V

    return-void

    :cond_0
    invoke-static {}, Lcom/iab/omid/library/mopub/g/a;->a()Lcom/iab/omid/library/mopub/g/a;

    .line 2000
    invoke-static {}, Lcom/iab/omid/library/mopub/g/a;->c()V

    return-void
.end method
