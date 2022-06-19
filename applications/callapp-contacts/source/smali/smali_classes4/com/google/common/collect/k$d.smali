.class final Lcom/google/common/collect/k$d;
.super Lcom/google/common/collect/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/e<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/k;

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/k;I)V
    .locals 0

    .line 744
    iput-object p1, p0, Lcom/google/common/collect/k$d;->a:Lcom/google/common/collect/k;

    invoke-direct {p0}, Lcom/google/common/collect/e;-><init>()V

    .line 745
    iget-object p1, p1, Lcom/google/common/collect/k;->b:[Ljava/lang/Object;

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/google/common/collect/k$d;->b:Ljava/lang/Object;

    .line 746
    iput p2, p0, Lcom/google/common/collect/k$d;->c:I

    return-void
.end method

.method private a()V
    .locals 3

    .line 756
    iget v0, p0, Lcom/google/common/collect/k$d;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/k$d;->a:Lcom/google/common/collect/k;

    .line 757
    invoke-virtual {v1}, Lcom/google/common/collect/k;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/k$d;->b:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/k$d;->a:Lcom/google/common/collect/k;

    iget-object v1, v1, Lcom/google/common/collect/k;->b:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/k$d;->c:I

    aget-object v1, v1, v2

    .line 758
    invoke-static {v0, v1}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 759
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/k$d;->a:Lcom/google/common/collect/k;

    iget-object v1, p0, Lcom/google/common/collect/k$d;->b:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/common/collect/k;->b(Lcom/google/common/collect/k;Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/k$d;->c:I

    :cond_1
    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 752
    iget-object v0, p0, Lcom/google/common/collect/k$d;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 767
    iget-object v0, p0, Lcom/google/common/collect/k$d;->a:Lcom/google/common/collect/k;

    invoke-virtual {v0}, Lcom/google/common/collect/k;->c()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 769
    iget-object v1, p0, Lcom/google/common/collect/k$d;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 771
    :cond_0
    invoke-direct {p0}, Lcom/google/common/collect/k$d;->a()V

    .line 772
    iget v0, p0, Lcom/google/common/collect/k$d;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/k$d;->a:Lcom/google/common/collect/k;

    iget-object v0, v0, Lcom/google/common/collect/k;->c:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/k$d;->c:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 778
    iget-object v0, p0, Lcom/google/common/collect/k$d;->a:Lcom/google/common/collect/k;

    invoke-virtual {v0}, Lcom/google/common/collect/k;->c()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 780
    iget-object v1, p0, Lcom/google/common/collect/k$d;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 782
    :cond_0
    invoke-direct {p0}, Lcom/google/common/collect/k$d;->a()V

    .line 783
    iget v0, p0, Lcom/google/common/collect/k$d;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 784
    iget-object v0, p0, Lcom/google/common/collect/k$d;->a:Lcom/google/common/collect/k;

    iget-object v1, p0, Lcom/google/common/collect/k$d;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1

    .line 787
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/k$d;->a:Lcom/google/common/collect/k;

    iget-object v0, v0, Lcom/google/common/collect/k;->c:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/k$d;->c:I

    aget-object v0, v0, v1

    .line 788
    iget-object v1, p0, Lcom/google/common/collect/k$d;->a:Lcom/google/common/collect/k;

    iget-object v1, v1, Lcom/google/common/collect/k;->c:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/k$d;->c:I

    aput-object p1, v1, v2

    return-object v0
.end method
