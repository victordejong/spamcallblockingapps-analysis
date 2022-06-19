.class public final Lcom/google/api/client/auth/oauth2/c;
.super Lcom/google/api/client/auth/oauth2/d;
.source "SourceFile"


# instance fields
.field private refreshToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
        a = "refresh_token"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/w;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/i;Ljava/lang/String;)V
    .locals 1

    const-string v0, "refresh_token"

    .line 88
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/api/client/auth/oauth2/d;-><init>(Lcom/google/api/client/http/w;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/i;Ljava/lang/String;)V

    .line 2125
    invoke-static {p4}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1134
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/c;->refreshToken:Ljava/lang/String;

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/auth/oauth2/c;
    .locals 0

    .line 140
    invoke-super {p0, p1, p2}, Lcom/google/api/client/auth/oauth2/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/auth/oauth2/d;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/auth/oauth2/c;

    return-object p1
.end method


# virtual methods
.method public final a(Lcom/google/api/client/http/m;)Lcom/google/api/client/auth/oauth2/c;
    .locals 0

    .line 114
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/d;->b(Lcom/google/api/client/http/m;)Lcom/google/api/client/auth/oauth2/d;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/auth/oauth2/c;

    return-object p1
.end method

.method public final a(Lcom/google/api/client/http/s;)Lcom/google/api/client/auth/oauth2/c;
    .locals 0

    .line 94
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/d;->b(Lcom/google/api/client/http/s;)Lcom/google/api/client/auth/oauth2/d;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/auth/oauth2/c;

    return-object p1
.end method

.method public final bridge synthetic a(Lcom/google/api/client/http/i;)Lcom/google/api/client/auth/oauth2/d;
    .locals 0

    .line 5099
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/d;->a(Lcom/google/api/client/http/i;)Lcom/google/api/client/auth/oauth2/d;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/auth/oauth2/c;

    return-object p1
.end method

.method public final bridge synthetic a(Ljava/lang/Class;)Lcom/google/api/client/auth/oauth2/d;
    .locals 0

    .line 3119
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/d;->a(Ljava/lang/Class;)Lcom/google/api/client/auth/oauth2/d;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/auth/oauth2/c;

    return-object p1
.end method

.method public final bridge synthetic a(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/d;
    .locals 0

    .line 4109
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/d;->a(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/d;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/auth/oauth2/c;

    return-object p1
.end method

.method public final synthetic a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/auth/oauth2/d;
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/google/api/client/auth/oauth2/c;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/auth/oauth2/c;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b(Lcom/google/api/client/http/m;)Lcom/google/api/client/auth/oauth2/d;
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/oauth2/c;->a(Lcom/google/api/client/http/m;)Lcom/google/api/client/auth/oauth2/c;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b(Lcom/google/api/client/http/s;)Lcom/google/api/client/auth/oauth2/d;
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/oauth2/c;->a(Lcom/google/api/client/http/s;)Lcom/google/api/client/auth/oauth2/c;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/google/api/client/auth/oauth2/c;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/auth/oauth2/c;

    move-result-object p1

    return-object p1
.end method
