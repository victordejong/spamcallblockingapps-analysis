.class Lcom/facebook/a/e;
.super Ljava/lang/Object;
.source "AppEventQueue.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Lcom/facebook/a/d;

.field private static final c:Ljava/util/concurrent/ScheduledExecutorService;

.field private static d:Ljava/util/concurrent/ScheduledFuture;

.field private static final e:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/facebook/a/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/e;->a:Ljava/lang/String;

    .line 55
    new-instance v0, Lcom/facebook/a/d;

    invoke-direct {v0}, Lcom/facebook/a/d;-><init>()V

    sput-object v0, Lcom/facebook/a/e;->b:Lcom/facebook/a/d;

    .line 57
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/e;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 61
    new-instance v0, Lcom/facebook/a/e$1;

    invoke-direct {v0}, Lcom/facebook/a/e$1;-><init>()V

    sput-object v0, Lcom/facebook/a/e;->e:Ljava/lang/Runnable;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/a/d;)Lcom/facebook/a/d;
    .locals 0

    .prologue
    .line 49
    sput-object p0, Lcom/facebook/a/e;->b:Lcom/facebook/a/d;

    return-object p0
.end method

.method private static a(Lcom/facebook/a/j;Lcom/facebook/a/d;)Lcom/facebook/a/l;
    .locals 8

    .prologue
    .line 157
    new-instance v1, Lcom/facebook/a/l;

    invoke-direct {v1}, Lcom/facebook/a/l;-><init>()V

    .line 159
    invoke-static {}, Lcom/facebook/j;->h()Landroid/content/Context;

    move-result-object v0

    .line 160
    invoke-static {v0}, Lcom/facebook/j;->b(Landroid/content/Context;)Z

    move-result v2

    .line 162
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 163
    invoke-virtual {p1}, Lcom/facebook/a/d;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/a;

    .line 166
    invoke-virtual {p1, v0}, Lcom/facebook/a/d;->a(Lcom/facebook/a/a;)Lcom/facebook/a/o;

    move-result-object v5

    .line 164
    invoke-static {v0, v5, v2, v1}, Lcom/facebook/a/e;->a(Lcom/facebook/a/a;Lcom/facebook/a/o;ZLcom/facebook/a/l;)Lcom/facebook/k;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_0

    .line 170
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 174
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 175
    sget-object v0, Lcom/facebook/q;->e:Lcom/facebook/q;

    sget-object v2, Lcom/facebook/a/e;->a:Ljava/lang/String;

    const-string/jumbo v4, "Flushing %d events due to %s."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v1, Lcom/facebook/a/l;->a:I

    .line 176
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 177
    invoke-virtual {p0}, Lcom/facebook/a/j;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 175
    invoke-static {v0, v2, v4, v5}, Lcom/facebook/internal/r;->a(Lcom/facebook/q;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/k;

    .line 182
    invoke-virtual {v0}, Lcom/facebook/k;->i()Lcom/facebook/n;

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 187
    :goto_2
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private static a(Lcom/facebook/a/a;Lcom/facebook/a/o;ZLcom/facebook/a/l;)Lcom/facebook/k;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 195
    invoke-virtual {p0}, Lcom/facebook/a/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-static {v0, v1}, Lcom/facebook/internal/m;->a(Ljava/lang/String;Z)Lcom/facebook/internal/l;

    move-result-object v4

    .line 200
    const-string/jumbo v3, "%s/activities"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v1

    .line 202
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-static {v2, v0, v2, v2}, Lcom/facebook/k;->a(Lcom/facebook/a;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/k$b;)Lcom/facebook/k;

    move-result-object v3

    .line 206
    invoke-virtual {v3}, Lcom/facebook/k;->e()Landroid/os/Bundle;

    move-result-object v0

    .line 207
    if-nez v0, :cond_0

    .line 208
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 210
    :cond_0
    const-string/jumbo v5, "access_token"

    invoke-virtual {p0}, Lcom/facebook/a/a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-static {}, Lcom/facebook/a/m;->d()Ljava/lang/String;

    move-result-object v5

    .line 213
    if-eqz v5, :cond_1

    .line 214
    const-string/jumbo v6, "device_token"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_1
    invoke-static {}, Lcom/facebook/a/h;->e()Ljava/lang/String;

    move-result-object v5

    .line 218
    if-eqz v5, :cond_2

    .line 219
    const-string/jumbo v6, "install_referrer"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_2
    invoke-virtual {v3, v0}, Lcom/facebook/k;->a(Landroid/os/Bundle;)V

    .line 226
    if-eqz v4, :cond_4

    .line 227
    invoke-virtual {v4}, Lcom/facebook/internal/l;->a()Z

    move-result v0

    .line 232
    :goto_0
    invoke-static {}, Lcom/facebook/j;->h()Landroid/content/Context;

    move-result-object v1

    .line 230
    invoke-virtual {p1, v3, v1, v0, p2}, Lcom/facebook/a/o;->a(Lcom/facebook/k;Landroid/content/Context;ZZ)I

    move-result v0

    .line 236
    if-nez v0, :cond_3

    move-object v0, v2

    .line 254
    :goto_1
    return-object v0

    .line 240
    :cond_3
    iget v1, p3, Lcom/facebook/a/l;->a:I

    add-int/2addr v0, v1

    iput v0, p3, Lcom/facebook/a/l;->a:I

    .line 242
    new-instance v0, Lcom/facebook/a/e$5;

    invoke-direct {v0, p0, v3, p1, p3}, Lcom/facebook/a/e$5;-><init>(Lcom/facebook/a/a;Lcom/facebook/k;Lcom/facebook/a/o;Lcom/facebook/a/l;)V

    invoke-virtual {v3, v0}, Lcom/facebook/k;->a(Lcom/facebook/k$b;)V

    move-object v0, v3

    .line 254
    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .prologue
    .line 49
    sput-object p0, Lcom/facebook/a/e;->d:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 74
    sget-object v0, Lcom/facebook/a/e;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/facebook/a/e$2;

    invoke-direct {v1}, Lcom/facebook/a/e$2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 81
    return-void
.end method

.method public static a(Lcom/facebook/a/a;Lcom/facebook/a/c;)V
    .locals 2

    .prologue
    .line 96
    sget-object v0, Lcom/facebook/a/e;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/facebook/a/e$4;

    invoke-direct {v1, p0, p1}, Lcom/facebook/a/e$4;-><init>(Lcom/facebook/a/a;Lcom/facebook/a/c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 115
    return-void
.end method

.method static synthetic a(Lcom/facebook/a/a;Lcom/facebook/k;Lcom/facebook/n;Lcom/facebook/a/o;Lcom/facebook/a/l;)V
    .locals 0

    .prologue
    .line 49
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/a/e;->b(Lcom/facebook/a/a;Lcom/facebook/k;Lcom/facebook/n;Lcom/facebook/a/o;Lcom/facebook/a/l;)V

    return-void
.end method

.method public static a(Lcom/facebook/a/j;)V
    .locals 2

    .prologue
    .line 85
    sget-object v0, Lcom/facebook/a/e;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/facebook/a/e$3;

    invoke-direct {v1, p0}, Lcom/facebook/a/e$3;-><init>(Lcom/facebook/a/j;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 91
    return-void
.end method

.method public static b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    sget-object v0, Lcom/facebook/a/e;->b:Lcom/facebook/a/d;

    invoke-virtual {v0}, Lcom/facebook/a/d;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcom/facebook/a/a;Lcom/facebook/k;Lcom/facebook/n;Lcom/facebook/a/o;Lcom/facebook/a/l;)V
    .locals 10

    .prologue
    .line 263
    invoke-virtual {p2}, Lcom/facebook/n;->a()Lcom/facebook/i;

    move-result-object v3

    .line 264
    const-string/jumbo v2, "Success"

    .line 266
    sget-object v0, Lcom/facebook/a/k;->a:Lcom/facebook/a/k;

    .line 268
    if-eqz v3, :cond_5

    .line 270
    invoke-virtual {v3}, Lcom/facebook/i;->b()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 271
    const-string/jumbo v2, "Failed: No Connectivity"

    .line 272
    sget-object v0, Lcom/facebook/a/k;->c:Lcom/facebook/a/k;

    move-object v1, v0

    .line 281
    :goto_0
    sget-object v0, Lcom/facebook/q;->e:Lcom/facebook/q;

    invoke-static {v0}, Lcom/facebook/j;->a(Lcom/facebook/q;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p1}, Lcom/facebook/k;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 286
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 287
    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 292
    :goto_1
    sget-object v4, Lcom/facebook/q;->e:Lcom/facebook/q;

    sget-object v5, Lcom/facebook/a/e;->a:Ljava/lang/String;

    const-string/jumbo v6, "Flush completed\nParams: %s\n  Result: %s\n  Events JSON: %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 294
    invoke-virtual {p1}, Lcom/facebook/k;->a()Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    const/4 v2, 0x2

    aput-object v0, v7, v2

    .line 292
    invoke-static {v4, v5, v6, v7}, Lcom/facebook/internal/r;->a(Lcom/facebook/q;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    :cond_0
    if-eqz v3, :cond_4

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p3, v0}, Lcom/facebook/a/o;->a(Z)V

    .line 301
    sget-object v0, Lcom/facebook/a/k;->c:Lcom/facebook/a/k;

    if-ne v1, v0, :cond_1

    .line 307
    invoke-static {}, Lcom/facebook/j;->f()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v2, Lcom/facebook/a/e$6;

    invoke-direct {v2, p0, p3}, Lcom/facebook/a/e$6;-><init>(Lcom/facebook/a/a;Lcom/facebook/a/o;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 315
    :cond_1
    sget-object v0, Lcom/facebook/a/k;->a:Lcom/facebook/a/k;

    if-eq v1, v0, :cond_2

    .line 317
    iget-object v0, p4, Lcom/facebook/a/l;->b:Lcom/facebook/a/k;

    sget-object v2, Lcom/facebook/a/k;->c:Lcom/facebook/a/k;

    if-eq v0, v2, :cond_2

    .line 318
    iput-object v1, p4, Lcom/facebook/a/l;->b:Lcom/facebook/a/k;

    .line 321
    :cond_2
    return-void

    .line 274
    :cond_3
    const-string/jumbo v0, "Failed:\n  Response: %s\n  Error %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 275
    invoke-virtual {p2}, Lcom/facebook/n;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x1

    .line 276
    invoke-virtual {v3}, Lcom/facebook/i;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 274
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 277
    sget-object v0, Lcom/facebook/a/k;->b:Lcom/facebook/a/k;

    move-object v1, v0

    goto :goto_0

    .line 288
    :catch_0
    move-exception v0

    .line 289
    const-string/jumbo v0, "<Can\'t encode events for debug logging>"

    goto :goto_1

    .line 299
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    move-object v1, v0

    goto :goto_0
.end method

.method static b(Lcom/facebook/a/j;)V
    .locals 4

    .prologue
    .line 126
    invoke-static {}, Lcom/facebook/a/f;->a()Lcom/facebook/a/n;

    move-result-object v0

    .line 128
    sget-object v1, Lcom/facebook/a/e;->b:Lcom/facebook/a/d;

    invoke-virtual {v1, v0}, Lcom/facebook/a/d;->a(Lcom/facebook/a/n;)V

    .line 133
    :try_start_0
    sget-object v0, Lcom/facebook/a/e;->b:Lcom/facebook/a/d;

    invoke-static {p0, v0}, Lcom/facebook/a/e;->a(Lcom/facebook/a/j;Lcom/facebook/a/d;)Lcom/facebook/a/l;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 141
    if-eqz v0, :cond_0

    .line 142
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.facebook.sdk.APP_EVENTS_FLUSHED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    const-string/jumbo v2, "com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED"

    iget v3, v0, Lcom/facebook/a/l;->a:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 146
    const-string/jumbo v2, "com.facebook.sdk.APP_EVENTS_FLUSH_RESULT"

    iget-object v0, v0, Lcom/facebook/a/l;->b:Lcom/facebook/a/k;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 149
    invoke-static {}, Lcom/facebook/j;->h()Landroid/content/Context;

    move-result-object v0

    .line 150
    invoke-static {v0}, Landroidx/h/a/a;->a(Landroid/content/Context;)Landroidx/h/a/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/h/a/a;->a(Landroid/content/Intent;)Z

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    sget-object v1, Lcom/facebook/a/e;->a:Ljava/lang/String;

    const-string/jumbo v2, "Caught unexpected exception while flushing app events: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic c()Lcom/facebook/a/d;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/facebook/a/e;->b:Lcom/facebook/a/d;

    return-object v0
.end method

.method static synthetic d()Ljava/util/concurrent/ScheduledFuture;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/facebook/a/e;->d:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/facebook/a/e;->e:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic f()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/facebook/a/e;->c:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method
