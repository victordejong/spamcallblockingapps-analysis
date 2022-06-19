.class public Lcom/fasterxml/jackson/databind/node/BooleanNode;
.super Lcom/fasterxml/jackson/databind/node/ValueNode;
.source "SourceFile"


# static fields
.field public static final FALSE:Lcom/fasterxml/jackson/databind/node/BooleanNode;

.field public static final TRUE:Lcom/fasterxml/jackson/databind/node/BooleanNode;

.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private final _value:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/fasterxml/jackson/databind/node/BooleanNode;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/node/BooleanNode;-><init>(Z)V

    sput-object v0, Lcom/fasterxml/jackson/databind/node/BooleanNode;->TRUE:Lcom/fasterxml/jackson/databind/node/BooleanNode;

    .line 22
    new-instance v0, Lcom/fasterxml/jackson/databind/node/BooleanNode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/node/BooleanNode;-><init>(Z)V

    sput-object v0, Lcom/fasterxml/jackson/databind/node/BooleanNode;->FALSE:Lcom/fasterxml/jackson/databind/node/BooleanNode;

    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/node/ValueNode;-><init>()V

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/node/BooleanNode;->_value:Z

    return-void
.end method

.method public static getFalse()Lcom/fasterxml/jackson/databind/node/BooleanNode;
    .locals 1

    .line 38
    sget-object v0, Lcom/fasterxml/jackson/databind/node/BooleanNode;->FALSE:Lcom/fasterxml/jackson/databind/node/BooleanNode;

    return-object v0
.end method

.method public static getTrue()Lcom/fasterxml/jackson/databind/node/BooleanNode;
    .locals 1

    .line 37
    sget-object v0, Lcom/fasterxml/jackson/databind/node/BooleanNode;->TRUE:Lcom/fasterxml/jackson/databind/node/BooleanNode;

    return-object v0
.end method

.method public static valueOf(Z)Lcom/fasterxml/jackson/databind/node/BooleanNode;
    .locals 0

    if-eqz p0, :cond_0

    .line 40
    sget-object p0, Lcom/fasterxml/jackson/databind/node/BooleanNode;->TRUE:Lcom/fasterxml/jackson/databind/node/BooleanNode;

    return-object p0

    :cond_0
    sget-object p0, Lcom/fasterxml/jackson/databind/node/BooleanNode;->FALSE:Lcom/fasterxml/jackson/databind/node/BooleanNode;

    return-object p0
.end method


# virtual methods
.method public asBoolean()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/BooleanNode;->_value:Z

    return v0
.end method

.method public asBoolean(Z)Z
    .locals 0

    .line 68
    iget-boolean p1, p0, Lcom/fasterxml/jackson/databind/node/BooleanNode;->_value:Z

    return p1
.end method

.method public asDouble(D)D
    .locals 0

    .line 81
    iget-boolean p1, p0, Lcom/fasterxml/jackson/databind/node/BooleanNode;->_value:Z

    if-eqz p1, :cond_0

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    return-wide p1

    :cond_0
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public asInt(I)I
    .locals 0

    .line 73
    iget-boolean p1, p0, Lcom/fasterxml/jackson/databind/node/BooleanNode;->_value:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public asLong(J)J
    .locals 0

    .line 77
    iget-boolean p1, p0, Lcom/fasterxml/jackson/databind/node/BooleanNode;->_value:Z

    if-eqz p1, :cond_0

    const-wide/16 p1, 0x1

    return-wide p1

    :cond_0
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public asText()Ljava/lang/String;
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/BooleanNode;->_value:Z

    if-eqz v0, :cond_0

    const-string v0, "true"

    return-object v0

    :cond_0
    const-string v0, "false"

    return-object v0
.end method

.method public asToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/BooleanNode;->_value:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method public booleanValue()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/BooleanNode;->_value:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 103
    :cond_1
    instance-of v2, p1, Lcom/fasterxml/jackson/databind/node/BooleanNode;

    if-nez v2, :cond_2

    return v1

    .line 106
    :cond_2
    iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/node/BooleanNode;->_value:Z

    check-cast p1, Lcom/fasterxml/jackson/databind/node/BooleanNode;

    iget-boolean p1, p1, Lcom/fasterxml/jackson/databind/node/BooleanNode;->_value:Z

    if-ne v2, p1, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public getNodeType()Lcom/fasterxml/jackson/databind/node/JsonNodeType;
    .locals 1

    .line 44
    sget-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->BOOLEAN:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 91
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/BooleanNode;->_value:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/BooleanNode;->_value:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/databind/node/BooleanNode;->TRUE:Lcom/fasterxml/jackson/databind/node/BooleanNode;

    return-object v0

    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/databind/node/BooleanNode;->FALSE:Lcom/fasterxml/jackson/databind/node/BooleanNode;

    return-object v0
.end method

.method public final serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    iget-boolean p2, p0, Lcom/fasterxml/jackson/databind/node/BooleanNode;->_value:Z

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBoolean(Z)V

    return-void
.end method
