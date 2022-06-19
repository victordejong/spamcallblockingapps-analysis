.class public Lcom/esotericsoftware/kryo/serializers/f$h;
.super Lcom/esotericsoftware/kryo/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/h<",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private final c:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/c;Ljava/lang/Class;)V
    .locals 0

    .line 308
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/h;-><init>()V

    const/4 p1, 0x1

    .line 301
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/f$h;->b:Z

    .line 305
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/serializers/f$h;->setAcceptsNull(Z)V

    .line 309
    iput-object p2, p0, Lcom/esotericsoftware/kryo/serializers/f$h;->c:Ljava/lang/Class;

    .line 310
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    .line 311
    invoke-virtual {p2}, Ljava/lang/Class;->getModifiers()I

    move-result p2

    and-int/lit8 p2, p2, 0x10

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 1380
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/f$h;->a:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public synthetic copy(Lcom/esotericsoftware/kryo/c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 299
    check-cast p2, [Ljava/lang/Object;

    .line 2362
    array-length v0, p2

    .line 2363
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 2364
    invoke-virtual {p1, v1}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Object;)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2366
    aget-object v3, p2, v2

    invoke-virtual {p1, v3}, Lcom/esotericsoftware/kryo/c;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public synthetic read(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x1

    .line 3339
    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/a/a;->b(Z)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 3342
    invoke-virtual {p3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 3343
    invoke-virtual {p1, v1}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Object;)V

    .line 3344
    invoke-virtual {p3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p3

    .line 3345
    iget-boolean v2, p0, Lcom/esotericsoftware/kryo/serializers/f$h;->a:Z

    const/4 v3, 0x0

    if-nez v2, :cond_2

    invoke-static {p3}, Lcom/esotericsoftware/kryo/c;->f(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    if-ge v3, v0, :cond_4

    .line 3356
    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/c;->b(Lcom/esotericsoftware/kryo/a/a;)Ljava/lang/Object;

    move-result-object p3

    aput-object p3, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3346
    :cond_2
    :goto_1
    invoke-virtual {p1, p3}, Lcom/esotericsoftware/kryo/c;->d(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/h;

    move-result-object v2

    .line 3347
    iget-boolean v4, p0, Lcom/esotericsoftware/kryo/serializers/f$h;->b:Z

    if-eqz v4, :cond_3

    :goto_2
    if-ge v3, v0, :cond_4

    .line 3349
    invoke-virtual {p1, p2, p3, v2}, Lcom/esotericsoftware/kryo/c;->b(Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;Lcom/esotericsoftware/kryo/h;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-ge v3, v0, :cond_4

    .line 3352
    invoke-virtual {p1, p2, p3, v2}, Lcom/esotericsoftware/kryo/c;->a(Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;Lcom/esotericsoftware/kryo/h;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    return-object v1
.end method

.method public synthetic write(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    .locals 4

    .line 299
    check-cast p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 4317
    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/a/c;->a(B)V

    return-void

    .line 4320
    :cond_0
    array-length v1, p3

    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    .line 4321
    invoke-virtual {p2, v2, v3}, Lcom/esotericsoftware/kryo/a/c;->b(IZ)I

    .line 4322
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    .line 4323
    iget-boolean v3, p0, Lcom/esotericsoftware/kryo/serializers/f$h;->a:Z

    if-nez v3, :cond_3

    invoke-static {v2}, Lcom/esotericsoftware/kryo/c;->f(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    if-ge v0, v1, :cond_2

    .line 4334
    aget-object v2, p3, v0

    invoke-virtual {p1, p2, v2}, Lcom/esotericsoftware/kryo/c;->a(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 4324
    :cond_3
    :goto_1
    invoke-virtual {p1, v2}, Lcom/esotericsoftware/kryo/c;->d(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/h;

    move-result-object v2

    .line 4325
    iget-boolean v3, p0, Lcom/esotericsoftware/kryo/serializers/f$h;->b:Z

    if-eqz v3, :cond_5

    :goto_2
    if-ge v0, v1, :cond_4

    .line 4327
    aget-object v3, p3, v0

    invoke-virtual {p1, p2, v3, v2}, Lcom/esotericsoftware/kryo/c;->b(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;Lcom/esotericsoftware/kryo/h;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void

    :cond_5
    :goto_3
    if-ge v0, v1, :cond_6

    .line 4330
    aget-object v3, p3, v0

    invoke-virtual {p1, p2, v3, v2}, Lcom/esotericsoftware/kryo/c;->a(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;Lcom/esotericsoftware/kryo/h;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method
