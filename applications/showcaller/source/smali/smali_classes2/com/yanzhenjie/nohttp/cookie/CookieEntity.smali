.class Lcom/yanzhenjie/nohttp/cookie/CookieEntity;
.super Ljava/lang/Object;
.source "CookieEntity.java"

# interfaces
.implements Lcom/yanzhenjie/nohttp/db/BasicEntity;


# instance fields
.field private comment:Ljava/lang/String;

.field private commentURL:Ljava/lang/String;

.field private discard:Z

.field private domain:Ljava/lang/String;

.field private expiry:J

.field private id:J

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private portList:Ljava/lang/String;

.field private secure:Z

.field private uri:Ljava/lang/String;

.field private value:Ljava/lang/String;

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->id:J

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->version:I

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/net/HttpCookie;)V
    .locals 7

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->id:J

    const/4 v2, 0x1

    .line 6
    iput v2, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->version:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->uri:Ljava/lang/String;

    .line 8
    invoke-virtual {p2}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->name:Ljava/lang/String;

    .line 9
    invoke-virtual {p2}, Ljava/net/HttpCookie;->getValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->value:Ljava/lang/String;

    .line 10
    invoke-virtual {p2}, Ljava/net/HttpCookie;->getComment()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->comment:Ljava/lang/String;

    .line 11
    invoke-virtual {p2}, Ljava/net/HttpCookie;->getCommentURL()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->commentURL:Ljava/lang/String;

    .line 12
    invoke-virtual {p2}, Ljava/net/HttpCookie;->getDiscard()Z

    move-result p1

    iput-boolean p1, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->discard:Z

    .line 13
    invoke-virtual {p2}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->domain:Ljava/lang/String;

    .line 14
    invoke-virtual {p2}, Ljava/net/HttpCookie;->getMaxAge()J

    move-result-wide v3

    cmp-long p1, v3, v0

    if-eqz p1, :cond_1

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-lez p1, :cond_1

    const-wide/16 v0, 0x3e8

    mul-long v3, v3, v0

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v3, v0

    iput-wide v3, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->expiry:J

    cmp-long p1, v3, v5

    if-gez p1, :cond_2

    .line 16
    invoke-static {}, Lcom/yanzhenjie/nohttp/tools/HeaderUtils;->getMaxExpiryMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->expiry:J

    goto :goto_1

    .line 17
    :cond_1
    iput-wide v0, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->expiry:J

    .line 18
    :cond_2
    :goto_1
    invoke-virtual {p2}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->path:Ljava/lang/String;

    .line 19
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->path:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, v2, :cond_3

    iget-object p1, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->path:Ljava/lang/String;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 20
    iget-object p1, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->path:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->path:Ljava/lang/String;

    .line 21
    :cond_3
    invoke-virtual {p2}, Ljava/net/HttpCookie;->getPortlist()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->portList:Ljava/lang/String;

    .line 22
    invoke-virtual {p2}, Ljava/net/HttpCookie;->getSecure()Z

    move-result p1

    iput-boolean p1, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->secure:Z

    .line 23
    invoke-virtual {p2}, Ljava/net/HttpCookie;->getVersion()I

    move-result p1

    iput p1, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->version:I

    return-void
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentURL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->commentURL:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiry()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->expiry:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPortList()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->portList:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->version:I

    return v0
.end method

.method public isDiscard()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->discard:Z

    return v0
.end method

.method public isExpired()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->expiry:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSecure()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->secure:Z

    return v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->comment:Ljava/lang/String;

    return-void
.end method

.method public setCommentURL(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->commentURL:Ljava/lang/String;

    return-void
.end method

.method public setDiscard(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->discard:Z

    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->domain:Ljava/lang/String;

    return-void
.end method

.method public setExpiry(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->expiry:J

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->id:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->name:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->path:Ljava/lang/String;

    return-void
.end method

.method public setPortList(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->portList:Ljava/lang/String;

    return-void
.end method

.method public setSecure(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->secure:Z

    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->uri:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->value:Ljava/lang/String;

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->version:I

    return-void
.end method

.method public toHttpCookie()Ljava/net/HttpCookie;
    .locals 6

    .line 1
    new-instance v0, Ljava/net/HttpCookie;

    iget-object v1, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->value:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/net/HttpCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->comment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/HttpCookie;->setComment(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->commentURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/HttpCookie;->setCommentURL(Ljava/lang/String;)V

    .line 4
    iget-boolean v1, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->discard:Z

    invoke-virtual {v0, v1}, Ljava/net/HttpCookie;->setDiscard(Z)V

    .line 5
    iget-object v1, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/HttpCookie;->setDomain(Ljava/lang/String;)V

    .line 6
    iget-wide v1, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->expiry:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 7
    invoke-virtual {v0, v3, v4}, Ljava/net/HttpCookie;->setMaxAge(J)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpCookie;->setMaxAge(J)V

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/HttpCookie;->setPath(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->portList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/HttpCookie;->setPortlist(Ljava/lang/String;)V

    .line 11
    iget-boolean v1, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->secure:Z

    invoke-virtual {v0, v1}, Ljava/net/HttpCookie;->setSecure(Z)V

    .line 12
    iget v1, p0, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->version:I

    invoke-virtual {v0, v1}, Ljava/net/HttpCookie;->setVersion(I)V

    return-object v0
.end method
