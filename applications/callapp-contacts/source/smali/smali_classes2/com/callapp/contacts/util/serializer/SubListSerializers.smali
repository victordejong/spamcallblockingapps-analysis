.class public Lcom/callapp/contacts/util/serializer/SubListSerializers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/util/serializer/SubListSerializers$JavaUtilSubListSerializer;,
        Lcom/callapp/contacts/util/serializer/SubListSerializers$ArrayListSubListSerializer;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/callapp/contacts/util/serializer/SubListSerializers;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Lcom/esotericsoftware/kryo/h<",
            "Ljava/util/List<",
            "*>;>;"
        }
    .end annotation

    .line 52
    invoke-static {p0}, Lcom/callapp/contacts/util/serializer/SubListSerializers$ArrayListSubListSerializer;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    new-instance p0, Lcom/callapp/contacts/util/serializer/SubListSerializers$ArrayListSubListSerializer;

    invoke-direct {p0}, Lcom/callapp/contacts/util/serializer/SubListSerializers$ArrayListSubListSerializer;-><init>()V

    return-object p0

    .line 54
    :cond_0
    invoke-static {p0}, Lcom/callapp/contacts/util/serializer/SubListSerializers$JavaUtilSubListSerializer;->a(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 55
    new-instance p0, Lcom/callapp/contacts/util/serializer/SubListSerializers$JavaUtilSubListSerializer;

    invoke-direct {p0}, Lcom/callapp/contacts/util/serializer/SubListSerializers$JavaUtilSubListSerializer;-><init>()V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 33
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic a()Ljava/lang/Object;
    .locals 1

    .line 21
    sget-object v0, Lcom/callapp/contacts/util/serializer/SubListSerializers;->a:Ljava/lang/Object;

    return-object v0
.end method
