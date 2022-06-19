.class public final Lcom/google/common/collect/w$a;
.super Lcom/google/common/collect/y$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/y$a<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 138
    invoke-direct {p0}, Lcom/google/common/collect/y$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs a(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/w$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[TV;)",
            "Lcom/google/common/collect/w$a<",
            "TK;TV;>;"
        }
    .end annotation

    .line 182
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/y$a;->b(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/y$a;

    return-object p0
.end method

.method public final a()Lcom/google/common/collect/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/w<",
            "TK;TV;>;"
        }
    .end annotation

    .line 227
    invoke-super {p0}, Lcom/google/common/collect/y$a;->b()Lcom/google/common/collect/y;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/w;

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/y$a;
    .locals 0

    .line 2175
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/y$a;->a(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/y$a;

    return-object p0
.end method

.method public final synthetic b(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/y$a;
    .locals 0

    .line 133
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/w$a;->a(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/w$a;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic b()Lcom/google/common/collect/y;
    .locals 1

    .line 1227
    invoke-super {p0}, Lcom/google/common/collect/y$a;->b()Lcom/google/common/collect/y;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/w;

    return-object v0
.end method
