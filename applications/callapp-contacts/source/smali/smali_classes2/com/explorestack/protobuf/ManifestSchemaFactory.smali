.class final Lcom/explorestack/protobuf/ManifestSchemaFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/SchemaFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;
    }
.end annotation


# static fields
.field private static final EMPTY_FACTORY:Lcom/explorestack/protobuf/MessageInfoFactory;


# instance fields
.field private final messageInfoFactory:Lcom/explorestack/protobuf/MessageInfoFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 151
    new-instance v0, Lcom/explorestack/protobuf/ManifestSchemaFactory$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/ManifestSchemaFactory$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/ManifestSchemaFactory;->EMPTY_FACTORY:Lcom/explorestack/protobuf/MessageInfoFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-static {}, Lcom/explorestack/protobuf/ManifestSchemaFactory;->getDefaultMessageInfoFactory()Lcom/explorestack/protobuf/MessageInfoFactory;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/ManifestSchemaFactory;-><init>(Lcom/explorestack/protobuf/MessageInfoFactory;)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/MessageInfoFactory;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "messageInfoFactory"

    .line 48
    invoke-static {p1, v0}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/MessageInfoFactory;

    iput-object p1, p0, Lcom/explorestack/protobuf/ManifestSchemaFactory;->messageInfoFactory:Lcom/explorestack/protobuf/MessageInfoFactory;

    return-void
.end method

.method private static getDefaultMessageInfoFactory()Lcom/explorestack/protobuf/MessageInfoFactory;
    .locals 4

    .line 118
    new-instance v0, Lcom/explorestack/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/explorestack/protobuf/MessageInfoFactory;

    .line 119
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageInfoFactory;->getInstance()Lcom/explorestack/protobuf/GeneratedMessageInfoFactory;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Lcom/explorestack/protobuf/ManifestSchemaFactory;->getDescriptorMessageInfoFactory()Lcom/explorestack/protobuf/MessageInfoFactory;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;-><init>([Lcom/explorestack/protobuf/MessageInfoFactory;)V

    return-object v0
.end method

.method private static getDescriptorMessageInfoFactory()Lcom/explorestack/protobuf/MessageInfoFactory;
    .locals 4

    :try_start_0
    const-string v0, "com.explorestack.protobuf.DescriptorMessageInfoFactory"

    .line 166
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 167
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/MessageInfoFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 169
    :catch_0
    sget-object v0, Lcom/explorestack/protobuf/ManifestSchemaFactory;->EMPTY_FACTORY:Lcom/explorestack/protobuf/MessageInfoFactory;

    return-object v0
.end method

.method private static isProto2(Lcom/explorestack/protobuf/MessageInfo;)Z
    .locals 1

    .line 114
    invoke-interface {p0}, Lcom/explorestack/protobuf/MessageInfo;->getSyntax()Lcom/explorestack/protobuf/ProtoSyntax;

    move-result-object p0

    sget-object v0, Lcom/explorestack/protobuf/ProtoSyntax;->PROTO2:Lcom/explorestack/protobuf/ProtoSyntax;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static newSchema(Ljava/lang/Class;Lcom/explorestack/protobuf/MessageInfo;)Lcom/explorestack/protobuf/Schema;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/explorestack/protobuf/MessageInfo;",
            ")",
            "Lcom/explorestack/protobuf/Schema<",
            "TT;>;"
        }
    .end annotation

    .line 75
    const-class v0, Lcom/explorestack/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    invoke-static {p1}, Lcom/explorestack/protobuf/ManifestSchemaFactory;->isProto2(Lcom/explorestack/protobuf/MessageInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {}, Lcom/explorestack/protobuf/NewInstanceSchemas;->lite()Lcom/explorestack/protobuf/NewInstanceSchema;

    move-result-object v3

    .line 81
    invoke-static {}, Lcom/explorestack/protobuf/ListFieldSchema;->lite()Lcom/explorestack/protobuf/ListFieldSchema;

    move-result-object v4

    .line 82
    invoke-static {}, Lcom/explorestack/protobuf/SchemaUtil;->unknownFieldSetLiteSchema()Lcom/explorestack/protobuf/UnknownFieldSchema;

    move-result-object v5

    .line 83
    invoke-static {}, Lcom/explorestack/protobuf/ExtensionSchemas;->lite()Lcom/explorestack/protobuf/ExtensionSchema;

    move-result-object v6

    .line 84
    invoke-static {}, Lcom/explorestack/protobuf/MapFieldSchemas;->lite()Lcom/explorestack/protobuf/MapFieldSchema;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    .line 77
    invoke-static/range {v1 .. v7}, Lcom/explorestack/protobuf/MessageSchema;->newSchema(Ljava/lang/Class;Lcom/explorestack/protobuf/MessageInfo;Lcom/explorestack/protobuf/NewInstanceSchema;Lcom/explorestack/protobuf/ListFieldSchema;Lcom/explorestack/protobuf/UnknownFieldSchema;Lcom/explorestack/protobuf/ExtensionSchema;Lcom/explorestack/protobuf/MapFieldSchema;)Lcom/explorestack/protobuf/MessageSchema;

    move-result-object p0

    return-object p0

    .line 88
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/NewInstanceSchemas;->lite()Lcom/explorestack/protobuf/NewInstanceSchema;

    move-result-object v2

    .line 89
    invoke-static {}, Lcom/explorestack/protobuf/ListFieldSchema;->lite()Lcom/explorestack/protobuf/ListFieldSchema;

    move-result-object v3

    .line 90
    invoke-static {}, Lcom/explorestack/protobuf/SchemaUtil;->unknownFieldSetLiteSchema()Lcom/explorestack/protobuf/UnknownFieldSchema;

    move-result-object v4

    const/4 v5, 0x0

    .line 92
    invoke-static {}, Lcom/explorestack/protobuf/MapFieldSchemas;->lite()Lcom/explorestack/protobuf/MapFieldSchema;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    .line 85
    invoke-static/range {v0 .. v6}, Lcom/explorestack/protobuf/MessageSchema;->newSchema(Ljava/lang/Class;Lcom/explorestack/protobuf/MessageInfo;Lcom/explorestack/protobuf/NewInstanceSchema;Lcom/explorestack/protobuf/ListFieldSchema;Lcom/explorestack/protobuf/UnknownFieldSchema;Lcom/explorestack/protobuf/ExtensionSchema;Lcom/explorestack/protobuf/MapFieldSchema;)Lcom/explorestack/protobuf/MessageSchema;

    move-result-object p0

    return-object p0

    .line 94
    :cond_1
    invoke-static {p1}, Lcom/explorestack/protobuf/ManifestSchemaFactory;->isProto2(Lcom/explorestack/protobuf/MessageInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    invoke-static {}, Lcom/explorestack/protobuf/NewInstanceSchemas;->full()Lcom/explorestack/protobuf/NewInstanceSchema;

    move-result-object v3

    .line 99
    invoke-static {}, Lcom/explorestack/protobuf/ListFieldSchema;->full()Lcom/explorestack/protobuf/ListFieldSchema;

    move-result-object v4

    .line 100
    invoke-static {}, Lcom/explorestack/protobuf/SchemaUtil;->proto2UnknownFieldSetSchema()Lcom/explorestack/protobuf/UnknownFieldSchema;

    move-result-object v5

    .line 101
    invoke-static {}, Lcom/explorestack/protobuf/ExtensionSchemas;->full()Lcom/explorestack/protobuf/ExtensionSchema;

    move-result-object v6

    .line 102
    invoke-static {}, Lcom/explorestack/protobuf/MapFieldSchemas;->full()Lcom/explorestack/protobuf/MapFieldSchema;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    .line 95
    invoke-static/range {v1 .. v7}, Lcom/explorestack/protobuf/MessageSchema;->newSchema(Ljava/lang/Class;Lcom/explorestack/protobuf/MessageInfo;Lcom/explorestack/protobuf/NewInstanceSchema;Lcom/explorestack/protobuf/ListFieldSchema;Lcom/explorestack/protobuf/UnknownFieldSchema;Lcom/explorestack/protobuf/ExtensionSchema;Lcom/explorestack/protobuf/MapFieldSchema;)Lcom/explorestack/protobuf/MessageSchema;

    move-result-object p0

    return-object p0

    .line 106
    :cond_2
    invoke-static {}, Lcom/explorestack/protobuf/NewInstanceSchemas;->full()Lcom/explorestack/protobuf/NewInstanceSchema;

    move-result-object v2

    .line 107
    invoke-static {}, Lcom/explorestack/protobuf/ListFieldSchema;->full()Lcom/explorestack/protobuf/ListFieldSchema;

    move-result-object v3

    .line 108
    invoke-static {}, Lcom/explorestack/protobuf/SchemaUtil;->proto3UnknownFieldSetSchema()Lcom/explorestack/protobuf/UnknownFieldSchema;

    move-result-object v4

    const/4 v5, 0x0

    .line 110
    invoke-static {}, Lcom/explorestack/protobuf/MapFieldSchemas;->full()Lcom/explorestack/protobuf/MapFieldSchema;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    .line 103
    invoke-static/range {v0 .. v6}, Lcom/explorestack/protobuf/MessageSchema;->newSchema(Ljava/lang/Class;Lcom/explorestack/protobuf/MessageInfo;Lcom/explorestack/protobuf/NewInstanceSchema;Lcom/explorestack/protobuf/ListFieldSchema;Lcom/explorestack/protobuf/UnknownFieldSchema;Lcom/explorestack/protobuf/ExtensionSchema;Lcom/explorestack/protobuf/MapFieldSchema;)Lcom/explorestack/protobuf/MessageSchema;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final createSchema(Ljava/lang/Class;)Lcom/explorestack/protobuf/Schema;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/explorestack/protobuf/Schema<",
            "TT;>;"
        }
    .end annotation

    .line 53
    invoke-static {p1}, Lcom/explorestack/protobuf/SchemaUtil;->requireGeneratedMessage(Ljava/lang/Class;)V

    .line 55
    iget-object v0, p0, Lcom/explorestack/protobuf/ManifestSchemaFactory;->messageInfoFactory:Lcom/explorestack/protobuf/MessageInfoFactory;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/MessageInfoFactory;->messageInfoFor(Ljava/lang/Class;)Lcom/explorestack/protobuf/MessageInfo;

    move-result-object v0

    .line 58
    invoke-interface {v0}, Lcom/explorestack/protobuf/MessageInfo;->isMessageSetWireFormat()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    const-class v1, Lcom/explorestack/protobuf/GeneratedMessageLite;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 61
    invoke-static {}, Lcom/explorestack/protobuf/SchemaUtil;->unknownFieldSetLiteSchema()Lcom/explorestack/protobuf/UnknownFieldSchema;

    move-result-object p1

    .line 62
    invoke-static {}, Lcom/explorestack/protobuf/ExtensionSchemas;->lite()Lcom/explorestack/protobuf/ExtensionSchema;

    move-result-object v1

    .line 63
    invoke-interface {v0}, Lcom/explorestack/protobuf/MessageInfo;->getDefaultInstance()Lcom/explorestack/protobuf/MessageLite;

    move-result-object v0

    .line 60
    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/MessageSetSchema;->newSchema(Lcom/explorestack/protobuf/UnknownFieldSchema;Lcom/explorestack/protobuf/ExtensionSchema;Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/MessageSetSchema;

    move-result-object p1

    return-object p1

    .line 66
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/SchemaUtil;->proto2UnknownFieldSetSchema()Lcom/explorestack/protobuf/UnknownFieldSchema;

    move-result-object p1

    .line 67
    invoke-static {}, Lcom/explorestack/protobuf/ExtensionSchemas;->full()Lcom/explorestack/protobuf/ExtensionSchema;

    move-result-object v1

    .line 68
    invoke-interface {v0}, Lcom/explorestack/protobuf/MessageInfo;->getDefaultInstance()Lcom/explorestack/protobuf/MessageLite;

    move-result-object v0

    .line 65
    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/MessageSetSchema;->newSchema(Lcom/explorestack/protobuf/UnknownFieldSchema;Lcom/explorestack/protobuf/ExtensionSchema;Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/MessageSetSchema;

    move-result-object p1

    return-object p1

    .line 71
    :cond_1
    invoke-static {p1, v0}, Lcom/explorestack/protobuf/ManifestSchemaFactory;->newSchema(Ljava/lang/Class;Lcom/explorestack/protobuf/MessageInfo;)Lcom/explorestack/protobuf/Schema;

    move-result-object p1

    return-object p1
.end method
