.class public final Lcom/google/api/client/googleapis/auth/oauth2/a;
.super Lcom/google/api/client/auth/openidconnect/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/auth/oauth2/a$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/api/client/googleapis/auth/oauth2/b;


# direct methods
.method protected constructor <init>(Lcom/google/api/client/googleapis/auth/oauth2/a$a;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/google/api/client/auth/openidconnect/a;-><init>(Lcom/google/api/client/auth/openidconnect/a$a;)V

    .line 85
    iget-object p1, p1, Lcom/google/api/client/googleapis/auth/oauth2/a$a;->e:Lcom/google/api/client/googleapis/auth/oauth2/b;

    iput-object p1, p0, Lcom/google/api/client/googleapis/auth/oauth2/a;->a:Lcom/google/api/client/googleapis/auth/oauth2/b;

    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/googleapis/auth/oauth2/b;)V
    .locals 1

    .line 75
    new-instance v0, Lcom/google/api/client/googleapis/auth/oauth2/a$a;

    invoke-direct {v0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/a$a;-><init>(Lcom/google/api/client/googleapis/auth/oauth2/b;)V

    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/auth/oauth2/a;-><init>(Lcom/google/api/client/googleapis/auth/oauth2/a$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/w;Lcom/google/api/client/json/JsonFactory;)V
    .locals 1

    .line 66
    new-instance v0, Lcom/google/api/client/googleapis/auth/oauth2/a$a;

    invoke-direct {v0, p1, p2}, Lcom/google/api/client/googleapis/auth/oauth2/a$a;-><init>(Lcom/google/api/client/http/w;Lcom/google/api/client/json/JsonFactory;)V

    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/auth/oauth2/a;-><init>(Lcom/google/api/client/googleapis/auth/oauth2/a$a;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    invoke-super {p0, p1}, Lcom/google/api/client/auth/openidconnect/a;->a(Lcom/google/api/client/auth/openidconnect/IdToken;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/a;->a:Lcom/google/api/client/googleapis/auth/oauth2/b;

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/auth/oauth2/b;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/PublicKey;

    .line 175
    invoke-virtual {p1, v2}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;->verifySignature(Ljava/security/PublicKey;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method
