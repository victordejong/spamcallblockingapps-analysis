.class final Lcom/google/common/collect/k$1;
.super Lcom/google/common/collect/k$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/k<",
        "TK;TV;>.b<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/k;


# direct methods
.method constructor <init>(Lcom/google/common/collect/k;)V
    .locals 1

    .line 646
    iput-object p1, p0, Lcom/google/common/collect/k$1;->a:Lcom/google/common/collect/k;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/k$b;-><init>(Lcom/google/common/collect/k;Lcom/google/common/collect/k$1;)V

    return-void
.end method


# virtual methods
.method final a(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 650
    iget-object v0, p0, Lcom/google/common/collect/k$1;->a:Lcom/google/common/collect/k;

    iget-object v0, v0, Lcom/google/common/collect/k;->b:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
