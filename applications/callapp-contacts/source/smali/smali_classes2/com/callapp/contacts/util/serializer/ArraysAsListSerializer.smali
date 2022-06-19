.class public Lcom/callapp/contacts/util/serializer/ArraysAsListSerializer;
.super Lcom/esotericsoftware/kryo/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/h<",
        "Ljava/util/List<",
        "*>;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/h;-><init>()V

    :try_start_0
    const-string v0, "java.util.Arrays$ArrayList"

    .line 30
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/util/serializer/ArraysAsListSerializer;->a:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/util/serializer/ArraysAsListSerializer;->setImmutable(Z)V

    return-void

    :catch_0
    move-exception v0

    .line 33
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/c;",
            "Lcom/esotericsoftware/kryo/a/a;",
            ")",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 41
    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/a/a;->a(Z)I

    move-result v0

    .line 42
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/c;->a(Lcom/esotericsoftware/kryo/a/a;)Lcom/esotericsoftware/kryo/g;

    move-result-object v1

    .line 1046
    iget-object v1, v1, Lcom/esotericsoftware/kryo/g;->a:Ljava/lang/Class;

    .line 43
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1077
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1078
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1079
    const-class v1, Ljava/lang/Long;

    goto :goto_0

    .line 1080
    :cond_0
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1081
    const-class v1, Ljava/lang/Integer;

    goto :goto_0

    .line 1082
    :cond_1
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1083
    const-class v1, Ljava/lang/Double;

    goto :goto_0

    .line 1084
    :cond_2
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1085
    const-class v1, Ljava/lang/Float;

    goto :goto_0

    .line 1086
    :cond_3
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1087
    const-class v1, Ljava/lang/Boolean;

    goto :goto_0

    .line 1088
    :cond_4
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1089
    const-class v1, Ljava/lang/Character;

    goto :goto_0

    .line 1090
    :cond_5
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1091
    const-class v1, Ljava/lang/Short;

    goto :goto_0

    .line 1092
    :cond_6
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1093
    const-class v1, Ljava/lang/Byte;

    .line 47
    :cond_7
    :goto_0
    :try_start_0
    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_8

    .line 49
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/c;->b(Lcom/esotericsoftware/kryo/a/a;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 51
    :cond_8
    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 53
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public synthetic read(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-static {p1, p2}, Lcom/callapp/contacts/util/serializer/ArraysAsListSerializer;->a(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public synthetic write(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    .locals 3

    .line 24
    check-cast p3, Ljava/util/List;

    .line 2060
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/util/serializer/ArraysAsListSerializer;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/Object;

    .line 2061
    array-length v0, p3

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/a/c;->a(IZ)I

    .line 2062
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 2063
    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/c;->a(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/g;

    .line 2064
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p3, v1

    .line 2065
    invoke-virtual {p1, p2, v2}, Lcom/esotericsoftware/kryo/c;->a(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 2072
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 2070
    throw p1
.end method
