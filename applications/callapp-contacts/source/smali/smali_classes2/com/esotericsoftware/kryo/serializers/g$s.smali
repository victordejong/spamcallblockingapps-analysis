.class public Lcom/esotericsoftware/kryo/serializers/g$s;
.super Lcom/esotericsoftware/kryo/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "s"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/h<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 302
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/h;-><init>()V

    return-void
.end method

.method private static a(Lcom/esotericsoftware/kryo/c;Ljava/lang/Class;J)Ljava/util/Date;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/c;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Date;",
            ">;J)",
            "Ljava/util/Date;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 304
    const-class v0, Ljava/util/Date;

    if-eq p1, v0, :cond_5

    if-nez p1, :cond_0

    goto :goto_0

    .line 307
    :cond_0
    const-class v0, Ljava/sql/Timestamp;

    if-ne p1, v0, :cond_1

    .line 308
    new-instance p0, Ljava/sql/Timestamp;

    invoke-direct {p0, p2, p3}, Ljava/sql/Timestamp;-><init>(J)V

    return-object p0

    .line 310
    :cond_1
    const-class v0, Ljava/sql/Date;

    if-ne p1, v0, :cond_2

    .line 311
    new-instance p0, Ljava/sql/Date;

    invoke-direct {p0, p2, p3}, Ljava/sql/Date;-><init>(J)V

    return-object p0

    .line 313
    :cond_2
    const-class v0, Ljava/sql/Time;

    if-ne p1, v0, :cond_3

    .line 314
    new-instance p0, Ljava/sql/Time;

    invoke-direct {p0, p2, p3}, Ljava/sql/Time;-><init>(J)V

    return-object p0

    :cond_3
    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    .line 320
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 321
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_4

    .line 323
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    :cond_4
    :try_start_2
    new-array v0, v0, [Ljava/lang/Object;

    .line 327
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    .line 330
    :catch_1
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/c;->e(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Date;

    .line 331
    invoke-virtual {p0, p2, p3}, Ljava/util/Date;->setTime(J)V

    return-object p0

    .line 305
    :cond_5
    :goto_0
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, p2, p3}, Ljava/util/Date;-><init>(J)V

    return-object p0
.end method


# virtual methods
.method public synthetic copy(Lcom/esotericsoftware/kryo/c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 302
    check-cast p2, Ljava/util/Date;

    .line 1345
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {p1, v0, v1, v2}, Lcom/esotericsoftware/kryo/serializers/g$s;->a(Lcom/esotericsoftware/kryo/c;Ljava/lang/Class;J)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public synthetic read(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x1

    .line 2341
    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/a/a;->c(Z)J

    move-result-wide v0

    invoke-static {p1, p3, v0, v1}, Lcom/esotericsoftware/kryo/serializers/g$s;->a(Lcom/esotericsoftware/kryo/c;Ljava/lang/Class;J)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public synthetic write(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    .locals 2

    .line 302
    check-cast p3, Ljava/util/Date;

    .line 3337
    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-virtual {p2, v0, v1, p1}, Lcom/esotericsoftware/kryo/a/c;->a(JZ)I

    return-void
.end method
