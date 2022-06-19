.class final Lcom/google/common/collect/k$2;
.super Lcom/google/common/collect/k$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/k;->f()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/k<",
        "TK;TV;>.b<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/k;


# direct methods
.method constructor <init>(Lcom/google/common/collect/k;)V
    .locals 1

    .line 730
    iput-object p1, p0, Lcom/google/common/collect/k$2;->a:Lcom/google/common/collect/k;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/k$b;-><init>(Lcom/google/common/collect/k;Lcom/google/common/collect/k$1;)V

    return-void
.end method


# virtual methods
.method final synthetic a(I)Ljava/lang/Object;
    .locals 2

    .line 1733
    new-instance v0, Lcom/google/common/collect/k$d;

    iget-object v1, p0, Lcom/google/common/collect/k$2;->a:Lcom/google/common/collect/k;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/k$d;-><init>(Lcom/google/common/collect/k;I)V

    return-object v0
.end method
