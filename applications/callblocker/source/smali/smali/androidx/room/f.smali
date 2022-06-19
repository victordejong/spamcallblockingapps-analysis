.class public Landroidx/room/f;
.super Ljava/lang/Object;
.source "InvalidationTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/f$a;,
        Landroidx/room/f$b;,
        Landroidx/room/f$c;
    }
.end annotation


# static fields
.field private static final h:[Ljava/lang/String;


# instance fields
.field final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final b:[Ljava/lang/String;

.field final c:Landroidx/room/i;

.field d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field volatile e:Landroidx/i/a/f;

.field final f:Landroidx/a/a/b/b;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/a/a/b/b",
            "<",
            "Landroidx/room/f$b;",
            "Landroidx/room/f$c;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/lang/Runnable;

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile j:Z

.field private k:Landroidx/room/f$a;

.field private final l:Landroidx/room/e;

.field private m:Landroidx/room/g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "UPDATE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "DELETE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "INSERT"

    aput-object v2, v0, v1

    sput-object v0, Landroidx/room/f;->h:[Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Landroidx/room/i;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/i;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Landroidx/room/f;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 98
    iput-boolean v0, p0, Landroidx/room/f;->j:Z

    .line 108
    new-instance v1, Landroidx/a/a/b/b;

    invoke-direct {v1}, Landroidx/a/a/b/b;-><init>()V

    iput-object v1, p0, Landroidx/room/f;->f:Landroidx/a/a/b/b;

    .line 358
    new-instance v1, Landroidx/room/f$1;

    invoke-direct {v1, p0}, Landroidx/room/f$1;-><init>(Landroidx/room/f;)V

    iput-object v1, p0, Landroidx/room/f;->g:Ljava/lang/Runnable;

    .line 135
    iput-object p1, p0, Landroidx/room/f;->c:Landroidx/room/i;

    .line 136
    new-instance v1, Landroidx/room/f$a;

    array-length v2, p4

    invoke-direct {v1, v2}, Landroidx/room/f$a;-><init>(I)V

    iput-object v1, p0, Landroidx/room/f;->k:Landroidx/room/f$a;

    .line 137
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/room/f;->a:Ljava/util/HashMap;

    .line 138
    iput-object p3, p0, Landroidx/room/f;->i:Ljava/util/Map;

    .line 139
    new-instance v1, Landroidx/room/e;

    iget-object v2, p0, Landroidx/room/f;->c:Landroidx/room/i;

    invoke-direct {v1, v2}, Landroidx/room/e;-><init>(Landroidx/room/i;)V

    iput-object v1, p0, Landroidx/room/f;->l:Landroidx/room/e;

    .line 140
    array-length v2, p4

    .line 141
    new-array v1, v2, [Ljava/lang/String;

    iput-object v1, p0, Landroidx/room/f;->b:[Ljava/lang/String;

    move v1, v0

    .line 142
    :goto_0
    if-ge v1, v2, :cond_1

    .line 143
    aget-object v0, p4, v1

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 144
    iget-object v0, p0, Landroidx/room/f;->a:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    aget-object v0, p4, v1

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 146
    if-eqz v0, :cond_0

    .line 147
    iget-object v3, p0, Landroidx/room/f;->b:[Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    .line 142
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Landroidx/room/f;->b:[Ljava/lang/String;

    aput-object v3, v0, v1

    goto :goto_1

    .line 154
    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 155
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 156
    iget-object v3, p0, Landroidx/room/f;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 157
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 158
    iget-object v3, p0, Landroidx/room/f;->a:Ljava/util/HashMap;

    iget-object v4, p0, Landroidx/room/f;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 161
    :cond_3
    return-void
.end method

.method private a(Landroidx/i/a/b;I)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 209
    iget-object v0, p0, Landroidx/room/f;->b:[Ljava/lang/String;

    aget-object v2, v0, p2

    .line 210
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    sget-object v4, Landroidx/room/f;->h:[Ljava/lang/String;

    array-length v5, v4

    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_0

    aget-object v6, v4, v0

    .line 212
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 213
    const-string/jumbo v7, "DROP TRIGGER IF EXISTS "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-static {v3, v2, v6}, Landroidx/room/f;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 200
    const-string/jumbo v0, "`"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "room_table_modification_trigger_"

    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 202
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 204
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "`"

    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    return-void
.end method

.method private b(Landroidx/i/a/b;I)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "INSERT OR IGNORE INTO room_table_modification_log VALUES("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", 0)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Landroidx/room/f;->b:[Ljava/lang/String;

    aget-object v2, v0, p2

    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    sget-object v4, Landroidx/room/f;->h:[Ljava/lang/String;

    array-length v5, v4

    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_0

    aget-object v6, v4, v0

    .line 225
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 226
    const-string/jumbo v7, "CREATE TEMP TRIGGER IF NOT EXISTS "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-static {v3, v2, v6}, Landroidx/room/f;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string/jumbo v7, " AFTER "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 229
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ON `"

    .line 230
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 231
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "` BEGIN UPDATE "

    .line 232
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "room_table_modification_log"

    .line 233
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " SET "

    .line 234
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "invalidated"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " = 1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " WHERE "

    .line 235
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "table_id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " AND "

    .line 236
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "invalidated"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " = 0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "; END"

    .line 237
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 240
    :cond_0
    return-void
.end method

.method private b([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .prologue
    .line 297
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 298
    array-length v3, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, p1, v1

    .line 299
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 300
    iget-object v5, p0, Landroidx/room/f;->i:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 301
    iget-object v0, p0, Landroidx/room/f;->i:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 298
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 303
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 306
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 187
    new-instance v0, Landroidx/room/g;

    iget-object v1, p0, Landroidx/room/f;->c:Landroidx/room/i;

    .line 188
    invoke-virtual {v1}, Landroidx/room/i;->i()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, p1, p2, p0, v1}, Landroidx/room/g;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/room/f;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroidx/room/f;->m:Landroidx/room/g;

    .line 189
    return-void
.end method

.method a(Landroidx/i/a/b;)V
    .locals 2

    .prologue
    .line 169
    monitor-enter p0

    .line 170
    :try_start_0
    iget-boolean v0, p0, Landroidx/room/f;->j:Z

    if-eqz v0, :cond_0

    .line 171
    const-string/jumbo v0, "ROOM"

    const-string/jumbo v1, "Invalidation tracker is initialized twice :/."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    monitor-exit p0

    .line 184
    :goto_0
    return-void

    .line 177
    :cond_0
    const-string/jumbo v0, "PRAGMA temp_store = MEMORY;"

    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    .line 178
    const-string/jumbo v0, "PRAGMA recursive_triggers=\'ON\';"

    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    .line 179
    const-string/jumbo v0, "CREATE TEMP TABLE room_table_modification_log(table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)"

    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0, p1}, Landroidx/room/f;->b(Landroidx/i/a/b;)V

    .line 181
    const-string/jumbo v0, "UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1 "

    invoke-interface {p1, v0}, Landroidx/i/a/b;->a(Ljava/lang/String;)Landroidx/i/a/f;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/f;->e:Landroidx/i/a/f;

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/room/f;->j:Z

    .line 183
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Landroidx/room/f$b;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .prologue
    .line 259
    iget-object v0, p1, Landroidx/room/f$b;->a:[Ljava/lang/String;

    invoke-direct {p0, v0}, Landroidx/room/f;->b([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 260
    array-length v0, v2

    new-array v3, v0, [I

    .line 261
    array-length v4, v2

    .line 263
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    .line 264
    iget-object v0, p0, Landroidx/room/f;->a:Ljava/util/HashMap;

    aget-object v5, v2, v1

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 265
    if-nez v0, :cond_0

    .line 266
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "There is no table with name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v1, v2, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v1

    .line 263
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 270
    :cond_1
    new-instance v0, Landroidx/room/f$c;

    invoke-direct {v0, p1, v3, v2}, Landroidx/room/f$c;-><init>(Landroidx/room/f$b;[I[Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Landroidx/room/f;->f:Landroidx/a/a/b/b;

    monitor-enter v1

    .line 273
    :try_start_0
    iget-object v2, p0, Landroidx/room/f;->f:Landroidx/a/a/b/b;

    invoke-virtual {v2, p1, v0}, Landroidx/a/a/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/room/f$c;

    .line 274
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/room/f;->k:Landroidx/room/f$a;

    invoke-virtual {v0, v3}, Landroidx/room/f$a;->a([I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 276
    invoke-virtual {p0}, Landroidx/room/f;->c()V

    .line 278
    :cond_2
    return-void

    .line 274
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public varargs a([Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 471
    iget-object v2, p0, Landroidx/room/f;->f:Landroidx/a/a/b/b;

    monitor-enter v2

    .line 472
    :try_start_0
    iget-object v0, p0, Landroidx/room/f;->f:Landroidx/a/a/b/b;

    invoke-virtual {v0}, Landroidx/a/a/b/b;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 473
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/room/f$b;

    invoke-virtual {v1}, Landroidx/room/f$b;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 474
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/room/f$c;

    invoke-virtual {v0, p1}, Landroidx/room/f$c;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 477
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 478
    return-void
.end method

.method a()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 344
    iget-object v1, p0, Landroidx/room/f;->c:Landroidx/room/i;

    invoke-virtual {v1}, Landroidx/room/i;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 355
    :goto_0
    return v0

    .line 347
    :cond_0
    iget-boolean v1, p0, Landroidx/room/f;->j:Z

    if-nez v1, :cond_1

    .line 349
    iget-object v1, p0, Landroidx/room/f;->c:Landroidx/room/i;

    invoke-virtual {v1}, Landroidx/room/i;->b()Landroidx/i/a/c;

    move-result-object v1

    invoke-interface {v1}, Landroidx/i/a/c;->b()Landroidx/i/a/b;

    .line 351
    :cond_1
    iget-boolean v1, p0, Landroidx/room/f;->j:Z

    if-nez v1, :cond_2

    .line 352
    const-string/jumbo v1, "ROOM"

    const-string/jumbo v2, "database is not initialized even though it is open"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 355
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 442
    iget-object v0, p0, Landroidx/room/f;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Landroidx/room/f;->c:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->i()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Landroidx/room/f;->g:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 445
    :cond_0
    return-void
.end method

.method b(Landroidx/i/a/b;)V
    .locals 5

    .prologue
    .line 481
    invoke-interface {p1}, Landroidx/i/a/b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 525
    :goto_0
    return-void

    .line 511
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroidx/i/a/b;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    :try_start_1
    invoke-interface {p1}, Landroidx/i/a/b;->b()V

    .line 515
    iget-object v0, p0, Landroidx/room/f;->k:Landroidx/room/f$a;

    invoke-virtual {v0}, Landroidx/room/f$a;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 517
    :try_start_2
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 489
    :cond_1
    iget-object v0, p0, Landroidx/room/f;->c:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->a()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    .line 490
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 494
    :try_start_3
    iget-object v0, p0, Landroidx/room/f;->k:Landroidx/room/f$a;

    invoke-virtual {v0}, Landroidx/room/f$a;->a()[I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v2

    .line 495
    if-nez v2, :cond_2

    .line 517
    :try_start_4
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 520
    :catch_0
    move-exception v0

    .line 522
    :goto_1
    const-string/jumbo v1, "ROOM"

    const-string/jumbo v2, "Cannot run invalidation tracker. Is the db closed?"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 498
    :cond_2
    :try_start_5
    array-length v3, v2

    .line 499
    invoke-interface {p1}, Landroidx/i/a/b;->a()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 501
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_0

    .line 502
    :try_start_6
    aget v4, v2, v0

    packed-switch v4, :pswitch_data_0

    .line 501
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 504
    :pswitch_0
    invoke-direct {p0, p1, v0}, Landroidx/room/f;->b(Landroidx/i/a/b;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 513
    :catchall_0
    move-exception v0

    :try_start_7
    invoke-interface {p1}, Landroidx/i/a/b;->b()V

    .line 514
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 517
    :catchall_1
    move-exception v0

    :try_start_8
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 518
    throw v0
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_1

    .line 520
    :catch_1
    move-exception v0

    goto :goto_1

    .line 507
    :pswitch_1
    :try_start_9
    invoke-direct {p0, p1, v0}, Landroidx/room/f;->a(Landroidx/i/a/b;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    .line 502
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b(Landroidx/room/f$b;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .prologue
    .line 334
    iget-object v1, p0, Landroidx/room/f;->f:Landroidx/a/a/b/b;

    monitor-enter v1

    .line 335
    :try_start_0
    iget-object v0, p0, Landroidx/room/f;->f:Landroidx/a/a/b/b;

    invoke-virtual {v0, p1}, Landroidx/a/a/b/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/room/f$c;

    .line 336
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/room/f;->k:Landroidx/room/f$a;

    iget-object v0, v0, Landroidx/room/f$c;->a:[I

    invoke-virtual {v1, v0}, Landroidx/room/f$a;->b([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {p0}, Landroidx/room/f;->c()V

    .line 340
    :cond_0
    return-void

    .line 336
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method c()V
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Landroidx/room/f;->c:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 540
    :goto_0
    return-void

    .line 539
    :cond_0
    iget-object v0, p0, Landroidx/room/f;->c:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->b()Landroidx/i/a/c;

    move-result-object v0

    invoke-interface {v0}, Landroidx/i/a/c;->b()Landroidx/i/a/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/room/f;->b(Landroidx/i/a/b;)V

    goto :goto_0
.end method
