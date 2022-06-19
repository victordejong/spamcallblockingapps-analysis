.class public Landroidx/lifecycle/l;
.super Landroidx/lifecycle/g;
.source "LifecycleRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/l$a;
    }
.end annotation


# instance fields
.field private b:Landroidx/a/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/a/a/b/a<",
            "Landroidx/lifecycle/j;",
            "Landroidx/lifecycle/l$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroidx/lifecycle/g$b;

.field private final d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/lifecycle/k;",
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
            "Ljava/util/ArrayList<",
            "Landroidx/lifecycle/g$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/lifecycle/k;)V
    .locals 1

    .line 94
    invoke-direct {p0}, Landroidx/lifecycle/g;-><init>()V

    .line 56
    new-instance v0, Landroidx/a/a/b/a;

    invoke-direct {v0}, Landroidx/a/a/b/a;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/l;->b:Landroidx/a/a/b/a;

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Landroidx/lifecycle/l;->e:I

    .line 73
    iput-boolean v0, p0, Landroidx/lifecycle/l;->f:Z

    .line 74
    iput-boolean v0, p0, Landroidx/lifecycle/l;->g:Z

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/l;->h:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/lifecycle/l;->d:Ljava/lang/ref/WeakReference;

    .line 96
    sget-object p1, Landroidx/lifecycle/g$b;->b:Landroidx/lifecycle/g$b;

    iput-object p1, p0, Landroidx/lifecycle/l;->c:Landroidx/lifecycle/g$b;

    return-void
.end method

.method static a(Landroidx/lifecycle/g$b;Landroidx/lifecycle/g$b;)Landroidx/lifecycle/g$b;
    .locals 1

    if-eqz p1, :cond_0

    .line 346
    invoke-virtual {p1, p0}, Landroidx/lifecycle/g$b;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    move-object p0, p1

    :cond_0
    return-object p0
.end method

.method private a(Landroidx/lifecycle/k;)V
    .locals 5

    .line 292
    iget-object v0, p0, Landroidx/lifecycle/l;->b:Landroidx/a/a/b/a;

    .line 293
    invoke-virtual {v0}, Landroidx/a/a/b/a;->c()Landroidx/a/a/b/b$d;

    move-result-object v0

    .line 294
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroidx/lifecycle/l;->g:Z

    if-nez v1, :cond_1

    .line 295
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 296
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/l$a;

    .line 297
    :goto_0
    iget-object v3, v2, Landroidx/lifecycle/l$a;->a:Landroidx/lifecycle/g$b;

    iget-object v4, p0, Landroidx/lifecycle/l;->c:Landroidx/lifecycle/g$b;

    invoke-virtual {v3, v4}, Landroidx/lifecycle/g$b;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gez v3, :cond_0

    iget-boolean v3, p0, Landroidx/lifecycle/l;->g:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroidx/lifecycle/l;->b:Landroidx/a/a/b/a;

    .line 298
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/a/a/b/a;->c(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 299
    iget-object v3, v2, Landroidx/lifecycle/l$a;->a:Landroidx/lifecycle/g$b;

    invoke-direct {p0, v3}, Landroidx/lifecycle/l;->d(Landroidx/lifecycle/g$b;)V

    .line 300
    iget-object v3, v2, Landroidx/lifecycle/l$a;->a:Landroidx/lifecycle/g$b;

    invoke-static {v3}, Landroidx/lifecycle/l;->f(Landroidx/lifecycle/g$b;)Landroidx/lifecycle/g$a;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroidx/lifecycle/l$a;->a(Landroidx/lifecycle/k;Landroidx/lifecycle/g$a;)V

    .line 301
    invoke-direct {p0}, Landroidx/lifecycle/l;->c()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static b(Landroidx/lifecycle/g$a;)Landroidx/lifecycle/g$b;
    .locals 3

    .line 243
    sget-object v0, Landroidx/lifecycle/l$1;->a:[I

    invoke-virtual {p0}, Landroidx/lifecycle/g$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 257
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected event value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :pswitch_0
    sget-object p0, Landroidx/lifecycle/g$b;->a:Landroidx/lifecycle/g$b;

    return-object p0

    .line 251
    :pswitch_1
    sget-object p0, Landroidx/lifecycle/g$b;->e:Landroidx/lifecycle/g$b;

    return-object p0

    .line 249
    :pswitch_2
    sget-object p0, Landroidx/lifecycle/g$b;->d:Landroidx/lifecycle/g$b;

    return-object p0

    .line 246
    :pswitch_3
    sget-object p0, Landroidx/lifecycle/g$b;->c:Landroidx/lifecycle/g$b;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(Landroidx/lifecycle/k;)V
    .locals 5

    .line 307
    iget-object v0, p0, Landroidx/lifecycle/l;->b:Landroidx/a/a/b/a;

    .line 308
    invoke-virtual {v0}, Landroidx/a/a/b/a;->b()Ljava/util/Iterator;

    move-result-object v0

    .line 309
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroidx/lifecycle/l;->g:Z

    if-nez v1, :cond_1

    .line 310
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 311
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/l$a;

    .line 312
    :goto_0
    iget-object v3, v2, Landroidx/lifecycle/l$a;->a:Landroidx/lifecycle/g$b;

    iget-object v4, p0, Landroidx/lifecycle/l;->c:Landroidx/lifecycle/g$b;

    invoke-virtual {v3, v4}, Landroidx/lifecycle/g$b;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-lez v3, :cond_0

    iget-boolean v3, p0, Landroidx/lifecycle/l;->g:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroidx/lifecycle/l;->b:Landroidx/a/a/b/a;

    .line 313
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/a/a/b/a;->c(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 314
    iget-object v3, v2, Landroidx/lifecycle/l$a;->a:Landroidx/lifecycle/g$b;

    invoke-static {v3}, Landroidx/lifecycle/l;->e(Landroidx/lifecycle/g$b;)Landroidx/lifecycle/g$a;

    move-result-object v3

    .line 315
    invoke-static {v3}, Landroidx/lifecycle/l;->b(Landroidx/lifecycle/g$a;)Landroidx/lifecycle/g$b;

    move-result-object v4

    invoke-direct {p0, v4}, Landroidx/lifecycle/l;->d(Landroidx/lifecycle/g$b;)V

    .line 316
    invoke-virtual {v2, p1, v3}, Landroidx/lifecycle/l$a;->a(Landroidx/lifecycle/k;Landroidx/lifecycle/g$a;)V

    .line 317
    invoke-direct {p0}, Landroidx/lifecycle/l;->c()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b()Z
    .locals 3

    .line 150
    iget-object v0, p0, Landroidx/lifecycle/l;->b:Landroidx/a/a/b/a;

    invoke-virtual {v0}, Landroidx/a/a/b/a;->a()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 153
    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/l;->b:Landroidx/a/a/b/a;

    invoke-virtual {v0}, Landroidx/a/a/b/a;->d()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/l$a;

    iget-object v0, v0, Landroidx/lifecycle/l$a;->a:Landroidx/lifecycle/g$b;

    .line 154
    iget-object v2, p0, Landroidx/lifecycle/l;->b:Landroidx/a/a/b/a;

    invoke-virtual {v2}, Landroidx/a/a/b/a;->e()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/l$a;

    iget-object v2, v2, Landroidx/lifecycle/l$a;->a:Landroidx/lifecycle/g$b;

    if-ne v0, v2, :cond_1

    .line 155
    iget-object v0, p0, Landroidx/lifecycle/l;->c:Landroidx/lifecycle/g$b;

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private c(Landroidx/lifecycle/j;)Landroidx/lifecycle/g$b;
    .locals 2

    .line 159
    iget-object v0, p0, Landroidx/lifecycle/l;->b:Landroidx/a/a/b/a;

    invoke-virtual {v0, p1}, Landroidx/a/a/b/a;->d(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 161
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/l$a;

    iget-object p1, p1, Landroidx/lifecycle/l$a;->a:Landroidx/lifecycle/g$b;

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 162
    :goto_0
    iget-object v1, p0, Landroidx/lifecycle/l;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Landroidx/lifecycle/l;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/g$b;

    .line 164
    :cond_1
    iget-object v1, p0, Landroidx/lifecycle/l;->c:Landroidx/lifecycle/g$b;

    invoke-static {v1, p1}, Landroidx/lifecycle/l;->a(Landroidx/lifecycle/g$b;Landroidx/lifecycle/g$b;)Landroidx/lifecycle/g$b;

    move-result-object p1

    invoke-static {p1, v0}, Landroidx/lifecycle/l;->a(Landroidx/lifecycle/g$b;Landroidx/lifecycle/g$b;)Landroidx/lifecycle/g$b;

    move-result-object p1

    return-object p1
.end method

.method private c()V
    .locals 2

    .line 202
    iget-object v0, p0, Landroidx/lifecycle/l;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private c(Landroidx/lifecycle/g$b;)V
    .locals 1

    .line 135
    iget-object v0, p0, Landroidx/lifecycle/l;->c:Landroidx/lifecycle/g$b;

    if-ne v0, p1, :cond_0

    return-void

    .line 138
    :cond_0
    iput-object p1, p0, Landroidx/lifecycle/l;->c:Landroidx/lifecycle/g$b;

    .line 139
    iget-boolean p1, p0, Landroidx/lifecycle/l;->f:Z

    const/4 v0, 0x1

    if-nez p1, :cond_2

    iget p1, p0, Landroidx/lifecycle/l;->e:I

    if-eqz p1, :cond_1

    goto :goto_0

    .line 144
    :cond_1
    iput-boolean v0, p0, Landroidx/lifecycle/l;->f:Z

    .line 145
    invoke-direct {p0}, Landroidx/lifecycle/l;->d()V

    const/4 p1, 0x0

    .line 146
    iput-boolean p1, p0, Landroidx/lifecycle/l;->f:Z

    return-void

    .line 140
    :cond_2
    :goto_0
    iput-boolean v0, p0, Landroidx/lifecycle/l;->g:Z

    return-void
.end method

.method private d()V
    .locals 3

    .line 325
    iget-object v0, p0, Landroidx/lifecycle/l;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/k;

    if-eqz v0, :cond_3

    .line 330
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroidx/lifecycle/l;->b()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 331
    iput-boolean v2, p0, Landroidx/lifecycle/l;->g:Z

    .line 333
    iget-object v1, p0, Landroidx/lifecycle/l;->c:Landroidx/lifecycle/g$b;

    iget-object v2, p0, Landroidx/lifecycle/l;->b:Landroidx/a/a/b/a;

    invoke-virtual {v2}, Landroidx/a/a/b/a;->d()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/l$a;

    iget-object v2, v2, Landroidx/lifecycle/l$a;->a:Landroidx/lifecycle/g$b;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/g$b;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_1

    .line 334
    invoke-direct {p0, v0}, Landroidx/lifecycle/l;->b(Landroidx/lifecycle/k;)V

    .line 336
    :cond_1
    iget-object v1, p0, Landroidx/lifecycle/l;->b:Landroidx/a/a/b/a;

    invoke-virtual {v1}, Landroidx/a/a/b/a;->e()Ljava/util/Map$Entry;

    move-result-object v1

    .line 337
    iget-boolean v2, p0, Landroidx/lifecycle/l;->g:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroidx/lifecycle/l;->c:Landroidx/lifecycle/g$b;

    .line 338
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/l$a;

    iget-object v1, v1, Landroidx/lifecycle/l$a;->a:Landroidx/lifecycle/g$b;

    invoke-virtual {v2, v1}, Landroidx/lifecycle/g$b;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_0

    .line 339
    invoke-direct {p0, v0}, Landroidx/lifecycle/l;->a(Landroidx/lifecycle/k;)V

    goto :goto_0

    .line 342
    :cond_2
    iput-boolean v2, p0, Landroidx/lifecycle/l;->g:Z

    return-void

    .line 327
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private d(Landroidx/lifecycle/g$b;)V
    .locals 1

    .line 206
    iget-object v0, p0, Landroidx/lifecycle/l;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static e(Landroidx/lifecycle/g$b;)Landroidx/lifecycle/g$a;
    .locals 3

    .line 261
    sget-object v0, Landroidx/lifecycle/l$1;->b:[I

    invoke-virtual {p0}, Landroidx/lifecycle/g$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 273
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 269
    :cond_1
    sget-object p0, Landroidx/lifecycle/g$a;->ON_PAUSE:Landroidx/lifecycle/g$a;

    return-object p0

    .line 267
    :cond_2
    sget-object p0, Landroidx/lifecycle/g$a;->ON_STOP:Landroidx/lifecycle/g$a;

    return-object p0

    .line 265
    :cond_3
    sget-object p0, Landroidx/lifecycle/g$a;->ON_DESTROY:Landroidx/lifecycle/g$a;

    return-object p0

    .line 263
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static f(Landroidx/lifecycle/g$b;)Landroidx/lifecycle/g$a;
    .locals 3

    .line 277
    sget-object v0, Landroidx/lifecycle/l$1;->b:[I

    invoke-virtual {p0}, Landroidx/lifecycle/g$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 288
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 284
    :cond_2
    sget-object p0, Landroidx/lifecycle/g$a;->ON_RESUME:Landroidx/lifecycle/g$a;

    return-object p0

    .line 282
    :cond_3
    sget-object p0, Landroidx/lifecycle/g$a;->ON_START:Landroidx/lifecycle/g$a;

    return-object p0

    .line 280
    :cond_4
    :goto_0
    sget-object p0, Landroidx/lifecycle/g$a;->ON_CREATE:Landroidx/lifecycle/g$a;

    return-object p0
.end method


# virtual methods
.method public a()Landroidx/lifecycle/g$b;
    .locals 1

    .line 239
    iget-object v0, p0, Landroidx/lifecycle/l;->c:Landroidx/lifecycle/g$b;

    return-object v0
.end method

.method public a(Landroidx/lifecycle/g$a;)V
    .locals 0

    .line 130
    invoke-static {p1}, Landroidx/lifecycle/l;->b(Landroidx/lifecycle/g$a;)Landroidx/lifecycle/g$b;

    move-result-object p1

    .line 131
    invoke-direct {p0, p1}, Landroidx/lifecycle/l;->c(Landroidx/lifecycle/g$b;)V

    return-void
.end method

.method public a(Landroidx/lifecycle/g$b;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 108
    invoke-virtual {p0, p1}, Landroidx/lifecycle/l;->b(Landroidx/lifecycle/g$b;)V

    return-void
.end method

.method public a(Landroidx/lifecycle/j;)V
    .locals 6

    .line 169
    iget-object v0, p0, Landroidx/lifecycle/l;->c:Landroidx/lifecycle/g$b;

    sget-object v1, Landroidx/lifecycle/g$b;->a:Landroidx/lifecycle/g$b;

    if-ne v0, v1, :cond_0

    sget-object v0, Landroidx/lifecycle/g$b;->a:Landroidx/lifecycle/g$b;

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/lifecycle/g$b;->b:Landroidx/lifecycle/g$b;

    .line 170
    :goto_0
    new-instance v1, Landroidx/lifecycle/l$a;

    invoke-direct {v1, p1, v0}, Landroidx/lifecycle/l$a;-><init>(Landroidx/lifecycle/j;Landroidx/lifecycle/g$b;)V

    .line 171
    iget-object v0, p0, Landroidx/lifecycle/l;->b:Landroidx/a/a/b/a;

    invoke-virtual {v0, p1, v1}, Landroidx/a/a/b/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/l$a;

    if-eqz v0, :cond_1

    return-void

    .line 176
    :cond_1
    iget-object v0, p0, Landroidx/lifecycle/l;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/k;

    if-nez v0, :cond_2

    return-void

    .line 182
    :cond_2
    iget v2, p0, Landroidx/lifecycle/l;->e:I

    const/4 v3, 0x1

    if-nez v2, :cond_4

    iget-boolean v2, p0, Landroidx/lifecycle/l;->f:Z

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move v2, v3

    .line 183
    :goto_2
    invoke-direct {p0, p1}, Landroidx/lifecycle/l;->c(Landroidx/lifecycle/j;)Landroidx/lifecycle/g$b;

    move-result-object v4

    .line 184
    iget v5, p0, Landroidx/lifecycle/l;->e:I

    add-int/2addr v5, v3

    iput v5, p0, Landroidx/lifecycle/l;->e:I

    .line 185
    :goto_3
    iget-object v5, v1, Landroidx/lifecycle/l$a;->a:Landroidx/lifecycle/g$b;

    invoke-virtual {v5, v4}, Landroidx/lifecycle/g$b;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-gez v4, :cond_5

    iget-object v4, p0, Landroidx/lifecycle/l;->b:Landroidx/a/a/b/a;

    .line 186
    invoke-virtual {v4, p1}, Landroidx/a/a/b/a;->c(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 187
    iget-object v4, v1, Landroidx/lifecycle/l$a;->a:Landroidx/lifecycle/g$b;

    invoke-direct {p0, v4}, Landroidx/lifecycle/l;->d(Landroidx/lifecycle/g$b;)V

    .line 188
    iget-object v4, v1, Landroidx/lifecycle/l$a;->a:Landroidx/lifecycle/g$b;

    invoke-static {v4}, Landroidx/lifecycle/l;->f(Landroidx/lifecycle/g$b;)Landroidx/lifecycle/g$a;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroidx/lifecycle/l$a;->a(Landroidx/lifecycle/k;Landroidx/lifecycle/g$a;)V

    .line 189
    invoke-direct {p0}, Landroidx/lifecycle/l;->c()V

    .line 191
    invoke-direct {p0, p1}, Landroidx/lifecycle/l;->c(Landroidx/lifecycle/j;)Landroidx/lifecycle/g$b;

    move-result-object v4

    goto :goto_3

    :cond_5
    if-nez v2, :cond_6

    .line 196
    invoke-direct {p0}, Landroidx/lifecycle/l;->d()V

    .line 198
    :cond_6
    iget p1, p0, Landroidx/lifecycle/l;->e:I

    sub-int/2addr p1, v3

    iput p1, p0, Landroidx/lifecycle/l;->e:I

    return-void
.end method

.method public b(Landroidx/lifecycle/g$b;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Landroidx/lifecycle/l;->c(Landroidx/lifecycle/g$b;)V

    return-void
.end method

.method public b(Landroidx/lifecycle/j;)V
    .locals 1

    .line 223
    iget-object v0, p0, Landroidx/lifecycle/l;->b:Landroidx/a/a/b/a;

    invoke-virtual {v0, p1}, Landroidx/a/a/b/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
