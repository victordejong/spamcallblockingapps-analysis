.class public final Lcom/dropbox/core/oauth/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Lcom/dropbox/core/oauth/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;

.field final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 25
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "invalid_request"

    const-string v2, "invalid_grant"

    const-string v3, "unsupported_grant_type"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/dropbox/core/oauth/b;->a:Ljava/util/Set;

    .line 49
    new-instance v0, Lcom/dropbox/core/oauth/DbxOAuthError$1;

    invoke-direct {v0}, Lcom/dropbox/core/oauth/DbxOAuthError$1;-><init>()V

    sput-object v0, Lcom/dropbox/core/oauth/b;->d:Lcom/dropbox/core/json/JsonReader;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Lcom/dropbox/core/oauth/b;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iput-object p1, p0, Lcom/dropbox/core/oauth/b;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "unknown"

    .line 35
    iput-object p1, p0, Lcom/dropbox/core/oauth/b;->b:Ljava/lang/String;

    .line 38
    :goto_0
    iput-object p2, p0, Lcom/dropbox/core/oauth/b;->c:Ljava/lang/String;

    return-void
.end method
