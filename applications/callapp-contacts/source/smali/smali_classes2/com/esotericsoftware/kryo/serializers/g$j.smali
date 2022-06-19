.class public Lcom/esotericsoftware/kryo/serializers/g$j;
.super Lcom/esotericsoftware/kryo/serializers/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/serializers/i<",
        "Ljava/lang/Class;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 281
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/serializers/i;-><init>()V

    const/4 v0, 0x1

    .line 283
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/serializers/g$j;->setAcceptsNull(Z)V

    return-void
.end method


# virtual methods
.method public synthetic read(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 1292
    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/c;->a(Lcom/esotericsoftware/kryo/a/a;)Lcom/esotericsoftware/kryo/g;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2046
    :cond_0
    iget-object p1, p1, Lcom/esotericsoftware/kryo/g;->a:Ljava/lang/Class;

    .line 1295
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/a/a;->l()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 1296
    :cond_1
    invoke-static {p1}, Lcom/esotericsoftware/kryo/c/n;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method public synthetic write(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    .locals 0

    .line 281
    check-cast p3, Ljava/lang/Class;

    .line 2287
    invoke-virtual {p1, p2, p3}, Lcom/esotericsoftware/kryo/c;->a(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/g;

    if-eqz p3, :cond_1

    .line 2288
    invoke-virtual {p3}, Ljava/lang/Class;->isPrimitive()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p3}, Lcom/esotericsoftware/kryo/c/n;->b(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Class;->isPrimitive()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/a/c;->a(Z)V

    :cond_1
    return-void
.end method
