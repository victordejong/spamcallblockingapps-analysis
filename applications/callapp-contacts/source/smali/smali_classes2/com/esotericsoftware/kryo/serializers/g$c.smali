.class public Lcom/esotericsoftware/kryo/serializers/g$c;
.super Lcom/esotericsoftware/kryo/serializers/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/serializers/i<",
        "Ljava/math/BigInteger;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 172
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/serializers/i;-><init>()V

    const/4 v0, 0x1

    .line 174
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/serializers/g$c;->setAcceptsNull(Z)V

    return-void
.end method

.method public static a(Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/math/BigInteger;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/a/a;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/math/BigInteger;",
            ">;)",
            "Ljava/math/BigInteger;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 195
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/a/a;->b(Z)I

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    add-int/lit8 v2, v1, -0x1

    .line 197
    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/a/a;->b(I)[B

    move-result-object p0

    .line 198
    const-class v2, Ljava/math/BigInteger;

    const/4 v3, 0x0

    if-eq p1, v2, :cond_2

    if-eqz p1, :cond_2

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    .line 201
    const-class v2, [B

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 202
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_1

    .line 204
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    :cond_1
    :try_start_2
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v3

    .line 208
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/math/BigInteger;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    .line 210
    new-instance p1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {p1, p0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    const/4 p1, 0x2

    if-ne v1, p1, :cond_6

    .line 215
    aget-byte p1, p0, v3

    if-eqz p1, :cond_5

    if-eq p1, v0, :cond_4

    const/16 v0, 0xa

    if-eq p1, v0, :cond_3

    goto :goto_0

    .line 221
    :cond_3
    sget-object p0, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    return-object p0

    .line 219
    :cond_4
    sget-object p0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    return-object p0

    .line 217
    :cond_5
    sget-object p0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object p0

    .line 224
    :cond_6
    :goto_0
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, p0}, Ljava/math/BigInteger;-><init>([B)V

    return-object p1
.end method

.method public static a(Lcom/esotericsoftware/kryo/a/c;Ljava/math/BigInteger;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 179
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/a/c;->a(B)V

    return-void

    .line 183
    :cond_0
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    if-ne p1, v1, :cond_1

    const/4 p1, 0x2

    .line 184
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/a/c;->a(I)V

    .line 185
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/a/c;->a(I)V

    return-void

    .line 189
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    .line 190
    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/a/c;->b(IZ)I

    .line 191
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/a/c;->a([B)V

    return-void
.end method


# virtual methods
.method public synthetic read(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 172
    invoke-static {p2, p3}, Lcom/esotericsoftware/kryo/serializers/g$c;->a(Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public synthetic write(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    .locals 0

    .line 172
    check-cast p3, Ljava/math/BigInteger;

    invoke-static {p2, p3}, Lcom/esotericsoftware/kryo/serializers/g$c;->a(Lcom/esotericsoftware/kryo/a/c;Ljava/math/BigInteger;)V

    return-void
.end method
