.class public final Landroidx/work/OverwritingInputMerger;
.super Landroidx/work/j;
.source "OverwritingInputMerger.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroidx/work/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Landroidx/work/e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidx/work/e;",
            ">;)",
            "Landroidx/work/e;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v1, Landroidx/work/e$a;

    invoke-direct {v1}, Landroidx/work/e$a;-><init>()V

    .line 37
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 39
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/e;

    .line 40
    invoke-virtual {v0}, Landroidx/work/e;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {v1, v2}, Landroidx/work/e$a;->a(Ljava/util/Map;)Landroidx/work/e$a;

    .line 44
    invoke-virtual {v1}, Landroidx/work/e$a;->a()Landroidx/work/e;

    move-result-object v0

    return-object v0
.end method
