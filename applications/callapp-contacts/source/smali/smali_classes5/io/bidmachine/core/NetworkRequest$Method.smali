.class public final enum Lio/bidmachine/core/NetworkRequest$Method;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/core/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/core/NetworkRequest$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/core/NetworkRequest$Method;

.field public static final enum Get:Lio/bidmachine/core/NetworkRequest$Method;

.field public static final enum Post:Lio/bidmachine/core/NetworkRequest$Method;


# instance fields
.field private methodString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 35
    new-instance v0, Lio/bidmachine/core/NetworkRequest$Method;

    const-string v1, "Get"

    const/4 v2, 0x0

    const-string v3, "GET"

    invoke-direct {v0, v1, v2, v3}, Lio/bidmachine/core/NetworkRequest$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/core/NetworkRequest$Method;->Get:Lio/bidmachine/core/NetworkRequest$Method;

    new-instance v1, Lio/bidmachine/core/NetworkRequest$Method;

    const-string v3, "Post"

    const/4 v4, 0x1

    const-string v5, "POST"

    invoke-direct {v1, v3, v4, v5}, Lio/bidmachine/core/NetworkRequest$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lio/bidmachine/core/NetworkRequest$Method;->Post:Lio/bidmachine/core/NetworkRequest$Method;

    const/4 v3, 0x2

    new-array v3, v3, [Lio/bidmachine/core/NetworkRequest$Method;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 34
    sput-object v3, Lio/bidmachine/core/NetworkRequest$Method;->$VALUES:[Lio/bidmachine/core/NetworkRequest$Method;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput-object p3, p0, Lio/bidmachine/core/NetworkRequest$Method;->methodString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/core/NetworkRequest$Method;
    .locals 1

    .line 34
    const-class v0, Lio/bidmachine/core/NetworkRequest$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/core/NetworkRequest$Method;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/core/NetworkRequest$Method;
    .locals 1

    .line 34
    sget-object v0, Lio/bidmachine/core/NetworkRequest$Method;->$VALUES:[Lio/bidmachine/core/NetworkRequest$Method;

    invoke-virtual {v0}, [Lio/bidmachine/core/NetworkRequest$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/core/NetworkRequest$Method;

    return-object v0
.end method


# virtual methods
.method public final apply(Ljava/net/URLConnection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 48
    instance-of v0, p1, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 49
    check-cast p1, Ljava/net/HttpURLConnection;

    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest$Method;->methodString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final getMethodString()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest$Method;->methodString:Ljava/lang/String;

    return-object v0
.end method
