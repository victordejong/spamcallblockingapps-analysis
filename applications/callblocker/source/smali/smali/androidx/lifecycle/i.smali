.class public Landroidx/lifecycle/i;
.super Landroidx/lifecycle/e;
.source "LifecycleRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/i$a;
    }
.end annotation


# instance fields
.field private b:Landroidx/a/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/a/a/b/a",
            "<",
            "Landroidx/lifecycle/g;",
            "Landroidx/lifecycle/i$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroidx/lifecycle/e$b;

.field private final d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroidx/lifecycle/h;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/lifecycle/e$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/lifecycle/h;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Landroidx/lifecycle/e;-><init>()V

    .line 56
    new-instance v0, Landroidx/a/a/b/a;

    invoke-direct {v0}, Landroidx/a/a/b/a;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/i;->b:Landroidx/a/a/b/a;

    .line 71
    iput v1, p0, Landroidx/lifecycle/i;->e:I

    .line 73
    iput-boolean v1, p0, Landroidx/lifecycle/i;->f:Z

    .line 74
    iput-boolean v1, p0, Landroidx/lifecycle/i;->g:Z

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/i;->h:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/lifecycle/i;->d:Ljava/lang/ref/WeakReference;

    .line 96
    sget-object v0, Landroidx/lifecycle/e$b;->b:Landroidx/lifecycle/e$b;

    iput-object v0, p0, Landroidx/lifecycle/i;->c:Landroidx/lifecycle/e$b;

    .line 97
    return-void
.end method

.method static a(Landroidx/lifecycle/e$b;Landroidx/lifecycle/e$b;)Landroidx/lifecycle/e$b;
    .locals 1

    .prologue
    .line 346
    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/e$b;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    move-object p1, p0

    goto :goto_0
.end method

.method private a(Landroidx/lifecycle/h;)V
    .locals 5

    .prologue
    .line 292
    iget-object v0, p0, Landroidx/lifecycle/i;->b:Landroidx/a/a/b/a;

    .line 293
    invoke-virtual {v0}, Landroidx/a/a/b/a;->c()Landroidx/a/a/b/b$d;

    move-result-object v2

    .line 294
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/lifecycle/i;->g:Z

    if-nez v0, :cond_1

    .line 295
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 296
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/i$a;

    .line 297
    :goto_0
    iget-object v3, v1, Landroidx/lifecycle/i$a;->a:Landroidx/lifecycle/e$b;

    iget-object v4, p0, Landroidx/lifecycle/i;->c:Landroidx/lifecycle/e$b;

    invoke-virtual {v3, v4}, Landroidx/lifecycle/e$b;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gez v3, :cond_0

    iget-boolean v3, p0, Landroidx/lifecycle/i;->g:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroidx/lifecycle/i;->b:Landroidx/a/a/b/a;

    .line 298
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/a/a/b/a;->c(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 299
    iget-object v3, v1, Landroidx/lifecycle/i$a;->a:Landroidx/lifecycle/e$b;

    invoke-direct {p0, v3}, Landroidx/lifecycle/i;->d(Landroidx/lifecycle/e$b;)V

    .line 300
    iget-object v3, v1, Landroidx/lifecycle/i$a;->a:Landroidx/lifecycle/e$b;

    invoke-static {v3}, Landroidx/lifecycle/i;->f(Landroidx/lifecycle/e$b;)Landroidx/lifecycle/e$a;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Landroidx/lifecycle/i$a;->a(Landroidx/lifecycle/h;Landroidx/lifecycle/e$a;)V

    .line 301
    invoke-direct {p0}, Landroidx/lifecycle/i;->c()V

    goto :goto_0

    .line 304
    :cond_1
    return-void
.end method

.method static b(Landroidx/lifecycle/e$a;)Landroidx/lifecycle/e$b;
    .locals 3

    .prologue
    .line 243
    sget-object v0, Landroidx/lifecycle/i$1;->a:[I

    invoke-virtual {p0}, Landroidx/lifecycle/e$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 257
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected event value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :pswitch_0
    sget-object v0, Landroidx/lifecycle/e$b;->c:Landroidx/lifecycle/e$b;

    .line 253
    :goto_0
    return-object v0

    .line 249
    :pswitch_1
    sget-object v0, Landroidx/lifecycle/e$b;->d:Landroidx/lifecycle/e$b;

    goto :goto_0

    .line 251
    :pswitch_2
    sget-object v0, Landroidx/lifecycle/e$b;->e:Landroidx/lifecycle/e$b;

    goto :goto_0

    .line 253
    :pswitch_3
    sget-object v0, Landroidx/lifecycle/e$b;->a:Landroidx/lifecycle/e$b;

    goto :goto_0

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private b(Landroidx/lifecycle/h;)V
    .locals 5

    .prologue
    .line 307
    iget-object v0, p0, Landroidx/lifecycle/i;->b:Landroidx/a/a/b/a;

    .line 308
    invoke-virtual {v0}, Landroidx/a/a/b/a;->b()Ljava/util/Iterator;

    move-result-object v2

    .line 309
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/lifecycle/i;->g:Z

    if-nez v0, :cond_1

    .line 310
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 311
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/i$a;

    .line 312
    :goto_0
    iget-object v3, v1, Landroidx/lifecycle/i$a;->a:Landroidx/lifecycle/e$b;

    iget-object v4, p0, Landroidx/lifecycle/i;->c:Landroidx/lifecycle/e$b;

    invoke-virtual {v3, v4}, Landroidx/lifecycle/e$b;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-lez v3, :cond_0

    iget-boolean v3, p0, Landroidx/lifecycle/i;->g:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroidx/lifecycle/i;->b:Landroidx/a/a/b/a;

    .line 313
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/a/a/b/a;->c(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 314
    iget-object v3, v1, Landroidx/lifecycle/i$a;->a:Landroidx/lifecycle/e$b;

    invoke-static {v3}, Landroidx/lifecycle/i;->e(Landroidx/lifecycle/e$b;)Landroidx/lifecycle/e$a;

    move-result-object v3

    .line 315
    invoke-static {v3}, Landroidx/lifecycle/i;->b(Landroidx/lifecycle/e$a;)Landroidx/lifecycle/e$b;

    move-result-object v4

    invoke-direct {p0, v4}, Landroidx/lifecycle/i;->d(Landroidx/lifecycle/e$b;)V

    .line 316
    invoke-virtual {v1, p1, v3}, Landroidx/lifecycle/i$a;->a(Landroidx/lifecycle/h;Landroidx/lifecycle/e$a;)V

    .line 317
    invoke-direct {p0}, Landroidx/lifecycle/i;->c()V

    goto :goto_0

    .line 320
    :cond_1
    return-void
.end method

.method private b()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 150
    iget-object v0, p0, Landroidx/lifecycle/i;->b:Landroidx/a/a/b/a;

    invoke-virtual {v0}, Landroidx/a/a/b/a;->a()I

    move-result v0

    if-nez v0, :cond_0

    .line 155
    :goto_0
    return v1

    .line 153
    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/i;->b:Landroidx/a/a/b/a;

    invoke-virtual {v0}, Landroidx/a/a/b/a;->d()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/i$a;

    iget-object v2, v0, Landroidx/lifecycle/i$a;->a:Landroidx/lifecycle/e$b;

    .line 154
    iget-object v0, p0, Landroidx/lifecycle/i;->b:Landroidx/a/a/b/a;

    invoke-virtual {v0}, Landroidx/a/a/b/a;->e()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/i$a;

    iget-object v0, v0, Landroidx/lifecycle/i$a;->a:Landroidx/lifecycle/e$b;

    .line 155
    if-ne v2, v0, :cond_1

    iget-object v2, p0, Landroidx/lifecycle/i;->c:Landroidx/lifecycle/e$b;

    if-ne v2, v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private c(Landroidx/lifecycle/g;)Landroidx/lifecycle/e$b;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 159
    iget-object v0, p0, Landroidx/lifecycle/i;->b:Landroidx/a/a/b/a;

    invoke-virtual {v0, p1}, Landroidx/a/a/b/a;->d(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/i$a;

    iget-object v0, v0, Landroidx/lifecycle/i$a;->a:Landroidx/lifecycle/e$b;

    move-object v1, v0

    .line 162
    :goto_0
    iget-object v0, p0, Landroidx/lifecycle/i;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/lifecycle/i;->h:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/lifecycle/i;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/e$b;

    .line 164
    :goto_1
    iget-object v2, p0, Landroidx/lifecycle/i;->c:Landroidx/lifecycle/e$b;

    invoke-static {v2, v1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$b;Landroidx/lifecycle/e$b;)Landroidx/lifecycle/e$b;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$b;Landroidx/lifecycle/e$b;)Landroidx/lifecycle/e$b;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v1, v2

    .line 161
    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 162
    goto :goto_1
.end method

.method private c()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Landroidx/lifecycle/i;->h:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/lifecycle/i;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 203
    return-void
.end method

.method private c(Landroidx/lifecycle/e$b;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 135
    iget-object v0, p0, Landroidx/lifecycle/i;->c:Landroidx/lifecycle/e$b;

    if-ne v0, p1, :cond_0

    .line 147
    :goto_0
    return-void

    .line 138
    :cond_0
    iput-object p1, p0, Landroidx/lifecycle/i;->c:Landroidx/lifecycle/e$b;

    .line 139
    iget-boolean v0, p0, Landroidx/lifecycle/i;->f:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroidx/lifecycle/i;->e:I

    if-eqz v0, :cond_2

    .line 140
    :cond_1
    iput-boolean v1, p0, Landroidx/lifecycle/i;->g:Z

    goto :goto_0

    .line 144
    :cond_2
    iput-boolean v1, p0, Landroidx/lifecycle/i;->f:Z

    .line 145
    invoke-direct {p0}, Landroidx/lifecycle/i;->d()V

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/lifecycle/i;->f:Z

    goto :goto_0
.end method

.method private d()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 325
    iget-object v0, p0, Landroidx/lifecycle/i;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/h;

    .line 326
    if-nez v0, :cond_0

    .line 327
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroidx/lifecycle/i;->b()Z

    move-result v1

    if-nez v1, :cond_2

    .line 331
    iput-boolean v3, p0, Landroidx/lifecycle/i;->g:Z

    .line 333
    iget-object v2, p0, Landroidx/lifecycle/i;->c:Landroidx/lifecycle/e$b;

    iget-object v1, p0, Landroidx/lifecycle/i;->b:Landroidx/a/a/b/a;

    invoke-virtual {v1}, Landroidx/a/a/b/a;->d()Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/i$a;

    iget-object v1, v1, Landroidx/lifecycle/i$a;->a:Landroidx/lifecycle/e$b;

    invoke-virtual {v2, v1}, Landroidx/lifecycle/e$b;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_1

    .line 334
    invoke-direct {p0, v0}, Landroidx/lifecycle/i;->b(Landroidx/lifecycle/h;)V

    .line 336
    :cond_1
    iget-object v1, p0, Landroidx/lifecycle/i;->b:Landroidx/a/a/b/a;

    invoke-virtual {v1}, Landroidx/a/a/b/a;->e()Ljava/util/Map$Entry;

    move-result-object v1

    .line 337
    iget-boolean v2, p0, Landroidx/lifecycle/i;->g:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroidx/lifecycle/i;->c:Landroidx/lifecycle/e$b;

    .line 338
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/i$a;

    iget-object v1, v1, Landroidx/lifecycle/i$a;->a:Landroidx/lifecycle/e$b;

    invoke-virtual {v2, v1}, Landroidx/lifecycle/e$b;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_0

    .line 339
    invoke-direct {p0, v0}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/h;)V

    goto :goto_0

    .line 342
    :cond_2
    iput-boolean v3, p0, Landroidx/lifecycle/i;->g:Z

    .line 343
    return-void
.end method

.method private d(Landroidx/lifecycle/e$b;)V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Landroidx/lifecycle/i;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    return-void
.end method

.method private static e(Landroidx/lifecycle/e$b;)Landroidx/lifecycle/e$a;
    .locals 3

    .prologue
    .line 261
    sget-object v0, Landroidx/lifecycle/i$1;->b:[I

    invoke-virtual {p0}, Landroidx/lifecycle/e$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 273
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected state value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 265
    :pswitch_1
    sget-object v0, Landroidx/lifecycle/e$a;->ON_DESTROY:Landroidx/lifecycle/e$a;

    .line 269
    :goto_0
    return-object v0

    .line 267
    :pswitch_2
    sget-object v0, Landroidx/lifecycle/e$a;->ON_STOP:Landroidx/lifecycle/e$a;

    goto :goto_0

    .line 269
    :pswitch_3
    sget-object v0, Landroidx/lifecycle/e$a;->ON_PAUSE:Landroidx/lifecycle/e$a;

    goto :goto_0

    .line 271
    :pswitch_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 261
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static f(Landroidx/lifecycle/e$b;)Landroidx/lifecycle/e$a;
    .locals 3

    .prologue
    .line 277
    sget-object v0, Landroidx/lifecycle/i$1;->b:[I

    invoke-virtual {p0}, Landroidx/lifecycle/e$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 288
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected state value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :pswitch_0
    sget-object v0, Landroidx/lifecycle/e$a;->ON_CREATE:Landroidx/lifecycle/e$a;

    .line 284
    :goto_0
    return-object v0

    .line 282
    :pswitch_1
    sget-object v0, Landroidx/lifecycle/e$a;->ON_START:Landroidx/lifecycle/e$a;

    goto :goto_0

    .line 284
    :pswitch_2
    sget-object v0, Landroidx/lifecycle/e$a;->ON_RESUME:Landroidx/lifecycle/e$a;

    goto :goto_0

    .line 286
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 277
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()Landroidx/lifecycle/e$b;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Landroidx/lifecycle/i;->c:Landroidx/lifecycle/e$b;

    return-object v0
.end method

.method public a(Landroidx/lifecycle/e$a;)V
    .locals 1

    .prologue
    .line 130
    invoke-static {p1}, Landroidx/lifecycle/i;->b(Landroidx/lifecycle/e$a;)Landroidx/lifecycle/e$b;

    move-result-object v0

    .line 131
    invoke-direct {p0, v0}, Landroidx/lifecycle/i;->c(Landroidx/lifecycle/e$b;)V

    .line 132
    return-void
.end method

.method public a(Landroidx/lifecycle/e$b;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Landroidx/lifecycle/i;->b(Landroidx/lifecycle/e$b;)V

    .line 109
    return-void
.end method

.method public a(Landroidx/lifecycle/g;)V
    .locals 5

    .prologue
    .line 169
    iget-object v0, p0, Landroidx/lifecycle/i;->c:Landroidx/lifecycle/e$b;

    sget-object v1, Landroidx/lifecycle/e$b;->a:Landroidx/lifecycle/e$b;

    if-ne v0, v1, :cond_1

    sget-object v0, Landroidx/lifecycle/e$b;->a:Landroidx/lifecycle/e$b;

    .line 170
    :goto_0
    new-instance v3, Landroidx/lifecycle/i$a;

    invoke-direct {v3, p1, v0}, Landroidx/lifecycle/i$a;-><init>(Landroidx/lifecycle/g;Landroidx/lifecycle/e$b;)V

    .line 171
    iget-object v0, p0, Landroidx/lifecycle/i;->b:Landroidx/a/a/b/a;

    invoke-virtual {v0, p1, v3}, Landroidx/a/a/b/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/i$a;

    .line 173
    if-eqz v0, :cond_2

    .line 199
    :cond_0
    :goto_1
    return-void

    .line 169
    :cond_1
    sget-object v0, Landroidx/lifecycle/e$b;->b:Landroidx/lifecycle/e$b;

    goto :goto_0

    .line 176
    :cond_2
    iget-object v0, p0, Landroidx/lifecycle/i;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/h;

    .line 177
    if-eqz v0, :cond_0

    .line 182
    iget v1, p0, Landroidx/lifecycle/i;->e:I

    if-nez v1, :cond_3

    iget-boolean v1, p0, Landroidx/lifecycle/i;->f:Z

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x1

    .line 183
    :goto_2
    invoke-direct {p0, p1}, Landroidx/lifecycle/i;->c(Landroidx/lifecycle/g;)Landroidx/lifecycle/e$b;

    move-result-object v2

    .line 184
    iget v4, p0, Landroidx/lifecycle/i;->e:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroidx/lifecycle/i;->e:I

    .line 185
    :goto_3
    iget-object v4, v3, Landroidx/lifecycle/i$a;->a:Landroidx/lifecycle/e$b;

    invoke-virtual {v4, v2}, Landroidx/lifecycle/e$b;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-gez v2, :cond_5

    iget-object v2, p0, Landroidx/lifecycle/i;->b:Landroidx/a/a/b/a;

    .line 186
    invoke-virtual {v2, p1}, Landroidx/a/a/b/a;->c(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 187
    iget-object v2, v3, Landroidx/lifecycle/i$a;->a:Landroidx/lifecycle/e$b;

    invoke-direct {p0, v2}, Landroidx/lifecycle/i;->d(Landroidx/lifecycle/e$b;)V

    .line 188
    iget-object v2, v3, Landroidx/lifecycle/i$a;->a:Landroidx/lifecycle/e$b;

    invoke-static {v2}, Landroidx/lifecycle/i;->f(Landroidx/lifecycle/e$b;)Landroidx/lifecycle/e$a;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroidx/lifecycle/i$a;->a(Landroidx/lifecycle/h;Landroidx/lifecycle/e$a;)V

    .line 189
    invoke-direct {p0}, Landroidx/lifecycle/i;->c()V

    .line 191
    invoke-direct {p0, p1}, Landroidx/lifecycle/i;->c(Landroidx/lifecycle/g;)Landroidx/lifecycle/e$b;

    move-result-object v2

    goto :goto_3

    .line 182
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 194
    :cond_5
    if-nez v1, :cond_6

    .line 196
    invoke-direct {p0}, Landroidx/lifecycle/i;->d()V

    .line 198
    :cond_6
    iget v0, p0, Landroidx/lifecycle/i;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/lifecycle/i;->e:I

    goto :goto_1
.end method

.method public b(Landroidx/lifecycle/e$b;)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0, p1}, Landroidx/lifecycle/i;->c(Landroidx/lifecycle/e$b;)V

    .line 119
    return-void
.end method

.method public b(Landroidx/lifecycle/g;)V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Landroidx/lifecycle/i;->b:Landroidx/a/a/b/a;

    invoke-virtual {v0, p1}, Landroidx/a/a/b/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    return-void
.end method
