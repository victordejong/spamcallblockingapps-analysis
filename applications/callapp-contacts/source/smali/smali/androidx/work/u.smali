.class public abstract Landroidx/work/u;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroidx/work/u;
    .locals 0

    .line 184
    invoke-static {p0}, Landroidx/work/impl/j;->b(Landroid/content/Context;)Landroidx/work/impl/j;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroidx/work/Configuration;)V
    .locals 0

    .line 210
    invoke-static {p0, p1}, Landroidx/work/impl/j;->b(Landroid/content/Context;Landroidx/work/Configuration;)V

    return-void
.end method


# virtual methods
.method public abstract a()Landroidx/work/n;
.end method

.method public final a(Landroidx/work/v;)Landroidx/work/n;
    .locals 0

    .line 221
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/work/u;->a(Ljava/util/List;)Landroidx/work/n;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(Ljava/lang/String;)Landroidx/work/n;
.end method

.method public abstract a(Ljava/util/List;)Landroidx/work/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/work/v;",
            ">;)",
            "Landroidx/work/n;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/util/UUID;)Landroidx/work/n;
.end method

.method public abstract b(Ljava/lang/String;)Lcom/google/common/util/concurrent/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/util/concurrent/a<",
            "Ljava/util/List<",
            "Landroidx/work/t;",
            ">;>;"
        }
    .end annotation
.end method
