.class public final Lcom/iab/omid/library/mopub/b/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iab/omid/library/mopub/b/b$a;
    }
.end annotation


# static fields
.field private static f:Lcom/iab/omid/library/mopub/b/b;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/content/BroadcastReceiver;

.field public c:Z

.field public d:Z

.field public e:Lcom/iab/omid/library/mopub/b/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iab/omid/library/mopub/b/b;

    invoke-direct {v0}, Lcom/iab/omid/library/mopub/b/b;-><init>()V

    sput-object v0, Lcom/iab/omid/library/mopub/b/b;->f:Lcom/iab/omid/library/mopub/b/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/iab/omid/library/mopub/b/b;
    .locals 1

    sget-object v0, Lcom/iab/omid/library/mopub/b/b;->f:Lcom/iab/omid/library/mopub/b/b;

    return-object v0
.end method

.method static synthetic a(Lcom/iab/omid/library/mopub/b/b;Z)V
    .locals 1

    .line 6000
    iget-boolean v0, p0, Lcom/iab/omid/library/mopub/b/b;->d:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/iab/omid/library/mopub/b/b;->d:Z

    iget-boolean p1, p0, Lcom/iab/omid/library/mopub/b/b;->c:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/iab/omid/library/mopub/b/b;->c()V

    iget-object p1, p0, Lcom/iab/omid/library/mopub/b/b;->e:Lcom/iab/omid/library/mopub/b/b$a;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/iab/omid/library/mopub/b/b;->b()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/iab/omid/library/mopub/b/b$a;->a(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iab/omid/library/mopub/b/b;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .locals 8

    iget-boolean v0, p0, Lcom/iab/omid/library/mopub/b/b;->d:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {}, Lcom/iab/omid/library/mopub/b/a;->a()Lcom/iab/omid/library/mopub/b/a;

    move-result-object v2

    .line 1000
    iget-object v2, v2, Lcom/iab/omid/library/mopub/b/a;->a:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iab/omid/library/mopub/adsession/k;

    .line 2000
    iget-object v3, v3, Lcom/iab/omid/library/mopub/adsession/k;->c:Lcom/iab/omid/library/mopub/f/a;

    .line 4000
    iget-object v4, v3, Lcom/iab/omid/library/mopub/f/a;->a:Lcom/iab/omid/library/mopub/e/b;

    invoke-virtual {v4}, Lcom/iab/omid/library/mopub/e/b;->get()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_0

    if-eqz v0, :cond_2

    const-string v4, "foregrounded"

    goto :goto_2

    :cond_2
    const-string v4, "backgrounded"

    .line 3000
    :goto_2
    invoke-static {}, Lcom/iab/omid/library/mopub/b/e;->a()Lcom/iab/omid/library/mopub/b/e;

    move-result-object v6

    invoke-virtual {v3}, Lcom/iab/omid/library/mopub/f/a;->c()Landroid/webkit/WebView;

    move-result-object v3

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v4, v7, v5

    const-string v4, "setState"

    .line 5000
    invoke-virtual {v6, v3, v4, v7}, Lcom/iab/omid/library/mopub/b/e;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-void
.end method
