.class final Lcom/dropbox/core/v2/files/ba$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/files/ba;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/ba$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 335
    new-instance v0, Lcom/dropbox/core/v2/files/ba$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ba$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/ba$a;->a:Lcom/dropbox/core/v2/files/ba$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 334
    invoke-direct {p0}, Lcom/dropbox/core/a/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 1379
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1381
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ba$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 1382
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1386
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ba$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1387
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ba$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_8

    const-string v2, "path"

    .line 1392
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1394
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/files/ba$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1395
    sget-object v1, Lcom/dropbox/core/v2/files/ai$a;->a:Lcom/dropbox/core/v2/files/ai$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/ai$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/ai;

    move-result-object v1

    .line 1396
    invoke-static {v1}, Lcom/dropbox/core/v2/files/ba;->a(Lcom/dropbox/core/v2/files/ai;)Lcom/dropbox/core/v2/files/ba;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "unsupported_extension"

    .line 1398
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1399
    sget-object v1, Lcom/dropbox/core/v2/files/ba;->a:Lcom/dropbox/core/v2/files/ba;

    goto :goto_1

    :cond_2
    const-string v2, "unsupported_image"

    .line 1401
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1402
    sget-object v1, Lcom/dropbox/core/v2/files/ba;->b:Lcom/dropbox/core/v2/files/ba;

    goto :goto_1

    :cond_3
    const-string v2, "conversion_error"

    .line 1404
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1405
    sget-object v1, Lcom/dropbox/core/v2/files/ba;->c:Lcom/dropbox/core/v2/files/ba;

    goto :goto_1

    :cond_4
    const-string v2, "access_denied"

    .line 1407
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1408
    sget-object v1, Lcom/dropbox/core/v2/files/ba;->d:Lcom/dropbox/core/v2/files/ba;

    goto :goto_1

    :cond_5
    const-string v2, "not_found"

    .line 1410
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1411
    sget-object v1, Lcom/dropbox/core/v2/files/ba;->e:Lcom/dropbox/core/v2/files/ba;

    goto :goto_1

    .line 1414
    :cond_6
    sget-object v1, Lcom/dropbox/core/v2/files/ba;->f:Lcom/dropbox/core/v2/files/ba;

    :goto_1
    if-nez v0, :cond_7

    .line 1417
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ba$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1418
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ba$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_7
    return-object v1

    .line 1390
    :cond_8
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 334
    check-cast p1, Lcom/dropbox/core/v2/files/ba;

    .line 2339
    sget-object v0, Lcom/dropbox/core/v2/files/ba$1;->a:[I

    .line 3151
    iget-object v1, p1, Lcom/dropbox/core/v2/files/ba;->g:Lcom/dropbox/core/v2/files/ba$b;

    .line 2339
    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/ba$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string p1, "other"

    .line 2369
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-string p1, "not_found"

    .line 2365
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_1
    const-string p1, "access_denied"

    .line 2361
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_2
    const-string p1, "conversion_error"

    .line 2357
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_3
    const-string p1, "unsupported_image"

    .line 2353
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_4
    const-string p1, "unsupported_extension"

    .line 2349
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 2341
    :pswitch_5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "path"

    .line 2342
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/ba$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2343
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2344
    sget-object v0, Lcom/dropbox/core/v2/files/ai$a;->a:Lcom/dropbox/core/v2/files/ai$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/ba;->a(Lcom/dropbox/core/v2/files/ba;)Lcom/dropbox/core/v2/files/ai;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/files/ai$a;->a(Lcom/dropbox/core/v2/files/ai;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2345
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
