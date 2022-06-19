.class Lcom/callapp/contacts/sync/syncer/download/LastLinkagesSyncer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/sync/syncer/download/LastLinkagesSyncer;->getHandler()Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public a:Lcom/fasterxml/jackson/core/JsonParser;

.field public b:Lcom/fasterxml/jackson/databind/ObjectMapper;

.field final synthetic c:Lcom/callapp/contacts/sync/syncer/download/LastLinkagesSyncer;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/sync/syncer/download/LastLinkagesSyncer;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/callapp/contacts/sync/syncer/download/LastLinkagesSyncer$1;->c:Lcom/callapp/contacts/sync/syncer/download/LastLinkagesSyncer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/callapp/contacts/sync/syncer/download/LastLinkagesSyncer$1;->a:Lcom/fasterxml/jackson/core/JsonParser;

    .line 45
    new-instance p1, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/sync/syncer/download/LastLinkagesSyncer$1;->b:Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lokhttp3/Response;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "DONTHAVE"

    if-eqz p2, :cond_11

    .line 50
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_b

    .line 58
    :cond_0
    iget-object v2, v1, Lcom/callapp/contacts/sync/syncer/download/LastLinkagesSyncer$1;->b:Lcom/fasterxml/jackson/databind/ObjectMapper;

    sget-object v3, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_UNKNOWN_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/DeserializationFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 59
    iget-object v2, v1, Lcom/callapp/contacts/sync/syncer/download/LastLinkagesSyncer$1;->b:Lcom/fasterxml/jackson/databind/ObjectMapper;

    sget-object v3, Lcom/fasterxml/jackson/core/JsonParser$Feature;->AUTO_CLOSE_SOURCE:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/core/JsonParser$Feature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 60
    iget-object v2, v1, Lcom/callapp/contacts/sync/syncer/download/LastLinkagesSyncer$1;->b:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getFactory()Lcom/fasterxml/jackson/core/JsonFactory;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v2

    iput-object v2, v1, Lcom/callapp/contacts/sync/syncer/download/LastLinkagesSyncer$1;->a:Lcom/fasterxml/jackson/core/JsonParser;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 159
    invoke-static {v2}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/Closeable;)V

    .line 161
    :goto_0
    iget-object v0, v1, Lcom/callapp/contacts/sync/syncer/download/LastLinkagesSyncer$1;->c:Lcom/callapp/contacts/sync/syncer/download/LastLinkagesSyncer;

    invoke-static {v0}, Lcom/callapp/contacts/sync/syncer/download/LastLinkagesSyncer;->b(Lcom/callapp/contacts/sync/syncer/download/LastLinkagesSyncer;)Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    move-result-object v0

    iget-object v2, v1, Lcom/callapp/contacts/sync/syncer/download/LastLinkagesSyncer$1;->c:Lcom/callapp/contacts/sync/syncer/download/LastLinkagesSyncer;

    invoke-static {v2}, Lcom/callapp/contacts/sync/syncer/download/LastLinkagesSyncer;->a(Lcom/callapp/contacts/sync/syncer/download/LastLinkagesSyncer;)Lcom/callapp/contacts/sync/model/SyncContext;

    move-result-object v2

    iget-wide v2, v2, Lcom/callapp/contacts/sync/model/SyncContext;->startDate:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;->set(Ljava/lang/Object;)V

    return-void

    .line 66
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_2

    .line 67
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v3, :cond_2

    .line 68
    iget-object v2, v1, Lcom/callapp/contacts/sync/syncer/download/LastLinkagesSyncer$1;->a:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    if-nez v2, :cond_4

    .line 159
    :cond_3
    :goto_2
    iget-object v0, v1, Lcom/callapp/contacts/sync/syncer/download/LastLinkagesSyncer$1;->a:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-static {v0}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 77
    :cond_4
    :goto_3
    :try_start_2
    iget-object v2, v1, Lcom/callapp/contacts/sync/syncer/download/LastLinkagesSyncer$1;->a:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v2, v3, :cond_3

    .line 78
    iget-object v2, v1, Lcom/callapp/contacts/sync/syncer/download/LastLinkagesSyncer$1;->b:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v3, v1, Lcom/callapp/contacts/sync/syncer/download/LastLinkagesSyncer$1;->a:Lcom/fasterxml/jackson/core/JsonParser;

    const-class v5, Lcom/callapp/common/model/json/JSONContact;

    invoke-virtual {v2, v3, v5}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/common/model/json/JSONContact;

    .line 80
    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONContact;->getPhoneNumbers()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 81
    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONContact;->hasAnyNegatives()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONContact;->hasAnySocialIDs()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 86
    :cond_5
    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONContact;->getPhoneNumbers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-wide/16 v5, 0x0

    move-wide v7, v5

    :catch_0
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/callapp/common/model/json/JSONPhoneNumber;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    :try_start_3
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v10

    invoke-virtual {v9}, Lcom/callapp/common/model/json/JSONPhoneNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v9

    invoke-static {v9, v4}, Lcom/callapp/contacts/loader/device/DeviceIdLoader;->a(Lcom/callapp/framework/phone/Phone;I)J

    move-result-wide v7
    :try_end_3
    .catch Lcom/callapp/contacts/loader/device/DeviceIdLoader$OperationFailedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    cmp-long v9, v7, v5

    if-eqz v9, :cond_6

    .line 98
    :cond_7
    :try_start_4
    invoke-static {v2}, Lcom/callapp/contacts/sync/syncer/download/LastLinkagesSyncer;->a(Lcom/callapp/common/model/json/JSONContact;)Ljava/util/Map;

    move-result-object v3

    .line 101
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_8
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 102
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v16, v10

    check-cast v16, Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v16, :cond_8

    .line 104
    invoke-virtual/range {v16 .. v16}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    cmp-long v10, v7, v5

    if-eqz v10, :cond_9

    .line 108
    invoke-virtual/range {v16 .. v16}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v8, v15, v10}, Lcom/callapp/contacts/manager/SuggestContactManager;->a(JILjava/lang/String;)V

    const/4 v12, 0x0

    .line 109
    invoke-virtual/range {v16 .. v16}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x1

    move-wide v10, v7

    move v13, v15

    move/from16 v15, v16

    invoke-static/range {v10 .. v15}, Lcom/callapp/contacts/loader/UserPositiveNegativeManager;->a(JLjava/lang/String;ILjava/lang/String;Z)Z

    goto :goto_4

    .line 112
    :cond_9
    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONContact;->getPhoneNumbers()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/callapp/common/model/json/JSONPhoneNumber;

    .line 114
    invoke-virtual/range {v16 .. v16}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v8, v15, v11}, Lcom/callapp/contacts/manager/SuggestContactManager;->a(JILjava/lang/String;)V

    .line 115
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v11

    invoke-virtual {v10}, Lcom/callapp/common/model/json/JSONPhoneNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v10

    invoke-virtual {v10}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v16 .. v16}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object v14

    const/16 v18, 0x1

    move-wide v10, v7

    move v13, v15

    move/from16 v19, v15

    move/from16 v15, v18

    invoke-static/range {v10 .. v15}, Lcom/callapp/contacts/loader/UserPositiveNegativeManager;->a(JLjava/lang/String;ILjava/lang/String;Z)Z

    move/from16 v15, v19

    goto :goto_5

    .line 121
    :cond_a
    invoke-static {v2}, Lcom/callapp/contacts/sync/syncer/download/LastLinkagesSyncer;->b(Lcom/callapp/common/model/json/JSONContact;)Ljava/util/Map;

    move-result-object v3

    .line 124
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 125
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 126
    invoke-static {v11}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 127
    invoke-interface {v11, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_c

    cmp-long v12, v7, v5

    if-eqz v12, :cond_b

    .line 129
    invoke-static {v7, v8, v13, v10}, Lcom/callapp/contacts/loader/UserPositiveNegativeManager;->a(JLjava/lang/String;I)V

    goto :goto_8

    .line 131
    :cond_b
    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONContact;->getPhoneNumbers()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/callapp/common/model/json/JSONPhoneNumber;

    .line 132
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v15

    invoke-virtual {v14}, Lcom/callapp/common/model/json/JSONPhoneNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v14

    invoke-virtual {v14}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v8, v14, v10}, Lcom/callapp/contacts/loader/UserPositiveNegativeManager;->a(JLjava/lang/String;I)V

    goto :goto_7

    .line 137
    :cond_c
    :goto_8
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 138
    invoke-static {v12, v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_e

    .line 139
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v14

    invoke-virtual {v14, v10}, Lcom/callapp/contacts/manager/Singletons;->getRemoteAccountHelper(I)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v14

    if-eqz v14, :cond_e

    cmp-long v15, v7, v5

    if-eqz v15, :cond_d

    .line 142
    invoke-virtual {v14, v7, v8, v13, v12}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 144
    :cond_d
    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONContact;->getPhoneNumbers()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_a
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_e

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/callapp/common/model/json/JSONPhoneNumber;

    .line 145
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lcom/callapp/common/model/json/JSONPhoneNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v7, v8, v4, v12}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(JLjava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    goto :goto_a

    :cond_e
    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    goto :goto_9

    :cond_f
    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    goto/16 :goto_6

    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 52
    :cond_11
    :goto_b
    const-class v0, Lcom/callapp/contacts/sync/syncer/download/LastLinkagesSyncer;

    const-string v2, "failed to get user\'s old uploaded linkages"

    invoke-static {v0, v2}, Lcom/callapp/contacts/util/CLog;->c(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    goto :goto_c

    :catch_1
    move-exception v0

    .line 156
    :try_start_5
    const-class v2, Lcom/callapp/contacts/sync/syncer/download/LastLinkagesSyncer;

    invoke-static {v2, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 159
    :goto_c
    iget-object v2, v1, Lcom/callapp/contacts/sync/syncer/download/LastLinkagesSyncer$1;->a:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-static {v2}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/Closeable;)V

    .line 161
    iget-object v2, v1, Lcom/callapp/contacts/sync/syncer/download/LastLinkagesSyncer$1;->c:Lcom/callapp/contacts/sync/syncer/download/LastLinkagesSyncer;

    invoke-static {v2}, Lcom/callapp/contacts/sync/syncer/download/LastLinkagesSyncer;->b(Lcom/callapp/contacts/sync/syncer/download/LastLinkagesSyncer;)Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    move-result-object v2

    iget-object v3, v1, Lcom/callapp/contacts/sync/syncer/download/LastLinkagesSyncer$1;->c:Lcom/callapp/contacts/sync/syncer/download/LastLinkagesSyncer;

    invoke-static {v3}, Lcom/callapp/contacts/sync/syncer/download/LastLinkagesSyncer;->a(Lcom/callapp/contacts/sync/syncer/download/LastLinkagesSyncer;)Lcom/callapp/contacts/sync/model/SyncContext;

    move-result-object v3

    iget-wide v3, v3, Lcom/callapp/contacts/sync/model/SyncContext;->startDate:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;->set(Ljava/lang/Object;)V

    .line 162
    throw v0
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
