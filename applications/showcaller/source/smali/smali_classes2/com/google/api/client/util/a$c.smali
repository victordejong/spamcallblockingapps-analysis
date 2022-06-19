.class final Lcom/google/api/client/util/a$c;
.super Ljava/util/AbstractSet;
.source "ArrayMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/util/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/google/api/client/util/a;


# direct methods
.method constructor <init>(Lcom/google/api/client/util/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/client/util/a$c;->d:Lcom/google/api/client/util/a;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/api/client/util/a$b;

    iget-object v1, p0, Lcom/google/api/client/util/a$c;->d:Lcom/google/api/client/util/a;

    invoke-direct {v0, v1}, Lcom/google/api/client/util/a$b;-><init>(Lcom/google/api/client/util/a;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/util/a$c;->d:Lcom/google/api/client/util/a;

    iget v0, v0, Lcom/google/api/client/util/a;->d:I

    return v0
.end method
