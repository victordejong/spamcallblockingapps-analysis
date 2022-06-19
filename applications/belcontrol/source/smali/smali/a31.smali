.class public La31;
.super Lfv0;
.source ""


# instance fields
.field public g:Lve;
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

    new-instance p1, La31$a;

    invoke-direct {p1, p0}, La31$a;-><init>(La31;)V

    iput-object p1, p0, La31;->g:Lve;

    return-void
.end method

.method public static synthetic m(La31;)V
    .locals 0

    invoke-virtual {p0}, La31;->n()V

    return-void
.end method


# virtual methods
.method public final n()V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lz21;->values()[Lz21;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v5, v6, :cond_0

    sget-object v5, Lz21;->d:Lz21;

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    new-instance v5, Lkq0;

    invoke-direct {v5, v4}, Lkq0;-><init>(Lk01;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, La31;->g:Lve;

    invoke-virtual {v1, v0}, Lve;->j(Ljava/lang/Object;)V

    return-void
.end method
