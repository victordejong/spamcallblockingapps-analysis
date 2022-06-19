.class public Lcom/esotericsoftware/kryo/serializers/f$b;
.super Lcom/esotericsoftware/kryo/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/h<",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/h;-><init>()V

    const/4 v0, 0x1

    .line 38
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/serializers/f$b;->setAcceptsNull(Z)V

    return-void
.end method


# virtual methods
.method public synthetic copy(Lcom/esotericsoftware/kryo/c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 36
    check-cast p2, [B

    .line 1057
    array-length p1, p2

    new-array v0, p1, [B

    const/4 v1, 0x0

    .line 1058
    invoke-static {p2, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public synthetic read(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x1

    .line 2051
    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/a/a;->b(Z)I

    move-result p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sub-int/2addr p3, p1

    .line 2053
    invoke-virtual {p2, p3}, Lcom/esotericsoftware/kryo/a/a;->b(I)[B

    move-result-object p1

    return-object p1
.end method

.method public synthetic write(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    .locals 1

    .line 36
    check-cast p3, [B

    if-nez p3, :cond_0

    const/4 p1, 0x0

    .line 3043
    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/a/c;->a(B)V

    return-void

    .line 3046
    :cond_0
    array-length p1, p3

    const/4 v0, 0x1

    add-int/2addr p1, v0

    invoke-virtual {p2, p1, v0}, Lcom/esotericsoftware/kryo/a/c;->b(IZ)I

    .line 3047
    invoke-virtual {p2, p3}, Lcom/esotericsoftware/kryo/a/c;->a([B)V

    return-void
.end method
