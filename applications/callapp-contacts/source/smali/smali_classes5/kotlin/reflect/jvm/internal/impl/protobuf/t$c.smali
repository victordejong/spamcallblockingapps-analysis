.class final Lkotlin/reflect/jvm/internal/impl/protobuf/t$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/protobuf/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/protobuf/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lkotlin/reflect/jvm/internal/impl/protobuf/t;

.field private final c:Lkotlin/reflect/jvm/internal/impl/protobuf/t$b;

.field private d:Lkotlin/reflect/jvm/internal/impl/protobuf/d$a;


# direct methods
.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/t;)V
    .locals 2

    .line 788
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$c;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 789
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/t$b;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/d;Lkotlin/reflect/jvm/internal/impl/protobuf/t$1;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$c;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/t$b;

    .line 790
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/t$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/o;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/o;->c()Lkotlin/reflect/jvm/internal/impl/protobuf/d$a;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$c;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/d$a;

    .line 791
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->a()I

    move-result p1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$c;->a:I

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/t;Lkotlin/reflect/jvm/internal/impl/protobuf/t$1;)V
    .locals 0

    .line 782
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/t$c;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/t;)V

    return-void
.end method


# virtual methods
.method public final a()B
    .locals 1

    .line 803
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$c;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/d$a;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$a;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 804
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$c;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/t$b;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/t$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/o;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/o;->c()Lkotlin/reflect/jvm/internal/impl/protobuf/d$a;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$c;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/d$a;

    .line 806
    :cond_0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$c;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$c;->a:I

    .line 807
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$c;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/d$a;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$a;->a()B

    move-result v0

    return v0
.end method

.method public final hasNext()Z
    .locals 1

    .line 795
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$c;->a:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1799
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/t$c;->a()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .line 811
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
