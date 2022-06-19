.class final Lcom/google/common/collect/ab$1;
.super Lcom/google/common/collect/ay;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ay<",
        "TT;>;"
    }
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1056
    iput-object p1, p0, Lcom/google/common/collect/ab$1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/ay;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 1061
    iget-boolean v0, p0, Lcom/google/common/collect/ab$1;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1066
    iget-boolean v0, p0, Lcom/google/common/collect/ab$1;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1069
    iput-boolean v0, p0, Lcom/google/common/collect/ab$1;->a:Z

    .line 1070
    iget-object v0, p0, Lcom/google/common/collect/ab$1;->b:Ljava/lang/Object;

    return-object v0

    .line 1067
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
