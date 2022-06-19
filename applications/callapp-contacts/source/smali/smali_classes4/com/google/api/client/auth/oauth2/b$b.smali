.class public final Lcom/google/api/client/auth/oauth2/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/auth/oauth2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field final a:Lcom/google/api/client/auth/oauth2/b$a;

.field b:Lcom/google/api/client/http/w;

.field c:Lcom/google/api/client/json/JsonFactory;

.field d:Lcom/google/api/client/http/i;

.field e:Lcom/google/api/client/a/i;

.field f:Lcom/google/api/client/http/m;

.field g:Lcom/google/api/client/http/s;

.field h:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/api/client/auth/oauth2/b$a;)V
    .locals 1

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 583
    sget-object v0, Lcom/google/api/client/a/i;->a:Lcom/google/api/client/a/i;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/b$b;->e:Lcom/google/api/client/a/i;

    .line 1035
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 598
    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/b$b;->h:Ljava/util/Collection;

    .line 1125
    invoke-static {p1}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 605
    check-cast p1, Lcom/google/api/client/auth/oauth2/b$a;

    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/b$b;->a:Lcom/google/api/client/auth/oauth2/b$a;

    return-void
.end method
