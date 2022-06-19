.class final Lcom/dropbox/core/v1/DbxAccountInfo$1;
.super Lcom/dropbox/core/json/JsonReader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/json/JsonReader<",
        "Lcom/dropbox/core/v1/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 216
    invoke-direct {p0}, Lcom/dropbox/core/json/JsonReader;-><init>()V

    return-void
.end method


# virtual methods
.method public final read(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v1/a;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .line 220
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->expectObjectStart(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    move-object v7, v1

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-wide v5, v2

    .line 231
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v2, v3, :cond_0

    .line 232
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 233
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 236
    :try_start_0
    invoke-static {}, Lcom/dropbox/core/v1/a;->b()Lcom/dropbox/core/json/JsonReader$FieldMapping;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping;->get(Ljava/lang/String;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 248
    new-instance p1, Ljava/lang/AssertionError;

    goto :goto_1

    .line 246
    :pswitch_0
    sget-object v3, Lcom/dropbox/core/json/JsonReader;->BooleanReader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v3, p1, v2, v1}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    goto :goto_0

    .line 245
    :pswitch_1
    sget-object v3, Lcom/dropbox/core/json/JsonReader;->StringReader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v3, p1, v2, v11}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Ljava/lang/String;

    goto :goto_0

    .line 244
    :pswitch_2
    sget-object v3, Lcom/dropbox/core/v1/a$a;->d:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v3, p1, v2, v12}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/dropbox/core/v1/a$a;

    goto :goto_0

    .line 243
    :pswitch_3
    sget-object v3, Lcom/dropbox/core/v1/a$b;->d:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v3, p1, v2, v10}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/dropbox/core/v1/a$b;

    goto :goto_0

    .line 242
    :pswitch_4
    sget-object v3, Lcom/dropbox/core/json/JsonReader;->StringReader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v3, p1, v2, v9}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Ljava/lang/String;

    goto :goto_0

    .line 241
    :pswitch_5
    sget-object v3, Lcom/dropbox/core/json/JsonReader;->StringReader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v3, p1, v2, v8}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljava/lang/String;

    goto :goto_0

    .line 240
    :pswitch_6
    sget-object v3, Lcom/dropbox/core/json/JsonReader;->StringReader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v3, p1, v2, v7}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    goto :goto_0

    .line 239
    :pswitch_7
    invoke-static {p1, v2, v5, v6}, Lcom/dropbox/core/json/JsonReader;->readUnsignedLongField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;J)J

    move-result-wide v5

    goto :goto_0

    .line 238
    :pswitch_8
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 248
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bad index: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", field = \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
    :try_end_0
    .catch Lcom/dropbox/core/json/JsonReadException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 252
    invoke-virtual {p1, v2}, Lcom/dropbox/core/json/JsonReadException;->addFieldContext(Ljava/lang/String;)Lcom/dropbox/core/json/JsonReadException;

    move-result-object p1

    throw p1

    .line 256
    :cond_0
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->expectObjectEnd(Lcom/fasterxml/jackson/core/JsonParser;)V

    const-wide/16 v2, 0x0

    cmp-long p1, v5, v2

    if-ltz p1, :cond_8

    if-eqz v7, :cond_7

    if-eqz v8, :cond_6

    if-eqz v9, :cond_5

    if-eqz v10, :cond_4

    if-eqz v11, :cond_3

    if-eqz v12, :cond_2

    if-eqz v1, :cond_1

    .line 267
    new-instance p1, Lcom/dropbox/core/v1/a;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    move-object v4, p1

    invoke-direct/range {v4 .. v13}, Lcom/dropbox/core/v1/a;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v1/a$b;Ljava/lang/String;Lcom/dropbox/core/v1/a$a;Z)V

    return-object p1

    .line 265
    :cond_1
    new-instance p1, Lcom/dropbox/core/json/JsonReadException;

    const-string v1, "missing field \"emailVerified\""

    invoke-direct {p1, v1, v0}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw p1

    .line 264
    :cond_2
    new-instance p1, Lcom/dropbox/core/json/JsonReadException;

    const-string v1, "missing field \"nameDetails\""

    invoke-direct {p1, v1, v0}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw p1

    .line 263
    :cond_3
    new-instance p1, Lcom/dropbox/core/json/JsonReadException;

    const-string v1, "missing field \"email\""

    invoke-direct {p1, v1, v0}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw p1

    .line 262
    :cond_4
    new-instance p1, Lcom/dropbox/core/json/JsonReadException;

    const-string v1, "missing field \"quota_info\""

    invoke-direct {p1, v1, v0}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw p1

    .line 261
    :cond_5
    new-instance p1, Lcom/dropbox/core/json/JsonReadException;

    const-string v1, "missing field \"referral_link\""

    invoke-direct {p1, v1, v0}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw p1

    .line 260
    :cond_6
    new-instance p1, Lcom/dropbox/core/json/JsonReadException;

    const-string v1, "missing field \"country\""

    invoke-direct {p1, v1, v0}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw p1

    .line 259
    :cond_7
    new-instance p1, Lcom/dropbox/core/json/JsonReadException;

    const-string v1, "missing field \"display_name\""

    invoke-direct {p1, v1, v0}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw p1

    .line 258
    :cond_8
    new-instance p1, Lcom/dropbox/core/json/JsonReadException;

    const-string v1, "missing field \"uid\""

    invoke-direct {p1, v1, v0}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw p1

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic read(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .line 216
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v1/DbxAccountInfo$1;->read(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v1/a;

    move-result-object p1

    return-object p1
.end method
