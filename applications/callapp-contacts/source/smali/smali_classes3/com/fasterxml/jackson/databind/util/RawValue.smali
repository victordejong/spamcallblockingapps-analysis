.class public Lcom/fasterxml/jackson/databind/util/RawValue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fasterxml/jackson/databind/JsonSerializable;


# instance fields
.field protected _value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/SerializableString;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/RawValue;->_value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/JsonSerializable;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/RawValue;->_value:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;Z)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/RawValue;->_value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/RawValue;->_value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected _serialize(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/RawValue;->_value:Ljava/lang/Object;

    instance-of v1, v0, Lcom/fasterxml/jackson/core/SerializableString;

    if-eqz v1, :cond_0

    .line 97
    check-cast v0, Lcom/fasterxml/jackson/core/SerializableString;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRawValue(Lcom/fasterxml/jackson/core/SerializableString;)V

    return-void

    .line 99
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRawValue(Ljava/lang/String;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 106
    :cond_0
    instance-of v1, p1, Lcom/fasterxml/jackson/databind/util/RawValue;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 107
    :cond_1
    check-cast p1, Lcom/fasterxml/jackson/databind/util/RawValue;

    .line 109
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/RawValue;->_value:Ljava/lang/Object;

    iget-object p1, p1, Lcom/fasterxml/jackson/databind/util/RawValue;->_value:Ljava/lang/Object;

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    if-eqz v1, :cond_3

    .line 112
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/RawValue;->_value:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public rawValue()Ljava/lang/Object;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/RawValue;->_value:Ljava/lang/Object;

    return-object v0
.end method

.method public serialize(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/RawValue;->_value:Ljava/lang/Object;

    instance-of v1, v0, Lcom/fasterxml/jackson/databind/JsonSerializable;

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObject(Ljava/lang/Object;)V

    return-void

    .line 90
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/RawValue;->_serialize(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method

.method public serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/RawValue;->_value:Ljava/lang/Object;

    instance-of v1, v0, Lcom/fasterxml/jackson/databind/JsonSerializable;

    if-eqz v1, :cond_0

    .line 64
    check-cast v0, Lcom/fasterxml/jackson/databind/JsonSerializable;

    invoke-interface {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonSerializable;->serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void

    .line 66
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/RawValue;->_serialize(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method

.method public serializeWithType(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/RawValue;->_value:Ljava/lang/Object;

    instance-of v1, v0, Lcom/fasterxml/jackson/databind/JsonSerializable;

    if-eqz v1, :cond_0

    .line 75
    check-cast v0, Lcom/fasterxml/jackson/databind/JsonSerializable;

    invoke-interface {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializable;->serializeWithType(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V

    return-void

    .line 76
    :cond_0
    instance-of p3, v0, Lcom/fasterxml/jackson/core/SerializableString;

    if-eqz p3, :cond_1

    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/util/RawValue;->serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 122
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/RawValue;->_value:Ljava/lang/Object;

    invoke-static {v1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->classNameOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "[RawValue of type %s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
