.class final Lcom/dropbox/core/v2/team/az$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/az;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/team/az;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/team/az$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 295
    new-instance v0, Lcom/dropbox/core/v2/team/az$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/az$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/az$a;->a:Lcom/dropbox/core/v2/team/az$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 294
    invoke-direct {p0}, Lcom/dropbox/core/a/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 1331
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1333
    invoke-static {p1}, Lcom/dropbox/core/v2/team/az$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 1334
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1338
    invoke-static {p1}, Lcom/dropbox/core/v2/team/az$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1339
    invoke-static {p1}, Lcom/dropbox/core/v2/team/az$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_6

    const-string v2, "invalid_folder_name"

    .line 1344
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1345
    sget-object v1, Lcom/dropbox/core/v2/team/az;->a:Lcom/dropbox/core/v2/team/az;

    goto :goto_1

    :cond_1
    const-string v2, "folder_name_already_used"

    .line 1347
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1348
    sget-object v1, Lcom/dropbox/core/v2/team/az;->b:Lcom/dropbox/core/v2/team/az;

    goto :goto_1

    :cond_2
    const-string v2, "folder_name_reserved"

    .line 1350
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1351
    sget-object v1, Lcom/dropbox/core/v2/team/az;->c:Lcom/dropbox/core/v2/team/az;

    goto :goto_1

    :cond_3
    const-string v2, "sync_settings_error"

    .line 1353
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1355
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/team/az$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1356
    sget-object v1, Lcom/dropbox/core/v2/files/ay$a;->a:Lcom/dropbox/core/v2/files/ay$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/ay$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/ay;

    move-result-object v1

    .line 1357
    invoke-static {v1}, Lcom/dropbox/core/v2/team/az;->a(Lcom/dropbox/core/v2/files/ay;)Lcom/dropbox/core/v2/team/az;

    move-result-object v1

    goto :goto_1

    .line 1360
    :cond_4
    sget-object v1, Lcom/dropbox/core/v2/team/az;->d:Lcom/dropbox/core/v2/team/az;

    :goto_1
    if-nez v0, :cond_5

    .line 1363
    invoke-static {p1}, Lcom/dropbox/core/v2/team/az$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1364
    invoke-static {p1}, Lcom/dropbox/core/v2/team/az$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_5
    return-object v1

    .line 1342
    :cond_6
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

    .line 294
    check-cast p1, Lcom/dropbox/core/v2/team/az;

    .line 2299
    sget-object v0, Lcom/dropbox/core/v2/team/az$1;->a:[I

    .line 3136
    iget-object v1, p1, Lcom/dropbox/core/v2/team/az;->e:Lcom/dropbox/core/v2/team/az$b;

    .line 2299
    invoke-virtual {v1}, Lcom/dropbox/core/v2/team/az$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string p1, "other"

    .line 2321
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 2313
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "sync_settings_error"

    .line 2314
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/az$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2315
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2316
    sget-object v0, Lcom/dropbox/core/v2/files/ay$a;->a:Lcom/dropbox/core/v2/files/ay$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/az;->a(Lcom/dropbox/core/v2/team/az;)Lcom/dropbox/core/v2/files/ay;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/files/ay$a;->a(Lcom/dropbox/core/v2/files/ay;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2317
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    :cond_1
    const-string p1, "folder_name_reserved"

    .line 2309
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p1, "folder_name_already_used"

    .line 2305
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string p1, "invalid_folder_name"

    .line 2301
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void
.end method
