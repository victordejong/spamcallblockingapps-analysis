.class final Lcom/google/android/play/core/splitinstall/ak;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/splitinstall/a;


# instance fields
.field final a:Lcom/google/android/play/core/splitinstall/ah;

.field private final b:Lcom/google/android/play/core/splitinstall/n;

.field private final c:Lcom/google/android/play/core/splitinstall/ae;

.field private final d:Lcom/google/android/play/core/splitinstall/o;

.field private final e:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitinstall/n;Lcom/google/android/play/core/splitinstall/ah;Lcom/google/android/play/core/splitinstall/ae;Lcom/google/android/play/core/splitinstall/o;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/play/core/splitinstall/ak;->e:Landroid/os/Handler;

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/ak;->b:Lcom/google/android/play/core/splitinstall/n;

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/ak;->a:Lcom/google/android/play/core/splitinstall/ah;

    iput-object p3, p0, Lcom/google/android/play/core/splitinstall/ak;->c:Lcom/google/android/play/core/splitinstall/ae;

    iput-object p4, p0, Lcom/google/android/play/core/splitinstall/ak;->d:Lcom/google/android/play/core/splitinstall/o;

    return-void
.end method

.method static a(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final a(I)Lcom/google/android/play/core/tasks/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/play/core/tasks/d<",
            "Lcom/google/android/play/core/splitinstall/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/ak;->b:Lcom/google/android/play/core/splitinstall/n;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/splitinstall/n;->a(I)Lcom/google/android/play/core/tasks/d;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/android/play/core/splitinstall/b;)Lcom/google/android/play/core/tasks/d;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/splitinstall/b;",
            ")",
            "Lcom/google/android/play/core/tasks/d<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1000
    iget-object v0, p1, Lcom/google/android/play/core/splitinstall/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v1, 0x15

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 7000
    :cond_0
    new-instance p1, Lcom/google/android/play/core/splitinstall/SplitInstallException;

    const/4 v0, -0x5

    invoke-direct {p1, v0}, Lcom/google/android/play/core/splitinstall/SplitInstallException;-><init>(I)V

    invoke-static {p1}, Lcom/google/android/play/core/tasks/f;->a(Ljava/lang/Exception;)Lcom/google/android/play/core/tasks/d;

    move-result-object p1

    return-object p1

    .line 2000
    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/google/android/play/core/splitinstall/b;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/play/core/splitinstall/ak;->c:Lcom/google/android/play/core/splitinstall/ae;

    invoke-virtual {v2}, Lcom/google/android/play/core/splitinstall/ae;->b()Ljava/util/Set;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 7000
    :cond_2
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {v2, v3}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3000
    :goto_2
    iget-object v0, p1, Lcom/google/android/play/core/splitinstall/b;->a:Ljava/util/List;

    .line 4000
    iget-object v2, p0, Lcom/google/android/play/core/splitinstall/ak;->c:Lcom/google/android/play/core/splitinstall/ae;

    invoke-virtual {v2}, Lcom/google/android/play/core/splitinstall/ae;->a()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_4

    .line 5000
    iget-object v0, p1, Lcom/google/android/play/core/splitinstall/b;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/ak;->d:Lcom/google/android/play/core/splitinstall/o;

    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/o;->a()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/ak;->e:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/play/core/splitinstall/ai;

    invoke-direct {v1, p0, p1}, Lcom/google/android/play/core/splitinstall/ai;-><init>(Lcom/google/android/play/core/splitinstall/ak;Lcom/google/android/play/core/splitinstall/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/play/core/tasks/f;->a(Ljava/lang/Object;)Lcom/google/android/play/core/tasks/d;

    move-result-object p1

    return-object p1

    :cond_5
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/ak;->b:Lcom/google/android/play/core/splitinstall/n;

    .line 6000
    iget-object v1, p1, Lcom/google/android/play/core/splitinstall/b;->a:Ljava/util/List;

    .line 7000
    iget-object p1, p1, Lcom/google/android/play/core/splitinstall/b;->b:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/play/core/splitinstall/ak;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/play/core/splitinstall/n;->a(Ljava/util/Collection;Ljava/util/Collection;)Lcom/google/android/play/core/tasks/d;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/ak;->c:Lcom/google/android/play/core/splitinstall/ae;

    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/ae;->b()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final a(Lcom/google/android/play/core/splitinstall/c;Landroid/app/Activity;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/play/core/splitinstall/aj;

    invoke-direct {v0, p2}, Lcom/google/android/play/core/splitinstall/aj;-><init>(Landroid/app/Activity;)V

    .line 8000
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/c;->b()I

    move-result p2

    const/16 v1, 0x8

    if-ne p2, v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/c;->h()Landroid/app/PendingIntent;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/c;->h()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Lcom/google/android/play/core/common/a;->a(Landroid/content/IntentSender;I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
