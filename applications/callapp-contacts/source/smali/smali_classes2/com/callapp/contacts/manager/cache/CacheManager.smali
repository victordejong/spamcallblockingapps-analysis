.class public Lcom/callapp/contacts/manager/cache/CacheManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/ManagedLifecycle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/manager/cache/CacheManager$CachedObject;,
        Lcom/callapp/contacts/manager/cache/CacheManager$MemCachedObject;,
        Lcom/callapp/contacts/manager/cache/CacheManager$PhotoUrlCache;
    }
.end annotation


# instance fields
.field protected a:Landroid/os/Handler;

.field public final b:Landroidx/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/e<",
            "Ljava/lang/String;",
            "Lcom/callapp/contacts/manager/cache/CacheManager$MemCachedObject;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Landroidx/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/e<",
            "Ljava/lang/String;",
            "Lcom/callapp/contacts/manager/cache/CacheManager$PhotoUrlCache;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/os/HandlerThread;

.field private final e:Lcom/callapp/contacts/manager/cache/FileStore;

.field private final f:Ljava/lang/Object;

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/callapp/contacts/manager/cache/CacheManager;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/callapp/contacts/manager/cache/CacheManager;->d:Landroid/os/HandlerThread;

    .line 42
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/callapp/contacts/manager/cache/CacheManager;->f:Ljava/lang/Object;

    .line 43
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Lcom/callapp/contacts/manager/cache/CacheManager;->g:Ljava/util/Map;

    .line 121
    new-instance v1, Lcom/callapp/contacts/manager/cache/CacheManager$1;

    .line 1387
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/CallAppApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 1388
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/CallAppApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x100000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1389
    :goto_0
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v5

    if-eqz v3, :cond_1

    .line 1391
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result v5

    :cond_1
    mul-int v5, v5, v4

    .line 1395
    div-int/lit8 v5, v5, 0x5

    const/high16 v2, 0x1900000

    .line 1398
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 121
    invoke-direct {v1, p0, v2}, Lcom/callapp/contacts/manager/cache/CacheManager$1;-><init>(Lcom/callapp/contacts/manager/cache/CacheManager;I)V

    iput-object v1, p0, Lcom/callapp/contacts/manager/cache/CacheManager;->b:Landroidx/b/e;

    .line 128
    new-instance v1, Landroidx/b/e;

    const/16 v2, 0x3e8

    invoke-direct {v1, v2}, Landroidx/b/e;-><init>(I)V

    iput-object v1, p0, Lcom/callapp/contacts/manager/cache/CacheManager;->c:Landroidx/b/e;

    .line 130
    new-instance v1, Lcom/callapp/contacts/manager/cache/FileStore;

    invoke-direct {v1}, Lcom/callapp/contacts/manager/cache/FileStore;-><init>()V

    iput-object v1, p0, Lcom/callapp/contacts/manager/cache/CacheManager;->e:Lcom/callapp/contacts/manager/cache/FileStore;

    .line 132
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 133
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/os/Looper;)V

    .line 134
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/callapp/contacts/manager/cache/CacheManager;->a:Landroid/os/Handler;

    return-void
.end method

.method static a(Ljava/lang/Class;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)I"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 375
    :cond_0
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x4

    if-eq p0, v0, :cond_7

    const-class v0, Ljava/lang/Integer;

    if-ne p0, v0, :cond_1

    goto :goto_2

    .line 376
    :cond_1
    const-class v0, Ljava/lang/String;

    if-ne p0, v0, :cond_2

    .line 377
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 378
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    return p0

    .line 380
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p0, p1, :cond_6

    const-class p1, Ljava/lang/Boolean;

    if-ne p0, p1, :cond_3

    goto :goto_1

    .line 381
    :cond_3
    sget-object p1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p0, p1, :cond_5

    const-class p1, Ljava/lang/Long;

    if-ne p0, p1, :cond_4

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    :goto_0
    const/16 p0, 0x8

    return p0

    :cond_6
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_7
    :goto_2
    return v1
.end method

.method static synthetic a(Lcom/callapp/contacts/manager/cache/CacheManager;)Landroidx/b/e;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/callapp/contacts/manager/cache/CacheManager;->b:Landroidx/b/e;

    return-object p0
.end method

.method private a(ZLjava/lang/String;)Lcom/callapp/contacts/manager/cache/CacheManager$MemCachedObject;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/callapp/contacts/manager/cache/CacheManager$MemCachedObject<",
            "TT;>;"
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/callapp/contacts/manager/cache/CacheManager;->g:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 254
    iget-object v1, p0, Lcom/callapp/contacts/manager/cache/CacheManager;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/cache/CacheManager;->g:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 257
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 258
    iget-object v2, p0, Lcom/callapp/contacts/manager/cache/CacheManager;->g:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 263
    :cond_1
    :goto_0
    monitor-enter v0

    const/4 v1, 0x0

    if-nez p1, :cond_4

    .line 2296
    :try_start_1
    iget-object v2, p0, Lcom/callapp/contacts/manager/cache/CacheManager;->b:Landroidx/b/e;

    invoke-virtual {v2, p2}, Landroidx/b/e;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/manager/cache/CacheManager$MemCachedObject;

    if-eqz v2, :cond_2

    .line 2298
    invoke-virtual {v2}, Lcom/callapp/contacts/manager/cache/CacheManager$MemCachedObject;->getExpirationDate()Ljava/util/Date;

    move-result-object v3

    .line 2299
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2300
    iget-object v2, p0, Lcom/callapp/contacts/manager/cache/CacheManager;->b:Landroidx/b/e;

    invoke-virtual {v2, p2}, Landroidx/b/e;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v2, v1

    :cond_3
    if-eqz v2, :cond_4

    .line 268
    monitor-exit v0

    return-object v2

    .line 273
    :cond_4
    iget-object v2, p0, Lcom/callapp/contacts/manager/cache/CacheManager;->e:Lcom/callapp/contacts/manager/cache/FileStore;

    invoke-static {v2, p2}, Lcom/callapp/contacts/manager/cache/CacheDataManager;->a(Lcom/callapp/contacts/manager/cache/FileStore;Ljava/lang/String;)Lcom/callapp/contacts/manager/cache/CacheManager$MemCachedObject;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 3247
    invoke-virtual {v2}, Lcom/callapp/contacts/manager/cache/CacheManager$MemCachedObject;->getExpirationDate()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 3248
    invoke-virtual {v2}, Lcom/callapp/contacts/manager/cache/CacheManager$MemCachedObject;->getExpirationDate()Ljava/util/Date;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_8

    if-eqz v2, :cond_7

    .line 277
    invoke-static {p2}, Lcom/callapp/contacts/manager/cache/CacheDataManager;->setExpires$eef1da(Ljava/lang/String;)V

    .line 279
    :cond_7
    monitor-exit v0

    return-object v1

    .line 282
    :cond_8
    invoke-virtual {v2}, Lcom/callapp/contacts/manager/cache/CacheManager$MemCachedObject;->getObj()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_9

    .line 284
    invoke-static {p2}, Lcom/callapp/contacts/manager/cache/CacheDataManager;->setExpires$eef1da(Ljava/lang/String;)V

    .line 285
    monitor-exit v0

    return-object v1

    :cond_9
    if-nez p1, :cond_a

    .line 288
    iget-object p1, p0, Lcom/callapp/contacts/manager/cache/CacheManager;->b:Landroidx/b/e;

    invoke-virtual {p1, p2, v2}, Landroidx/b/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    :cond_a
    monitor-exit v0

    return-object v2

    :catchall_1
    move-exception p1

    .line 292
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method private a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Date;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/util/Date;",
            "Z)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-nez p4, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    invoke-static {p1, p2}, Lcom/callapp/contacts/manager/cache/CacheManager;->c(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 191
    iget-object p2, p0, Lcom/callapp/contacts/manager/cache/CacheManager;->b:Landroidx/b/e;

    new-instance v0, Lcom/callapp/contacts/manager/cache/CacheManager$MemCachedObject;

    invoke-static {p1, p3}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/Object;)I

    move-result v1

    int-to-long v3, v1

    invoke-direct {v0, p3, p4, v3, v4}, Lcom/callapp/contacts/manager/cache/CacheManager$MemCachedObject;-><init>(Ljava/lang/Object;Ljava/util/Date;J)V

    invoke-virtual {p2, v2, v0}, Landroidx/b/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p5, :cond_2

    .line 193
    new-instance p2, Lcom/callapp/contacts/manager/cache/CacheManager$3;

    move-object v0, p2

    move-object v1, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/manager/cache/CacheManager$3;-><init>(Lcom/callapp/contacts/manager/cache/CacheManager;Ljava/lang/String;Ljava/util/Date;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 200
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/CallAppApplication;->isUnitTestMode()Z

    move-result p1

    if-nez p1, :cond_1

    .line 201
    iget-object p1, p0, Lcom/callapp/contacts/manager/cache/CacheManager;->a:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 203
    :cond_1
    new-instance p1, Lcom/callapp/contacts/manager/cache/CacheManager$4;

    invoke-direct {p1, p0, p2}, Lcom/callapp/contacts/manager/cache/CacheManager$4;-><init>(Lcom/callapp/contacts/manager/cache/CacheManager;Ljava/lang/Runnable;)V

    .line 208
    invoke-virtual {p1}, Lcom/callapp/contacts/manager/cache/CacheManager$4;->execute()Lcom/callapp/contacts/manager/task/Task;

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/manager/cache/CacheManager;)Lcom/callapp/contacts/manager/cache/FileStore;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/callapp/contacts/manager/cache/CacheManager;->e:Lcom/callapp/contacts/manager/cache/FileStore;

    return-object p0
.end method

.method static synthetic b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 33
    invoke-static {p0, p1}, Lcom/callapp/contacts/manager/cache/CacheManager;->c(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 180
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/callapp/contacts/manager/cache/FileStore;->a(Ljava/lang/Class;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static get()Lcom/callapp/contacts/manager/cache/CacheManager;
    .locals 1

    .line 351
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getCacheManager()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 175
    invoke-virtual {p0, p1, p2, v0}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;Z)V

    return-void
.end method

.method public final a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 153
    invoke-static {v0, v0}, Lcom/callapp/contacts/util/date/DateUtils;->a(II)Ljava/util/Calendar;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Date;Z)V

    return-void
.end method

.method public final a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "TT;I)V"
        }
    .end annotation

    .line 138
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 139
    invoke-virtual/range {v1 .. v6}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;IZ)V

    return-void
.end method

.method public final a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;IZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "TT;IZ)V"
        }
    .end annotation

    const/16 v0, 0xc

    .line 148
    invoke-static {p4, v0}, Lcom/callapp/contacts/util/date/DateUtils;->a(II)Ljava/util/Calendar;

    move-result-object p4

    .line 149
    invoke-virtual {p4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Date;Z)V

    return-void
.end method

.method public final a(Ljava/lang/Class;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/cache/CacheManager;->a:Landroid/os/Handler;

    new-instance v1, Lcom/callapp/contacts/manager/cache/CacheManager$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/callapp/contacts/manager/cache/CacheManager$2;-><init>(Lcom/callapp/contacts/manager/cache/CacheManager;Ljava/lang/Class;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/callapp/contacts/manager/cache/CacheManager;->c:Landroidx/b/e;

    invoke-virtual {v0, p1}, Landroidx/b/e;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/callapp/contacts/manager/cache/CacheManager$PhotoUrlCache;)V
    .locals 1

    .line 360
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    const-class p1, Lcom/callapp/contacts/manager/cache/CacheManager;

    const-string p2, "not caching for empty id"

    invoke-static {p1, p2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/cache/CacheManager;->c:Landroidx/b/e;

    invoke-virtual {v0, p1, p2}, Landroidx/b/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .line 231
    invoke-virtual {p0, p1, p2, p3}, Lcom/callapp/contacts/manager/cache/CacheManager;->c(Ljava/lang/Class;Ljava/lang/String;Z)Lcom/callapp/contacts/manager/cache/CacheManager$CachedObject;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 232
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/manager/cache/CacheManager$CachedObject;->getObj()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "TT;I)V"
        }
    .end annotation

    const/16 v0, 0xc

    .line 143
    invoke-static {p4, v0}, Lcom/callapp/contacts/util/date/DateUtils;->a(II)Ljava/util/Calendar;

    move-result-object p4

    .line 144
    invoke-virtual {p4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Date;Z)V

    return-void
.end method

.method public final c(Ljava/lang/Class;Ljava/lang/String;Z)Lcom/callapp/contacts/manager/cache/CacheManager$CachedObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/callapp/contacts/manager/cache/CacheManager$CachedObject<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    invoke-static {p1, p2}, Lcom/callapp/contacts/manager/cache/CacheManager;->c(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 242
    invoke-direct {p0, p3, p1}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(ZLjava/lang/String;)Lcom/callapp/contacts/manager/cache/CacheManager$MemCachedObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 243
    :cond_1
    new-instance p2, Lcom/callapp/contacts/manager/cache/CacheManager$CachedObject;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/cache/CacheManager$MemCachedObject;->getObj()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/cache/CacheManager$MemCachedObject;->getExpirationDate()Ljava/util/Date;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/callapp/contacts/manager/cache/CacheManager$CachedObject;-><init>(Ljava/lang/Object;Ljava/util/Date;)V

    return-object p2

    :cond_2
    :goto_0
    return-object v0
.end method

.method public destroy()V
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/callapp/contacts/manager/cache/CacheManager;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 328
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 329
    iget-object v0, p0, Lcom/callapp/contacts/manager/cache/CacheManager;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    return-void
.end method

.method public init()V
    .locals 0

    return-void
.end method
