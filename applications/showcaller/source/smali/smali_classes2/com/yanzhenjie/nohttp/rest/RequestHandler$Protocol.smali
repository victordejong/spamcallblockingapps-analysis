.class Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;
.super Ljava/lang/Object;
.source "RequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yanzhenjie/nohttp/rest/RequestHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Protocol"
.end annotation


# instance fields
.field private body:[B

.field private exception:Ljava/lang/Exception;

.field private fromCache:Z

.field private headers:Lcom/yanzhenjie/nohttp/Headers;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yanzhenjie/nohttp/rest/RequestHandler$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;)Ljava/lang/Exception;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;->exception:Ljava/lang/Exception;

    return-object p0
.end method

.method static synthetic access$002(Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;->exception:Ljava/lang/Exception;

    return-object p1
.end method

.method static synthetic access$100(Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;)Lcom/yanzhenjie/nohttp/Headers;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;->headers:Lcom/yanzhenjie/nohttp/Headers;

    return-object p0
.end method

.method static synthetic access$102(Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;Lcom/yanzhenjie/nohttp/Headers;)Lcom/yanzhenjie/nohttp/Headers;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;->headers:Lcom/yanzhenjie/nohttp/Headers;

    return-object p1
.end method

.method static synthetic access$200(Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;->body:[B

    return-object p0
.end method

.method static synthetic access$202(Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;[B)[B
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;->body:[B

    return-object p1
.end method

.method static synthetic access$300(Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;->fromCache:Z

    return p0
.end method

.method static synthetic access$302(Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/yanzhenjie/nohttp/rest/RequestHandler$Protocol;->fromCache:Z

    return p1
.end method
