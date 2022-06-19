.class public Ldz$e$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lzy$b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldz$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ldz$e;


# direct methods
.method public constructor <init>(Ldz$e;)V
    .locals 0

    iput-object p1, p0, Ldz$e$a;->a:Ldz$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lzy$b;Lxy;Ljava/util/Collection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzy$b;",
            "Lxy;",
            "Ljava/util/Collection<",
            "Lzy$b$c;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Ldz$e$a;->a:Ldz$e;

    iget-object v1, v0, Ldz$e;->u:Lzy$e;

    if-ne p1, v1, :cond_1

    if-eqz p2, :cond_1

    iget-object p1, v0, Ldz$e;->t:Ldz$i;

    invoke-virtual {p1}, Ldz$i;->p()Ldz$h;

    move-result-object p1

    invoke-virtual {p2}, Lxy;->m()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ldz$e$a;->a:Ldz$e;

    invoke-virtual {v1, p1, v0}, Ldz$e;->g(Ldz$h;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ldz$i;

    invoke-direct {v4, p1, v0, v1}, Ldz$i;-><init>(Ldz$h;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ldz$i;->E(Lxy;)I

    iget-object v3, p0, Ldz$e$a;->a:Ldz$e;

    iget-object p1, v3, Ldz$e;->r:Ldz$i;

    if-ne p1, v4, :cond_0

    return-void

    :cond_0
    iget-object v5, v3, Ldz$e;->u:Lzy$e;

    const/4 v6, 0x3

    iget-object v7, v3, Ldz$e;->t:Ldz$i;

    move-object v2, v3

    move-object v8, p3

    invoke-virtual/range {v2 .. v8}, Ldz$e;->B(Ldz$e;Ldz$i;Lzy$e;ILdz$i;Ljava/util/Collection;)V

    iget-object p1, p0, Ldz$e$a;->a:Ldz$e;

    const/4 p2, 0x0

    iput-object p2, p1, Ldz$e;->t:Ldz$i;

    iput-object p2, p1, Ldz$e;->u:Lzy$e;

    goto :goto_0

    :cond_1
    iget-object v1, v0, Ldz$e;->s:Lzy$e;

    if-ne p1, v1, :cond_3

    if-eqz p2, :cond_2

    iget-object p1, v0, Ldz$e;->r:Ldz$i;

    invoke-virtual {v0, p1, p2}, Ldz$e;->O(Ldz$i;Lxy;)I

    :cond_2
    iget-object p1, p0, Ldz$e$a;->a:Ldz$e;

    iget-object p1, p1, Ldz$e;->r:Ldz$i;

    invoke-virtual {p1, p3}, Ldz$i;->K(Ljava/util/Collection;)V

    :cond_3
    :goto_0
    return-void
.end method
