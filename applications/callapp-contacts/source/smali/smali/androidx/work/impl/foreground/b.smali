.class public final Landroidx/work/impl/foreground/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/work/impl/a/c;
.implements Landroidx/work/impl/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/foreground/b$a;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field b:Landroidx/work/impl/j;

.field final c:Landroidx/work/impl/utils/b/a;

.field final d:Ljava/lang/Object;

.field e:Ljava/lang/String;

.field final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/work/f;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation
.end field

.field final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation
.end field

.field final i:Landroidx/work/impl/a/d;

.field j:Landroidx/work/impl/foreground/b$a;

.field private k:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemFgDispatcher"

    .line 62
    invoke-static {v0}, Landroidx/work/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/foreground/b;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Landroidx/work/impl/foreground/b;->k:Landroid/content/Context;

    .line 104
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/foreground/b;->d:Ljava/lang/Object;

    .line 105
    iget-object p1, p0, Landroidx/work/impl/foreground/b;->k:Landroid/content/Context;

    invoke-static {p1}, Landroidx/work/impl/j;->b(Landroid/content/Context;)Landroidx/work/impl/j;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/foreground/b;->b:Landroidx/work/impl/j;

    .line 1355
    iget-object p1, p1, Landroidx/work/impl/j;->d:Landroidx/work/impl/utils/b/a;

    .line 106
    iput-object p1, p0, Landroidx/work/impl/foreground/b;->c:Landroidx/work/impl/utils/b/a;

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Landroidx/work/impl/foreground/b;->e:Ljava/lang/String;

    .line 108
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/foreground/b;->f:Ljava/util/Map;

    .line 109
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/foreground/b;->h:Ljava/util/Set;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/foreground/b;->g:Ljava/util/Map;

    .line 111
    new-instance v0, Landroidx/work/impl/a/d;

    iget-object v1, p0, Landroidx/work/impl/foreground/b;->k:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p0}, Landroidx/work/impl/a/d;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/b/a;Landroidx/work/impl/a/c;)V

    iput-object v0, p0, Landroidx/work/impl/foreground/b;->i:Landroidx/work/impl/a/d;

    .line 112
    iget-object p1, p0, Landroidx/work/impl/foreground/b;->b:Landroidx/work/impl/j;

    .line 2346
    iget-object p1, p1, Landroidx/work/impl/j;->f:Landroidx/work/impl/d;

    .line 112
    invoke-virtual {p1, p0}, Landroidx/work/impl/d;->a(Landroidx/work/impl/b;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroidx/work/impl/j;Landroidx/work/impl/a/d;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Landroidx/work/impl/foreground/b;->k:Landroid/content/Context;

    .line 122
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/foreground/b;->d:Ljava/lang/Object;

    .line 123
    iput-object p2, p0, Landroidx/work/impl/foreground/b;->b:Landroidx/work/impl/j;

    .line 2355
    iget-object p1, p2, Landroidx/work/impl/j;->d:Landroidx/work/impl/utils/b/a;

    .line 124
    iput-object p1, p0, Landroidx/work/impl/foreground/b;->c:Landroidx/work/impl/utils/b/a;

    const/4 p1, 0x0

    .line 125
    iput-object p1, p0, Landroidx/work/impl/foreground/b;->e:Ljava/lang/String;

    .line 126
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/foreground/b;->f:Ljava/util/Map;

    .line 127
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/foreground/b;->h:Ljava/util/Set;

    .line 128
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/foreground/b;->g:Ljava/util/Map;

    .line 129
    iput-object p3, p0, Landroidx/work/impl/foreground/b;->i:Landroidx/work/impl/a/d;

    .line 130
    iget-object p1, p0, Landroidx/work/impl/foreground/b;->b:Landroidx/work/impl/j;

    .line 3346
    iget-object p1, p1, Landroidx/work/impl/j;->f:Landroidx/work/impl/d;

    .line 130
    invoke-virtual {p1, p0}, Landroidx/work/impl/d;->a(Landroidx/work/impl/b;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 415
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroidx/work/impl/foreground/SystemForegroundService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_STOP_FOREGROUND"

    .line 416
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroidx/work/f;)Landroid/content/Intent;
    .locals 3

    .line 354
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroidx/work/impl/foreground/SystemForegroundService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_START_FOREGROUND"

    .line 355
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "KEY_WORKSPEC_ID"

    .line 356
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10072
    iget v1, p2, Landroidx/work/f;->a:I

    const-string v2, "KEY_NOTIFICATION_ID"

    .line 357
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10079
    iget v1, p2, Landroidx/work/f;->b:I

    const-string v2, "KEY_FOREGROUND_SERVICE_TYPE"

    .line 358
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10087
    iget-object p2, p2, Landroidx/work/f;->c:Landroid/app/Notification;

    const-string v1, "KEY_NOTIFICATION"

    .line 359
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 360
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Landroidx/work/f;)Landroid/content/Intent;
    .locals 2

    .line 398
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroidx/work/impl/foreground/SystemForegroundService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_NOTIFY"

    .line 399
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 11072
    iget p0, p2, Landroidx/work/f;->a:I

    const-string v1, "KEY_NOTIFICATION_ID"

    .line 400
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11079
    iget p0, p2, Landroidx/work/f;->b:I

    const-string v1, "KEY_FOREGROUND_SERVICE_TYPE"

    .line 401
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11087
    iget-object p0, p2, Landroidx/work/f;->c:Landroid/app/Notification;

    const-string p2, "KEY_NOTIFICATION"

    .line 402
    invoke-virtual {v0, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p0, "KEY_WORKSPEC_ID"

    .line 403
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 2

    const/4 v0, 0x0

    .line 233
    iput-object v0, p0, Landroidx/work/impl/foreground/b;->j:Landroidx/work/impl/foreground/b$a;

    .line 234
    iget-object v0, p0, Landroidx/work/impl/foreground/b;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 235
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/foreground/b;->i:Landroidx/work/impl/a/d;

    invoke-virtual {v1}, Landroidx/work/impl/a/d;->a()V

    .line 236
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    iget-object v0, p0, Landroidx/work/impl/foreground/b;->b:Landroidx/work/impl/j;

    .line 7346
    iget-object v0, v0, Landroidx/work/impl/j;->f:Landroidx/work/impl/d;

    .line 237
    invoke-virtual {v0, p0}, Landroidx/work/impl/d;->b(Landroidx/work/impl/b;)V

    return-void

    :catchall_0
    move-exception v1

    .line 236
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method final a(Landroid/content/Intent;)V
    .locals 7

    const-string v0, "KEY_NOTIFICATION_ID"

    const/4 v1, 0x0

    .line 264
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "KEY_FOREGROUND_SERVICE_TYPE"

    .line 265
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "KEY_WORKSPEC_ID"

    .line 266
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "KEY_NOTIFICATION"

    .line 267
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/Notification;

    .line 268
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 270
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    const-string v5, "Notifying with (id: %s, workSpecId: %s, notificationType: %s)"

    .line 269
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 272
    iget-object v4, p0, Landroidx/work/impl/foreground/b;->j:Landroidx/work/impl/foreground/b$a;

    if-eqz v4, :cond_2

    .line 274
    new-instance v4, Landroidx/work/f;

    invoke-direct {v4, v0, p1, v2}, Landroidx/work/f;-><init>(ILandroid/app/Notification;I)V

    .line 277
    iget-object v5, p0, Landroidx/work/impl/foreground/b;->f:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object v4, p0, Landroidx/work/impl/foreground/b;->e:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 280
    iput-object v3, p0, Landroidx/work/impl/foreground/b;->e:Ljava/lang/String;

    .line 281
    iget-object v1, p0, Landroidx/work/impl/foreground/b;->j:Landroidx/work/impl/foreground/b$a;

    invoke-interface {v1, v0, v2, p1}, Landroidx/work/impl/foreground/b$a;->a(IILandroid/app/Notification;)V

    return-void

    .line 284
    :cond_0
    iget-object v3, p0, Landroidx/work/impl/foreground/b;->j:Landroidx/work/impl/foreground/b$a;

    invoke-interface {v3, v0, p1}, Landroidx/work/impl/foreground/b$a;->a(ILandroid/app/Notification;)V

    if-eqz v2, :cond_2

    .line 287
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p1, v0, :cond_2

    .line 290
    iget-object p1, p0, Landroidx/work/impl/foreground/b;->f:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 291
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/f;

    .line 8079
    iget v0, v0, Landroidx/work/f;->b:I

    or-int/2addr v1, v0

    goto :goto_0

    .line 294
    :cond_1
    iget-object p1, p0, Landroidx/work/impl/foreground/b;->f:Ljava/util/Map;

    iget-object v0, p0, Landroidx/work/impl/foreground/b;->e:Ljava/lang/String;

    .line 295
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/work/f;

    if-eqz p1, :cond_2

    .line 297
    iget-object v0, p0, Landroidx/work/impl/foreground/b;->j:Landroidx/work/impl/foreground/b$a;

    .line 9072
    iget v2, p1, Landroidx/work/f;->a:I

    .line 9087
    iget-object p1, p1, Landroidx/work/f;->c:Landroid/app/Notification;

    .line 297
    invoke-interface {v0, v2, v1, p1}, Landroidx/work/impl/foreground/b$a;->a(IILandroid/app/Notification;)V

    :cond_2
    return-void
.end method

.method final a(Landroidx/work/impl/foreground/b$a;)V
    .locals 3

    .line 204
    iget-object v0, p0, Landroidx/work/impl/foreground/b;->j:Landroidx/work/impl/foreground/b$a;

    if-eqz v0, :cond_0

    .line 205
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    move-result-object p1

    sget-object v0, Landroidx/work/impl/foreground/b;->a:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Throwable;

    const-string v2, "A callback already exists."

    invoke-virtual {p1, v0, v2, v1}, Landroidx/work/k;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void

    .line 208
    :cond_0
    iput-object p1, p0, Landroidx/work/impl/foreground/b;->j:Landroidx/work/impl/foreground/b$a;

    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 6

    .line 137
    iget-object p2, p0, Landroidx/work/impl/foreground/b;->d:Ljava/lang/Object;

    monitor-enter p2

    .line 138
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/foreground/b;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/model/WorkSpec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 140
    iget-object v2, p0, Landroidx/work/impl/foreground/b;->h:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Landroidx/work/impl/foreground/b;->i:Landroidx/work/impl/a/d;

    iget-object v2, p0, Landroidx/work/impl/foreground/b;->h:Ljava/util/Set;

    invoke-virtual {v0, v2}, Landroidx/work/impl/a/d;->a(Ljava/lang/Iterable;)V

    .line 146
    :cond_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    iget-object p2, p0, Landroidx/work/impl/foreground/b;->f:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/work/f;

    .line 150
    iget-object v0, p0, Landroidx/work/impl/foreground/b;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 151
    iget-object v0, p0, Landroidx/work/impl/foreground/b;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 156
    iget-object v0, p0, Landroidx/work/impl/foreground/b;->f:Ljava/util/Map;

    .line 157
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 159
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 160
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 161
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_1

    .line 164
    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/work/impl/foreground/b;->e:Ljava/lang/String;

    .line 165
    iget-object v0, p0, Landroidx/work/impl/foreground/b;->j:Landroidx/work/impl/foreground/b$a;

    if-eqz v0, :cond_3

    .line 166
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/f;

    .line 167
    iget-object v2, p0, Landroidx/work/impl/foreground/b;->j:Landroidx/work/impl/foreground/b$a;

    .line 4072
    iget v3, v0, Landroidx/work/f;->a:I

    .line 4079
    iget v4, v0, Landroidx/work/f;->b:I

    .line 4087
    iget-object v5, v0, Landroidx/work/f;->c:Landroid/app/Notification;

    .line 167
    invoke-interface {v2, v3, v4, v5}, Landroidx/work/impl/foreground/b$a;->a(IILandroid/app/Notification;)V

    .line 175
    iget-object v2, p0, Landroidx/work/impl/foreground/b;->j:Landroidx/work/impl/foreground/b$a;

    .line 5072
    iget v0, v0, Landroidx/work/f;->a:I

    .line 175
    invoke-interface {v2, v0}, Landroidx/work/impl/foreground/b$a;->a(I)V

    .line 182
    :cond_3
    iget-object v0, p0, Landroidx/work/impl/foreground/b;->j:Landroidx/work/impl/foreground/b$a;

    if-eqz p2, :cond_4

    if-eqz v0, :cond_4

    .line 191
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const-string v2, "Removing Notification (id: %s, workSpecId: %s ,notificationType: %s)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 6072
    iget v4, p2, Landroidx/work/f;->a:I

    .line 194
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    aput-object p1, v3, v1

    const/4 p1, 0x2

    .line 6079
    iget v1, p2, Landroidx/work/f;->b:I

    .line 196
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, p1

    .line 192
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 7072
    iget p1, p2, Landroidx/work/f;->a:I

    .line 198
    invoke-interface {v0, p1}, Landroidx/work/impl/foreground/b$a;->a(I)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 146
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 332
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 334
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v3, "Constraints unmet for WorkSpec %s"

    .line 335
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 336
    iget-object v2, p0, Landroidx/work/impl/foreground/b;->b:Landroidx/work/impl/j;

    .line 9672
    iget-object v3, v2, Landroidx/work/impl/j;->d:Landroidx/work/impl/utils/b/a;

    new-instance v4, Landroidx/work/impl/utils/j;

    invoke-direct {v4, v2, v0, v1}, Landroidx/work/impl/utils/j;-><init>(Landroidx/work/impl/j;Ljava/lang/String;Z)V

    invoke-interface {v3, v4}, Landroidx/work/impl/utils/b/a;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method
