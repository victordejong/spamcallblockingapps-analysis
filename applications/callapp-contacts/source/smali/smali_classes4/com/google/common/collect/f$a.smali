.class Lcom/google/common/collect/f$a;
.super Lcom/google/common/collect/aj$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/aj$b<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/f;


# direct methods
.method constructor <init>(Lcom/google/common/collect/f;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/google/common/collect/f$a;->a:Lcom/google/common/collect/f;

    invoke-direct {p0}, Lcom/google/common/collect/aj$b;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Lcom/google/common/collect/ah;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ah<",
            "TK;TV;>;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/google/common/collect/f$a;->a:Lcom/google/common/collect/f;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/google/common/collect/f$a;->a:Lcom/google/common/collect/f;

    invoke-virtual {v0}, Lcom/google/common/collect/f;->n()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
