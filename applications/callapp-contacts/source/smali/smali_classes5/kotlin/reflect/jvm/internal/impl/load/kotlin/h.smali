.class public final Lkotlin/reflect/jvm/internal/impl/load/kotlin/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/load/kotlin/k<",
            "TT;>;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# virtual methods
.method public final a()V
    .locals 1

    .line 76
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/h;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 77
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/h;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/h;->b:I

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "objectType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/h;->b(Ljava/lang/Object;)V

    return-void
.end method

.method b(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/h;->c:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 91
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/h;->b:I

    if-lez v0, :cond_0

    .line 92
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/h;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;

    const-string v2, "["

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2, v0}, Lkotlin/h/p;->a(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/h;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;

    invoke-interface {v2, p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 90
    :cond_0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/h;->c:Ljava/lang/Object;

    :cond_1
    return-void
.end method
