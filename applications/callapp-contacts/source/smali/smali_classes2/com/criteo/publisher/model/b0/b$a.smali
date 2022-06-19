.class Lcom/criteo/publisher/model/b0/b$a;
.super Lcom/criteo/publisher/model/b0/n$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/model/b0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/b0/r;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/criteo/publisher/model/b0/m;

.field private c:Lcom/criteo/publisher/model/b0/q;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/b0/p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/criteo/publisher/model/b0/n$a;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/criteo/publisher/model/b0/m;)Lcom/criteo/publisher/model/b0/n$a;
    .locals 1

    const-string v0, "Null advertiser"

    .line 131
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 133
    iput-object p1, p0, Lcom/criteo/publisher/model/b0/b$a;->b:Lcom/criteo/publisher/model/b0/m;

    return-object p0
.end method

.method a(Lcom/criteo/publisher/model/b0/q;)Lcom/criteo/publisher/model/b0/n$a;
    .locals 1

    const-string v0, "Null privacy"

    .line 139
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 141
    iput-object p1, p0, Lcom/criteo/publisher/model/b0/b$a;->c:Lcom/criteo/publisher/model/b0/q;

    return-object p0
.end method

.method a(Ljava/util/List;)Lcom/criteo/publisher/model/b0/n$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/b0/r;",
            ">;)",
            "Lcom/criteo/publisher/model/b0/n$a;"
        }
    .end annotation

    const-string v0, "Null nativeProducts"

    .line 116
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    iput-object p1, p0, Lcom/criteo/publisher/model/b0/b$a;->a:Ljava/util/List;

    return-object p0
.end method

.method a()Lcom/criteo/publisher/model/b0/n;
    .locals 5

    .line 162
    iget-object v0, p0, Lcom/criteo/publisher/model/b0/b$a;->a:Ljava/util/List;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " nativeProducts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/criteo/publisher/model/b0/b$a;->b:Lcom/criteo/publisher/model/b0/m;

    if-nez v0, :cond_1

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " advertiser"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/criteo/publisher/model/b0/b$a;->c:Lcom/criteo/publisher/model/b0/q;

    if-nez v0, :cond_2

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " privacy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/criteo/publisher/model/b0/b$a;->d:Ljava/util/List;

    if-nez v0, :cond_3

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pixels"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 174
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 177
    new-instance v0, Lcom/criteo/publisher/model/b0/h;

    iget-object v1, p0, Lcom/criteo/publisher/model/b0/b$a;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/criteo/publisher/model/b0/b$a;->b:Lcom/criteo/publisher/model/b0/m;

    iget-object v3, p0, Lcom/criteo/publisher/model/b0/b$a;->c:Lcom/criteo/publisher/model/b0/q;

    iget-object v4, p0, Lcom/criteo/publisher/model/b0/b$a;->d:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/criteo/publisher/model/b0/h;-><init>(Ljava/util/List;Lcom/criteo/publisher/model/b0/m;Lcom/criteo/publisher/model/b0/q;Ljava/util/List;)V

    return-object v0

    .line 175
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method b(Ljava/util/List;)Lcom/criteo/publisher/model/b0/n$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/b0/p;",
            ">;)",
            "Lcom/criteo/publisher/model/b0/n$a;"
        }
    .end annotation

    const-string v0, "Null pixels"

    .line 147
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 149
    iput-object p1, p0, Lcom/criteo/publisher/model/b0/b$a;->d:Ljava/util/List;

    return-object p0
.end method

.method c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/b0/r;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/criteo/publisher/model/b0/b$a;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Property \"nativeProducts\" has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method d()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/b0/p;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/criteo/publisher/model/b0/b$a;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    .line 155
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Property \"pixels\" has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
