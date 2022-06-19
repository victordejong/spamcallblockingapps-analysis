.class final Lcom/google/api/client/util/GenericData$b;
.super Ljava/util/AbstractSet;
.source "GenericData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/util/GenericData;
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
.field private final d:Lcom/google/api/client/util/k$c;

.field final synthetic e:Lcom/google/api/client/util/GenericData;


# direct methods
.method constructor <init>(Lcom/google/api/client/util/GenericData;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/api/client/util/GenericData$b;->e:Lcom/google/api/client/util/GenericData;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 2
    new-instance v0, Lcom/google/api/client/util/k;

    iget-object v1, p1, Lcom/google/api/client/util/GenericData;->classInfo:Lcom/google/api/client/util/i;

    invoke-virtual {v1}, Lcom/google/api/client/util/i;->d()Z

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/google/api/client/util/k;-><init>(Ljava/lang/Object;Z)V

    invoke-virtual {v0}, Lcom/google/api/client/util/k;->a()Lcom/google/api/client/util/k$c;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/client/util/GenericData$b;->d:Lcom/google/api/client/util/k$c;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/util/GenericData$b;->e:Lcom/google/api/client/util/GenericData;

    iget-object v0, v0, Lcom/google/api/client/util/GenericData;->unknownFields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2
    iget-object v0, p0, Lcom/google/api/client/util/GenericData$b;->d:Lcom/google/api/client/util/k$c;

    invoke-virtual {v0}, Lcom/google/api/client/util/k$c;->clear()V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
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

    .line 1
    new-instance v0, Lcom/google/api/client/util/GenericData$a;

    iget-object v1, p0, Lcom/google/api/client/util/GenericData$b;->e:Lcom/google/api/client/util/GenericData;

    iget-object v2, p0, Lcom/google/api/client/util/GenericData$b;->d:Lcom/google/api/client/util/k$c;

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/util/GenericData$a;-><init>(Lcom/google/api/client/util/GenericData;Lcom/google/api/client/util/k$c;)V

    return-object v0
.end method

.method public size()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/api/client/util/GenericData$b;->e:Lcom/google/api/client/util/GenericData;

    iget-object v0, v0, Lcom/google/api/client/util/GenericData;->unknownFields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/api/client/util/GenericData$b;->d:Lcom/google/api/client/util/k$c;

    invoke-virtual {v1}, Lcom/google/api/client/util/k$c;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
