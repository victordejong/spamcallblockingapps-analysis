.class public Lcom/callapp/contacts/util/http/HttpRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String; = "com.callapp.contacts.util.http.HttpRequest"


# instance fields
.field public a:Lcom/callapp/contacts/event/listener/Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/event/listener/Listener<",
            "Lcom/callapp/contacts/util/http/HttpRequest;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/callapp/contacts/event/listener/Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/event/listener/Listener<",
            "Lcom/callapp/contacts/util/http/HttpRequest;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Z

.field private i:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

.field private j:Landroid/app/Activity;

.field private k:Lcom/callapp/contacts/manager/task/Task;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/util/http/HttpRequest;->d:Ljava/util/Map;

    .line 34
    iput-object p1, p0, Lcom/callapp/contacts/util/http/HttpRequest;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/util/http/HttpRequest;)Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/callapp/contacts/util/http/HttpRequest;->i:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/util/http/HttpRequest;)Lcom/callapp/contacts/event/listener/Listener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/callapp/contacts/util/http/HttpRequest;->a:Lcom/callapp/contacts/event/listener/Listener;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/util/http/HttpRequest;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/callapp/contacts/util/http/HttpRequest;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/callapp/contacts/util/http/HttpRequest;)Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;
    .locals 1

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/callapp/contacts/util/http/HttpRequest;->i:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    return-object v0
.end method

.method static synthetic e(Lcom/callapp/contacts/util/http/HttpRequest;)Landroid/app/Activity;
    .locals 1

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/callapp/contacts/util/http/HttpRequest;->j:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic f(Lcom/callapp/contacts/util/http/HttpRequest;)Lcom/callapp/contacts/event/listener/Listener;
    .locals 1

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/callapp/contacts/util/http/HttpRequest;->a:Lcom/callapp/contacts/event/listener/Listener;

    return-object v0
.end method

.method static synthetic g(Lcom/callapp/contacts/util/http/HttpRequest;)Lcom/callapp/contacts/event/listener/Listener;
    .locals 1

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/callapp/contacts/util/http/HttpRequest;->b:Lcom/callapp/contacts/event/listener/Listener;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/callapp/contacts/util/http/HttpRequest;
    .locals 3

    .line 67
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/http/HttpRequest;->j:Landroid/app/Activity;

    iget-object v2, p0, Lcom/callapp/contacts/util/http/HttpRequest;->i:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    .line 69
    new-instance v0, Lcom/callapp/contacts/util/http/HttpRequest$1;

    const/16 v1, 0x4e20

    invoke-direct {v0, p0, v1}, Lcom/callapp/contacts/util/http/HttpRequest$1;-><init>(Lcom/callapp/contacts/util/http/HttpRequest;I)V

    iput-object v0, p0, Lcom/callapp/contacts/util/http/HttpRequest;->k:Lcom/callapp/contacts/manager/task/Task;

    .line 92
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/task/Task;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/util/http/HttpRequest;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/callapp/contacts/util/http/HttpRequest;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final a(I)Z
    .locals 4

    .line 51
    new-instance v0, Lcom/callapp/contacts/util/http/ValidatorHttpResponseHandler;

    invoke-direct {v0}, Lcom/callapp/contacts/util/http/ValidatorHttpResponseHandler;-><init>()V

    .line 52
    new-instance v1, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/util/http/HttpRequest;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/callapp/contacts/util/http/HttpRequest;->d:Ljava/util/Map;

    .line 1100
    iput-object v2, v1, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->e:Ljava/util/Map;

    .line 2090
    iput-object v0, v1, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->c:Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;

    .line 2105
    iput p1, v1, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->f:I

    .line 53
    invoke-virtual {v1}, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->a()Lcom/callapp/contacts/util/http/HttpRequestParams;

    move-result-object p1

    .line 52
    invoke-static {p1}, Lcom/callapp/contacts/util/http/HttpUtils;->d(Lcom/callapp/contacts/util/http/HttpRequestParams;)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/util/http/HttpRequest;->g:I

    .line 54
    invoke-virtual {v0}, Lcom/callapp/contacts/util/http/ValidatorHttpResponseHandler;->isValidCallAppResponse()Z

    move-result p1

    iput-boolean p1, p0, Lcom/callapp/contacts/util/http/HttpRequest;->h:Z

    .line 56
    iget p1, p0, Lcom/callapp/contacts/util/http/HttpRequest;->g:I

    const/4 v1, 0x1

    const/16 v2, 0xc8

    if-eq p1, v2, :cond_0

    .line 57
    sget-object v0, Lcom/callapp/contacts/util/http/HttpRequest;->c:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    iget-object p1, p0, Lcom/callapp/contacts/util/http/HttpRequest;->e:Ljava/lang/String;

    aput-object p1, v2, v1

    const-string p1, "Got status %s while posting to %s"

    invoke-static {v0, p1, v2}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    .line 61
    :cond_0
    invoke-virtual {v0}, Lcom/callapp/contacts/util/http/ValidatorHttpResponseHandler;->getResult()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/util/http/HttpRequest;->f:Ljava/lang/String;

    return v1
.end method

.method public final b()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/callapp/contacts/util/http/HttpRequest;->b:Lcom/callapp/contacts/event/listener/Listener;

    if-eqz v0, :cond_0

    .line 98
    invoke-interface {v0, p0}, Lcom/callapp/contacts/event/listener/Listener;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public getResponse()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/callapp/contacts/util/http/HttpRequest;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseStatusCode()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/callapp/contacts/util/http/HttpRequest;->g:I

    return v0
.end method

.method public isValidCallAppResponse()Z
    .locals 1

    .line 163
    iget-boolean v0, p0, Lcom/callapp/contacts/util/http/HttpRequest;->h:Z

    return v0
.end method
