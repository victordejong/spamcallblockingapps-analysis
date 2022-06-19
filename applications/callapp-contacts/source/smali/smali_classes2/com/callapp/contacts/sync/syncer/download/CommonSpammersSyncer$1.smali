.class Lcom/callapp/contacts/sync/syncer/download/CommonSpammersSyncer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/sync/syncer/download/CommonSpammersSyncer;->getHandler()Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public a:Lcom/fasterxml/jackson/core/JsonParser;

.field public b:Lcom/fasterxml/jackson/databind/ObjectMapper;

.field final synthetic c:Lcom/callapp/contacts/sync/syncer/download/CommonSpammersSyncer;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/sync/syncer/download/CommonSpammersSyncer;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/callapp/contacts/sync/syncer/download/CommonSpammersSyncer$1;->c:Lcom/callapp/contacts/sync/syncer/download/CommonSpammersSyncer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lcom/callapp/contacts/sync/syncer/download/CommonSpammersSyncer$1;->a:Lcom/fasterxml/jackson/core/JsonParser;

    .line 35
    new-instance p1, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/sync/syncer/download/CommonSpammersSyncer$1;->b:Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lokhttp3/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_5

    .line 40
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 48
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/sync/syncer/download/CommonSpammersSyncer$1;->b:Lcom/fasterxml/jackson/databind/ObjectMapper;

    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_UNKNOWN_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/DeserializationFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 49
    iget-object p1, p0, Lcom/callapp/contacts/sync/syncer/download/CommonSpammersSyncer$1;->b:Lcom/fasterxml/jackson/databind/ObjectMapper;

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->AUTO_CLOSE_SOURCE:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/core/JsonParser$Feature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 50
    iget-object p1, p0, Lcom/callapp/contacts/sync/syncer/download/CommonSpammersSyncer$1;->b:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getFactory()Lcom/fasterxml/jackson/core/JsonFactory;

    move-result-object p1

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/sync/syncer/download/CommonSpammersSyncer$1;->a:Lcom/fasterxml/jackson/core/JsonParser;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    .line 82
    invoke-static {p1}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/Closeable;)V

    return-void

    .line 55
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/callapp/contacts/manager/BlockManager;->a()V

    .line 58
    iget-object p1, p0, Lcom/callapp/contacts/sync/syncer/download/CommonSpammersSyncer$1;->a:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 59
    sget-object p2, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq p1, p2, :cond_2

    .line 60
    iget-object p1, p0, Lcom/callapp/contacts/sync/syncer/download/CommonSpammersSyncer$1;->a:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    if-nez p1, :cond_4

    .line 82
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/callapp/contacts/sync/syncer/download/CommonSpammersSyncer$1;->a:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-static {p1}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/Closeable;)V

    return-void

    .line 68
    :cond_4
    :try_start_2
    iget-object p1, p0, Lcom/callapp/contacts/sync/syncer/download/CommonSpammersSyncer$1;->a:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    sget-object p2, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne p1, p2, :cond_3

    .line 69
    iget-object p1, p0, Lcom/callapp/contacts/sync/syncer/download/CommonSpammersSyncer$1;->b:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object p2, p0, Lcom/callapp/contacts/sync/syncer/download/CommonSpammersSyncer$1;->a:Lcom/fasterxml/jackson/core/JsonParser;

    const-class v0, Lcom/callapp/common/model/json/JSONContact;

    invoke-virtual {p1, p2, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/common/model/json/JSONContact;

    .line 71
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONContact;->getPhoneNumbers()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 73
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONContact;->getPhoneNumbers()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/common/model/json/JSONPhoneNumber;

    .line 74
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONPhoneNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONContact;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONContact;->getSpamScore()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/manager/BlockManager;->a(Lcom/callapp/framework/phone/Phone;Ljava/lang/String;I)V

    goto :goto_2

    .line 42
    :cond_5
    :goto_3
    const-class p1, Lcom/callapp/contacts/sync/syncer/download/CommonSpammersSyncer;

    const-string p2, "failed to get common spammers list"

    invoke-static {p1, p2}, Lcom/callapp/contacts/util/CLog;->c(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 79
    :try_start_3
    const-class p2, Lcom/callapp/contacts/sync/syncer/download/CommonSpammersSyncer;

    invoke-static {p2, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 82
    :goto_4
    iget-object p2, p0, Lcom/callapp/contacts/sync/syncer/download/CommonSpammersSyncer$1;->a:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-static {p2}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/Closeable;)V

    .line 83
    throw p1
.end method

.method public final b(Ljava/lang/String;Lokhttp3/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
