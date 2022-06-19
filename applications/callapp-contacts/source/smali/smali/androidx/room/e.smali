.class public final Landroidx/room/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/e$d;,
        Landroidx/room/e$a;,
        Landroidx/room/e$b;,
        Landroidx/room/e$c;
    }
.end annotation


# static fields
.field private static final j:[Ljava/lang/String;


# instance fields
.field final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final b:[Ljava/lang/String;

.field final c:Landroidx/room/h;

.field d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field volatile e:Z

.field volatile f:Landroidx/sqlite/db/e;

.field final g:Landroidx/a/a/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/a/a/b/b<",
            "Landroidx/room/e$b;",
            "Landroidx/room/e$c;",
            ">;"
        }
    .end annotation
.end field

.field h:Landroidx/room/f;

.field i:Ljava/lang/Runnable;

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private l:Landroidx/room/e$a;

.field private final m:Landroidx/room/d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "UPDATE"

    const-string v1, "DELETE"

    const-string v2, "INSERT"

    .line 65
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/room/e;->j:[Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Landroidx/room/h;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/h;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/room/e;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 97
    iput-boolean v1, p0, Landroidx/room/e;->e:Z

    .line 107
    new-instance v0, Landroidx/a/a/b/b;

    invoke-direct {v0}, Landroidx/a/a/b/b;-><init>()V

    iput-object v0, p0, Landroidx/room/e;->g:Landroidx/a/a/b/b;

    .line 357
    new-instance v0, Landroidx/room/e$1;

    invoke-direct {v0, p0}, Landroidx/room/e$1;-><init>(Landroidx/room/e;)V

    iput-object v0, p0, Landroidx/room/e;->i:Ljava/lang/Runnable;

    .line 134
    iput-object p1, p0, Landroidx/room/e;->c:Landroidx/room/h;

    .line 135
    new-instance v0, Landroidx/room/e$a;

    array-length v2, p4

    invoke-direct {v0, v2}, Landroidx/room/e$a;-><init>(I)V

    iput-object v0, p0, Landroidx/room/e;->l:Landroidx/room/e$a;

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/room/e;->a:Ljava/util/HashMap;

    .line 137
    iput-object p3, p0, Landroidx/room/e;->k:Ljava/util/Map;

    .line 138
    new-instance p3, Landroidx/room/d;

    invoke-direct {p3, p1}, Landroidx/room/d;-><init>(Landroidx/room/h;)V

    iput-object p3, p0, Landroidx/room/e;->m:Landroidx/room/d;

    .line 139
    array-length p1, p4

    .line 140
    new-array p3, p1, [Ljava/lang/String;

    iput-object p3, p0, Landroidx/room/e;->b:[Ljava/lang/String;

    :goto_0
    if-ge v1, p1, :cond_1

    .line 142
    aget-object p3, p4, v1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    .line 143
    iget-object v0, p0, Landroidx/room/e;->a:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    aget-object v0, p4, v1

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 146
    iget-object p3, p0, Landroidx/room/e;->b:[Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v1

    goto :goto_1

    .line 148
    :cond_0
    iget-object v0, p0, Landroidx/room/e;->b:[Ljava/lang/String;

    aput-object p3, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 154
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p3, p4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    .line 155
    iget-object p4, p0, Landroidx/room/e;->a:Ljava/util/HashMap;

    invoke-virtual {p4, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 156
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, p4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 157
    iget-object p4, p0, Landroidx/room/e;->a:Ljava/util/HashMap;

    invoke-virtual {p4, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    return-void
.end method

.method public varargs constructor <init>(Landroidx/room/h;[Ljava/lang/String;)V
    .locals 2

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p2}, Landroidx/room/e;-><init>(Landroidx/room/h;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-void
.end method

.method private a()V
    .locals 1

    .line 535
    iget-object v0, p0, Landroidx/room/e;->c:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 538
    :cond_0
    iget-object v0, p0, Landroidx/room/e;->c:Landroidx/room/h;

    .line 2189
    iget-object v0, v0, Landroidx/room/h;->d:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 538
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->b()Landroidx/sqlite/db/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/room/e;->a(Landroidx/sqlite/db/b;)V

    return-void
.end method

.method private a(Landroidx/sqlite/db/b;I)V
    .locals 7

    .line 208
    iget-object v0, p0, Landroidx/room/e;->b:[Ljava/lang/String;

    aget-object p2, v0, p2

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    sget-object v1, Landroidx/room/e;->j:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 211
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v6, "DROP TRIGGER IF EXISTS "

    .line 212
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-static {v0, p2, v5}, Landroidx/room/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Landroidx/sqlite/db/b;->c(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "`room_table_modification_trigger_"

    .line 199
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    .line 202
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "`"

    .line 204
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private a([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .line 296
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 297
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 298
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 299
    iget-object v5, p0, Landroidx/room/e;->k:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 300
    iget-object v3, p0, Landroidx/room/e;->k:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 302
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 305
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public final a([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Landroidx/lifecycle/LiveData<",
            "TT;>;"
        }
    .end annotation

    .line 580
    iget-object v2, p0, Landroidx/room/e;->m:Landroidx/room/d;

    .line 2280
    invoke-direct {p0, p1}, Landroidx/room/e;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2281
    array-length p1, v5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget-object v1, v5, v0

    .line 2282
    iget-object v3, p0, Landroidx/room/e;->a:Ljava/util/HashMap;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2283
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "There is no table with name "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3048
    :cond_1
    new-instance p1, Landroidx/room/l;

    iget-object v1, v2, Landroidx/room/d;->b:Landroidx/room/h;

    move-object v0, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroidx/room/l;-><init>(Landroidx/room/h;Landroidx/room/d;ZLjava/util/concurrent/Callable;[Ljava/lang/String;)V

    return-object p1
.end method

.method public final a(Landroidx/room/e$b;)V
    .locals 7

    .line 258
    iget-object v0, p1, Landroidx/room/e$b;->a:[Ljava/lang/String;

    invoke-direct {p0, v0}, Landroidx/room/e;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 259
    array-length v1, v0

    new-array v1, v1, [I

    .line 260
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 263
    iget-object v4, p0, Landroidx/room/e;->a:Ljava/util/HashMap;

    aget-object v5, v0, v3

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 267
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 265
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "There is no table with name "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 269
    :cond_1
    new-instance v2, Landroidx/room/e$c;

    invoke-direct {v2, p1, v1, v0}, Landroidx/room/e$c;-><init>(Landroidx/room/e$b;[I[Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Landroidx/room/e;->g:Landroidx/a/a/b/b;

    monitor-enter v0

    .line 272
    :try_start_0
    iget-object v3, p0, Landroidx/room/e;->g:Landroidx/a/a/b/b;

    invoke-virtual {v3, p1, v2}, Landroidx/a/a/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/room/e$c;

    .line 273
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_2

    .line 274
    iget-object p1, p0, Landroidx/room/e;->l:Landroidx/room/e$a;

    invoke-virtual {p1, v1}, Landroidx/room/e$a;->a([I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 275
    invoke-direct {p0}, Landroidx/room/e;->a()V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 273
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method final a(Landroidx/sqlite/db/b;)V
    .locals 12

    .line 480
    invoke-interface {p1}, Landroidx/sqlite/db/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 488
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Landroidx/room/e;->c:Landroidx/room/h;

    .line 1111
    iget-object v0, v0, Landroidx/room/h;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    .line 489
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :try_start_1
    iget-object v1, p0, Landroidx/room/e;->l:Landroidx/room/e$a;

    invoke-virtual {v1}, Landroidx/room/e$a;->a()[I

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v1, :cond_1

    .line 516
    :try_start_2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    .line 497
    :cond_1
    :try_start_3
    array-length v2, v1

    .line 498
    invoke-interface {p1}, Landroidx/sqlite/db/b;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_5

    .line 501
    :try_start_4
    aget v5, v1, v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    goto :goto_3

    .line 506
    :cond_2
    invoke-direct {p0, p1, v4}, Landroidx/room/e;->a(Landroidx/sqlite/db/b;I)V

    goto :goto_3

    .line 1219
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "INSERT OR IGNORE INTO room_table_modification_log VALUES("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", 0)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Landroidx/sqlite/db/b;->c(Ljava/lang/String;)V

    .line 1221
    iget-object v5, p0, Landroidx/room/e;->b:[Ljava/lang/String;

    aget-object v5, v5, v4

    .line 1222
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1223
    sget-object v7, Landroidx/room/e;->j:[Ljava/lang/String;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_4

    aget-object v10, v7, v9

    .line 1224
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v11, "CREATE TEMP TRIGGER IF NOT EXISTS "

    .line 1225
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1226
    invoke-static {v6, v5, v10}, Landroidx/room/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, " AFTER "

    .line 1227
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1228
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " ON `"

    .line 1229
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1230
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "` BEGIN UPDATE room_table_modification_log SET invalidated"

    .line 1231
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " = 1 WHERE table_id = "

    .line 1233
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1234
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " AND invalidated = 0; END"

    .line 1235
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1237
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v10}, Landroidx/sqlite/db/b;->c(Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 510
    :cond_5
    invoke-interface {p1}, Landroidx/sqlite/db/b;->c()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 512
    :try_start_5
    invoke-interface {p1}, Landroidx/sqlite/db/b;->b()V

    .line 514
    iget-object v1, p0, Landroidx/room/e;->l:Landroidx/room/e$a;

    .line 1821
    monitor-enter v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1822
    :try_start_6
    iput-boolean v3, v1, Landroidx/room/e$a;->e:Z

    .line 1823
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 516
    :try_start_7
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    .line 1823
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw p1

    :catchall_1
    move-exception v1

    .line 512
    invoke-interface {p1}, Landroidx/sqlite/db/b;->b()V

    .line 513
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception p1

    .line 516
    :try_start_a
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 517
    throw p1
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    :goto_4
    const-string v0, "ROOM"

    const-string v1, "Cannot run invalidation tracker. Is the db closed?"

    .line 521
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final b(Landroidx/room/e$b;)V
    .locals 2

    .line 333
    iget-object v0, p0, Landroidx/room/e;->g:Landroidx/a/a/b/b;

    monitor-enter v0

    .line 334
    :try_start_0
    iget-object v1, p0, Landroidx/room/e;->g:Landroidx/a/a/b/b;

    invoke-virtual {v1, p1}, Landroidx/a/a/b/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/room/e$c;

    .line 335
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 336
    iget-object v0, p0, Landroidx/room/e;->l:Landroidx/room/e$a;

    iget-object p1, p1, Landroidx/room/e$c;->a:[I

    invoke-virtual {v0, p1}, Landroidx/room/e$a;->b([I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 337
    invoke-direct {p0}, Landroidx/room/e;->a()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 335
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
