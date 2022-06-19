.class public final Lcom/google/api/client/a/y$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/a/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/a/y$a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/google/api/client/a/y$a$a;

.field private c:Lcom/google/api/client/a/y$a$a;

.field private d:Z


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lcom/google/api/client/a/y$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/api/client/a/y$a$a;-><init>(Lcom/google/api/client/a/y$1;)V

    iput-object v0, p0, Lcom/google/api/client/a/y$a;->b:Lcom/google/api/client/a/y$a$a;

    .line 88
    iput-object v0, p0, Lcom/google/api/client/a/y$a;->c:Lcom/google/api/client/a/y$a$a;

    .line 93
    iput-object p1, p0, Lcom/google/api/client/a/y$a;->a:Ljava/lang/String;

    return-void
.end method

.method private a()Lcom/google/api/client/a/y$a$a;
    .locals 2

    .line 138
    new-instance v0, Lcom/google/api/client/a/y$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/api/client/a/y$a$a;-><init>(Lcom/google/api/client/a/y$1;)V

    .line 139
    iget-object v1, p0, Lcom/google/api/client/a/y$a;->c:Lcom/google/api/client/a/y$a$a;

    iput-object v0, v1, Lcom/google/api/client/a/y$a$a;->c:Lcom/google/api/client/a/y$a$a;

    iput-object v0, p0, Lcom/google/api/client/a/y$a;->c:Lcom/google/api/client/a/y$a$a;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/y$a;
    .locals 0

    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/a/y$a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/y$a;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/y$a;
    .locals 1

    .line 144
    invoke-direct {p0}, Lcom/google/api/client/a/y$a;->a()Lcom/google/api/client/a/y$a$a;

    move-result-object v0

    .line 145
    iput-object p2, v0, Lcom/google/api/client/a/y$a$a;->b:Ljava/lang/Object;

    .line 1125
    invoke-static {p1}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 146
    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lcom/google/api/client/a/y$a$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 118
    iget-boolean v0, p0, Lcom/google/api/client/a/y$a;->d:Z

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v2, p0, Lcom/google/api/client/a/y$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    iget-object v2, p0, Lcom/google/api/client/a/y$a;->b:Lcom/google/api/client/a/y$a$a;

    iget-object v2, v2, Lcom/google/api/client/a/y$a$a;->c:Lcom/google/api/client/a/y$a$a;

    const-string v3, ""

    :goto_0
    if-eqz v2, :cond_3

    if-eqz v0, :cond_0

    .line 124
    iget-object v4, v2, Lcom/google/api/client/a/y$a$a;->b:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 125
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget-object v3, v2, Lcom/google/api/client/a/y$a$a;->a:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 129
    iget-object v3, v2, Lcom/google/api/client/a/y$a$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    :cond_1
    iget-object v3, v2, Lcom/google/api/client/a/y$a$a;->b:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    .line 123
    :cond_2
    iget-object v2, v2, Lcom/google/api/client/a/y$a$a;->c:Lcom/google/api/client/a/y$a$a;

    goto :goto_0

    :cond_3
    const/16 v0, 0x7d

    .line 134
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
