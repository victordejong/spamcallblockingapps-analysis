.class public final Lcom/dropbox/core/v2/auth/b$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/auth/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/auth/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/auth/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 366
    new-instance v0, Lcom/dropbox/core/v2/auth/b$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/auth/b$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/auth/b$a;->a:Lcom/dropbox/core/v2/auth/b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 365
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

    .line 1413
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 1415
    invoke-static {p1}, Lcom/dropbox/core/v2/auth/b$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v0

    .line 1416
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1420
    invoke-static {p1}, Lcom/dropbox/core/v2/auth/b$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1421
    invoke-static {p1}, Lcom/dropbox/core/v2/auth/b$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_9

    const-string v3, "invalid_access_token"

    .line 1426
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1427
    sget-object v0, Lcom/dropbox/core/v2/auth/b;->a:Lcom/dropbox/core/v2/auth/b;

    goto :goto_1

    :cond_1
    const-string v3, "invalid_select_user"

    .line 1429
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1430
    sget-object v0, Lcom/dropbox/core/v2/auth/b;->b:Lcom/dropbox/core/v2/auth/b;

    goto :goto_1

    :cond_2
    const-string v3, "invalid_select_admin"

    .line 1432
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1433
    sget-object v0, Lcom/dropbox/core/v2/auth/b;->c:Lcom/dropbox/core/v2/auth/b;

    goto :goto_1

    :cond_3
    const-string v3, "user_suspended"

    .line 1435
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1436
    sget-object v0, Lcom/dropbox/core/v2/auth/b;->d:Lcom/dropbox/core/v2/auth/b;

    goto :goto_1

    :cond_4
    const-string v3, "expired_access_token"

    .line 1438
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1439
    sget-object v0, Lcom/dropbox/core/v2/auth/b;->e:Lcom/dropbox/core/v2/auth/b;

    goto :goto_1

    :cond_5
    const-string v3, "missing_scope"

    .line 1441
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1443
    sget-object v0, Lcom/dropbox/core/v2/auth/g$a;->a:Lcom/dropbox/core/v2/auth/g$a;

    invoke-static {p1, v2}, Lcom/dropbox/core/v2/auth/g$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/auth/g;

    move-result-object v0

    .line 1444
    invoke-static {v0}, Lcom/dropbox/core/v2/auth/b;->a(Lcom/dropbox/core/v2/auth/g;)Lcom/dropbox/core/v2/auth/b;

    move-result-object v0

    goto :goto_1

    :cond_6
    const-string v2, "route_access_denied"

    .line 1446
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1447
    sget-object v0, Lcom/dropbox/core/v2/auth/b;->f:Lcom/dropbox/core/v2/auth/b;

    goto :goto_1

    .line 1450
    :cond_7
    sget-object v0, Lcom/dropbox/core/v2/auth/b;->g:Lcom/dropbox/core/v2/auth/b;

    :goto_1
    if-nez v1, :cond_8

    .line 1453
    invoke-static {p1}, Lcom/dropbox/core/v2/auth/b$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1454
    invoke-static {p1}, Lcom/dropbox/core/v2/auth/b$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_8
    return-object v0

    .line 1424
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

    .line 365
    check-cast p1, Lcom/dropbox/core/v2/auth/b;

    .line 2370
    sget-object v0, Lcom/dropbox/core/v2/auth/b$1;->a:[I

    .line 3167
    iget-object v1, p1, Lcom/dropbox/core/v2/auth/b;->h:Lcom/dropbox/core/v2/auth/b$b;

    .line 2370
    invoke-virtual {v1}, Lcom/dropbox/core/v2/auth/b$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string p1, "other"

    .line 2403
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-string p1, "route_access_denied"

    .line 2399
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 2392
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "missing_scope"

    .line 2393
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/auth/b$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2394
    sget-object v0, Lcom/dropbox/core/v2/auth/g$a;->a:Lcom/dropbox/core/v2/auth/g$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/auth/b;->a(Lcom/dropbox/core/v2/auth/b;)Lcom/dropbox/core/v2/auth/g;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/dropbox/core/v2/auth/g$a;->a(Lcom/dropbox/core/v2/auth/g;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 2395
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    :pswitch_2
    const-string p1, "expired_access_token"

    .line 2388
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_3
    const-string p1, "user_suspended"

    .line 2384
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_4
    const-string p1, "invalid_select_admin"

    .line 2380
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_5
    const-string p1, "invalid_select_user"

    .line 2376
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_6
    const-string p1, "invalid_access_token"

    .line 2372
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

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
