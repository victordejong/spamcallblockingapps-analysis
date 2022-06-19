.class final Lkotlin/reflect/jvm/internal/impl/protobuf/t$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/protobuf/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lkotlin/reflect/jvm/internal/impl/protobuf/o;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/t;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lkotlin/reflect/jvm/internal/impl/protobuf/o;


# direct methods
.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)V
    .locals 1

    .line 722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 718
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$b;->a:Ljava/util/Stack;

    .line 723
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/t$b;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)Lkotlin/reflect/jvm/internal/impl/protobuf/o;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$b;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/o;

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/d;Lkotlin/reflect/jvm/internal/impl/protobuf/t$1;)V
    .locals 0

    .line 716
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/t$b;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)V

    return-void
.end method

.method private a(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)Lkotlin/reflect/jvm/internal/impl/protobuf/o;
    .locals 1

    .line 728
    :goto_0
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/t;

    if-eqz v0, :cond_0

    .line 729
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/t;

    .line 730
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$b;->a:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/t;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    goto :goto_0

    .line 733
    :cond_0
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/o;

    return-object p1
.end method

.method private b()Lkotlin/reflect/jvm/internal/impl/protobuf/o;
    .locals 2

    .line 740
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$b;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 743
    :cond_1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$b;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->b(Lkotlin/reflect/jvm/internal/impl/protobuf/t;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/t$b;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)Lkotlin/reflect/jvm/internal/impl/protobuf/o;

    move-result-object v0

    .line 1135
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    return-object v0
.end method


# virtual methods
.method public final a()Lkotlin/reflect/jvm/internal/impl/protobuf/o;
    .locals 2

    .line 761
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$b;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/o;

    if-eqz v0, :cond_0

    .line 765
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/t$b;->b()Lkotlin/reflect/jvm/internal/impl/protobuf/o;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$b;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/o;

    return-object v0

    .line 762
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 1

    .line 752
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$b;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/o;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    .line 716
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/t$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/o;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .line 770
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
