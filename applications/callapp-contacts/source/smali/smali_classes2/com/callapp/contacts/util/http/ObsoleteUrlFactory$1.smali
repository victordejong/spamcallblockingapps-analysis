.class Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$1;
.super Ljava/net/URLStreamHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/http/ObsoleteUrlFactory;->createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/callapp/contacts/util/http/ObsoleteUrlFactory;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/http/ObsoleteUrlFactory;Ljava/lang/String;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$1;->b:Lcom/callapp/contacts/util/http/ObsoleteUrlFactory;

    iput-object p2, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDefaultPort()I
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$1;->a:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x50

    return v0

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$1;->a:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1bb

    return v0

    .line 187
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$1;->b:Lcom/callapp/contacts/util/http/ObsoleteUrlFactory;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method protected openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$1;->b:Lcom/callapp/contacts/util/http/ObsoleteUrlFactory;

    invoke-virtual {v0, p1, p2}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory;->a(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method
