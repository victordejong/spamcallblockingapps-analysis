.class public Lp01;
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

    new-instance p1, Lp01$a;

    invoke-direct {p1, p0}, Lp01$a;-><init>(Lp01;)V

    iput-object p1, p0, Lp01;->g:Lve;

    return-void
.end method

.method public static synthetic m(Lp01;)V
    .locals 0

    invoke-virtual {p0}, Lp01;->n()V

    return-void
.end method


# virtual methods
.method public final n()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lo01;->values()[Lo01;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    new-instance v5, Lkq0;

    invoke-direct {v5, v4}, Lkq0;-><init>(Lk01;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lp01;->g:Lve;

    invoke-virtual {v1, v0}, Lve;->j(Ljava/lang/Object;)V

    return-void
.end method
