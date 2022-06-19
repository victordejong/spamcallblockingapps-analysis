.class public Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/util/http/HttpRequestParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpRequestParamsBuilder"
.end annotation


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;

.field public d:Ljava/lang/String;

.field e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public f:I

.field private final g:Ljava/lang/String;

.field private h:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->f:I

    .line 71
    iput-object p1, p0, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->g:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;)Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;)Ljava/util/Map;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->a:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;)Ljava/util/Map;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->b:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->h:Z

    return p0
.end method

.method static synthetic e(Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;)Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->c:Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;

    return-object p0
.end method

.method static synthetic f(Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;)Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;)Ljava/util/Map;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->e:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic h(Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->f:I

    return p0
.end method


# virtual methods
.method public final a()Lcom/callapp/contacts/util/http/HttpRequestParams;
    .locals 2

    .line 110
    new-instance v0, Lcom/callapp/contacts/util/http/HttpRequestParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/callapp/contacts/util/http/HttpRequestParams;-><init>(Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;Lcom/callapp/contacts/util/http/HttpRequestParams$1;)V

    return-object v0
.end method
