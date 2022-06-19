.class public Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/video/POBVastPlayerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigBuilder"
.end annotation


# static fields
.field public static final DEFAULT_MEDIA_URI_TIMEOUT:I = 0x2710

.field public static final DEFAULT_PLAY_ON_MUTE:Z = true

.field public static final DEFAULT_SKIP:I = 0x1

.field public static final DEFAULT_SKIP_AFTER:I = 0xf

.field public static final DEFAULT_WRAPPER_URI_TIMEOUT:I = 0x1388


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Z


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;->h:Z

    iput p1, p0, Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;->a:I

    iput p2, p0, Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;->b:I

    iput v0, p0, Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;->c:I

    const/16 p1, 0xf

    iput p1, p0, Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;->e:I

    const/16 p1, 0x1388

    iput p1, p0, Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;->f:I

    const/16 p1, 0x2710

    iput p1, p0, Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;->g:I

    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;)I
    .locals 0

    iget p0, p0, Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;->a:I

    return p0
.end method

.method private static a(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0xf

    :goto_0
    return p0
.end method

.method static synthetic b(Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;)I
    .locals 0

    iget p0, p0, Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;->b:I

    return p0
.end method

.method static synthetic c(Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;)I
    .locals 0

    iget p0, p0, Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;->c:I

    return p0
.end method

.method public static createVastConfig(Lorg/json/JSONObject;ZZZLjava/lang/String;)Lcom/pubmatic/sdk/video/POBVastPlayerConfig;
    .locals 5

    new-instance v0, Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;-><init>(II)V

    invoke-virtual {v0, p1}, Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;->build(Z)Lcom/pubmatic/sdk/video/POBVastPlayerConfig;

    move-result-object v0

    if-eqz p0, :cond_7

    const-string v2, "ext"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v2, "ConfigBuilder"

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_6

    const-string v3, "video"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video config: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/pubmatic/sdk/common/log/PMLog;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;

    const-string v3, "minduration"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "maxduration"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v0, v3, v4}, Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;-><init>(II)V

    const-string v3, "skip"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;->skip(I)Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;

    const-string v3, "skipmin"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;->skipMin(I)Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;

    invoke-static {p2}, Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;->a(Z)I

    move-result p2

    const-string v3, "skipafter"

    invoke-virtual {p0, v3, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;->skipAfter(I)Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;

    invoke-virtual {v0, p3}, Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;->setPlayOnMute(Z)Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;

    const-string p2, "playbackmethod"

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p3

    if-lez p3, :cond_3

    :try_start_0
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string p3, "interstitial"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    if-ne p2, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    if-ne p2, p3, :cond_3

    goto :goto_1

    :cond_1
    const/4 p3, 0x5

    if-ne p2, p3, :cond_2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;->setPlayOnMute(Z)Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;

    goto :goto_2

    :cond_2
    const/4 p3, 0x6

    if-ne p2, p3, :cond_3

    :goto_1
    invoke-virtual {v0, v4}, Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;->setPlayOnMute(Z)Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    new-array p3, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, v1

    const-string p2, "Failed to parse playbackmethod, %s"

    invoke-static {v2, p2, p3}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_2
    const-string p2, "clientconfig"

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result p2

    if-lez p2, :cond_4

    const-string p2, "timeouts"

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string p2, "wrapperTagURI"

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;->wrapperUriTimeout(I)Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;

    const-string p2, "mediaFileURI"

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;->mediaUriTimeout(I)Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;

    :cond_4
    invoke-virtual {v0, p1}, Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;->build(Z)Lcom/pubmatic/sdk/video/POBVastPlayerConfig;

    move-result-object v0

    goto :goto_3

    :cond_5
    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "Null/empty video response parameter."

    invoke-static {v2, p1, p0}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "Null/empty extension response parameter."

    invoke-static {v2, p1, p0}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    :goto_3
    return-object v0
.end method

.method static synthetic d(Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;)I
    .locals 0

    iget p0, p0, Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;->d:I

    return p0
.end method

.method static synthetic e(Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;)I
    .locals 0

    iget p0, p0, Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;->e:I

    return p0
.end method

.method static synthetic f(Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;)I
    .locals 0

    iget p0, p0, Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;->f:I

    return p0
.end method

.method static synthetic g(Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;)I
    .locals 0

    iget p0, p0, Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;->g:I

    return p0
.end method

.method static synthetic h(Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;->h:Z

    return p0
.end method


# virtual methods
.method public build(Z)Lcom/pubmatic/sdk/video/POBVastPlayerConfig;
    .locals 2

    new-instance v0, Lcom/pubmatic/sdk/video/POBVastPlayerConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/pubmatic/sdk/video/POBVastPlayerConfig;-><init>(Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;ZLcom/pubmatic/sdk/video/POBVastPlayerConfig$a;)V

    return-object v0
.end method

.method public mediaUriTimeout(I)Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;->g:I

    if-le p1, v0, :cond_0

    iput p1, p0, Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;->g:I

    :cond_0
    return-object p0
.end method

.method public setPlayOnMute(Z)Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;->h:Z

    return-object p0
.end method

.method public skip(I)Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;
    .locals 0

    iput p1, p0, Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;->c:I

    return-object p0
.end method

.method public skipAfter(I)Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;
    .locals 0

    iput p1, p0, Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;->e:I

    return-object p0
.end method

.method public skipMin(I)Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;
    .locals 0

    iput p1, p0, Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;->d:I

    return-object p0
.end method

.method public wrapperUriTimeout(I)Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;->f:I

    if-le p1, v0, :cond_0

    iput p1, p0, Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;->f:I

    :cond_0
    return-object p0
.end method
