.class public Lcom/flurry/sdk/je;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/flurry/sdk/lo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/lo<",
        "Lcom/flurry/sdk/ie;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "je"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void

    :cond_0
    sget-object p2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    new-instance p1, Ljava/io/IOException;

    const-string v0, "Deserialize not supported for request"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 9

    check-cast p2, Lcom/flurry/sdk/ie;

    if-eqz p1, :cond_7

    if-nez p2, :cond_0

    goto/16 :goto_7

    :cond_0
    new-instance v0, Lcom/flurry/sdk/je$1;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/je$1;-><init>(Lcom/flurry/sdk/je;Ljava/io/OutputStream;)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "project_key"

    iget-object v2, p2, Lcom/flurry/sdk/ie;->a:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/flurry/sdk/je;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bundle_id"

    iget-object v2, p2, Lcom/flurry/sdk/ie;->b:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/flurry/sdk/je;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "app_version"

    iget-object v2, p2, Lcom/flurry/sdk/ie;->c:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/flurry/sdk/je;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sdk_version"

    iget v2, p2, Lcom/flurry/sdk/ie;->d:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "platform"

    iget v2, p2, Lcom/flurry/sdk/ie;->e:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "platform_version"

    iget-object v2, p2, Lcom/flurry/sdk/ie;->f:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/flurry/sdk/je;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "limit_ad_tracking"

    iget-boolean v2, p2, Lcom/flurry/sdk/ie;->g:Z

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v1, p2, Lcom/flurry/sdk/ie;->h:Lcom/flurry/sdk/ih;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "id"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v1, v1, Lcom/flurry/sdk/ih;->a:Lcom/flurry/sdk/ib;

    if-eqz v1, :cond_1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "model"

    iget-object v6, p2, Lcom/flurry/sdk/ie;->h:Lcom/flurry/sdk/ih;

    iget-object v6, v6, Lcom/flurry/sdk/ih;->a:Lcom/flurry/sdk/ib;

    iget-object v6, v6, Lcom/flurry/sdk/ib;->a:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/flurry/sdk/je;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "brand"

    iget-object v6, p2, Lcom/flurry/sdk/ie;->h:Lcom/flurry/sdk/ih;

    iget-object v6, v6, Lcom/flurry/sdk/ih;->a:Lcom/flurry/sdk/ib;

    iget-object v6, v6, Lcom/flurry/sdk/ib;->b:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/flurry/sdk/je;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p2, Lcom/flurry/sdk/ie;->h:Lcom/flurry/sdk/ih;

    iget-object v5, v5, Lcom/flurry/sdk/ih;->a:Lcom/flurry/sdk/ib;

    iget-object v5, v5, Lcom/flurry/sdk/ib;->c:Ljava/lang/String;

    invoke-static {v4, v2, v5}, Lcom/flurry/sdk/je;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "device"

    iget-object v6, p2, Lcom/flurry/sdk/ie;->h:Lcom/flurry/sdk/ih;

    iget-object v6, v6, Lcom/flurry/sdk/ih;->a:Lcom/flurry/sdk/ib;

    iget-object v6, v6, Lcom/flurry/sdk/ib;->d:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/flurry/sdk/je;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "product"

    iget-object v6, p2, Lcom/flurry/sdk/ie;->h:Lcom/flurry/sdk/ih;

    iget-object v6, v6, Lcom/flurry/sdk/ih;->a:Lcom/flurry/sdk/ib;

    iget-object v6, v6, Lcom/flurry/sdk/ib;->e:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/flurry/sdk/je;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "version_release"

    iget-object v6, p2, Lcom/flurry/sdk/ie;->h:Lcom/flurry/sdk/ih;

    iget-object v6, v6, Lcom/flurry/sdk/ih;->a:Lcom/flurry/sdk/ib;

    iget-object v6, v6, Lcom/flurry/sdk/ib;->f:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/flurry/sdk/je;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "com.flurry.proton.generated.avro.v2.AndroidTags"

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    const-string v4, "device_tags"

    if-eqz v1, :cond_2

    :goto_1
    :try_start_2
    invoke-virtual {p1, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_2
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_1

    :goto_2
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v4, p2, Lcom/flurry/sdk/ie;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/flurry/sdk/ig;

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "type"

    iget v8, v5, Lcom/flurry/sdk/ig;->a:I

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v5, v5, Lcom/flurry/sdk/ig;->b:Ljava/lang/String;

    invoke-static {v6, v2, v5}, Lcom/flurry/sdk/je;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    :cond_3
    const-string v2, "device_ids"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p2, Lcom/flurry/sdk/ie;->j:Lcom/flurry/sdk/il;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/flurry/sdk/il;->a:Lcom/flurry/sdk/ik;

    if-eqz v1, :cond_4

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "latitude"

    iget-object v4, p2, Lcom/flurry/sdk/ie;->j:Lcom/flurry/sdk/il;

    iget-object v4, v4, Lcom/flurry/sdk/il;->a:Lcom/flurry/sdk/ik;

    iget-wide v4, v4, Lcom/flurry/sdk/ik;->a:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "longitude"

    iget-object v4, p2, Lcom/flurry/sdk/ie;->j:Lcom/flurry/sdk/il;

    iget-object v4, v4, Lcom/flurry/sdk/il;->a:Lcom/flurry/sdk/ik;

    iget-wide v4, v4, Lcom/flurry/sdk/ik;->b:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "accuracy"

    iget-object v4, p2, Lcom/flurry/sdk/ie;->j:Lcom/flurry/sdk/il;

    iget-object v4, v4, Lcom/flurry/sdk/il;->a:Lcom/flurry/sdk/ik;

    iget v4, v4, Lcom/flurry/sdk/ik;->c:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "com.flurry.proton.generated.avro.v2.Geolocation"

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    const-string v1, "geo"

    if-eqz v3, :cond_5

    :try_start_3
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    :cond_5
    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object p2, p2, Lcom/flurry/sdk/ie;->k:Lcom/flurry/sdk/io;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v2, "publisher_user_id"

    if-eqz p2, :cond_6

    :try_start_4
    const-string v3, "string"

    iget-object p2, p2, Lcom/flurry/sdk/io;->a:Ljava/lang/String;

    invoke-static {v1, v3, p2}, Lcom/flurry/sdk/je;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5

    :cond_6
    sget-object p2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_5
    const/4 p2, 0x5

    sget-object v1, Lcom/flurry/sdk/je;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Proton Request String: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_0
    move-exception p1

    :try_start_5
    new-instance p2, Ljava/io/IOException;

    const-string v1, "Invalid Json"

    invoke-direct {p2, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_6
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    throw p1

    :cond_7
    :goto_7
    return-void
.end method
