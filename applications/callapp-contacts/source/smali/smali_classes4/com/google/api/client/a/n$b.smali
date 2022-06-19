.class final Lcom/google/api/client/a/n$b;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/api/client/a/n;

.field private final b:Lcom/google/api/client/a/k$c;


# direct methods
.method constructor <init>(Lcom/google/api/client/a/n;)V
    .locals 2

    .line 227
    iput-object p1, p0, Lcom/google/api/client/a/n$b;->a:Lcom/google/api/client/a/n;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 228
    new-instance v0, Lcom/google/api/client/a/k;

    iget-object v1, p1, Lcom/google/api/client/a/n;->classInfo:Lcom/google/api/client/a/h;

    .line 1112
    iget-boolean v1, v1, Lcom/google/api/client/a/h;->a:Z

    .line 228
    invoke-direct {v0, p1, v1}, Lcom/google/api/client/a/k;-><init>(Ljava/lang/Object;Z)V

    invoke-virtual {v0}, Lcom/google/api/client/a/k;->a()Lcom/google/api/client/a/k$c;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/client/a/n$b;->b:Lcom/google/api/client/a/k$c;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/google/api/client/a/n$b;->a:Lcom/google/api/client/a/n;

    iget-object v0, v0, Lcom/google/api/client/a/n;->unknownFields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 244
    iget-object v0, p0, Lcom/google/api/client/a/n$b;->b:Lcom/google/api/client/a/k$c;

    invoke-virtual {v0}, Lcom/google/api/client/a/k$c;->clear()V

    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 233
    new-instance v0, Lcom/google/api/client/a/n$a;

    iget-object v1, p0, Lcom/google/api/client/a/n$b;->a:Lcom/google/api/client/a/n;

    iget-object v2, p0, Lcom/google/api/client/a/n$b;->b:Lcom/google/api/client/a/k$c;

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/a/n$a;-><init>(Lcom/google/api/client/a/n;Lcom/google/api/client/a/k$c;)V

    return-object v0
.end method

.method public final size()I
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/google/api/client/a/n$b;->a:Lcom/google/api/client/a/n;

    iget-object v0, v0, Lcom/google/api/client/a/n;->unknownFields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/api/client/a/n$b;->b:Lcom/google/api/client/a/k$c;

    invoke-virtual {v1}, Lcom/google/api/client/a/k$c;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
