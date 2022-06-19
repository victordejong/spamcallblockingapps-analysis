.class public final Lcom/dropbox/core/v2/fileproperties/f$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/fileproperties/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/fileproperties/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/fileproperties/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 343
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/f$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/f$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/f$a;->a:Lcom/dropbox/core/v2/fileproperties/f$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 342
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

    .line 1391
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1393
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/f$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 1394
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1398
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/f$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1399
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/f$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_9

    const-string v2, "template_not_found"

    .line 1404
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1406
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/fileproperties/f$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 2052
    sget-object v1, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 1407
    invoke-virtual {v1, p1}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1408
    invoke-static {v1}, Lcom/dropbox/core/v2/fileproperties/f;->a(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/f;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "restricted_content"

    .line 1410
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1411
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/f;->a:Lcom/dropbox/core/v2/fileproperties/f;

    goto :goto_1

    :cond_2
    const-string v2, "other"

    .line 1413
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1414
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/f;->b:Lcom/dropbox/core/v2/fileproperties/f;

    goto :goto_1

    :cond_3
    const-string v2, "conflicting_property_names"

    .line 1416
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1417
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/f;->c:Lcom/dropbox/core/v2/fileproperties/f;

    goto :goto_1

    :cond_4
    const-string v2, "too_many_properties"

    .line 1419
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1420
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/f;->d:Lcom/dropbox/core/v2/fileproperties/f;

    goto :goto_1

    :cond_5
    const-string v2, "too_many_templates"

    .line 1422
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1423
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/f;->e:Lcom/dropbox/core/v2/fileproperties/f;

    goto :goto_1

    :cond_6
    const-string v2, "template_attribute_too_large"

    .line 1425
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1426
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/f;->f:Lcom/dropbox/core/v2/fileproperties/f;

    :goto_1
    if-nez v0, :cond_7

    .line 1432
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/f$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1433
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/f$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_7
    return-object v1

    .line 1429
    :cond_8
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unknown tag: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0

    .line 1402
    :cond_9
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

    .line 342
    check-cast p1, Lcom/dropbox/core/v2/fileproperties/f;

    .line 2347
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/f$1;->a:[I

    .line 3150
    iget-object v1, p1, Lcom/dropbox/core/v2/fileproperties/f;->g:Lcom/dropbox/core/v2/fileproperties/f$b;

    .line 2347
    invoke-virtual {v1}, Lcom/dropbox/core/v2/fileproperties/f$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2381
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unrecognized tag: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4150
    iget-object p1, p1, Lcom/dropbox/core/v2/fileproperties/f;->g:Lcom/dropbox/core/v2/fileproperties/f$b;

    .line 2381
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    const-string p1, "template_attribute_too_large"

    .line 2377
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_1
    const-string p1, "too_many_templates"

    .line 2373
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_2
    const-string p1, "too_many_properties"

    .line 2369
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_3
    const-string p1, "conflicting_property_names"

    .line 2365
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_4
    const-string p1, "other"

    .line 2361
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_5
    const-string p1, "restricted_content"

    .line 2357
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 2349
    :pswitch_6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "template_not_found"

    .line 2350
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/fileproperties/f$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2351
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 4052
    sget-object v0, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 2352
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/f;->a(Lcom/dropbox/core/v2/fileproperties/f;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2353
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
