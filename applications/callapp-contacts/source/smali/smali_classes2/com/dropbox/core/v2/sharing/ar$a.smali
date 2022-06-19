.class final Lcom/dropbox/core/v2/sharing/ar$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/sharing/ar;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/ar$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 361
    new-instance v0, Lcom/dropbox/core/v2/sharing/ar$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ar$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ar$a;->a:Lcom/dropbox/core/v2/sharing/ar$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 360
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

    .line 1409
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1411
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ar$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 1412
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1416
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ar$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1417
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ar$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_9

    const-string v2, "access_error"

    .line 1422
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1424
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/sharing/ar$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1425
    sget-object v1, Lcom/dropbox/core/v2/sharing/bc$a;->a:Lcom/dropbox/core/v2/sharing/bc$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bc$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/bc;

    move-result-object v1

    .line 1426
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/ar;->a(Lcom/dropbox/core/v2/sharing/bc;)Lcom/dropbox/core/v2/sharing/ar;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "folder_owner"

    .line 1428
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1429
    sget-object v1, Lcom/dropbox/core/v2/sharing/ar;->a:Lcom/dropbox/core/v2/sharing/ar;

    goto :goto_1

    :cond_2
    const-string v2, "mounted"

    .line 1431
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1432
    sget-object v1, Lcom/dropbox/core/v2/sharing/ar;->b:Lcom/dropbox/core/v2/sharing/ar;

    goto :goto_1

    :cond_3
    const-string v2, "group_access"

    .line 1434
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1435
    sget-object v1, Lcom/dropbox/core/v2/sharing/ar;->c:Lcom/dropbox/core/v2/sharing/ar;

    goto :goto_1

    :cond_4
    const-string v2, "team_folder"

    .line 1437
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1438
    sget-object v1, Lcom/dropbox/core/v2/sharing/ar;->d:Lcom/dropbox/core/v2/sharing/ar;

    goto :goto_1

    :cond_5
    const-string v2, "no_permission"

    .line 1440
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1441
    sget-object v1, Lcom/dropbox/core/v2/sharing/ar;->e:Lcom/dropbox/core/v2/sharing/ar;

    goto :goto_1

    :cond_6
    const-string v2, "no_explicit_access"

    .line 1443
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1444
    sget-object v1, Lcom/dropbox/core/v2/sharing/ar;->f:Lcom/dropbox/core/v2/sharing/ar;

    goto :goto_1

    .line 1447
    :cond_7
    sget-object v1, Lcom/dropbox/core/v2/sharing/ar;->g:Lcom/dropbox/core/v2/sharing/ar;

    :goto_1
    if-nez v0, :cond_8

    .line 1450
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ar$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1451
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ar$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_8
    return-object v1

    .line 1420
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

    .line 360
    check-cast p1, Lcom/dropbox/core/v2/sharing/ar;

    .line 2365
    sget-object v0, Lcom/dropbox/core/v2/sharing/ar$1;->a:[I

    .line 3165
    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/ar;->h:Lcom/dropbox/core/v2/sharing/ar$b;

    .line 2365
    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/ar$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string p1, "other"

    .line 2399
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-string p1, "no_explicit_access"

    .line 2395
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_1
    const-string p1, "no_permission"

    .line 2391
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_2
    const-string p1, "team_folder"

    .line 2387
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_3
    const-string p1, "group_access"

    .line 2383
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_4
    const-string p1, "mounted"

    .line 2379
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_5
    const-string p1, "folder_owner"

    .line 2375
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 2367
    :pswitch_6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "access_error"

    .line 2368
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/ar$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2369
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2370
    sget-object v0, Lcom/dropbox/core/v2/sharing/bc$a;->a:Lcom/dropbox/core/v2/sharing/bc$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ar;->a(Lcom/dropbox/core/v2/sharing/ar;)Lcom/dropbox/core/v2/sharing/bc;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/dropbox/core/v2/sharing/bc$a;->a(Lcom/dropbox/core/v2/sharing/bc;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2371
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
