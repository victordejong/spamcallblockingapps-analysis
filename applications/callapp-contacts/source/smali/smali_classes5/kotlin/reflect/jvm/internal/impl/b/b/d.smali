.class public final Lkotlin/reflect/jvm/internal/impl/b/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/b/b/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/b/b/d$a;
    }
.end annotation


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/b/a$o;

.field private final b:Lkotlin/reflect/jvm/internal/impl/b/a$n;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/b/a$o;Lkotlin/reflect/jvm/internal/impl/b/a$n;)V
    .locals 1

    const-string v0, "strings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "qualifiedNames"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/b/d;->a:Lkotlin/reflect/jvm/internal/impl/b/a$o;

    .line 14
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/b/d;->b:Lkotlin/reflect/jvm/internal/impl/b/a$n;

    return-void
.end method

.method private final d(I)Lkotlin/s;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlin/s<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 33
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 34
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-eq p1, v3, :cond_3

    .line 38
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/b/d;->b:Lkotlin/reflect/jvm/internal/impl/b/a$n;

    invoke-virtual {v3, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$n;->a(I)Lkotlin/reflect/jvm/internal/impl/b/a$n$b;

    move-result-object p1

    .line 39
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/b/d;->a:Lkotlin/reflect/jvm/internal/impl/b/a$o;

    .line 3086
    iget v4, p1, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->c:I

    .line 39
    invoke-virtual {v3, v4}, Lkotlin/reflect/jvm/internal/impl/b/a$o;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 3101
    iget-object v4, p1, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->d:Lkotlin/reflect/jvm/internal/impl/b/a$n$b$b;

    .line 40
    invoke-static {v4}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/b/b/d$a;->a:[I

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/b/a$n$b$b;->ordinal()I

    move-result v4

    aget v4, v5, v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v6, 0x2

    if-eq v4, v6, :cond_1

    const/4 v6, 0x3

    if-eq v4, v6, :cond_0

    goto :goto_1

    .line 44
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    const/4 v2, 0x1

    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    .line 41
    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 4063
    :goto_1
    iget p1, p1, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->b:I

    goto :goto_0

    .line 51
    :cond_3
    new-instance p1, Lkotlin/s;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lkotlin/s;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/b/d;->a:Lkotlin/reflect/jvm/internal/impl/b/a$o;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$o;->a(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "strings.getString(index)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final b(I)Ljava/lang/String;
    .locals 10

    .line 19
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/b/d;->d(I)Lkotlin/s;

    move-result-object p1

    .line 2000
    iget-object v0, p1, Lkotlin/s;->a:Ljava/lang/Object;

    .line 19
    check-cast v0, Ljava/util/List;

    .line 3000
    iget-object p1, p1, Lkotlin/s;->b:Ljava/lang/Object;

    .line 19
    check-cast p1, Ljava/util/List;

    .line 20
    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    const-string p1, "."

    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3e

    invoke-static/range {v1 .. v8}, Lkotlin/a/n;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    .line 22
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    const-string v0, "/"

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e

    invoke-static/range {v2 .. v9}, Lkotlin/a/n;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final c(I)Z
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/b/d;->d(I)Lkotlin/s;

    move-result-object p1

    .line 3069
    iget-object p1, p1, Lkotlin/s;->c:Ljava/lang/Object;

    .line 26
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
