.class public Lcom/google/api/client/auth/openidconnect/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/auth/openidconnect/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lcom/google/api/client/a/i;

.field b:J

.field c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    sget-object v0, Lcom/google/api/client/a/i;->a:Lcom/google/api/client/a/i;

    iput-object v0, p0, Lcom/google/api/client/auth/openidconnect/a$a;->a:Lcom/google/api/client/a/i;

    const-wide/16 v0, 0x12c

    .line 165
    iput-wide v0, p0, Lcom/google/api/client/auth/openidconnect/a$a;->b:J

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Collection;)Lcom/google/api/client/auth/openidconnect/a$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/client/auth/openidconnect/a$a;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 240
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "Issuers must not be empty"

    .line 1047
    invoke-static {v0, v1}, Lcom/google/common/base/m;->a(ZLjava/lang/Object;)V

    .line 241
    iput-object p1, p0, Lcom/google/api/client/auth/openidconnect/a$a;->c:Ljava/util/Collection;

    return-object p0
.end method
