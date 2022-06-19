.class public final Lcom/google/api/client/googleapis/auth/oauth2/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/googleapis/auth/oauth2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lcom/google/api/client/a/i;

.field final b:Lcom/google/api/client/http/w;

.field final c:Lcom/google/api/client/json/JsonFactory;

.field d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/w;Lcom/google/api/client/json/JsonFactory;)V
    .locals 1

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    sget-object v0, Lcom/google/api/client/a/i;->a:Lcom/google/api/client/a/i;

    iput-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/b$a;->a:Lcom/google/api/client/a/i;

    const-string v0, "https://www.googleapis.com/oauth2/v1/certs"

    .line 248
    iput-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/b$a;->d:Ljava/lang/String;

    .line 257
    invoke-static {p1}, Lcom/google/api/client/a/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/http/w;

    iput-object p1, p0, Lcom/google/api/client/googleapis/auth/oauth2/b$a;->b:Lcom/google/api/client/http/w;

    .line 258
    invoke-static {p2}, Lcom/google/api/client/a/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/json/JsonFactory;

    iput-object p1, p0, Lcom/google/api/client/googleapis/auth/oauth2/b$a;->c:Lcom/google/api/client/json/JsonFactory;

    return-void
.end method
