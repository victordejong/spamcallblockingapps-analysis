.class public Lcom/esotericsoftware/kryo/serializers/k$a;
.super Lcom/esotericsoftware/kryo/serializers/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/serializers/i<",
        "Ljava/util/OptionalDouble;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/serializers/i;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic read(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 1098
    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/a/a;->l()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1099
    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/a/a;->i()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/util/OptionalDouble;->of(D)Ljava/util/OptionalDouble;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Ljava/util/OptionalDouble;->empty()Ljava/util/OptionalDouble;

    move-result-object p1

    return-object p1
.end method

.method public synthetic write(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    .locals 2

    .line 91
    check-cast p3, Ljava/util/OptionalDouble;

    .line 2093
    invoke-virtual {p3}, Ljava/util/OptionalDouble;->isPresent()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/a/c;->a(Z)V

    .line 2094
    invoke-virtual {p3}, Ljava/util/OptionalDouble;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Ljava/util/OptionalDouble;->getAsDouble()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/a/c;->a(D)V

    :cond_0
    return-void
.end method
