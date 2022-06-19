.class public final Landroidx/work/OverwritingInputMerger;
.super Lw40;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lw40;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/util/List;)Lu40;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lu40;",
            ">;)",
            "Lu40;"
        }
    .end annotation

    new-instance v0, Lu40$a;

    invoke-direct {v0}, Lu40$a;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu40;

    invoke-virtual {v2}, Lu40;->h()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lu40$a;->d(Ljava/util/Map;)Lu40$a;

    invoke-virtual {v0}, Lu40$a;->a()Lu40;

    move-result-object p1

    return-object p1
.end method
