.class public Lcom/callapp/contacts/util/http/HttpRequestParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Z

.field private final e:Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:I


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {p1}, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->a(Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/util/http/HttpRequestParams;->a:Ljava/lang/String;

    .line 19
    invoke-static {p1}, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->b(Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/util/http/HttpRequestParams;->b:Ljava/util/Map;

    .line 20
    invoke-static {p1}, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->c(Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/util/http/HttpRequestParams;->c:Ljava/util/Map;

    .line 21
    invoke-static {p1}, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->d(Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/callapp/contacts/util/http/HttpRequestParams;->d:Z

    .line 22
    invoke-static {p1}, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->e(Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;)Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/util/http/HttpRequestParams;->e:Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;

    .line 23
    invoke-static {p1}, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->f(Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/util/http/HttpRequestParams;->f:Ljava/lang/String;

    .line 24
    invoke-static {p1}, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->g(Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/util/http/HttpRequestParams;->g:Ljava/util/Map;

    .line 25
    invoke-static {p1}, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->h(Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/util/http/HttpRequestParams;->h:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;Lcom/callapp/contacts/util/http/HttpRequestParams$1;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/callapp/contacts/util/http/HttpRequestParams;-><init>(Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;)V

    return-void
.end method


# virtual methods
.method public getAdditionalHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/callapp/contacts/util/http/HttpRequestParams;->b:Ljava/util/Map;

    return-object v0
.end method

.method public getFormParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/callapp/contacts/util/http/HttpRequestParams;->g:Ljava/util/Map;

    return-object v0
.end method

.method public getHandler()Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/callapp/contacts/util/http/HttpRequestParams;->e:Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;

    return-object v0
.end method

.method public getIncludeAllResponseCodes()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/callapp/contacts/util/http/HttpRequestParams;->d:Z

    return v0
.end method

.method public getModifiedHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/callapp/contacts/util/http/HttpRequestParams;->c:Ljava/util/Map;

    return-object v0
.end method

.method public getTimeoutOverride()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/callapp/contacts/util/http/HttpRequestParams;->h:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/callapp/contacts/util/http/HttpRequestParams;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgentOverride()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/callapp/contacts/util/http/HttpRequestParams;->f:Ljava/lang/String;

    return-object v0
.end method
