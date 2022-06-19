.class final Lio/bidmachine/nativead/utils/NoSSLv3SocketFactory$a;
.super Lio/bidmachine/nativead/utils/NoSSLv3SocketFactory$DelegateSSLSocket;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/nativead/utils/NoSSLv3SocketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/nativead/utils/NoSSLv3SocketFactory;


# direct methods
.method private constructor <init>(Lio/bidmachine/nativead/utils/NoSSLv3SocketFactory;Ljavax/net/ssl/SSLSocket;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lio/bidmachine/nativead/utils/NoSSLv3SocketFactory$a;->this$0:Lio/bidmachine/nativead/utils/NoSSLv3SocketFactory;

    .line 78
    invoke-direct {p0, p1, p2}, Lio/bidmachine/nativead/utils/NoSSLv3SocketFactory$DelegateSSLSocket;-><init>(Lio/bidmachine/nativead/utils/NoSSLv3SocketFactory;Ljavax/net/ssl/SSLSocket;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/nativead/utils/NoSSLv3SocketFactory;Ljavax/net/ssl/SSLSocket;Lio/bidmachine/nativead/utils/NoSSLv3SocketFactory$1;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lio/bidmachine/nativead/utils/NoSSLv3SocketFactory$a;-><init>(Lio/bidmachine/nativead/utils/NoSSLv3SocketFactory;Ljavax/net/ssl/SSLSocket;)V

    return-void
.end method


# virtual methods
.method public final setEnabledProtocols([Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 83
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    const-string v2, "SSLv3"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lio/bidmachine/nativead/utils/NoSSLv3SocketFactory$a;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 85
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 86
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Removed SSLv3 from enabled protocols"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SSL stuck with protocol available for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 91
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 93
    :cond_1
    invoke-super {p0, p1}, Lio/bidmachine/nativead/utils/NoSSLv3SocketFactory$DelegateSSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    return-void
.end method
