.class public Lcom/esotericsoftware/kryo/serializers/f$d;
.super Lcom/esotericsoftware/kryo/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/h<",
        "[D>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 198
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/h;-><init>()V

    const/4 v0, 0x1

    .line 200
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/serializers/f$d;->setAcceptsNull(Z)V

    return-void
.end method


# virtual methods
.method public synthetic copy(Lcom/esotericsoftware/kryo/c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 198
    check-cast p2, [D

    .line 1219
    array-length p1, p2

    new-array v0, p1, [D

    const/4 v1, 0x0

    .line 1220
    invoke-static {p2, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public synthetic read(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x1

    .line 2213
    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/a/a;->b(Z)I

    move-result p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sub-int/2addr p3, p1

    .line 2215
    invoke-virtual {p2, p3}, Lcom/esotericsoftware/kryo/a/a;->g(I)[D

    move-result-object p1

    return-object p1
.end method

.method public synthetic write(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    .locals 2

    .line 198
    check-cast p3, [D

    const/4 p1, 0x0

    if-nez p3, :cond_0

    .line 3205
    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/a/c;->a(B)V

    return-void

    .line 3208
    :cond_0
    array-length v0, p3

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/a/c;->b(IZ)I

    .line 3209
    array-length v0, p3

    invoke-virtual {p2, p3, p1, v0}, Lcom/esotericsoftware/kryo/a/c;->a([DII)V

    return-void
.end method
