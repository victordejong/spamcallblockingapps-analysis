.class public Lb4$a;
.super Lg4;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb4;->n()Lg4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg4<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lb4;


# direct methods
.method public constructor <init>(Lb4;)V
    .locals 0

    iput-object p1, p0, Lb4$a;->d:Lb4;

    invoke-direct {p0}, Lg4;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lb4$a;->d:Lb4;

    invoke-virtual {v0}, Lh4;->clear()V

    return-void
.end method

.method public b(II)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lb4$a;->d:Lb4;

    iget-object v0, v0, Lh4;->b:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr p1, p2

    aget-object p1, v0, p1

    return-object p1
.end method

.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lb4$a;->d:Lb4;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lb4$a;->d:Lb4;

    iget v0, v0, Lh4;->c:I

    return v0
.end method

.method public e(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lb4$a;->d:Lb4;

    invoke-virtual {v0, p1}, Lh4;->f(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public f(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lb4$a;->d:Lb4;

    invoke-virtual {v0, p1}, Lh4;->h(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public g(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lb4$a;->d:Lb4;

    invoke-virtual {v0, p1, p2}, Lh4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public h(I)V
    .locals 1

    iget-object v0, p0, Lb4$a;->d:Lb4;

    invoke-virtual {v0, p1}, Lh4;->k(I)Ljava/lang/Object;

    return-void
.end method

.method public i(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lb4$a;->d:Lb4;

    invoke-virtual {v0, p1, p2}, Lh4;->l(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
