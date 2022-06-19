.class final Lcom/google/common/collect/ae$i;
.super Lcom/google/common/collect/ae$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ae<",
        "TK;TV;TE;TS;>.f<TK;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/collect/ae;)V
    .locals 0

    .line 2612
    invoke-direct {p0, p1}, Lcom/google/common/collect/ae$f;-><init>(Lcom/google/common/collect/ae;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 2616
    invoke-virtual {p0}, Lcom/google/common/collect/ae$i;->a()Lcom/google/common/collect/ae$ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ae$ab;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
