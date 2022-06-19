.class public Lcom/esotericsoftware/kryo/serializers/g$b;
.super Lcom/esotericsoftware/kryo/serializers/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/serializers/i<",
        "Ljava/math/BigDecimal;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/esotericsoftware/kryo/serializers/g$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 230
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/serializers/i;-><init>()V

    .line 231
    new-instance v0, Lcom/esotericsoftware/kryo/serializers/g$c;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/serializers/g$c;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/serializers/g$b;->a:Lcom/esotericsoftware/kryo/serializers/g$c;

    const/4 v0, 0x1

    .line 234
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/serializers/g$b;->setAcceptsNull(Z)V

    return-void
.end method

.method private static a(Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/math/BigDecimal;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/a/a;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/math/BigDecimal;",
            ">;)",
            "Ljava/math/BigDecimal;"
        }
    .end annotation

    .line 254
    const-class v0, Ljava/math/BigInteger;

    invoke-static {p0, v0}, Lcom/esotericsoftware/kryo/serializers/g$c;->a(Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    .line 256
    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/a/a;->a(Z)I

    move-result p0

    .line 257
    const-class v2, Ljava/math/BigDecimal;

    if-eq p1, v2, :cond_2

    if-eqz p1, :cond_2

    const/4 v2, 0x2

    :try_start_0
    new-array v3, v2, [Ljava/lang/Class;

    .line 260
    const-class v4, Ljava/math/BigInteger;

    aput-object v4, v3, v1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 261
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v3, :cond_1

    .line 263
    :try_start_1
    invoke-virtual {p1, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    :cond_1
    :try_start_2
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    .line 267
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/math/BigDecimal;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    .line 269
    new-instance p1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {p1, p0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 273
    :cond_2
    sget-object p1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    if-ne v0, p1, :cond_3

    if-nez p0, :cond_3

    .line 274
    sget-object p0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object p0

    .line 277
    :cond_3
    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object p1
.end method


# virtual methods
.method public synthetic read(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 230
    invoke-static {p2, p3}, Lcom/esotericsoftware/kryo/serializers/g$b;->a(Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public synthetic write(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    .locals 1

    .line 230
    check-cast p3, Ljava/math/BigDecimal;

    const/4 p1, 0x0

    if-nez p3, :cond_0

    .line 1239
    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/a/c;->a(B)V

    return-void

    .line 1243
    :cond_0
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    if-ne p3, v0, :cond_1

    .line 1244
    sget-object p3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-static {p2, p3}, Lcom/esotericsoftware/kryo/serializers/g$c;->a(Lcom/esotericsoftware/kryo/a/c;Ljava/math/BigInteger;)V

    .line 1245
    invoke-virtual {p2, p1, p1}, Lcom/esotericsoftware/kryo/a/c;->a(IZ)I

    return-void

    .line 1249
    :cond_1
    invoke-virtual {p3}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/esotericsoftware/kryo/serializers/g$c;->a(Lcom/esotericsoftware/kryo/a/c;Ljava/math/BigInteger;)V

    .line 1250
    invoke-virtual {p3}, Ljava/math/BigDecimal;->scale()I

    move-result p3

    invoke-virtual {p2, p3, p1}, Lcom/esotericsoftware/kryo/a/c;->a(IZ)I

    return-void
.end method
