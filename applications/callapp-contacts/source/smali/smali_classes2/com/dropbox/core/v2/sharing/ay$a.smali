.class final Lcom/dropbox/core/v2/sharing/ay$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/sharing/ay;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/ay$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 312
    new-instance v0, Lcom/dropbox/core/v2/sharing/ay$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ay$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ay$a;->a:Lcom/dropbox/core/v2/sharing/ay$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 311
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

    .line 1356
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1358
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ay$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 1359
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1363
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ay$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1364
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ay$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_8

    const-string v2, "email_unverified"

    .line 1369
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1370
    sget-object v1, Lcom/dropbox/core/v2/sharing/ay;->a:Lcom/dropbox/core/v2/sharing/ay;

    goto :goto_1

    :cond_1
    const-string v2, "bad_path"

    .line 1372
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1374
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/sharing/ay$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1375
    sget-object v1, Lcom/dropbox/core/v2/sharing/az$a;->a:Lcom/dropbox/core/v2/sharing/az$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/az$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/az;

    move-result-object v1

    .line 1376
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/ay;->a(Lcom/dropbox/core/v2/sharing/az;)Lcom/dropbox/core/v2/sharing/ay;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v2, "team_policy_disallows_member_policy"

    .line 1378
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1379
    sget-object v1, Lcom/dropbox/core/v2/sharing/ay;->b:Lcom/dropbox/core/v2/sharing/ay;

    goto :goto_1

    :cond_3
    const-string v2, "disallowed_shared_link_policy"

    .line 1381
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1382
    sget-object v1, Lcom/dropbox/core/v2/sharing/ay;->c:Lcom/dropbox/core/v2/sharing/ay;

    goto :goto_1

    :cond_4
    const-string v2, "other"

    .line 1384
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1385
    sget-object v1, Lcom/dropbox/core/v2/sharing/ay;->d:Lcom/dropbox/core/v2/sharing/ay;

    goto :goto_1

    :cond_5
    const-string v2, "no_permission"

    .line 1387
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1388
    sget-object v1, Lcom/dropbox/core/v2/sharing/ay;->e:Lcom/dropbox/core/v2/sharing/ay;

    :goto_1
    if-nez v0, :cond_6

    .line 1394
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ay$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1395
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ay$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_6
    return-object v1

    .line 1391
    :cond_7
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unknown tag: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0

    .line 1367
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

    .line 311
    check-cast p1, Lcom/dropbox/core/v2/sharing/ay;

    .line 2316
    sget-object v0, Lcom/dropbox/core/v2/sharing/ay$1;->a:[I

    .line 3140
    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/ay;->f:Lcom/dropbox/core/v2/sharing/ay$b;

    .line 2316
    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/ay$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2346
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unrecognized tag: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4140
    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/ay;->f:Lcom/dropbox/core/v2/sharing/ay$b;

    .line 2346
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    const-string p1, "no_permission"

    .line 2342
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_1
    const-string p1, "other"

    .line 2338
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_2
    const-string p1, "disallowed_shared_link_policy"

    .line 2334
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_3
    const-string p1, "team_policy_disallows_member_policy"

    .line 2330
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 2322
    :pswitch_4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "bad_path"

    .line 2323
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/ay$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2324
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2325
    sget-object v0, Lcom/dropbox/core/v2/sharing/az$a;->a:Lcom/dropbox/core/v2/sharing/az$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ay;->a(Lcom/dropbox/core/v2/sharing/ay;)Lcom/dropbox/core/v2/sharing/az;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/az$a;->a(Lcom/dropbox/core/v2/sharing/az;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2326
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    :pswitch_5
    const-string p1, "email_unverified"

    .line 2318
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

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
