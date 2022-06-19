.class Lcom/facebook/a/b/c;
.super Ljava/lang/Object;
.source "CodelessMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/a/b/c$b;,
        Lcom/facebook/a/b/c$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static g:Lcom/facebook/a/b/c;


# instance fields
.field private final b:Landroid/os/Handler;

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/a/b/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/facebook/a/b/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/b/c;->a:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/a/b/c;->g:Lcom/facebook/a/b/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/a/b/c;->b:Landroid/os/Handler;

    .line 74
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/a/b/c;->c:Ljava/util/Set;

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/a/b/c;->d:Ljava/util/Set;

    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/a/b/c;->e:Ljava/util/HashSet;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/a/b/c;->f:Ljava/util/HashMap;

    .line 78
    return-void
.end method

.method public static a(Lcom/facebook/a/b/a/a;Landroid/view/View;Landroid/view/View;)Landroid/os/Bundle;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 125
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 127
    if-nez p0, :cond_0

    move-object v0, v7

    .line 173
    :goto_0
    return-object v0

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/a/b/a/a;->b()Ljava/util/List;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_5

    .line 133
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/facebook/a/b/a/b;

    .line 134
    iget-object v0, v6, Lcom/facebook/a/b/a/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, v6, Lcom/facebook/a/b/a/b;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 135
    iget-object v0, v6, Lcom/facebook/a/b/a/b;->a:Ljava/lang/String;

    iget-object v1, v6, Lcom/facebook/a/b/a/b;->b:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 136
    :cond_2
    iget-object v0, v6, Lcom/facebook/a/b/a/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 138
    iget-object v0, v6, Lcom/facebook/a/b/a/b;->d:Ljava/lang/String;

    .line 139
    const-string/jumbo v1, "relative"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 140
    iget-object v2, v6, Lcom/facebook/a/b/a/b;->c:Ljava/util/List;

    .line 146
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p2

    .line 140
    invoke-static/range {v0 .. v5}, Lcom/facebook/a/b/c$b;->a(Lcom/facebook/a/b/a/a;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 159
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/b/c$a;

    .line 160
    invoke-virtual {v0}, Lcom/facebook/a/b/c$a;->a()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 163
    invoke-virtual {v0}, Lcom/facebook/a/b/c$a;->a()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/a/b/a/f;->e(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 165
    iget-object v1, v6, Lcom/facebook/a/b/a/b;->a:Ljava/lang/String;

    invoke-virtual {v7, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 149
    :cond_4
    iget-object v2, v6, Lcom/facebook/a/b/a/b;->c:Ljava/util/List;

    .line 155
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    .line 149
    invoke-static/range {v0 .. v5}, Lcom/facebook/a/b/c$b;->a(Lcom/facebook/a/b/a/a;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v0, v7

    .line 173
    goto/16 :goto_0
.end method

.method public static declared-synchronized a()Lcom/facebook/a/b/c;
    .locals 2

    .prologue
    .line 81
    const-class v1, Lcom/facebook/a/b/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/a/b/c;->g:Lcom/facebook/a/b/c;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/facebook/a/b/c;

    invoke-direct {v0}, Lcom/facebook/a/b/c;-><init>()V

    sput-object v0, Lcom/facebook/a/b/c;->g:Lcom/facebook/a/b/c;

    .line 84
    :cond_0
    sget-object v0, Lcom/facebook/a/b/c;->g:Lcom/facebook/a/b/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/facebook/a/b/c;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/facebook/a/b/c;->d()V

    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/facebook/a/b/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 177
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/facebook/a/b/c;->d()V

    .line 188
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/facebook/a/b/c;->b:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/a/b/c$1;

    invoke-direct {v1, p0}, Lcom/facebook/a/b/c$1;-><init>(Lcom/facebook/a/b/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private d()V
    .locals 6

    .prologue
    .line 191
    iget-object v0, p0, Lcom/facebook/a/b/c;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 192
    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 194
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 195
    new-instance v3, Lcom/facebook/a/b/c$b;

    iget-object v4, p0, Lcom/facebook/a/b/c;->b:Landroid/os/Handler;

    iget-object v5, p0, Lcom/facebook/a/b/c;->e:Ljava/util/HashSet;

    invoke-direct {v3, v2, v4, v5, v0}, Lcom/facebook/a/b/c$b;-><init>(Landroid/view/View;Landroid/os/Handler;Ljava/util/HashSet;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/facebook/a/b/c;->d:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 200
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 88
    invoke-static {}, Lcom/facebook/internal/p;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 92
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v1, "Can\'t add activity to CodelessMatcher on non-UI thread"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/facebook/a/b/c;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lcom/facebook/a/b/c;->e:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 96
    iget-object v0, p0, Lcom/facebook/a/b/c;->f:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/facebook/a/b/c;->f:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iput-object v0, p0, Lcom/facebook/a/b/c;->e:Ljava/util/HashSet;

    .line 99
    :cond_2
    invoke-direct {p0}, Lcom/facebook/a/b/c;->c()V

    goto :goto_0
.end method

.method public b(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 103
    invoke-static {}, Lcom/facebook/internal/p;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 107
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v1, "Can\'t remove activity from CodelessMatcher on non-UI thread"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/facebook/a/b/c;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lcom/facebook/a/b/c;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 113
    iget-object v1, p0, Lcom/facebook/a/b/c;->f:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/a/b/c;->e:Ljava/util/HashSet;

    .line 114
    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 113
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/facebook/a/b/c;->e:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    goto :goto_0
.end method

.method public c(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/facebook/a/b/c;->f:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    return-void
.end method
