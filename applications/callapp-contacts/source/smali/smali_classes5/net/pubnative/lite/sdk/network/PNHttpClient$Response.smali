.class Lnet/pubnative/lite/sdk/network/PNHttpClient$Response;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/lite/sdk/network/PNHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Response"
.end annotation


# instance fields
.field private exception:Ljava/lang/Exception;

.field private response:Ljava/lang/String;

.field private responseCode:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/pubnative/lite/sdk/network/PNHttpClient$1;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/network/PNHttpClient$Response;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lnet/pubnative/lite/sdk/network/PNHttpClient$Response;)Ljava/lang/Exception;
    .locals 0

    .line 61
    iget-object p0, p0, Lnet/pubnative/lite/sdk/network/PNHttpClient$Response;->exception:Ljava/lang/Exception;

    return-object p0
.end method

.method static synthetic access$102(Lnet/pubnative/lite/sdk/network/PNHttpClient$Response;Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 0

    .line 61
    iput-object p1, p0, Lnet/pubnative/lite/sdk/network/PNHttpClient$Response;->exception:Ljava/lang/Exception;

    return-object p1
.end method

.method static synthetic access$400(Lnet/pubnative/lite/sdk/network/PNHttpClient$Response;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lnet/pubnative/lite/sdk/network/PNHttpClient$Response;->response:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lnet/pubnative/lite/sdk/network/PNHttpClient$Response;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 61
    iput-object p1, p0, Lnet/pubnative/lite/sdk/network/PNHttpClient$Response;->response:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lnet/pubnative/lite/sdk/network/PNHttpClient$Response;I)I
    .locals 0

    .line 61
    iput p1, p0, Lnet/pubnative/lite/sdk/network/PNHttpClient$Response;->responseCode:I

    return p1
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 1

    .line 79
    iget-object v0, p0, Lnet/pubnative/lite/sdk/network/PNHttpClient$Response;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lnet/pubnative/lite/sdk/network/PNHttpClient$Response;->response:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .line 71
    iget v0, p0, Lnet/pubnative/lite/sdk/network/PNHttpClient$Response;->responseCode:I

    return v0
.end method
