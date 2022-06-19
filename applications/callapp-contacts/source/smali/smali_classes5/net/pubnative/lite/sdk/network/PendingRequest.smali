.class public Lnet/pubnative/lite/sdk/network/PendingRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final postBody:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lnet/pubnative/lite/sdk/network/PendingRequest;->url:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lnet/pubnative/lite/sdk/network/PendingRequest;->headers:Ljava/util/Map;

    .line 13
    iput-object p2, p0, Lnet/pubnative/lite/sdk/network/PendingRequest;->postBody:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHeaders()Ljava/util/Map;
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

    .line 21
    iget-object v0, p0, Lnet/pubnative/lite/sdk/network/PendingRequest;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getPostBody()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lnet/pubnative/lite/sdk/network/PendingRequest;->postBody:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lnet/pubnative/lite/sdk/network/PendingRequest;->url:Ljava/lang/String;

    return-object v0
.end method
