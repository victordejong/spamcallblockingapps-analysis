.class final Lcom/lidroid/xutils/http/HttpHandler$NotUseApacheRedirectHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/apache/http/client/RedirectHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/xutils/http/HttpHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NotUseApacheRedirectHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lidroid/xutils/http/HttpHandler$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/lidroid/xutils/http/HttpHandler$NotUseApacheRedirectHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
