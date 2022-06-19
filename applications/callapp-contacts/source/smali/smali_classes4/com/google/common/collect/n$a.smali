.class final Lcom/google/common/collect/n$a;
.super Lcom/google/common/collect/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 129
    invoke-direct {p0, v0}, Lcom/google/common/collect/n;-><init>(Lcom/google/common/collect/n$1;)V

    .line 130
    iput p1, p0, Lcom/google/common/collect/n$a;->a:I

    return-void
.end method


# virtual methods
.method public final a(II)Lcom/google/common/collect/n;
    .locals 0

    return-object p0
.end method

.method public final a(JJ)Lcom/google/common/collect/n;
    .locals 0

    return-object p0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/n;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Lcom/google/common/collect/n;"
        }
    .end annotation

    return-object p0
.end method

.method public final a(ZZ)Lcom/google/common/collect/n;
    .locals 0

    return-object p0
.end method

.method public final b()I
    .locals 1

    .line 176
    iget v0, p0, Lcom/google/common/collect/n$a;->a:I

    return v0
.end method

.method public final b(ZZ)Lcom/google/common/collect/n;
    .locals 0

    return-object p0
.end method
