.class public Lcom/millennialmedia/internal/adcontrollers/NativeController;
.super Lcom/millennialmedia/internal/adcontrollers/AdController;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;,
        Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;,
        Lcom/millennialmedia/internal/adcontrollers/NativeController$NativeControllerListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NativeController"


# instance fields
.field public assets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;",
            ">;"
        }
    .end annotation
.end field

.field public impTrackers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public jsTracker:Ljava/lang/String;

.field public link:Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;

.field private nativeControllerListener:Lcom/millennialmedia/internal/adcontrollers/NativeController$NativeControllerListener;

.field public version:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/millennialmedia/internal/adcontrollers/AdController;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/millennialmedia/internal/adcontrollers/NativeController;->version:I

    return-void
.end method

.method public constructor <init>(Lcom/millennialmedia/internal/adcontrollers/NativeController$NativeControllerListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/millennialmedia/internal/adcontrollers/AdController;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/millennialmedia/internal/adcontrollers/NativeController;->version:I

    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/NativeController;->nativeControllerListener:Lcom/millennialmedia/internal/adcontrollers/NativeController$NativeControllerListener;

    return-void
.end method

.method private loadAssets(Lorg/json/JSONArray;)V
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_6

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "required"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    const-string v6, "title"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    :try_start_0
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    new-instance v7, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;

    sget-object v9, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;->TITLE:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    invoke-direct {v7, v9, v4, v5}, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;-><init>(Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;IZ)V

    new-instance v4, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Title;

    invoke-direct {v4}, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Title;-><init>()V

    iput-object v4, v7, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->title:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Title;

    const-string v5, "text"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Title;->value:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    :goto_2
    move-object v8, v7

    goto/16 :goto_3

    :catch_1
    nop

    goto/16 :goto_3

    :cond_1
    const-string v6, "img"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    :try_start_1
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    new-instance v7, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;

    sget-object v9, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;->IMAGE:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    invoke-direct {v7, v9, v4, v5}, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;-><init>(Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;IZ)V

    new-instance v4, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Image;

    invoke-direct {v4}, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Image;-><init>()V

    iput-object v4, v7, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->image:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Image;

    const-string v5, "url"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Image;->url:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v4, v7, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->image:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Image;

    const-string v5, "w"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Image;->width:Ljava/lang/Integer;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    iget-object v4, v7, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->image:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Image;

    const-string v5, "h"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Image;->height:Ljava/lang/Integer;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :cond_2
    const-string v6, "video"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    :try_start_4
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    new-instance v7, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;

    sget-object v9, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;->VIDEO:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    invoke-direct {v7, v9, v4, v5}, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;-><init>(Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;IZ)V

    new-instance v4, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Video;

    invoke-direct {v4}, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Video;-><init>()V

    iput-object v4, v7, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->video:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Video;

    const-string v5, "vasttag"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Video;->vastTag:Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :cond_3
    const-string v6, "data"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    :try_start_5
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    new-instance v7, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;

    sget-object v9, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;->DATA:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    invoke-direct {v7, v9, v4, v5}, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;-><init>(Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;IZ)V

    new-instance v4, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Data;

    invoke-direct {v4}, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Data;-><init>()V

    iput-object v4, v7, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->data:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Data;

    const-string v5, "value"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Data;->value:Ljava/lang/String;

    iget-object v4, v7, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->data:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Data;

    const-string v5, "label"

    invoke-virtual {v6, v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Data;->label:Ljava/lang/String;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2

    :cond_4
    :goto_3
    if-eqz v8, :cond_5

    :try_start_6
    const-string v4, "link"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/millennialmedia/internal/adcontrollers/NativeController;->loadLink(Lorg/json/JSONObject;)Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;

    move-result-object v3

    iput-object v3, v8, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->link:Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/NativeController;->assets:Ljava/util/List;

    return-void
.end method

.method private loadLink(Lorg/json/JSONObject;)Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;
    .locals 3

    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;

    invoke-direct {v0}, Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;-><init>()V

    const-string v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;->url:Ljava/lang/String;

    const-string v1, "clicktrackers"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/JSONUtils;->convertToStringArray(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>([Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;->clickTrackerUrls:Ljava/util/List;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v1, 0x0

    const-string v2, "fallback"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;->fallback:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public canHandleContent(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "native"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public init(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/millennialmedia/internal/adcontrollers/NativeController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading native assets "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "native"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "ver"

    iget v1, p0, Lcom/millennialmedia/internal/adcontrollers/NativeController;->version:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/internal/adcontrollers/NativeController;->version:I

    const-string v0, "assets"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/adcontrollers/NativeController;->loadAssets(Lorg/json/JSONArray;)V

    const-string v0, "link"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/adcontrollers/NativeController;->loadLink(Lorg/json/JSONObject;)Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/NativeController;->link:Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;

    const-string v0, "imptrackers"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/JSONUtils;->convertToStringArray(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>([Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/millennialmedia/internal/adcontrollers/NativeController;->impTrackers:Ljava/util/List;

    :cond_1
    const-string v0, "jstracker"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/NativeController;->jsTracker:Ljava/lang/String;

    iget-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/NativeController;->nativeControllerListener:Lcom/millennialmedia/internal/adcontrollers/NativeController$NativeControllerListener;

    invoke-interface {p1}, Lcom/millennialmedia/internal/adcontrollers/NativeController$NativeControllerListener;->initSucceeded()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/millennialmedia/internal/adcontrollers/NativeController;->TAG:Ljava/lang/String;

    const-string v1, "Initialization of the native controller instance failed"

    invoke-static {v0, v1, p1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/NativeController;->nativeControllerListener:Lcom/millennialmedia/internal/adcontrollers/NativeController$NativeControllerListener;

    invoke-interface {v0, p1}, Lcom/millennialmedia/internal/adcontrollers/NativeController$NativeControllerListener;->initFailed(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public release()V
    .locals 3

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/millennialmedia/internal/adcontrollers/NativeController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Releasing native assets "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/adcontrollers/NativeController$1;-><init>(Lcom/millennialmedia/internal/adcontrollers/NativeController;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
