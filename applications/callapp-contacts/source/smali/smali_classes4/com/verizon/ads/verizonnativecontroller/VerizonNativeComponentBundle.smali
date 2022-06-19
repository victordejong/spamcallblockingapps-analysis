.class public Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;
.super Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/verizonnativecontroller/NativeComponentBundle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle$Factory;
    }
.end annotation


# static fields
.field private static final a:Lcom/verizon/ads/Logger;

.field private static final b:Ljava/lang/String;


# instance fields
.field protected final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/verizon/ads/verizonnativecontroller/NativeComponent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    const-class v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v1

    sput-object v1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;->a:Lcom/verizon/ads/Logger;

    .line 34
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/verizon/ads/AdSession;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;-><init>(Lcom/verizon/ads/AdSession;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 38
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;->e:Ljava/util/Map;

    .line 89
    invoke-direct {p0, p1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;->a(Lcom/verizon/ads/AdSession;)V

    return-void
.end method

.method static a(Lorg/json/JSONArray;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 278
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 281
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    const/4 v1, 0x0

    .line 284
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 285
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    .line 291
    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;Z)Lorg/json/JSONObject;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 225
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;->getComponentInfo(Z)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "components"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 234
    :try_start_1
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p2, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    :try_start_2
    new-instance p2, Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p2

    :catch_0
    move-exception p2

    .line 243
    :try_start_3
    sget-object v2, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;->a:Lcom/verizon/ads/Logger;

    const-string v3, "Error copying component JSON."

    invoke-virtual {v2, v3, p2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :cond_1
    :goto_0
    return-object v2

    .line 247
    :catch_1
    sget-object p2, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;->a:Lcom/verizon/ads/Logger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "Component \'%s\' does not exist in bundle"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    :goto_1
    return-object v0

    .line 228
    :catch_2
    sget-object p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;->a:Lcom/verizon/ads/Logger;

    const-string p2, "Bundle does not contain components"

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Lcom/verizon/ads/AdSession;)V
    .locals 8

    .line 95
    invoke-virtual {p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;->getComponentIds()Ljava/util/Set;

    move-result-object v0

    .line 96
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1163
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 1164
    sget-object v2, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;->a:Lcom/verizon/ads/Logger;

    const-string v4, "componentId cannot be null or empty"

    invoke-virtual {v2, v4}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 1169
    invoke-direct {p0, v1, v2}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;->a(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v4

    const/4 v5, 0x1

    if-nez v4, :cond_2

    .line 1172
    sget-object v4, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;->a:Lcom/verizon/ads/Logger;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v2

    const-string v2, "Could not find component info for id <%s>"

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v6, "contentType"

    .line 1177
    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    .line 1179
    sget-object v4, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;->a:Lcom/verizon/ads/Logger;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v2

    const-string v2, "contentType is missing in component info for id <%s>"

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v2

    aput-object v1, v7, v5

    .line 1184
    invoke-static {v6, v3, v4, v7}, Lcom/verizon/ads/ComponentRegistry;->getComponent(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;[Ljava/lang/Object;)Lcom/verizon/ads/Component;

    move-result-object v2

    .line 1186
    instance-of v4, v2, Lcom/verizon/ads/verizonnativecontroller/NativeComponent;

    if-eqz v4, :cond_5

    .line 1187
    instance-of v3, v2, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;

    if-eqz v3, :cond_4

    .line 1188
    move-object v3, v2

    check-cast v3, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;

    .line 1189
    invoke-virtual {v3, p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->a(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;)V

    .line 1192
    :cond_4
    move-object v3, v2

    check-cast v3, Lcom/verizon/ads/verizonnativecontroller/NativeComponent;

    goto :goto_1

    .line 1195
    :cond_5
    sget-object v2, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;->a:Lcom/verizon/ads/Logger;

    const-string v4, "Component instance is null or not an implementation of NativeComponent."

    invoke-virtual {v2, v4}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :goto_1
    if-eqz v3, :cond_0

    .line 99
    iget-object v2, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;->e:Ljava/util/Map;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    return-void
.end method

.method static synthetic b()Lcom/verizon/ads/Logger;
    .locals 1

    .line 31
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;->a:Lcom/verizon/ads/Logger;

    return-object v0
.end method


# virtual methods
.method public getComponent(Ljava/lang/String;)Lcom/verizon/ads/Component;
    .locals 1

    .line 152
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    sget-object p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;->a:Lcom/verizon/ads/Logger;

    const-string v0, "componentId cannot be null or empty"

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/verizon/ads/Component;

    return-object p1
.end method

.method public getComponentIds()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 263
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;->getComponentInfo(Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "components"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;->a(Lorg/json/JSONArray;)Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 268
    :catch_0
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Invalid JSON structure for \'components\'"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    .line 270
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getComponentInfo()Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x1

    .line 107
    invoke-virtual {p0, v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;->getComponentInfo(Z)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getComponentInfo(Z)Lorg/json/JSONObject;
    .locals 2

    if-nez p1, :cond_0

    .line 114
    iget-object p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;->d:Lorg/json/JSONObject;

    return-object p1

    .line 118
    :cond_0
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;->d:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 120
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Error copying component info."

    invoke-virtual {v0, v1, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getComponentJSON(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x1

    .line 209
    invoke-direct {p0, p1, v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;->a(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public queueFilesForDownload(Lcom/verizon/ads/support/FileStorageCache;)V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/verizon/ads/verizonnativecontroller/NativeComponent;

    .line 145
    invoke-interface {v1, p1}, Lcom/verizon/ads/verizonnativecontroller/NativeComponent;->queueFilesForDownload(Lcom/verizon/ads/support/FileStorageCache;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 130
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Releasing bundle component"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/verizon/ads/verizonnativecontroller/NativeComponent;

    .line 133
    invoke-interface {v1}, Lcom/verizon/ads/verizonnativecontroller/NativeComponent;->release()V

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 137
    invoke-super {p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->release()V

    return-void
.end method
