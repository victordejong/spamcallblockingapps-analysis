.class Lcom/facebook/appevents/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/b/c$b;,
        Lcom/facebook/appevents/b/c$a;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/String; = "com.facebook.appevents.b.c"

.field private static g:Lcom/facebook/appevents/b/c;


# instance fields
.field final a:Landroid/os/Handler;

.field b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/facebook/appevents/b/c$b;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/appevents/b/c;->a:Landroid/os/Handler;

    .line 76
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/appevents/b/c;->b:Ljava/util/Set;

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/appevents/b/c;->c:Ljava/util/Set;

    .line 78
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/appevents/b/c;->d:Ljava/util/HashSet;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/appevents/b/c;->e:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Lcom/facebook/appevents/b/a/a;Landroid/view/View;Landroid/view/View;)Landroid/os/Bundle;
    .locals 12

    const-class v0, Lcom/facebook/appevents/b/c;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 127
    :cond_0
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-nez p0, :cond_1

    return-object v1

    .line 1119
    :cond_1
    iget-object v3, p0, Lcom/facebook/appevents/b/a/a;->c:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 135
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/appevents/b/a/b;

    .line 136
    iget-object v5, v4, Lcom/facebook/appevents/b/a/b;->b:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, v4, Lcom/facebook/appevents/b/a/b;->b:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 137
    iget-object v5, v4, Lcom/facebook/appevents/b/a/b;->a:Ljava/lang/String;

    iget-object v4, v4, Lcom/facebook/appevents/b/a/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_3
    iget-object v5, v4, Lcom/facebook/appevents/b/a/b;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 140
    iget-object v5, v4, Lcom/facebook/appevents/b/a/b;->d:Ljava/lang/String;

    const-string v6, "relative"

    .line 141
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 142
    iget-object v8, v4, Lcom/facebook/appevents/b/a/b;->c:Ljava/util/List;

    const/4 v9, 0x0

    const/4 v10, -0x1

    .line 144
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    move-object v6, p0

    move-object v7, p2

    .line 143
    invoke-static/range {v6 .. v11}, Lcom/facebook/appevents/b/c$b;->a(Lcom/facebook/appevents/b/a/a;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;

    move-result-object v5

    goto :goto_1

    .line 146
    :cond_4
    iget-object v7, v4, Lcom/facebook/appevents/b/a/b;->c:Ljava/util/List;

    const/4 v8, 0x0

    const/4 v9, -0x1

    .line 148
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    move-object v5, p0

    move-object v6, p1

    .line 147
    invoke-static/range {v5 .. v10}, Lcom/facebook/appevents/b/c$b;->a(Lcom/facebook/appevents/b/a/a;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 151
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/appevents/b/c$a;

    .line 152
    invoke-virtual {v6}, Lcom/facebook/appevents/b/c$a;->a()Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 155
    invoke-virtual {v6}, Lcom/facebook/appevents/b/c$a;->a()Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lcom/facebook/appevents/b/a/f;->e(Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    .line 156
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 157
    iget-object v4, v4, Lcom/facebook/appevents/b/a/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_6
    return-object v1

    :catchall_0
    move-exception p0

    .line 165
    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static declared-synchronized a()Lcom/facebook/appevents/b/c;
    .locals 3

    const-class v0, Lcom/facebook/appevents/b/c;

    monitor-enter v0

    :try_start_0
    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v2

    .line 83
    :cond_0
    :try_start_1
    sget-object v1, Lcom/facebook/appevents/b/c;->g:Lcom/facebook/appevents/b/c;

    if-nez v1, :cond_1

    .line 84
    new-instance v1, Lcom/facebook/appevents/b/c;

    invoke-direct {v1}, Lcom/facebook/appevents/b/c;-><init>()V

    sput-object v1, Lcom/facebook/appevents/b/c;->g:Lcom/facebook/appevents/b/c;

    .line 86
    :cond_1
    sget-object v1, Lcom/facebook/appevents/b/c;->g:Lcom/facebook/appevents/b/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-static {v1, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v2

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lcom/facebook/appevents/b/c;)V
    .locals 2

    const-class v0, Lcom/facebook/appevents/b/c;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 61
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/appevents/b/c;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/facebook/appevents/b/c;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 61
    :cond_0
    :try_start_0
    sget-object v0, Lcom/facebook/appevents/b/c;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method


# virtual methods
.method b()V
    .locals 6

    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 183
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/appevents/b/c;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 185
    invoke-static {v1}, Lcom/facebook/appevents/f/b;->a(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v2

    .line 186
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 187
    new-instance v3, Lcom/facebook/appevents/b/c$b;

    iget-object v4, p0, Lcom/facebook/appevents/b/c;->a:Landroid/os/Handler;

    iget-object v5, p0, Lcom/facebook/appevents/b/c;->d:Ljava/util/HashSet;

    invoke-direct {v3, v2, v4, v5, v1}, Lcom/facebook/appevents/b/c$b;-><init>(Landroid/view/View;Landroid/os/Handler;Ljava/util/HashSet;Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lcom/facebook/appevents/b/c;->c:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 191
    invoke-static {v0, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
