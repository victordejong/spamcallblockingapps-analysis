.class public abstract Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/protobuf/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/protobuf/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lkotlin/reflect/jvm/internal/impl/protobuf/h$c<",
        "TMessageType;>;BuilderType:",
        "Lkotlin/reflect/jvm/internal/impl/protobuf/h$b<",
        "TMessageType;TBuilderType;>;>",
        "Lkotlin/reflect/jvm/internal/impl/protobuf/h$a<",
        "TMessageType;TBuilderType;>;",
        "Lkotlin/reflect/jvm/internal/impl/protobuf/i<",
        "TMessageType;>;"
    }
.end annotation


# instance fields
.field private b:Lkotlin/reflect/jvm/internal/impl/protobuf/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/protobuf/g<",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 332
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;-><init>()V

    .line 334
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->b()Lkotlin/reflect/jvm/internal/impl/protobuf/g;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/g;

    return-void
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;)Lkotlin/reflect/jvm/internal/impl/protobuf/g;
    .locals 1

    .line 2361
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/g;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->c()V

    const/4 v0, 0x0

    .line 2362
    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;->c:Z

    .line 2363
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/g;

    return-object p0
.end method


# virtual methods
.method protected final a(Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1350
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;->c:Z

    if-nez v0, :cond_0

    .line 1351
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/g;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->d()Lkotlin/reflect/jvm/internal/impl/protobuf/g;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/g;

    const/4 v0, 0x1

    .line 1352
    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;->c:Z

    .line 496
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/g;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;)Lkotlin/reflect/jvm/internal/impl/protobuf/g;

    move-result-object p1

    const/4 v1, 0x0

    .line 1481
    :goto_0
    iget-object v2, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/u;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->c()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1482
    iget-object v2, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/u;

    invoke-virtual {v2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->b(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a(Ljava/util/Map$Entry;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1485
    :cond_1
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/u;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->d()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1486
    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a(Ljava/util/Map$Entry;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public synthetic b()Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
    .locals 1

    .line 326
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;->f()Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lkotlin/reflect/jvm/internal/impl/protobuf/a$a;
    .locals 1

    .line 326
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;->f()Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 326
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;->f()Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;

    move-result-object v0

    return-object v0
.end method

.method public f()Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 423
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final k()Z
    .locals 1

    .line 471
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/g;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->e()Z

    move-result v0

    return v0
.end method
