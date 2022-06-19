.class Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->a(Lcom/verizon/ads/RequestMetadata;Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$PlayListRequestListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/RequestMetadata;

.field final synthetic b:Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$PlayListRequestListener;

.field final synthetic c:I

.field final synthetic d:Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;


# direct methods
.method constructor <init>(Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;Lcom/verizon/ads/RequestMetadata;Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$PlayListRequestListener;I)V
    .locals 0

    .line 1133
    iput-object p1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$1;->d:Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;

    iput-object p2, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$1;->a:Lcom/verizon/ads/RequestMetadata;

    iput-object p3, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$1;->b:Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$PlayListRequestListener;

    iput p4, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v1, p0

    .line 1137
    iget-object v0, v1, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$1;->a:Lcom/verizon/ads/RequestMetadata;

    const/4 v2, 0x5

    if-nez v0, :cond_0

    .line 1138
    iget-object v0, v1, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$1;->b:Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$PlayListRequestListener;

    new-instance v3, Lcom/verizon/ads/ErrorInfo;

    .line 1139
    invoke-static {}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->b()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Ad session cannot be null"

    invoke-direct {v3, v4, v5, v2}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1138
    invoke-virtual {v0, v3}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$PlayListRequestListener;->a(Lcom/verizon/ads/ErrorInfo;)V

    return-void

    .line 1144
    :cond_0
    invoke-static {}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->a()Ljava/lang/String;

    move-result-object v0

    const-string v3, "/admax/sdk/playlist/3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1146
    invoke-static {v4}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v0

    .line 1148
    iget-object v3, v1, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$1;->d:Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;

    iget-object v5, v1, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$1;->a:Lcom/verizon/ads/RequestMetadata;

    invoke-virtual {v3, v5, v0}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->a(Lcom/verizon/ads/RequestMetadata;Z)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1150
    new-instance v0, Lcom/verizon/ads/ErrorInfo;

    invoke-static {}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Failed to build a playlist request object."

    invoke-direct {v0, v3, v4, v2}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1153
    iget-object v2, v1, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$1;->b:Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$PlayListRequestListener;

    invoke-virtual {v2, v0}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$PlayListRequestListener;->a(Lcom/verizon/ads/ErrorInfo;)V

    return-void

    :cond_1
    const/4 v0, 0x3

    .line 1158
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v10, 0x0

    if-eqz v2, :cond_2

    .line 1159
    invoke-static {}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->c()Lcom/verizon/ads/Logger;

    move-result-object v2

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v10

    aput-object v5, v6, v3

    const-string v7, "Request\n\turl: %s\n\tpost data: %s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_2
    const/4 v7, 0x0

    .line 1162
    iget v8, v1, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$1;->c:I

    iget-object v9, v1, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$1;->b:Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$PlayListRequestListener;

    const-string v6, "application/json"

    invoke-static/range {v4 .. v9}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$PlayListRequestListener;)Lcom/verizon/ads/utils/HttpUtils$Response;

    move-result-object v2

    if-nez v2, :cond_3

    return-void

    .line 1170
    :cond_3
    iget-object v4, v2, Lcom/verizon/ads/utils/HttpUtils$Response;->content:Ljava/lang/String;

    invoke-static {v4}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1172
    iget-object v2, v2, Lcom/verizon/ads/utils/HttpUtils$Response;->content:Ljava/lang/String;

    invoke-static {v2}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const/16 v4, 0x9

    :try_start_0
    const-string v5, "req"

    .line 1175
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "url"

    .line 1176
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v5, "postBody"

    .line 1177
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v5, "postType"

    .line 1178
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1190
    invoke-static {v11}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1192
    new-instance v0, Lcom/verizon/ads/ErrorInfo;

    invoke-static {}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PlayList redirect response did not contain a redirect URL"

    invoke-direct {v0, v2, v3, v4}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1195
    iget-object v2, v1, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$1;->b:Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$PlayListRequestListener;

    invoke-virtual {v2, v0}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$PlayListRequestListener;->a(Lcom/verizon/ads/ErrorInfo;)V

    return-void

    .line 1200
    :cond_4
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1201
    invoke-static {}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->c()Lcom/verizon/ads/Logger;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v11, v3, v10

    const-string v4, "Playlist redirect url provided = %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 1204
    :cond_5
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    const-string v2, "X-VAS-RESPONSE-FORMAT"

    const-string v3, "waterfall"

    .line 1205
    invoke-interface {v14, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    iget v15, v1, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$1;->c:I

    iget-object v2, v1, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$1;->b:Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$PlayListRequestListener;

    move-object/from16 v16, v2

    invoke-static/range {v11 .. v16}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$PlayListRequestListener;)Lcom/verizon/ads/utils/HttpUtils$Response;

    move-result-object v2

    if-nez v2, :cond_6

    return-void

    :catch_0
    move-exception v0

    .line 1180
    new-instance v2, Lcom/verizon/ads/ErrorInfo;

    invoke-static {}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->b()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Malformed playlist item for adnet: redirect."

    invoke-direct {v2, v3, v5, v4}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1183
    invoke-static {}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->c()Lcom/verizon/ads/Logger;

    move-result-object v3

    invoke-virtual {v2}, Lcom/verizon/ads/ErrorInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1185
    iget-object v0, v1, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$1;->b:Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$PlayListRequestListener;

    invoke-virtual {v0, v2}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$PlayListRequestListener;->a(Lcom/verizon/ads/ErrorInfo;)V

    return-void

    .line 1216
    :cond_6
    iget-object v2, v2, Lcom/verizon/ads/utils/HttpUtils$Response;->content:Ljava/lang/String;

    iget-object v3, v1, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$1;->a:Lcom/verizon/ads/RequestMetadata;

    invoke-static {v2, v3}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->a(Ljava/lang/String;Lcom/verizon/ads/RequestMetadata;)Ljava/util/List;

    move-result-object v2

    .line 1218
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1219
    new-instance v2, Lcom/verizon/ads/ErrorInfo;

    invoke-static {}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Playlist response did not return a valid waterfall."

    invoke-direct {v2, v3, v4, v0}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1222
    iget-object v0, v1, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$1;->b:Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$PlayListRequestListener;

    invoke-virtual {v0, v2}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$PlayListRequestListener;->a(Lcom/verizon/ads/ErrorInfo;)V

    return-void

    .line 1226
    :cond_7
    iget-object v0, v1, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$1;->b:Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$PlayListRequestListener;

    invoke-virtual {v0, v2}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$PlayListRequestListener;->a(Ljava/util/List;)V

    return-void
.end method
