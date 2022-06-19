.class final Lcom/google/api/client/a/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/api/client/a/k;

.field private b:Ljava/lang/Object;

.field private final c:Lcom/google/api/client/a/m;


# direct methods
.method constructor <init>(Lcom/google/api/client/a/k;Lcom/google/api/client/a/m;Ljava/lang/Object;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/google/api/client/a/k$a;->a:Lcom/google/api/client/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-object p2, p0, Lcom/google/api/client/a/k$a;->c:Lcom/google/api/client/a/m;

    .line 1125
    invoke-static {p3}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 197
    iput-object p1, p0, Lcom/google/api/client/a/k$a;->b:Ljava/lang/Object;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/google/api/client/a/k$a;->c:Lcom/google/api/client/a/m;

    .line 1167
    iget-object v0, v0, Lcom/google/api/client/a/m;->c:Ljava/lang/String;

    .line 202
    iget-object v1, p0, Lcom/google/api/client/a/k$a;->a:Lcom/google/api/client/a/k;

    iget-object v1, v1, Lcom/google/api/client/a/k;->b:Lcom/google/api/client/a/h;

    .line 2112
    iget-boolean v1, v1, Lcom/google/api/client/a/h;->a:Z

    if-eqz v1, :cond_0

    .line 203
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 229
    :cond_0
    instance-of v1, p1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 232
    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    .line 233
    invoke-direct {p0}, Lcom/google/api/client/a/k$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/api/client/a/k$a;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final synthetic getKey()Ljava/lang/Object;
    .locals 1

    .line 184
    invoke-direct {p0}, Lcom/google/api/client/a/k$a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/google/api/client/a/k$a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 221
    invoke-direct {p0}, Lcom/google/api/client/a/k$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/api/client/a/k$a;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 213
    iget-object v0, p0, Lcom/google/api/client/a/k$a;->b:Ljava/lang/Object;

    .line 2125
    invoke-static {p1}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 214
    iput-object v1, p0, Lcom/google/api/client/a/k$a;->b:Ljava/lang/Object;

    .line 215
    iget-object v1, p0, Lcom/google/api/client/a/k$a;->c:Lcom/google/api/client/a/m;

    iget-object v2, p0, Lcom/google/api/client/a/k$a;->a:Lcom/google/api/client/a/k;

    iget-object v2, v2, Lcom/google/api/client/a/k;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/google/api/client/a/m;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
