.class final Lcom/google/api/client/a/k;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/a/k$a;,
        Lcom/google/api/client/a/k$b;,
        Lcom/google/api/client/a/k$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;

.field final b:Lcom/google/api/client/a/h;


# direct methods
.method constructor <init>(Ljava/lang/Object;Z)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/api/client/a/k;->a:Ljava/lang/Object;

    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/api/client/a/h;->a(Ljava/lang/Class;Z)Lcom/google/api/client/a/h;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/client/a/k;->b:Lcom/google/api/client/a/h;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/api/client/a/k$c;
    .locals 1

    .line 48
    new-instance v0, Lcom/google/api/client/a/k$c;

    invoke-direct {v0, p0}, Lcom/google/api/client/a/k$c;-><init>(Lcom/google/api/client/a/k;)V

    return-object v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/google/api/client/a/k;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic entrySet()Ljava/util/Set;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/google/api/client/a/k;->a()Lcom/google/api/client/a/k$c;

    move-result-object v0

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 58
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/google/api/client/a/k;->b:Lcom/google/api/client/a/h;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/api/client/a/h;->a(Ljava/lang/String;)Lcom/google/api/client/a/m;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/google/api/client/a/k;->a:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/google/api/client/a/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 30
    check-cast p1, Ljava/lang/String;

    .line 1070
    iget-object v0, p0, Lcom/google/api/client/a/k;->b:Lcom/google/api/client/a/h;

    invoke-virtual {v0, p1}, Lcom/google/api/client/a/h;->a(Ljava/lang/String;)Lcom/google/api/client/a/m;

    move-result-object v0

    .line 1071
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "no field of key "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1138
    invoke-static {v0, p1}, Lcom/google/common/base/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    iget-object p1, p0, Lcom/google/api/client/a/k;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/google/api/client/a/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1073
    iget-object v1, p0, Lcom/google/api/client/a/k;->a:Ljava/lang/Object;

    .line 2125
    invoke-static {p2}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 1073
    invoke-virtual {v0, v1, p2}, Lcom/google/api/client/a/m;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method
