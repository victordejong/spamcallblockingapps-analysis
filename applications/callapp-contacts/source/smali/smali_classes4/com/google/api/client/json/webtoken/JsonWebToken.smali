.class public Lcom/google/api/client/json/webtoken/JsonWebToken;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;,
        Lcom/google/api/client/json/webtoken/JsonWebToken$Header;
    }
.end annotation


# instance fields
.field private final header:Lcom/google/api/client/json/webtoken/JsonWebToken$Header;

.field private final payload:Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;


# direct methods
.method public constructor <init>(Lcom/google/api/client/json/webtoken/JsonWebToken$Header;Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1125
    invoke-static {p1}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 45
    check-cast p1, Lcom/google/api/client/json/webtoken/JsonWebToken$Header;

    iput-object p1, p0, Lcom/google/api/client/json/webtoken/JsonWebToken;->header:Lcom/google/api/client/json/webtoken/JsonWebToken$Header;

    .line 2125
    invoke-static {p2}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 46
    check-cast p1, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    iput-object p1, p0, Lcom/google/api/client/json/webtoken/JsonWebToken;->payload:Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    return-void
.end method


# virtual methods
.method public getHeader()Lcom/google/api/client/json/webtoken/JsonWebToken$Header;
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebToken;->header:Lcom/google/api/client/json/webtoken/JsonWebToken$Header;

    return-object v0
.end method

.method public getPayload()Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebToken;->payload:Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 359
    invoke-static {p0}, Lcom/google/api/client/a/y;->a(Ljava/lang/Object;)Lcom/google/api/client/a/y$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/json/webtoken/JsonWebToken;->header:Lcom/google/api/client/json/webtoken/JsonWebToken$Header;

    const-string v2, "header"

    .line 3112
    invoke-virtual {v0, v2, v1}, Lcom/google/api/client/a/y$a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/y$a;

    move-result-object v0

    .line 359
    iget-object v1, p0, Lcom/google/api/client/json/webtoken/JsonWebToken;->payload:Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    const-string v2, "payload"

    .line 4112
    invoke-virtual {v0, v2, v1}, Lcom/google/api/client/a/y$a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/y$a;

    move-result-object v0

    .line 359
    invoke-virtual {v0}, Lcom/google/api/client/a/y$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
