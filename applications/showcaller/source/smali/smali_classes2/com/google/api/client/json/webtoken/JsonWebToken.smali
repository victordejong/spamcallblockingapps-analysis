.class public Lcom/google/api/client/json/webtoken/JsonWebToken;
.super Ljava/lang/Object;
.source "JsonWebToken.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;,
        Lcom/google/api/client/json/webtoken/JsonWebToken$Header;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/api/client/json/webtoken/JsonWebToken$Header;

.field private final b:Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;


# direct methods
.method public constructor <init>(Lcom/google/api/client/json/webtoken/JsonWebToken$Header;Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/api/client/util/w;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/json/webtoken/JsonWebToken$Header;

    iput-object p1, p0, Lcom/google/api/client/json/webtoken/JsonWebToken;->a:Lcom/google/api/client/json/webtoken/JsonWebToken$Header;

    .line 3
    invoke-static {p2}, Lcom/google/api/client/util/w;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    iput-object p1, p0, Lcom/google/api/client/json/webtoken/JsonWebToken;->b:Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/api/client/json/webtoken/JsonWebToken$Header;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebToken;->a:Lcom/google/api/client/json/webtoken/JsonWebToken$Header;

    return-object v0
.end method

.method public b()Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebToken;->b:Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/api/client/util/v;->b(Ljava/lang/Object;)Lcom/google/api/client/util/v$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/json/webtoken/JsonWebToken;->a:Lcom/google/api/client/json/webtoken/JsonWebToken$Header;

    const-string v2, "header"

    invoke-virtual {v0, v2, v1}, Lcom/google/api/client/util/v$b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/v$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/json/webtoken/JsonWebToken;->b:Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    const-string v2, "payload"

    invoke-virtual {v0, v2, v1}, Lcom/google/api/client/util/v$b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/v$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/util/v$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
