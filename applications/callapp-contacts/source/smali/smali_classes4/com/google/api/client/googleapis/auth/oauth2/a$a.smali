.class public final Lcom/google/api/client/googleapis/auth/oauth2/a$a;
.super Lcom/google/api/client/auth/openidconnect/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/googleapis/auth/oauth2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field e:Lcom/google/api/client/googleapis/auth/oauth2/b;


# direct methods
.method public constructor <init>(Lcom/google/api/client/googleapis/auth/oauth2/b;)V
    .locals 1

    .line 243
    invoke-direct {p0}, Lcom/google/api/client/auth/openidconnect/a$a;-><init>()V

    .line 244
    invoke-static {p1}, Lcom/google/api/client/a/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/googleapis/auth/oauth2/b;

    iput-object p1, p0, Lcom/google/api/client/googleapis/auth/oauth2/a$a;->e:Lcom/google/api/client/googleapis/auth/oauth2/b;

    const-string p1, "accounts.google.com"

    const-string v0, "https://accounts.google.com"

    .line 245
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/a$a;->b(Ljava/util/Collection;)Lcom/google/api/client/googleapis/auth/oauth2/a$a;

    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/w;Lcom/google/api/client/json/JsonFactory;)V
    .locals 1

    .line 235
    new-instance v0, Lcom/google/api/client/googleapis/auth/oauth2/b;

    invoke-direct {v0, p1, p2}, Lcom/google/api/client/googleapis/auth/oauth2/b;-><init>(Lcom/google/api/client/http/w;Lcom/google/api/client/json/JsonFactory;)V

    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/auth/oauth2/a$a;-><init>(Lcom/google/api/client/googleapis/auth/oauth2/b;)V

    return-void
.end method

.method private b(Ljava/util/Collection;)Lcom/google/api/client/googleapis/auth/oauth2/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/client/googleapis/auth/oauth2/a$a;"
        }
    .end annotation

    .line 320
    invoke-super {p0, p1}, Lcom/google/api/client/auth/openidconnect/a$a;->a(Ljava/util/Collection;)Lcom/google/api/client/auth/openidconnect/a$a;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/googleapis/auth/oauth2/a$a;

    return-object p1
.end method


# virtual methods
.method public final synthetic a(Ljava/util/Collection;)Lcom/google/api/client/auth/openidconnect/a$a;
    .locals 0

    .line 224
    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/a$a;->b(Ljava/util/Collection;)Lcom/google/api/client/googleapis/auth/oauth2/a$a;

    move-result-object p1

    return-object p1
.end method
