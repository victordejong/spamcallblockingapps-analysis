.class public Landroidx/work/impl/foreground/b;
.super Ljava/lang/Object;
.source "SystemForegroundDispatcher.java"

# interfaces
.implements Landroidx/work/impl/a;
.implements Landroidx/work/impl/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/foreground/b$a;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field final b:Ljava/lang/Object;

.field c:Ljava/lang/String;

.field d:Landroidx/work/h;

.field final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroidx/work/h;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroidx/work/impl/b/p;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroidx/work/impl/b/p;",
            ">;"
        }
    .end annotation
.end field

.field final h:Landroidx/work/impl/a/d;

.field private i:Landroid/content/Context;

.field private j:Landroidx/work/impl/i;

.field private final k:Landroidx/work/impl/utils/b/a;

.field private l:Landroidx/work/impl/foreground/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string/jumbo v0, "SystemFgDispatcher"

    invoke-static {v0}, Landroidx/work/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/foreground/b;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Landroidx/work/impl/foreground/b;->i:Landroid/content/Context;

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/foreground/b;->b:Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Landroidx/work/impl/foreground/b;->i:Landroid/content/Context;

    invoke-static {v0}, Landroidx/work/impl/i;->b(Landroid/content/Context;)Landroidx/work/impl/i;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/foreground/b;->j:Landroidx/work/impl/i;

    .line 108
    iget-object v0, p0, Landroidx/work/impl/foreground/b;->j:Landroidx/work/impl/i;

    invoke-virtual {v0}, Landroidx/work/impl/i;->g()Landroidx/work/impl/utils/b/a;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/foreground/b;->k:Landroidx/work/impl/utils/b/a;

    .line 109
    iput-object v1, p0, Landroidx/work/impl/foreground/b;->c:Ljava/lang/String;

    .line 110
    iput-object v1, p0, Landroidx/work/impl/foreground/b;->d:Landroidx/work/h;

    .line 111
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/foreground/b;->e:Ljava/util/Map;

    .line 112
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/foreground/b;->g:Ljava/util/Set;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/foreground/b;->f:Ljava/util/Map;

    .line 114
    new-instance v0, Landroidx/work/impl/a/d;

    iget-object v1, p0, Landroidx/work/impl/foreground/b;->i:Landroid/content/Context;

    iget-object v2, p0, Landroidx/work/impl/foreground/b;->k:Landroidx/work/impl/utils/b/a;

    invoke-direct {v0, v1, v2, p0}, Landroidx/work/impl/a/d;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/b/a;Landroidx/work/impl/a/c;)V

    iput-object v0, p0, Landroidx/work/impl/foreground/b;->h:Landroidx/work/impl/a/d;

    .line 115
    iget-object v0, p0, Landroidx/work/impl/foreground/b;->j:Landroidx/work/impl/i;

    invoke-virtual {v0}, Landroidx/work/impl/i;->f()Landroidx/work/impl/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/work/impl/c;->a(Landroidx/work/impl/a;)V

    .line 116
    return-void
.end method

.method private b(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 223
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/foreground/b;->a:Ljava/lang/String;

    const-string/jumbo v2, "Started foreground service %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/l;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 224
    const-string/jumbo v0, "KEY_WORKSPEC_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    iget-object v1, p0, Landroidx/work/impl/foreground/b;->j:Landroidx/work/impl/i;

    invoke-virtual {v1}, Landroidx/work/impl/i;->c()Landroidx/work/impl/WorkDatabase;

    move-result-object v1

    .line 226
    iget-object v2, p0, Landroidx/work/impl/foreground/b;->k:Landroidx/work/impl/utils/b/a;

    new-instance v3, Landroidx/work/impl/foreground/b$1;

    invoke-direct {v3, p0, v1, v0}, Landroidx/work/impl/foreground/b$1;-><init>(Landroidx/work/impl/foreground/b;Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Landroidx/work/impl/utils/b/a;->a(Ljava/lang/Runnable;)V

    .line 241
    return-void
.end method

.method private c(Landroid/content/Intent;)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 245
    const-string/jumbo v0, "KEY_NOTIFICATION_ID"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 246
    const-string/jumbo v0, "KEY_FOREGROUND_SERVICE_TYPE"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 247
    const-string/jumbo v0, "KEY_WORKSPEC_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 248
    const-string/jumbo v0, "KEY_NOTIFICATION"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/Notification;

    .line 249
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v5

    sget-object v6, Landroidx/work/impl/foreground/b;->a:Ljava/lang/String;

    const-string/jumbo v7, "Notifying with (id: %s, workSpecId: %s, notificationType: %s)"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    .line 251
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    const/4 v9, 0x1

    aput-object v4, v8, v9

    const/4 v9, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    .line 250
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v1, [Ljava/lang/Throwable;

    .line 249
    invoke-virtual {v5, v6, v7, v8}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 253
    if-eqz v0, :cond_0

    iget-object v5, p0, Landroidx/work/impl/foreground/b;->l:Landroidx/work/impl/foreground/b$a;

    if-eqz v5, :cond_0

    .line 255
    new-instance v5, Landroidx/work/h;

    invoke-direct {v5, v2, v0, v3}, Landroidx/work/h;-><init>(ILandroid/app/Notification;I)V

    .line 258
    iget-object v6, p0, Landroidx/work/impl/foreground/b;->e:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-object v5, p0, Landroidx/work/impl/foreground/b;->c:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 261
    iput-object v4, p0, Landroidx/work/impl/foreground/b;->c:Ljava/lang/String;

    .line 262
    iget-object v1, p0, Landroidx/work/impl/foreground/b;->l:Landroidx/work/impl/foreground/b$a;

    invoke-interface {v1, v2, v3, v0}, Landroidx/work/impl/foreground/b$a;->a(IILandroid/app/Notification;)V

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    iget-object v4, p0, Landroidx/work/impl/foreground/b;->l:Landroidx/work/impl/foreground/b$a;

    invoke-interface {v4, v2, v0}, Landroidx/work/impl/foreground/b$a;->a(ILandroid/app/Notification;)V

    .line 268
    if-eqz v3, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_0

    .line 271
    iget-object v0, p0, Landroidx/work/impl/foreground/b;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 272
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/h;

    .line 273
    invoke-virtual {v0}, Landroidx/work/h;->b()I

    move-result v0

    or-int/2addr v0, v1

    move v1, v0

    .line 274
    goto :goto_1

    .line 275
    :cond_2
    iget-object v0, p0, Landroidx/work/impl/foreground/b;->e:Ljava/util/Map;

    iget-object v2, p0, Landroidx/work/impl/foreground/b;->c:Ljava/lang/String;

    .line 276
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/h;

    .line 277
    if-eqz v0, :cond_0

    .line 278
    iget-object v2, p0, Landroidx/work/impl/foreground/b;->l:Landroidx/work/impl/foreground/b$a;

    .line 279
    invoke-virtual {v0}, Landroidx/work/h;->a()I

    move-result v3

    .line 281
    invoke-virtual {v0}, Landroidx/work/h;->c()Landroid/app/Notification;

    move-result-object v0

    .line 278
    invoke-interface {v2, v3, v1, v0}, Landroidx/work/impl/foreground/b$a;->a(IILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private d(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 304
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/foreground/b;->a:Ljava/lang/String;

    const-string/jumbo v2, "Stopping foreground work for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/l;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 305
    const-string/jumbo v0, "KEY_WORKSPEC_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 307
    iget-object v1, p0, Landroidx/work/impl/foreground/b;->j:Landroidx/work/impl/i;

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/work/impl/i;->a(Ljava/util/UUID;)Landroidx/work/n;

    .line 309
    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/work/impl/foreground/b;->l:Landroidx/work/impl/foreground/b$a;

    .line 217
    iget-object v0, p0, Landroidx/work/impl/foreground/b;->h:Landroidx/work/impl/a/d;

    invoke-virtual {v0}, Landroidx/work/impl/a/d;->a()V

    .line 218
    iget-object v0, p0, Landroidx/work/impl/foreground/b;->j:Landroidx/work/impl/i;

    invoke-virtual {v0}, Landroidx/work/impl/i;->f()Landroidx/work/impl/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/work/impl/c;->b(Landroidx/work/impl/a;)V

    .line 219
    return-void
.end method

.method a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 201
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 202
    const-string/jumbo v1, "ACTION_START_FOREGROUND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 203
    invoke-direct {p0, p1}, Landroidx/work/impl/foreground/b;->b(Landroid/content/Intent;)V

    .line 206
    invoke-direct {p0, p1}, Landroidx/work/impl/foreground/b;->c(Landroid/content/Intent;)V

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    const-string/jumbo v1, "ACTION_NOTIFY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 208
    invoke-direct {p0, p1}, Landroidx/work/impl/foreground/b;->c(Landroid/content/Intent;)V

    goto :goto_0

    .line 209
    :cond_2
    const-string/jumbo v1, "ACTION_CANCEL_WORK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    invoke-direct {p0, p1}, Landroidx/work/impl/foreground/b;->d(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method a(Landroidx/work/impl/foreground/b$a;)V
    .locals 4

    .prologue
    .line 189
    iget-object v0, p0, Landroidx/work/impl/foreground/b;->l:Landroidx/work/impl/foreground/b$a;

    if-eqz v0, :cond_0

    .line 190
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/foreground/b;->a:Ljava/lang/String;

    const-string/jumbo v2, "A callback already exists."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/l;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 194
    :goto_0
    return-void

    .line 193
    :cond_0
    iput-object p1, p0, Landroidx/work/impl/foreground/b;->l:Landroidx/work/impl/foreground/b$a;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    .line 139
    const/4 v1, 0x0

    .line 140
    iget-object v2, p0, Landroidx/work/impl/foreground/b;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 141
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/foreground/b;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/b/p;

    .line 142
    if-eqz v0, :cond_4

    .line 143
    iget-object v1, p0, Landroidx/work/impl/foreground/b;->g:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 145
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Landroidx/work/impl/foreground/b;->h:Landroidx/work/impl/a/d;

    iget-object v1, p0, Landroidx/work/impl/foreground/b;->g:Ljava/util/Set;

    invoke-virtual {v0, v1}, Landroidx/work/impl/a/d;->a(Ljava/lang/Iterable;)V

    .line 152
    :cond_0
    iget-object v0, p0, Landroidx/work/impl/foreground/b;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/h;

    iput-object v0, p0, Landroidx/work/impl/foreground/b;->d:Landroidx/work/h;

    .line 153
    iget-object v0, p0, Landroidx/work/impl/foreground/b;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 154
    iget-object v0, p0, Landroidx/work/impl/foreground/b;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 159
    iget-object v0, p0, Landroidx/work/impl/foreground/b;->e:Ljava/util/Map;

    .line 160
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 162
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    .line 163
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    goto :goto_1

    .line 145
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 167
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/work/impl/foreground/b;->c:Ljava/lang/String;

    .line 168
    iget-object v0, p0, Landroidx/work/impl/foreground/b;->l:Landroidx/work/impl/foreground/b$a;

    if-eqz v0, :cond_2

    .line 169
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/h;

    .line 170
    iget-object v1, p0, Landroidx/work/impl/foreground/b;->l:Landroidx/work/impl/foreground/b$a;

    .line 171
    invoke-virtual {v0}, Landroidx/work/h;->a()I

    move-result v2

    .line 172
    invoke-virtual {v0}, Landroidx/work/h;->b()I

    move-result v3

    .line 173
    invoke-virtual {v0}, Landroidx/work/h;->c()Landroid/app/Notification;

    move-result-object v4

    .line 170
    invoke-interface {v1, v2, v3, v4}, Landroidx/work/impl/foreground/b$a;->a(IILandroid/app/Notification;)V

    .line 178
    iget-object v1, p0, Landroidx/work/impl/foreground/b;->l:Landroidx/work/impl/foreground/b$a;

    invoke-virtual {v0}, Landroidx/work/h;->a()I

    move-result v0

    invoke-interface {v1, v0}, Landroidx/work/impl/foreground/b$a;->a(I)V

    .line 185
    :cond_2
    :goto_2
    return-void

    .line 181
    :cond_3
    iget-object v0, p0, Landroidx/work/impl/foreground/b;->d:Landroidx/work/h;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/work/impl/foreground/b;->l:Landroidx/work/impl/foreground/b$a;

    if-eqz v0, :cond_2

    .line 183
    iget-object v0, p0, Landroidx/work/impl/foreground/b;->l:Landroidx/work/impl/foreground/b$a;

    iget-object v1, p0, Landroidx/work/impl/foreground/b;->d:Landroidx/work/h;

    invoke-virtual {v1}, Landroidx/work/h;->a()I

    move-result v1

    invoke-interface {v0, v1}, Landroidx/work/impl/foreground/b$a;->a(I)V

    goto :goto_2

    :cond_4
    move v0, v1

    goto/16 :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 314
    return-void
.end method

.method b()V
    .locals 4

    .prologue
    .line 291
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/foreground/b;->a:Ljava/lang/String;

    const-string/jumbo v2, "Stopping foreground service"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/l;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 292
    iget-object v0, p0, Landroidx/work/impl/foreground/b;->l:Landroidx/work/impl/foreground/b$a;

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Landroidx/work/impl/foreground/b;->d:Landroidx/work/h;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Landroidx/work/impl/foreground/b;->l:Landroidx/work/impl/foreground/b$a;

    iget-object v1, p0, Landroidx/work/impl/foreground/b;->d:Landroidx/work/h;

    invoke-virtual {v1}, Landroidx/work/h;->a()I

    move-result v1

    invoke-interface {v0, v1}, Landroidx/work/impl/foreground/b$a;->a(I)V

    .line 296
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/work/impl/foreground/b;->d:Landroidx/work/h;

    .line 298
    :cond_0
    iget-object v0, p0, Landroidx/work/impl/foreground/b;->l:Landroidx/work/impl/foreground/b$a;

    invoke-interface {v0}, Landroidx/work/impl/foreground/b$a;->a()V

    .line 300
    :cond_1
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 318
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 320
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/foreground/b;->a:Ljava/lang/String;

    const-string/jumbo v4, "Constraints unmet for WorkSpec %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    .line 321
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Throwable;

    .line 320
    invoke-virtual {v2, v3, v4, v5}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 322
    iget-object v2, p0, Landroidx/work/impl/foreground/b;->j:Landroidx/work/impl/i;

    invoke-virtual {v2, v0}, Landroidx/work/impl/i;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 325
    :cond_0
    return-void
.end method
