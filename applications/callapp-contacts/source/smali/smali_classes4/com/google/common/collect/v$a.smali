.class public final Lcom/google/common/collect/v$a;
.super Lcom/google/common/collect/t$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/t$a<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 723
    invoke-direct {p0, v0}, Lcom/google/common/collect/v$a;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 727
    invoke-direct {p0, p1}, Lcom/google/common/collect/t$a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Lcom/google/common/collect/t$a;
    .locals 0

    .line 1740
    invoke-super {p0, p1}, Lcom/google/common/collect/t$a;->a(Ljava/lang/Object;)Lcom/google/common/collect/t$a;

    return-object p0
.end method

.method public final a()Lcom/google/common/collect/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/v<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 797
    iput-boolean v0, p0, Lcom/google/common/collect/v$a;->c:Z

    .line 798
    iget-object v0, p0, Lcom/google/common/collect/v$a;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/v$a;->b:I

    invoke-static {v0, v1}, Lcom/google/common/collect/v;->b([Ljava/lang/Object;I)Lcom/google/common/collect/v;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Lcom/google/common/collect/v$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/v$a<",
            "TE;>;"
        }
    .end annotation

    .line 740
    invoke-super {p0, p1}, Lcom/google/common/collect/t$a;->a(Ljava/lang/Object;)Lcom/google/common/collect/t$a;

    return-object p0
.end method
