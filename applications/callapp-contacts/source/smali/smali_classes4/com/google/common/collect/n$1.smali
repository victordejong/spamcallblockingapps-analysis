.class final Lcom/google/common/collect/n$1;
.super Lcom/google/common/collect/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, v0}, Lcom/google/common/collect/n;-><init>(Lcom/google/common/collect/n$1;)V

    return-void
.end method

.method private static a(I)Lcom/google/common/collect/n;
    .locals 0

    if-gez p0, :cond_0

    .line 113
    invoke-static {}, Lcom/google/common/collect/n;->c()Lcom/google/common/collect/n;

    move-result-object p0

    return-object p0

    :cond_0
    if-lez p0, :cond_1

    invoke-static {}, Lcom/google/common/collect/n;->d()Lcom/google/common/collect/n;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lcom/google/common/collect/n;->e()Lcom/google/common/collect/n;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(II)Lcom/google/common/collect/n;
    .locals 0

    if-ge p1, p2, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    if-le p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 84
    :goto_0
    invoke-static {p1}, Lcom/google/common/collect/n$1;->a(I)Lcom/google/common/collect/n;

    move-result-object p1

    return-object p1
.end method

.method public final a(JJ)Lcom/google/common/collect/n;
    .locals 1

    cmp-long v0, p1, p3

    if-gez v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 89
    :goto_0
    invoke-static {p1}, Lcom/google/common/collect/n$1;->a(I)Lcom/google/common/collect/n;

    move-result-object p1

    return-object p1
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

    .line 79
    invoke-interface {p3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Lcom/google/common/collect/n$1;->a(I)Lcom/google/common/collect/n;

    move-result-object p1

    return-object p1
.end method

.method public final a(ZZ)Lcom/google/common/collect/n;
    .locals 0

    .line 104
    invoke-static {p2, p1}, Lcom/google/common/b/a;->a(ZZ)I

    move-result p1

    invoke-static {p1}, Lcom/google/common/collect/n$1;->a(I)Lcom/google/common/collect/n;

    move-result-object p1

    return-object p1
.end method

.method public final b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b(ZZ)Lcom/google/common/collect/n;
    .locals 0

    .line 109
    invoke-static {p1, p2}, Lcom/google/common/b/a;->a(ZZ)I

    move-result p1

    invoke-static {p1}, Lcom/google/common/collect/n$1;->a(I)Lcom/google/common/collect/n;

    move-result-object p1

    return-object p1
.end method
