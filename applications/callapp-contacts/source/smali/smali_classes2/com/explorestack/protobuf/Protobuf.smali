.class final Lcom/explorestack/protobuf/Protobuf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lcom/explorestack/protobuf/Protobuf;


# instance fields
.field private final schemaCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/explorestack/protobuf/Schema<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final schemaFactory:Lcom/explorestack/protobuf/SchemaFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lcom/explorestack/protobuf/Protobuf;

    invoke-direct {v0}, Lcom/explorestack/protobuf/Protobuf;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/Protobuf;->INSTANCE:Lcom/explorestack/protobuf/Protobuf;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/explorestack/protobuf/Protobuf;->schemaCache:Ljava/util/concurrent/ConcurrentMap;

    .line 140
    new-instance v0, Lcom/explorestack/protobuf/ManifestSchemaFactory;

    invoke-direct {v0}, Lcom/explorestack/protobuf/ManifestSchemaFactory;-><init>()V

    iput-object v0, p0, Lcom/explorestack/protobuf/Protobuf;->schemaFactory:Lcom/explorestack/protobuf/SchemaFactory;

    return-void
.end method

.method public static getInstance()Lcom/explorestack/protobuf/Protobuf;
    .locals 1

    .line 55
    sget-object v0, Lcom/explorestack/protobuf/Protobuf;->INSTANCE:Lcom/explorestack/protobuf/Protobuf;

    return-object v0
.end method


# virtual methods
.method final getTotalSchemaSize()I
    .locals 4

    .line 145
    iget-object v0, p0, Lcom/explorestack/protobuf/Protobuf;->schemaCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/Schema;

    .line 146
    instance-of v3, v2, Lcom/explorestack/protobuf/MessageSchema;

    if-eqz v3, :cond_0

    .line 147
    check-cast v2, Lcom/explorestack/protobuf/MessageSchema;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/MessageSchema;->getSchemaSize()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final isInitialized(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)Z"
        }
    .end annotation

    .line 84
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/explorestack/protobuf/Schema;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final makeImmutable(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .line 76
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/explorestack/protobuf/Schema;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    return-void
.end method

.method public final mergeFrom(Ljava/lang/Object;Lcom/explorestack/protobuf/Reader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/explorestack/protobuf/Reader;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-static {}, Lcom/explorestack/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/explorestack/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/explorestack/protobuf/Protobuf;->mergeFrom(Ljava/lang/Object;Lcom/explorestack/protobuf/Reader;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public final mergeFrom(Ljava/lang/Object;Lcom/explorestack/protobuf/Reader;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/explorestack/protobuf/Reader;",
            "Lcom/explorestack/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/explorestack/protobuf/Schema;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/explorestack/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Lcom/explorestack/protobuf/Reader;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public final registerSchema(Ljava/lang/Class;Lcom/explorestack/protobuf/Schema;)Lcom/explorestack/protobuf/Schema;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/explorestack/protobuf/Schema<",
            "*>;)",
            "Lcom/explorestack/protobuf/Schema<",
            "*>;"
        }
    .end annotation

    const-string v0, "messageType"

    .line 119
    invoke-static {p1, v0}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "schema"

    .line 120
    invoke-static {p2, v0}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/explorestack/protobuf/Protobuf;->schemaCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Schema;

    return-object p1
.end method

.method public final registerSchemaOverride(Ljava/lang/Class;Lcom/explorestack/protobuf/Schema;)Lcom/explorestack/protobuf/Schema;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/explorestack/protobuf/Schema<",
            "*>;)",
            "Lcom/explorestack/protobuf/Schema<",
            "*>;"
        }
    .end annotation

    const-string v0, "messageType"

    .line 134
    invoke-static {p1, v0}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "schema"

    .line 135
    invoke-static {p2, v0}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/explorestack/protobuf/Protobuf;->schemaCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Schema;

    return-object p1
.end method

.method public final schemaFor(Ljava/lang/Class;)Lcom/explorestack/protobuf/Schema;
    .locals 1
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

    const-string v0, "messageType"

    .line 89
    invoke-static {p1, v0}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/explorestack/protobuf/Protobuf;->schemaCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Schema;

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/explorestack/protobuf/Protobuf;->schemaFactory:Lcom/explorestack/protobuf/SchemaFactory;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/SchemaFactory;->createSchema(Ljava/lang/Class;)Lcom/explorestack/protobuf/Schema;

    move-result-object v0

    .line 95
    invoke-virtual {p0, p1, v0}, Lcom/explorestack/protobuf/Protobuf;->registerSchema(Ljava/lang/Class;Lcom/explorestack/protobuf/Schema;)Lcom/explorestack/protobuf/Schema;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object v0, p1

    :cond_0
    return-object v0
.end method

.method public final schemaFor(Ljava/lang/Object;)Lcom/explorestack/protobuf/Schema;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/explorestack/protobuf/Schema<",
            "TT;>;"
        }
    .end annotation

    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/explorestack/protobuf/Schema;

    move-result-object p1

    return-object p1
.end method

.method public final writeTo(Ljava/lang/Object;Lcom/explorestack/protobuf/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/explorestack/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/explorestack/protobuf/Schema;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/Schema;->writeTo(Ljava/lang/Object;Lcom/explorestack/protobuf/Writer;)V

    return-void
.end method
