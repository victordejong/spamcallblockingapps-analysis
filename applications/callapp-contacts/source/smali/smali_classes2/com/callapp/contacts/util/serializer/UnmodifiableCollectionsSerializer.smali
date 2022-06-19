.class public Lcom/callapp/contacts/util/serializer/UnmodifiableCollectionsSerializer;
.super Lcom/esotericsoftware/kryo/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/util/serializer/UnmodifiableCollectionsSerializer$UnmodifiableCollection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/h<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/reflect/Field;

.field private static final b:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "java.util.Collections$UnmodifiableCollection"

    .line 37
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "c"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 38
    sput-object v0, Lcom/callapp/contacts/util/serializer/UnmodifiableCollectionsSerializer;->a:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-string v0, "java.util.Collections$UnmodifiableMap"

    .line 40
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "m"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 41
    sput-object v0, Lcom/callapp/contacts/util/serializer/UnmodifiableCollectionsSerializer;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 43
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not access source collection field in java.util.Collections$UnmodifiableCollection."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/h;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/reflect/Field;
    .locals 1

    .line 30
    sget-object v0, Lcom/callapp/contacts/util/serializer/UnmodifiableCollectionsSerializer;->a:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public static a(Lcom/esotericsoftware/kryo/c;)V
    .locals 5

    .line 171
    new-instance v0, Lcom/callapp/contacts/util/serializer/UnmodifiableCollectionsSerializer;

    invoke-direct {v0}, Lcom/callapp/contacts/util/serializer/UnmodifiableCollectionsSerializer;-><init>()V

    .line 172
    invoke-static {}, Lcom/callapp/contacts/util/serializer/UnmodifiableCollectionsSerializer$UnmodifiableCollection;->values()[Lcom/callapp/contacts/util/serializer/UnmodifiableCollectionsSerializer$UnmodifiableCollection;

    .line 173
    invoke-static {}, Lcom/callapp/contacts/util/serializer/UnmodifiableCollectionsSerializer$UnmodifiableCollection;->values()[Lcom/callapp/contacts/util/serializer/UnmodifiableCollectionsSerializer$UnmodifiableCollection;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 174
    invoke-static {v4}, Lcom/callapp/contacts/util/serializer/UnmodifiableCollectionsSerializer$UnmodifiableCollection;->access$400(Lcom/callapp/contacts/util/serializer/UnmodifiableCollectionsSerializer$UnmodifiableCollection;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Lcom/esotericsoftware/kryo/c;->b(Ljava/lang/Class;Lcom/esotericsoftware/kryo/h;)Lcom/esotericsoftware/kryo/g;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b()Ljava/lang/reflect/Field;
    .locals 1

    .line 30
    sget-object v0, Lcom/callapp/contacts/util/serializer/UnmodifiableCollectionsSerializer;->b:Ljava/lang/reflect/Field;

    return-object v0
.end method


# virtual methods
.method public copy(Lcom/esotericsoftware/kryo/c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 74
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/serializer/UnmodifiableCollectionsSerializer$UnmodifiableCollection;->valueOfType(Ljava/lang/Class;)Lcom/callapp/contacts/util/serializer/UnmodifiableCollectionsSerializer$UnmodifiableCollection;

    move-result-object v0

    .line 75
    invoke-static {v0}, Lcom/callapp/contacts/util/serializer/UnmodifiableCollectionsSerializer$UnmodifiableCollection;->access$000(Lcom/callapp/contacts/util/serializer/UnmodifiableCollectionsSerializer$UnmodifiableCollection;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/c;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 76
    invoke-virtual {v0, p1}, Lcom/callapp/contacts/util/serializer/UnmodifiableCollectionsSerializer$UnmodifiableCollection;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 81
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 79
    throw p1
.end method

.method public read(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/c;",
            "Lcom/esotericsoftware/kryo/a/a;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 p3, 0x1

    .line 49
    invoke-virtual {p2, p3}, Lcom/esotericsoftware/kryo/a/a;->a(Z)I

    move-result p3

    .line 50
    invoke-static {}, Lcom/callapp/contacts/util/serializer/UnmodifiableCollectionsSerializer$UnmodifiableCollection;->values()[Lcom/callapp/contacts/util/serializer/UnmodifiableCollectionsSerializer$UnmodifiableCollection;

    move-result-object v0

    aget-object p3, v0, p3

    .line 51
    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/c;->b(Lcom/esotericsoftware/kryo/a/a;)Ljava/lang/Object;

    move-result-object p1

    .line 52
    invoke-virtual {p3, p1}, Lcom/callapp/contacts/util/serializer/UnmodifiableCollectionsSerializer$UnmodifiableCollection;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    .locals 3

    .line 58
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/serializer/UnmodifiableCollectionsSerializer$UnmodifiableCollection;->valueOfType(Ljava/lang/Class;)Lcom/callapp/contacts/util/serializer/UnmodifiableCollectionsSerializer$UnmodifiableCollection;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/callapp/contacts/util/serializer/UnmodifiableCollectionsSerializer$UnmodifiableCollection;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Lcom/esotericsoftware/kryo/a/c;->a(IZ)I

    .line 61
    invoke-static {v0}, Lcom/callapp/contacts/util/serializer/UnmodifiableCollectionsSerializer$UnmodifiableCollection;->access$000(Lcom/callapp/contacts/util/serializer/UnmodifiableCollectionsSerializer$UnmodifiableCollection;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/esotericsoftware/kryo/c;->a(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 67
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 65
    throw p1
.end method
