.class public Lcom/esotericsoftware/kryo/serializers/g$v;
.super Lcom/esotericsoftware/kryo/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "v"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/h<",
        "Ljava/util/EnumSet;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 386
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/h;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic copy(Lcom/esotericsoftware/kryo/c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 386
    check-cast p2, Ljava/util/EnumSet;

    .line 1412
    invoke-static {p2}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object p1

    return-object p1
.end method

.method public synthetic read(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4

    .line 2402
    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Lcom/esotericsoftware/kryo/a/a;)Lcom/esotericsoftware/kryo/g;

    move-result-object p3

    .line 3046
    iget-object v0, p3, Lcom/esotericsoftware/kryo/g;->a:Ljava/lang/Class;

    .line 2403
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 3060
    iget-object p3, p3, Lcom/esotericsoftware/kryo/g;->d:Lcom/esotericsoftware/kryo/h;

    const/4 v1, 0x1

    .line 2405
    invoke-virtual {p2, v1}, Lcom/esotericsoftware/kryo/a/a;->b(Z)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    const/4 v3, 0x0

    .line 2407
    invoke-virtual {p3, p1, p2, v3}, Lcom/esotericsoftware/kryo/h;->read(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public synthetic write(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    .locals 3

    .line 386
    check-cast p3, Ljava/util/EnumSet;

    .line 3389
    invoke-virtual {p3}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3390
    invoke-static {p3}, Ljava/util/EnumSet;->complementOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v0

    .line 3391
    invoke-virtual {v0}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3392
    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/c;->a(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/g;

    move-result-object v0

    .line 4060
    iget-object v0, v0, Lcom/esotericsoftware/kryo/g;->d:Lcom/esotericsoftware/kryo/h;

    goto :goto_0

    .line 3391
    :cond_0
    new-instance p1, Lcom/esotericsoftware/kryo/KryoException;

    const-string p2, "An EnumSet must have a defined Enum to be serialized."

    invoke-direct {p1, p2}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3394
    :cond_1
    invoke-virtual {p3}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/c;->a(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/g;

    move-result-object v0

    .line 5060
    iget-object v0, v0, Lcom/esotericsoftware/kryo/g;->d:Lcom/esotericsoftware/kryo/h;

    .line 3396
    :goto_0
    invoke-virtual {p3}, Ljava/util/EnumSet;->size()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Lcom/esotericsoftware/kryo/a/c;->b(IZ)I

    .line 3397
    invoke-virtual {p3}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3398
    invoke-virtual {v0, p1, p2, v1}, Lcom/esotericsoftware/kryo/h;->write(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-void
.end method
