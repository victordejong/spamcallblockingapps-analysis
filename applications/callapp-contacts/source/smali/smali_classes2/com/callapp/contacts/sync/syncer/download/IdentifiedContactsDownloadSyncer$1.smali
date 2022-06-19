.class Lcom/callapp/contacts/sync/syncer/download/IdentifiedContactsDownloadSyncer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/sync/syncer/download/IdentifiedContactsDownloadSyncer;->getHandler()Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public a:Lcom/fasterxml/jackson/core/JsonParser;

.field public b:Lcom/fasterxml/jackson/databind/ObjectMapper;

.field final synthetic c:Lcom/callapp/contacts/sync/syncer/download/IdentifiedContactsDownloadSyncer;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/sync/syncer/download/IdentifiedContactsDownloadSyncer;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/callapp/contacts/sync/syncer/download/IdentifiedContactsDownloadSyncer$1;->c:Lcom/callapp/contacts/sync/syncer/download/IdentifiedContactsDownloadSyncer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lcom/callapp/contacts/sync/syncer/download/IdentifiedContactsDownloadSyncer$1;->a:Lcom/fasterxml/jackson/core/JsonParser;

    .line 39
    new-instance p1, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/sync/syncer/download/IdentifiedContactsDownloadSyncer$1;->b:Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lokhttp3/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p1, "IdentifiedContactsDownloadSyncer"

    .line 45
    invoke-static {p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    .line 47
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/sync/syncer/download/IdentifiedContactsDownloadSyncer$1;->b:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-static {v1}, Lcom/callapp/contacts/sync/syncer/download/IdentifiedContactsDownloadSyncer;->a(Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    .line 56
    iget-object v1, p0, Lcom/callapp/contacts/sync/syncer/download/IdentifiedContactsDownloadSyncer$1;->b:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getFactory()Lcom/fasterxml/jackson/core/JsonFactory;

    move-result-object v1

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p2

    iput-object p2, p0, Lcom/callapp/contacts/sync/syncer/download/IdentifiedContactsDownloadSyncer$1;->a:Lcom/fasterxml/jackson/core/JsonParser;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_1

    .line 86
    invoke-static {p2}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/Closeable;)V

    .line 87
    invoke-static {}, Lcom/callapp/contacts/manager/contacts/ContactPlusUtils;->a()V

    .line 88
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->ei:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 89
    sget-object p1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object p2, Lcom/callapp/contacts/activity/interfaces/OnBadgeNotificationDataChangeListener;->b_:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CALLAPP_PLUS_UNREAD_COUNT_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 2091
    invoke-virtual {p1, p2, v1, v0}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void

    .line 62
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_2

    .line 63
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq p2, v1, :cond_2

    .line 64
    iget-object p2, p0, Lcom/callapp/contacts/sync/syncer/download/IdentifiedContactsDownloadSyncer$1;->a:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    .line 86
    iget-object p1, p0, Lcom/callapp/contacts/sync/syncer/download/IdentifiedContactsDownloadSyncer$1;->a:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-static {p1}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/Closeable;)V

    .line 87
    invoke-static {}, Lcom/callapp/contacts/manager/contacts/ContactPlusUtils;->a()V

    .line 88
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->ei:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 89
    sget-object p1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object p2, Lcom/callapp/contacts/activity/interfaces/OnBadgeNotificationDataChangeListener;->b_:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CALLAPP_PLUS_UNREAD_COUNT_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 3091
    invoke-virtual {p1, p2, v1, v0}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void

    .line 72
    :cond_3
    :goto_1
    :try_start_2
    iget-object p2, p0, Lcom/callapp/contacts/sync/syncer/download/IdentifiedContactsDownloadSyncer$1;->a:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p2

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne p2, v1, :cond_4

    .line 74
    iget-object p2, p0, Lcom/callapp/contacts/sync/syncer/download/IdentifiedContactsDownloadSyncer$1;->b:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, p0, Lcom/callapp/contacts/sync/syncer/download/IdentifiedContactsDownloadSyncer$1;->a:Lcom/fasterxml/jackson/core/JsonParser;

    const-class v2, Lcom/callapp/common/model/json/IdentifiedJSONContact;

    invoke-virtual {p2, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callapp/common/model/json/IdentifiedJSONContact;

    const-string v1, "Received: "

    .line 75
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 77
    invoke-static {p2}, Lcom/callapp/contacts/sync/syncer/download/IdentifiedContactsDownloadSyncer;->a(Lcom/callapp/common/model/json/IdentifiedJSONContact;)Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    move-result-object p2

    .line 78
    invoke-static {p2}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->a(Lcom/callapp/contacts/model/objectbox/ExtractedInfo;)Z

    move-result v1

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Insert: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", Success: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 86
    :cond_4
    iget-object p1, p0, Lcom/callapp/contacts/sync/syncer/download/IdentifiedContactsDownloadSyncer$1;->a:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-static {p1}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/Closeable;)V

    .line 87
    invoke-static {}, Lcom/callapp/contacts/manager/contacts/ContactPlusUtils;->a()V

    .line 88
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->ei:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 89
    sget-object p1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object p2, Lcom/callapp/contacts/activity/interfaces/OnBadgeNotificationDataChangeListener;->b_:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v0, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CALLAPP_PLUS_UNREAD_COUNT_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {p1, p2, v0}, Lcom/callapp/contacts/event/bus/EventBus;->c(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    return-void

    .line 49
    :cond_5
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string p2, "failed to get identified contact list"

    invoke-static {p1, p2}, Lcom/callapp/contacts/util/CLog;->c(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 86
    iget-object p1, p0, Lcom/callapp/contacts/sync/syncer/download/IdentifiedContactsDownloadSyncer$1;->a:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-static {p1}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/Closeable;)V

    .line 87
    invoke-static {}, Lcom/callapp/contacts/manager/contacts/ContactPlusUtils;->a()V

    .line 88
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->ei:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 89
    sget-object p1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object p2, Lcom/callapp/contacts/activity/interfaces/OnBadgeNotificationDataChangeListener;->b_:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CALLAPP_PLUS_UNREAD_COUNT_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 1091
    invoke-virtual {p1, p2, v1, v0}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 83
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 86
    iget-object p1, p0, Lcom/callapp/contacts/sync/syncer/download/IdentifiedContactsDownloadSyncer$1;->a:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-static {p1}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/Closeable;)V

    .line 87
    invoke-static {}, Lcom/callapp/contacts/manager/contacts/ContactPlusUtils;->a()V

    .line 88
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->ei:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 89
    sget-object p1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object p2, Lcom/callapp/contacts/activity/interfaces/OnBadgeNotificationDataChangeListener;->b_:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v0, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CALLAPP_PLUS_UNREAD_COUNT_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {p1, p2, v0}, Lcom/callapp/contacts/event/bus/EventBus;->c(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    return-void

    .line 86
    :goto_3
    iget-object p2, p0, Lcom/callapp/contacts/sync/syncer/download/IdentifiedContactsDownloadSyncer$1;->a:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-static {p2}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/Closeable;)V

    .line 87
    invoke-static {}, Lcom/callapp/contacts/manager/contacts/ContactPlusUtils;->a()V

    .line 88
    sget-object p2, Lcom/callapp/contacts/manager/preferences/Prefs;->ei:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 89
    sget-object p2, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v0, Lcom/callapp/contacts/activity/interfaces/OnBadgeNotificationDataChangeListener;->b_:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CALLAPP_PLUS_UNREAD_COUNT_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {p2, v0, v1}, Lcom/callapp/contacts/event/bus/EventBus;->c(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 90
    throw p1
.end method

.method public final b(Ljava/lang/String;Lokhttp3/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onError: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "IdentifiedContactsDownloadSyncer"

    invoke-static {p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    return-void
.end method
