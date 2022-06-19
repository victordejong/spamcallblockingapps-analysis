.class final Lcom/dropbox/core/v2/sharing/bu$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/bu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/sharing/bu;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/bu$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 336
    new-instance v0, Lcom/dropbox/core/v2/sharing/bu$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/bu$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/bu$a;->a:Lcom/dropbox/core/v2/sharing/bu$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 335
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

    .line 1380
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1382
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bu$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 1383
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1387
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bu$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1388
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bu$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_8

    const-string v2, "access_error"

    .line 1393
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1395
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/sharing/bu$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1396
    sget-object v1, Lcom/dropbox/core/v2/sharing/bc$a;->a:Lcom/dropbox/core/v2/sharing/bc$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bc$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/bc;

    move-result-object v1

    .line 1397
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/bu;->a(Lcom/dropbox/core/v2/sharing/bc;)Lcom/dropbox/core/v2/sharing/bu;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "not_on_team"

    .line 1399
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1400
    sget-object v1, Lcom/dropbox/core/v2/sharing/bu;->a:Lcom/dropbox/core/v2/sharing/bu;

    goto :goto_1

    :cond_2
    const-string v2, "team_policy_disallows_member_policy"

    .line 1402
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1403
    sget-object v1, Lcom/dropbox/core/v2/sharing/bu;->b:Lcom/dropbox/core/v2/sharing/bu;

    goto :goto_1

    :cond_3
    const-string v2, "disallowed_shared_link_policy"

    .line 1405
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1406
    sget-object v1, Lcom/dropbox/core/v2/sharing/bu;->c:Lcom/dropbox/core/v2/sharing/bu;

    goto :goto_1

    :cond_4
    const-string v2, "no_permission"

    .line 1408
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1409
    sget-object v1, Lcom/dropbox/core/v2/sharing/bu;->d:Lcom/dropbox/core/v2/sharing/bu;

    goto :goto_1

    :cond_5
    const-string v2, "team_folder"

    .line 1411
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1412
    sget-object v1, Lcom/dropbox/core/v2/sharing/bu;->e:Lcom/dropbox/core/v2/sharing/bu;

    goto :goto_1

    .line 1415
    :cond_6
    sget-object v1, Lcom/dropbox/core/v2/sharing/bu;->f:Lcom/dropbox/core/v2/sharing/bu;

    :goto_1
    if-nez v0, :cond_7

    .line 1418
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bu$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1419
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bu$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_7
    return-object v1

    .line 1391
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

    .line 335
    check-cast p1, Lcom/dropbox/core/v2/sharing/bu;

    .line 2340
    sget-object v0, Lcom/dropbox/core/v2/sharing/bu$1;->a:[I

    .line 3153
    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/bu;->g:Lcom/dropbox/core/v2/sharing/bu$b;

    .line 2340
    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/bu$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string p1, "other"

    .line 2370
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-string p1, "team_folder"

    .line 2366
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_1
    const-string p1, "no_permission"

    .line 2362
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_2
    const-string p1, "disallowed_shared_link_policy"

    .line 2358
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_3
    const-string p1, "team_policy_disallows_member_policy"

    .line 2354
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_4
    const-string p1, "not_on_team"

    .line 2350
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 2342
    :pswitch_5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "access_error"

    .line 2343
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/bu$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2344
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2345
    sget-object v0, Lcom/dropbox/core/v2/sharing/bc$a;->a:Lcom/dropbox/core/v2/sharing/bc$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bu;->a(Lcom/dropbox/core/v2/sharing/bu;)Lcom/dropbox/core/v2/sharing/bc;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/dropbox/core/v2/sharing/bc$a;->a(Lcom/dropbox/core/v2/sharing/bc;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2346
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
