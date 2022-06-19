.class public Lcom/google/api/services/gmail/Gmail;
.super Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/gmail/Gmail$Builder;,
        Lcom/google/api/services/gmail/Gmail$Users;
    }
.end annotation


# static fields
.field public static final DEFAULT_BASE_URL:Ljava/lang/String; = "https://www.googleapis.com/gmail/v1/users/"

.field public static final DEFAULT_BATCH_PATH:Ljava/lang/String; = "batch/gmail/v1"

.field public static final DEFAULT_ROOT_URL:Ljava/lang/String; = "https://www.googleapis.com/"

.field public static final DEFAULT_SERVICE_PATH:Ljava/lang/String; = "gmail/v1/users/"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 48
    sget-object v0, Lcom/google/api/client/googleapis/a;->a:Ljava/lang/Integer;

    .line 49
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/google/api/client/googleapis/a;->b:Ljava/lang/Integer;

    .line 50
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, 0xf

    if-lt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/google/api/client/googleapis/a;->d:Ljava/lang/String;

    aput-object v3, v2, v1

    const-string v1, "You are currently running with version %s of google-api-client. You need at least version 1.15 of google-api-client to run version 1.25.0 of the Gmail API library."

    .line 48
    invoke-static {v0, v1, v2}, Lcom/google/api/client/a/aa;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/w;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/s;)V
    .locals 1

    .line 114
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Builder;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/api/services/gmail/Gmail$Builder;-><init>(Lcom/google/api/client/http/w;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/s;)V

    invoke-direct {p0, v0}, Lcom/google/api/services/gmail/Gmail;-><init>(Lcom/google/api/services/gmail/Gmail$Builder;)V

    return-void
.end method

.method constructor <init>(Lcom/google/api/services/gmail/Gmail$Builder;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient;-><init>(Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;)V

    return-void
.end method


# virtual methods
.method public initialize(Lcom/google/api/client/googleapis/services/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/googleapis/services/b<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient;->initialize(Lcom/google/api/client/googleapis/services/b;)V

    return-void
.end method

.method public users()Lcom/google/api/services/gmail/Gmail$Users;
    .locals 1

    .line 141
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users;

    invoke-direct {v0, p0}, Lcom/google/api/services/gmail/Gmail$Users;-><init>(Lcom/google/api/services/gmail/Gmail;)V

    return-object v0
.end method
