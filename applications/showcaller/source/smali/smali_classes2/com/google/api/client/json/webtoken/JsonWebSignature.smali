.class public Lcom/google/api/client/json/webtoken/JsonWebSignature;
.super Lcom/google/api/client/json/webtoken/JsonWebToken;
.source "JsonWebSignature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/json/webtoken/JsonWebSignature$a;,
        Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;
    }
.end annotation


# instance fields
.field private final c:[B

.field private final d:[B


# direct methods
.method public constructor <init>(Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;[B[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/api/client/json/webtoken/JsonWebToken;-><init>(Lcom/google/api/client/json/webtoken/JsonWebToken$Header;Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;)V

    .line 2
    invoke-static {p3}, Lcom/google/api/client/util/w;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature;->c:[B

    .line 3
    invoke-static {p4}, Lcom/google/api/client/util/w;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature;->d:[B

    return-void
.end method

.method public static f(Lcom/google/api/client/json/c;)Lcom/google/api/client/json/webtoken/JsonWebSignature$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/api/client/json/webtoken/JsonWebSignature$a;

    invoke-direct {v0, p0}, Lcom/google/api/client/json/webtoken/JsonWebSignature$a;-><init>(Lcom/google/api/client/json/c;)V

    return-object v0
.end method


# virtual methods
.method public c()Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/api/client/json/webtoken/JsonWebToken;->a()Lcom/google/api/client/json/webtoken/JsonWebToken$Header;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    return-object v0
.end method

.method public final d()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature;->c:[B

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public final e()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature;->d:[B

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method
