.class public Lcom/esotericsoftware/kryo/serializers/f$j;
.super Lcom/esotericsoftware/kryo/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/h<",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 256
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/h;-><init>()V

    const/4 v0, 0x1

    .line 258
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/serializers/f$j;->setAcceptsNull(Z)V

    return-void
.end method


# virtual methods
.method public synthetic copy(Lcom/esotericsoftware/kryo/c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 256
    check-cast p2, [Ljava/lang/String;

    .line 1293
    array-length p1, p2

    new-array v0, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 1294
    invoke-static {p2, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public synthetic read(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4

    const/4 p3, 0x1

    .line 2278
    invoke-virtual {p2, p3}, Lcom/esotericsoftware/kryo/a/a;->b(Z)I

    move-result p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    add-int/lit8 p3, p3, -0x1

    .line 2280
    new-array v0, p3, [Ljava/lang/String;

    .line 2281
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/c;->getReferences()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/c;->getReferenceResolver()Lcom/esotericsoftware/kryo/f;

    move-result-object v1

    const-class v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/esotericsoftware/kryo/f;->a(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2282
    const-class v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/esotericsoftware/kryo/c;->d(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/h;

    move-result-object v1

    :goto_0
    if-ge v2, p3, :cond_2

    .line 2284
    const-class v3, Ljava/lang/String;

    invoke-virtual {p1, p2, v3, v1}, Lcom/esotericsoftware/kryo/c;->b(Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;Lcom/esotericsoftware/kryo/h;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v2, p3, :cond_2

    .line 2287
    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/a/a;->m()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public synthetic write(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    .locals 4

    .line 256
    check-cast p3, [Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 3263
    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/a/c;->a(B)V

    return-void

    .line 3266
    :cond_0
    array-length v1, p3

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p2, v1, v2}, Lcom/esotericsoftware/kryo/a/c;->b(IZ)I

    .line 3267
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/c;->getReferences()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/c;->getReferenceResolver()Lcom/esotericsoftware/kryo/f;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/esotericsoftware/kryo/f;->a(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3268
    const-class v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/esotericsoftware/kryo/c;->d(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/h;

    move-result-object v1

    .line 3269
    array-length v2, p3

    :goto_0
    if-ge v0, v2, :cond_1

    .line 3270
    aget-object v3, p3, v0

    invoke-virtual {p1, p2, v3, v1}, Lcom/esotericsoftware/kryo/c;->b(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;Lcom/esotericsoftware/kryo/h;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 3272
    :cond_2
    array-length p1, p3

    :goto_1
    if-ge v0, p1, :cond_3

    .line 3273
    aget-object v1, p3, v0

    invoke-virtual {p2, v1}, Lcom/esotericsoftware/kryo/a/c;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
