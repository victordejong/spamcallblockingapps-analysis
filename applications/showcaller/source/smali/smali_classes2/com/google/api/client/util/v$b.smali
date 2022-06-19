.class public final Lcom/google/api/client/util/v$b;
.super Ljava/lang/Object;
.source "Objects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/util/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/util/v$b$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/google/api/client/util/v$b$a;

.field private c:Lcom/google/api/client/util/v$b$a;

.field private d:Z


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/api/client/util/v$b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/api/client/util/v$b$a;-><init>(Lcom/google/api/client/util/v$a;)V

    iput-object v0, p0, Lcom/google/api/client/util/v$b;->b:Lcom/google/api/client/util/v$b$a;

    .line 3
    iput-object v0, p0, Lcom/google/api/client/util/v$b;->c:Lcom/google/api/client/util/v$b$a;

    .line 4
    iput-object p1, p0, Lcom/google/api/client/util/v$b;->a:Ljava/lang/String;

    return-void
.end method

.method private b()Lcom/google/api/client/util/v$b$a;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/api/client/util/v$b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/api/client/util/v$b$a;-><init>(Lcom/google/api/client/util/v$a;)V

    .line 2
    iget-object v1, p0, Lcom/google/api/client/util/v$b;->c:Lcom/google/api/client/util/v$b$a;

    iput-object v0, v1, Lcom/google/api/client/util/v$b$a;->c:Lcom/google/api/client/util/v$b$a;

    iput-object v0, p0, Lcom/google/api/client/util/v$b;->c:Lcom/google/api/client/util/v$b$a;

    return-object v0
.end method

.method private c(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/v$b;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/api/client/util/v$b;->b()Lcom/google/api/client/util/v$b$a;

    move-result-object v0

    .line 2
    iput-object p2, v0, Lcom/google/api/client/util/v$b$a;->b:Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Lcom/google/api/client/util/w;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lcom/google/api/client/util/v$b$a;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/v$b;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/api/client/util/v$b;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/v$b;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/api/client/util/v$b;->d:Z

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v2, p0, Lcom/google/api/client/util/v$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    iget-object v2, p0, Lcom/google/api/client/util/v$b;->b:Lcom/google/api/client/util/v$b$a;

    iget-object v2, v2, Lcom/google/api/client/util/v$b$a;->c:Lcom/google/api/client/util/v$b$a;

    const-string v3, ""

    :goto_0
    if-eqz v2, :cond_3

    if-eqz v0, :cond_0

    .line 4
    iget-object v4, v2, Lcom/google/api/client/util/v$b$a;->b:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 5
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v3, v2, Lcom/google/api/client/util/v$b$a;->a:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    :cond_1
    iget-object v3, v2, Lcom/google/api/client/util/v$b$a;->b:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    .line 9
    :cond_2
    iget-object v2, v2, Lcom/google/api/client/util/v$b$a;->c:Lcom/google/api/client/util/v$b$a;

    goto :goto_0

    :cond_3
    const/16 v0, 0x7d

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
