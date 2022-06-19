.class public Lcom/google/api/client/auth/openidconnect/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/auth/openidconnect/a$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/api/client/a/i;

.field private final b:J

.field private final c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Collection;
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
    .locals 1

    .line 74
    new-instance v0, Lcom/google/api/client/auth/openidconnect/a$a;

    invoke-direct {v0}, Lcom/google/api/client/auth/openidconnect/a$a;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/api/client/auth/openidconnect/a;-><init>(Lcom/google/api/client/auth/openidconnect/a$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/auth/openidconnect/a$a;)V
    .locals 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iget-object v0, p1, Lcom/google/api/client/auth/openidconnect/a$a;->a:Lcom/google/api/client/a/i;

    iput-object v0, p0, Lcom/google/api/client/auth/openidconnect/a;->a:Lcom/google/api/client/a/i;

    .line 80
    iget-wide v0, p1, Lcom/google/api/client/auth/openidconnect/a$a;->b:J

    iput-wide v0, p0, Lcom/google/api/client/auth/openidconnect/a;->b:J

    .line 81
    iget-object v0, p1, Lcom/google/api/client/auth/openidconnect/a$a;->c:Ljava/util/Collection;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/google/api/client/auth/openidconnect/a$a;->c:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/api/client/auth/openidconnect/a;->c:Ljava/util/Collection;

    .line 82
    iget-object v0, p1, Lcom/google/api/client/auth/openidconnect/a$a;->d:Ljava/util/Collection;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lcom/google/api/client/auth/openidconnect/a$a;->d:Ljava/util/Collection;

    .line 83
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/google/api/client/auth/openidconnect/a;->d:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/api/client/auth/openidconnect/IdToken;)Z
    .locals 4

    .line 145
    iget-object v0, p0, Lcom/google/api/client/auth/openidconnect/a;->c:Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/google/api/client/auth/openidconnect/IdToken;->verifyIssuer(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/api/client/auth/openidconnect/a;->d:Ljava/util/Collection;

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {p1, v0}, Lcom/google/api/client/auth/openidconnect/IdToken;->verifyAudience(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/api/client/auth/openidconnect/a;->a:Lcom/google/api/client/a/i;

    .line 147
    invoke-interface {v0}, Lcom/google/api/client/a/i;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/api/client/auth/openidconnect/a;->b:J

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/api/client/auth/openidconnect/IdToken;->verifyTime(JJ)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
