.class Lcom/callapp/contacts/sync/syncer/download/WhoViewedDownloadSyncer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/sync/syncer/download/WhoViewedDownloadSyncer;->getHandler()Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public a:Lcom/fasterxml/jackson/core/JsonParser;

.field public final b:Lcom/fasterxml/jackson/databind/ObjectMapper;

.field final synthetic c:Lcom/callapp/contacts/sync/syncer/download/WhoViewedDownloadSyncer;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/sync/syncer/download/WhoViewedDownloadSyncer;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/callapp/contacts/sync/syncer/download/WhoViewedDownloadSyncer$1;->c:Lcom/callapp/contacts/sync/syncer/download/WhoViewedDownloadSyncer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lcom/callapp/contacts/sync/syncer/download/WhoViewedDownloadSyncer$1;->a:Lcom/fasterxml/jackson/core/JsonParser;

    .line 39
    new-instance p1, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/sync/syncer/download/WhoViewedDownloadSyncer$1;->b:Lcom/fasterxml/jackson/databind/ObjectMapper;

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

    const-string p1, "WhoViewedDownloadSyncer"

    .line 43
    invoke-static {p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_5

    .line 45
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 50
    :cond_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    .line 55
    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/download/WhoViewedDownloadSyncer$1;->b:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-static {v0}, Lcom/callapp/contacts/sync/syncer/download/WhoViewedDownloadSyncer;->a(Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    .line 56
    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/download/WhoViewedDownloadSyncer$1;->b:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getFactory()Lcom/fasterxml/jackson/core/JsonFactory;

    move-result-object v0

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p2

    iput-object p2, p0, Lcom/callapp/contacts/sync/syncer/download/WhoViewedDownloadSyncer$1;->a:Lcom/fasterxml/jackson/core/JsonParser;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_1

    .line 84
    invoke-static {p2}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/Closeable;)V

    .line 85
    invoke-static {}, Lcom/callapp/contacts/manager/contacts/ContactPlusUtils;->a()V

    .line 86
    sget-object p2, Lcom/callapp/contacts/manager/preferences/Prefs;->ei:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 87
    sget-object p2, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v0, Lcom/callapp/contacts/activity/interfaces/OnBadgeNotificationDataChangeListener;->b_:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CALLAPP_PLUS_UNREAD_COUNT_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 2091
    invoke-virtual {p2, v0, v1, p1}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void

    .line 62
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_2

    .line 63
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq p2, v0, :cond_2

    .line 64
    iget-object p2, p0, Lcom/callapp/contacts/sync/syncer/download/WhoViewedDownloadSyncer$1;->a:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    .line 84
    iget-object p2, p0, Lcom/callapp/contacts/sync/syncer/download/WhoViewedDownloadSyncer$1;->a:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-static {p2}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/Closeable;)V

    .line 85
    invoke-static {}, Lcom/callapp/contacts/manager/contacts/ContactPlusUtils;->a()V

    .line 86
    sget-object p2, Lcom/callapp/contacts/manager/preferences/Prefs;->ei:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 87
    sget-object p2, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v0, Lcom/callapp/contacts/activity/interfaces/OnBadgeNotificationDataChangeListener;->b_:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CALLAPP_PLUS_UNREAD_COUNT_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 3091
    invoke-virtual {p2, v0, v1, p1}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void

    .line 72
    :cond_3
    :goto_1
    :try_start_2
    iget-object p2, p0, Lcom/callapp/contacts/sync/syncer/download/WhoViewedDownloadSyncer$1;->a:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p2

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne p2, v0, :cond_4

    .line 74
    iget-object p2, p0, Lcom/callapp/contacts/sync/syncer/download/WhoViewedDownloadSyncer$1;->b:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/download/WhoViewedDownloadSyncer$1;->a:Lcom/fasterxml/jackson/core/JsonParser;

    const-class v1, Lcom/callapp/common/model/json/WhoViewedMyProfileJSONContact;

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callapp/common/model/json/WhoViewedMyProfileJSONContact;

    .line 76
    invoke-static {p2}, Lcom/callapp/contacts/sync/syncer/download/WhoViewedDownloadSyncer;->a(Lcom/callapp/common/model/json/WhoViewedMyProfileJSONContact;)Lcom/callapp/contacts/model/objectbox/ProfileViewedData;

    move-result-object p2

    .line 77
    invoke-static {p2}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager;->a(Lcom/callapp/contacts/model/objectbox/ProfileViewedData;)V

    goto :goto_1

    .line 79
    :cond_4
    sget-object p2, Lcom/callapp/contacts/manager/preferences/Prefs;->hD:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;->set(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    iget-object p2, p0, Lcom/callapp/contacts/sync/syncer/download/WhoViewedDownloadSyncer$1;->a:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-static {p2}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/Closeable;)V

    .line 85
    invoke-static {}, Lcom/callapp/contacts/manager/contacts/ContactPlusUtils;->a()V

    .line 86
    sget-object p2, Lcom/callapp/contacts/manager/preferences/Prefs;->ei:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 87
    sget-object p2, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v0, Lcom/callapp/contacts/activity/interfaces/OnBadgeNotificationDataChangeListener;->b_:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CALLAPP_PLUS_UNREAD_COUNT_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 4091
    invoke-virtual {p2, v0, v1, p1}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void

    .line 47
    :cond_5
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v0, "failed to get who viewed list"

    invoke-static {p2, v0}, Lcom/callapp/contacts/util/CLog;->c(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 84
    iget-object p2, p0, Lcom/callapp/contacts/sync/syncer/download/WhoViewedDownloadSyncer$1;->a:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-static {p2}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/Closeable;)V

    .line 85
    invoke-static {}, Lcom/callapp/contacts/manager/contacts/ContactPlusUtils;->a()V

    .line 86
    sget-object p2, Lcom/callapp/contacts/manager/preferences/Prefs;->ei:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 87
    sget-object p2, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v0, Lcom/callapp/contacts/activity/interfaces/OnBadgeNotificationDataChangeListener;->b_:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CALLAPP_PLUS_UNREAD_COUNT_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 1091
    invoke-virtual {p2, v0, v1, p1}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void

    :catchall_0
    move-exception p2

    goto :goto_3

    :catch_0
    move-exception p2

    .line 82
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 84
    iget-object p2, p0, Lcom/callapp/contacts/sync/syncer/download/WhoViewedDownloadSyncer$1;->a:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-static {p2}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/Closeable;)V

    .line 85
    invoke-static {}, Lcom/callapp/contacts/manager/contacts/ContactPlusUtils;->a()V

    .line 86
    sget-object p2, Lcom/callapp/contacts/manager/preferences/Prefs;->ei:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 87
    sget-object p2, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v0, Lcom/callapp/contacts/activity/interfaces/OnBadgeNotificationDataChangeListener;->b_:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CALLAPP_PLUS_UNREAD_COUNT_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 5091
    invoke-virtual {p2, v0, v1, p1}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void

    .line 84
    :goto_3
    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/download/WhoViewedDownloadSyncer$1;->a:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-static {v0}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/Closeable;)V

    .line 85
    invoke-static {}, Lcom/callapp/contacts/manager/contacts/ContactPlusUtils;->a()V

    .line 86
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ei:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 87
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/OnBadgeNotificationDataChangeListener;->b_:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v2, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CALLAPP_PLUS_UNREAD_COUNT_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 6091
    invoke-virtual {v0, v1, v2, p1}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    .line 88
    throw p2
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
