.class public final Lcom/callapp/contacts/sync/syncer/download/ReferAndEarnPointDownloadSyncer$getHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/sync/syncer/download/ReferAndEarnPointDownloadSyncer;->getHandler()Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0018\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0015"
    }
    d2 = {
        "com/callapp/contacts/sync/syncer/download/ReferAndEarnPointDownloadSyncer$getHandler$1",
        "Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;",
        "jsonObjectMapper",
        "Lcom/fasterxml/jackson/databind/ObjectMapper;",
        "getJsonObjectMapper",
        "()Lcom/fasterxml/jackson/databind/ObjectMapper;",
        "setJsonObjectMapper",
        "(Lcom/fasterxml/jackson/databind/ObjectMapper;)V",
        "parser",
        "Lcom/fasterxml/jackson/core/JsonParser;",
        "getParser",
        "()Lcom/fasterxml/jackson/core/JsonParser;",
        "setParser",
        "(Lcom/fasterxml/jackson/core/JsonParser;)V",
        "onResponseError",
        "",
        "url",
        "",
        "response",
        "Lokhttp3/Response;",
        "onResponseSuccess",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/sync/syncer/download/ReferAndEarnPointDownloadSyncer;

.field private b:Lcom/fasterxml/jackson/core/JsonParser;

.field private c:Lcom/fasterxml/jackson/databind/ObjectMapper;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/sync/syncer/download/ReferAndEarnPointDownloadSyncer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/callapp/contacts/sync/syncer/download/ReferAndEarnPointDownloadSyncer$getHandler$1;->a:Lcom/callapp/contacts/sync/syncer/download/ReferAndEarnPointDownloadSyncer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance p1, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/sync/syncer/download/ReferAndEarnPointDownloadSyncer$getHandler$1;->c:Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lokhttp3/Response;)V
    .locals 2

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    const-class p1, Lcom/callapp/contacts/sync/syncer/download/ReferAndEarnPointDownloadSyncer;

    const-string v0, "onResponseSuccess"

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 29
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-nez p1, :cond_1

    .line 31
    const-class p1, Lcom/callapp/contacts/sync/syncer/download/ReferAndEarnPointDownloadSyncer;

    const-string p2, "failed to get points"

    invoke-static {p1, p2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/sync/syncer/download/ReferAndEarnPointDownloadSyncer$getHandler$1;->b:Lcom/fasterxml/jackson/core/JsonParser;

    :goto_1
    check-cast p1, Ljava/io/Closeable;

    invoke-static {p1}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/Closeable;)V

    return-void

    .line 36
    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/callapp/contacts/sync/syncer/download/ReferAndEarnPointDownloadSyncer$getHandler$1;->c:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-static {p1}, Lcom/callapp/contacts/sync/syncer/download/ReferAndEarnPointDownloadSyncer;->a(Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    .line 37
    iget-object p1, p0, Lcom/callapp/contacts/sync/syncer/download/ReferAndEarnPointDownloadSyncer$getHandler$1;->c:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getFactory()Lcom/fasterxml/jackson/core/JsonFactory;

    move-result-object p1

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/sync/syncer/download/ReferAndEarnPointDownloadSyncer$getHandler$1;->b:Lcom/fasterxml/jackson/core/JsonParser;

    if-nez p1, :cond_2

    goto :goto_1

    .line 40
    :cond_2
    iget-object p2, p0, Lcom/callapp/contacts/sync/syncer/download/ReferAndEarnPointDownloadSyncer$getHandler$1;->c:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v0, Lcom/callapp/common/model/json/JSONInviteReferer;

    invoke-virtual {p2, p1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/common/model/json/JSONInviteReferer;

    if-eqz p1, :cond_0

    .line 42
    const-class p2, Lcom/callapp/contacts/sync/syncer/download/ReferAndEarnPointDownloadSyncer;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received Points: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONInviteReferer;->getPoints()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 43
    sget-object p2, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager;->Companion:Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;

    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONInviteReferer;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "it.key"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONInviteReferer;->getPoints()Ljava/math/BigInteger;

    move-result-object p1

    const-string v1, "it.points"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0, p1}, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;->updatePoints(Ljava/lang/String;Ljava/math/BigInteger;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 46
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p2, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 49
    :goto_2
    iget-object p2, p0, Lcom/callapp/contacts/sync/syncer/download/ReferAndEarnPointDownloadSyncer$getHandler$1;->b:Lcom/fasterxml/jackson/core/JsonParser;

    check-cast p2, Ljava/io/Closeable;

    invoke-static {p2}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method public final b(Ljava/lang/String;Lokhttp3/Response;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    const-class p1, Lcom/callapp/contacts/sync/syncer/download/ReferAndEarnPointDownloadSyncer;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "onError: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method
