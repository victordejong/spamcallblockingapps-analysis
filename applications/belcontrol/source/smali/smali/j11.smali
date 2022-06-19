.class public Lj11;
.super Lfv0;
.source ""


# instance fields
.field public final g:Lve;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lve<",
            "Ljava/util/List<",
            "Lkq0;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    invoke-direct {p0, p1}, Lfv0;-><init>(Landroid/app/Application;)V

    new-instance p1, Lj11$a;

    invoke-direct {p1, p0}, Lj11$a;-><init>(Lj11;)V

    iput-object p1, p0, Lj11;->g:Lve;

    return-void
.end method

.method public static synthetic m(Lj11;)V
    .locals 0

    invoke-virtual {p0}, Lj11;->n()V

    return-void
.end method


# virtual methods
.method public final n()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Li11;->e()V

    invoke-static {}, Li11;->values()[Li11;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    sget-object v5, Li11;->g:Li11;

    if-ne v4, v5, :cond_0

    sget-object v5, Lr71$a;->K0:Lr71$a;

    invoke-virtual {v5}, Lr71$a;->a()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lr71$a;->J0:Lr71$a;

    invoke-virtual {v5}, Lr71$a;->a()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    sget-object v5, Li11;->h:Li11;

    if-ne v4, v5, :cond_1

    invoke-static {}, Lfa1;->c()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    new-instance v5, Lkq0;

    invoke-direct {v5, v4}, Lkq0;-><init>(Lk01;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lj11;->g:Lve;

    invoke-virtual {v1, v0}, Lve;->j(Ljava/lang/Object;)V

    return-void
.end method
