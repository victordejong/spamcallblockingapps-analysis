.class public final Lcom/iab/omid/library/pubnativenet/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iab/omid/library/pubnativenet/b/b$a;
    }
.end annotation


# static fields
.field private static d:Lcom/iab/omid/library/pubnativenet/b/b;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Lcom/iab/omid/library/pubnativenet/b/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iab/omid/library/pubnativenet/b/b;

    invoke-direct {v0}, Lcom/iab/omid/library/pubnativenet/b/b;-><init>()V

    sput-object v0, Lcom/iab/omid/library/pubnativenet/b/b;->d:Lcom/iab/omid/library/pubnativenet/b/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/iab/omid/library/pubnativenet/b/b;
    .locals 1

    sget-object v0, Lcom/iab/omid/library/pubnativenet/b/b;->d:Lcom/iab/omid/library/pubnativenet/b/b;

    return-object v0
.end method

.method private a(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/iab/omid/library/pubnativenet/b/b;->b:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/iab/omid/library/pubnativenet/b/b;->b:Z

    iget-boolean v0, p0, Lcom/iab/omid/library/pubnativenet/b/b;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/iab/omid/library/pubnativenet/b/b;->b()V

    iget-object v0, p0, Lcom/iab/omid/library/pubnativenet/b/b;->c:Lcom/iab/omid/library/pubnativenet/b/b$a;

    if-eqz v0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {v0, p1}, Lcom/iab/omid/library/pubnativenet/b/b$a;->a(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    iget-boolean v0, p0, Lcom/iab/omid/library/pubnativenet/b/b;->b:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {}, Lcom/iab/omid/library/pubnativenet/b/a;->a()Lcom/iab/omid/library/pubnativenet/b/a;

    move-result-object v1

    .line 3000
    iget-object v1, v1, Lcom/iab/omid/library/pubnativenet/b/a;->a:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iab/omid/library/pubnativenet/adsession/k;

    .line 4000
    iget-object v2, v2, Lcom/iab/omid/library/pubnativenet/adsession/k;->c:Lcom/iab/omid/library/pubnativenet/f/a;

    invoke-virtual {v2, v0}, Lcom/iab/omid/library/pubnativenet/f/a;->a(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 6

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt p1, v0, :cond_4

    .line 1000
    new-instance p1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {p1}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    invoke-static {p1}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    iget p1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v0, 0x64

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {}, Lcom/iab/omid/library/pubnativenet/b/a;->a()Lcom/iab/omid/library/pubnativenet/b/a;

    move-result-object v0

    .line 2000
    iget-object v0, v0, Lcom/iab/omid/library/pubnativenet/b/a;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x1

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iab/omid/library/pubnativenet/adsession/k;

    invoke-virtual {v4}, Lcom/iab/omid/library/pubnativenet/adsession/k;->f()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/iab/omid/library/pubnativenet/adsession/k;->e()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->hasWindowFocus()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-direct {p0, v1}, Lcom/iab/omid/library/pubnativenet/b/b;->a(Z)V

    :cond_4
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/iab/omid/library/pubnativenet/b/b;->a(Z)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
