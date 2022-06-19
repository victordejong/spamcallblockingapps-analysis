.class public Lcom/callapp/contacts/util/serializer/SubListSerializers$ArrayListSubListSerializer;
.super Lcom/esotericsoftware/kryo/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/util/serializer/SubListSerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrayListSubListSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/h<",
        "Ljava/util/List<",
        "*>;>;"
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/lang/reflect/Field;

.field private c:Ljava/lang/reflect/Field;

.field private d:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "java.util.ArrayList$SubList"

    .line 74
    invoke-static {v0}, Lcom/callapp/contacts/util/serializer/SubListSerializers;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/util/serializer/SubListSerializers$ArrayListSubListSerializer;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 80
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/h;-><init>()V

    :try_start_0
    const-string v0, "java.util.ArrayList$SubList"

    .line 82
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "parent"

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/util/serializer/SubListSerializers$ArrayListSubListSerializer;->b:Ljava/lang/reflect/Field;

    const-string v1, "parentOffset"

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/util/serializer/SubListSerializers$ArrayListSubListSerializer;->c:Ljava/lang/reflect/Field;

    const-string v1, "size"

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/util/serializer/SubListSerializers$ArrayListSubListSerializer;->d:Ljava/lang/reflect/Field;

    .line 86
    iget-object v0, p0, Lcom/callapp/contacts/util/serializer/SubListSerializers$ArrayListSubListSerializer;->b:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 87
    iget-object v0, p0, Lcom/callapp/contacts/util/serializer/SubListSerializers$ArrayListSubListSerializer;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 88
    iget-object v0, p0, Lcom/callapp/contacts/util/serializer/SubListSerializers$ArrayListSubListSerializer;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 90
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Lcom/esotericsoftware/kryo/c;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/c;",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 139
    invoke-static {}, Lcom/callapp/contacts/util/serializer/SubListSerializers;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Object;)V

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/util/serializer/SubListSerializers$ArrayListSubListSerializer;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 142
    iget-object v1, p0, Lcom/callapp/contacts/util/serializer/SubListSerializers$ArrayListSubListSerializer;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 144
    iget-object v2, p0, Lcom/callapp/contacts/util/serializer/SubListSerializers$ArrayListSubListSerializer;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p2

    add-int/2addr p2, v1

    .line 145
    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/c;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 147
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static a(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 101
    sget-object v0, Lcom/callapp/contacts/util/serializer/SubListSerializers$ArrayListSubListSerializer;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public synthetic copy(Lcom/esotericsoftware/kryo/c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 72
    check-cast p2, Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/util/serializer/SubListSerializers$ArrayListSubListSerializer;->a(Lcom/esotericsoftware/kryo/c;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public synthetic read(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 1112
    invoke-static {}, Lcom/callapp/contacts/util/serializer/SubListSerializers;->a()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/esotericsoftware/kryo/c;->a(Ljava/lang/Object;)V

    .line 1113
    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/c;->b(Lcom/esotericsoftware/kryo/a/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 p3, 0x1

    .line 1114
    invoke-virtual {p2, p3}, Lcom/esotericsoftware/kryo/a/a;->a(Z)I

    move-result v0

    .line 1115
    invoke-virtual {p2, p3}, Lcom/esotericsoftware/kryo/a/a;->a(Z)I

    move-result p2

    .line 1116
    invoke-interface {p1, v0, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public synthetic write(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    .locals 2

    .line 72
    check-cast p3, Ljava/util/List;

    .line 1122
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/util/serializer/SubListSerializers$ArrayListSubListSerializer;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/c;->a(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V

    .line 1123
    iget-object p1, p0, Lcom/callapp/contacts/util/serializer/SubListSerializers$ArrayListSubListSerializer;->c:Ljava/lang/reflect/Field;

    invoke-virtual {p1, p3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x1

    .line 1125
    invoke-virtual {p2, p1, v0}, Lcom/esotericsoftware/kryo/a/c;->a(IZ)I

    .line 1126
    iget-object v1, p0, Lcom/callapp/contacts/util/serializer/SubListSerializers$ArrayListSubListSerializer;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p3

    add-int/2addr p1, p3

    .line 1127
    invoke-virtual {p2, p1, v0}, Lcom/esotericsoftware/kryo/a/c;->a(IZ)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1133
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 1131
    throw p1
.end method
