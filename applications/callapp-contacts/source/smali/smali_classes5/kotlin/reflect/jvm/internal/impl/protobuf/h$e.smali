.class public final Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/protobuf/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ContainingType::",
        "Lkotlin/reflect/jvm/internal/impl/protobuf/p;",
        "Type:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TContainingType;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TType;"
        }
    .end annotation
.end field

.field final c:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

.field final d:Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;

.field final e:Ljava/lang/Class;

.field final f:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/p;Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/protobuf/p;Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TContainingType;TType;",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/p;",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    .line 1698
    iget-object v0, p4, Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    .line 793
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;->MESSAGE:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    if-ne v0, v1, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 795
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null messageDefaultInstance"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 798
    :cond_1
    :goto_0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 799
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;->b:Ljava/lang/Object;

    .line 800
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 801
    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;

    .line 805
    iput-object p5, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;->e:Ljava/lang/Class;

    .line 806
    const-class p1, Lkotlin/reflect/jvm/internal/impl/protobuf/j$a;

    invoke-virtual {p1, p5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Class;

    const/4 p2, 0x0

    .line 807
    sget-object p3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p3, p1, p2

    const-string p2, "valueOf"

    invoke-static {p5, p2, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/h;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;->f:Ljava/lang/reflect/Method;

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 810
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;->f:Ljava/lang/reflect/Method;

    return-void

    .line 790
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null containingTypeDefaultInstance"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 844
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;

    .line 1706
    iget-boolean v0, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;->d:Z

    if-eqz v0, :cond_2

    .line 845
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;

    .line 2702
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;->getJavaType()Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;

    move-result-object v0

    .line 845
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;->ENUM:Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;

    if-ne v0, v1, :cond_1

    .line 846
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 847
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 848
    invoke-virtual {p0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    return-object p1

    .line 855
    :cond_2
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 860
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;

    .line 3702
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;->getJavaType()Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;

    move-result-object v0

    .line 860
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;->ENUM:Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;

    if-ne v0, v1, :cond_0

    .line 861
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;->f:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    check-cast p1, Ljava/lang/Integer;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/h;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 885
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;

    .line 4702
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;->getJavaType()Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;

    move-result-object v0

    .line 885
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;->ENUM:Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;

    if-ne v0, v1, :cond_0

    .line 886
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/j$a;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/j$a;->getNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_0
    return-object p1
.end method
