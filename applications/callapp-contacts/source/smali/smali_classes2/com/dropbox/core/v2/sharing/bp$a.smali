.class final Lcom/dropbox/core/v2/sharing/bp$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/bp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/sharing/bp;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/bp$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 352
    new-instance v0, Lcom/dropbox/core/v2/sharing/bp$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/bp$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/bp$a;->a:Lcom/dropbox/core/v2/sharing/bp$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 351
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

    .line 1400
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1402
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bp$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 1403
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1407
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bp$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1408
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bp$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_9

    const-string v2, "access_error"

    .line 1413
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1415
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/sharing/bp$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1416
    sget-object v1, Lcom/dropbox/core/v2/sharing/bc$a;->a:Lcom/dropbox/core/v2/sharing/bc$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bc$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/bc;

    move-result-object v1

    .line 1417
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/bp;->a(Lcom/dropbox/core/v2/sharing/bc;)Lcom/dropbox/core/v2/sharing/bp;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "invalid_dropbox_id"

    .line 1419
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1420
    sget-object v1, Lcom/dropbox/core/v2/sharing/bp;->a:Lcom/dropbox/core/v2/sharing/bp;

    goto :goto_1

    :cond_2
    const-string v2, "new_owner_not_a_member"

    .line 1422
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1423
    sget-object v1, Lcom/dropbox/core/v2/sharing/bp;->b:Lcom/dropbox/core/v2/sharing/bp;

    goto :goto_1

    :cond_3
    const-string v2, "new_owner_unmounted"

    .line 1425
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1426
    sget-object v1, Lcom/dropbox/core/v2/sharing/bp;->c:Lcom/dropbox/core/v2/sharing/bp;

    goto :goto_1

    :cond_4
    const-string v2, "new_owner_email_unverified"

    .line 1428
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1429
    sget-object v1, Lcom/dropbox/core/v2/sharing/bp;->d:Lcom/dropbox/core/v2/sharing/bp;

    goto :goto_1

    :cond_5
    const-string v2, "team_folder"

    .line 1431
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1432
    sget-object v1, Lcom/dropbox/core/v2/sharing/bp;->e:Lcom/dropbox/core/v2/sharing/bp;

    goto :goto_1

    :cond_6
    const-string v2, "no_permission"

    .line 1434
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1435
    sget-object v1, Lcom/dropbox/core/v2/sharing/bp;->f:Lcom/dropbox/core/v2/sharing/bp;

    goto :goto_1

    .line 1438
    :cond_7
    sget-object v1, Lcom/dropbox/core/v2/sharing/bp;->g:Lcom/dropbox/core/v2/sharing/bp;

    :goto_1
    if-nez v0, :cond_8

    .line 1441
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bp$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1442
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bp$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_8
    return-object v1

    .line 1411
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

    .line 351
    check-cast p1, Lcom/dropbox/core/v2/sharing/bp;

    .line 2356
    sget-object v0, Lcom/dropbox/core/v2/sharing/bp$1;->a:[I

    .line 3156
    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/bp;->h:Lcom/dropbox/core/v2/sharing/bp$b;

    .line 2356
    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/bp$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string p1, "other"

    .line 2390
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-string p1, "no_permission"

    .line 2386
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_1
    const-string p1, "team_folder"

    .line 2382
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_2
    const-string p1, "new_owner_email_unverified"

    .line 2378
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_3
    const-string p1, "new_owner_unmounted"

    .line 2374
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_4
    const-string p1, "new_owner_not_a_member"

    .line 2370
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_5
    const-string p1, "invalid_dropbox_id"

    .line 2366
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 2358
    :pswitch_6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "access_error"

    .line 2359
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/bp$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2360
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2361
    sget-object v0, Lcom/dropbox/core/v2/sharing/bc$a;->a:Lcom/dropbox/core/v2/sharing/bc$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bp;->a(Lcom/dropbox/core/v2/sharing/bp;)Lcom/dropbox/core/v2/sharing/bc;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/dropbox/core/v2/sharing/bc$a;->a(Lcom/dropbox/core/v2/sharing/bc;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2362
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
