.class public abstract Landroidx/work/k;
.super Ljava/lang/Object;
.source ""


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Landroid/content/Context;)Landroidx/work/k;
    .locals 0

    invoke-static {p0}, Landroidx/work/impl/h;->j(Landroid/content/Context;)Landroidx/work/impl/h;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;Landroidx/work/a;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/work/impl/h;->e(Landroid/content/Context;Landroidx/work/a;)V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Landroidx/work/h;
.end method

.method public final b(Landroidx/work/l;)Landroidx/work/h;
    .locals 0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/work/k;->c(Ljava/util/List;)Landroidx/work/h;

    move-result-object p1

    return-object p1
.end method

.method public abstract c(Ljava/util/List;)Landroidx/work/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/work/l;",
            ">;)",
            "Landroidx/work/h;"
        }
    .end annotation
.end method
