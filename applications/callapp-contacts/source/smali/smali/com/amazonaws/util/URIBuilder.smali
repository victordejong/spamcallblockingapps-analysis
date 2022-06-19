.class public Lcom/amazonaws/util/URIBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final h:Ljava/lang/String;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    sget-object v0, Lcom/amazonaws/Protocol;->HTTPS:Lcom/amazonaws/Protocol;

    invoke-virtual {v0}, Lcom/amazonaws/Protocol;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/util/URIBuilder;->h:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lcom/amazonaws/util/URIBuilder;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/util/URIBuilder;->a:Ljava/lang/String;

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lcom/amazonaws/util/URIBuilder;->d:I

    return-void
.end method

.method private constructor <init>(Ljava/net/URI;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/util/URIBuilder;->a:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/util/URIBuilder;->b:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/util/URIBuilder;->c:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v0

    iput v0, p0, Lcom/amazonaws/util/URIBuilder;->d:I

    .line 50
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/util/URIBuilder;->e:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/util/URIBuilder;->f:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/util/URIBuilder;->g:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/net/URI;)Lcom/amazonaws/util/URIBuilder;
    .locals 1

    .line 72
    new-instance v0, Lcom/amazonaws/util/URIBuilder;

    invoke-direct {v0, p0}, Lcom/amazonaws/util/URIBuilder;-><init>(Ljava/net/URI;)V

    return-object v0
.end method
