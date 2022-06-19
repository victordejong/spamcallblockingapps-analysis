.class public final Lscala/collection/immutable/PagedSeq$;
.super Ljava/lang/Object;
.source "PagedSeq.scala"


# static fields
.field public static final MODULE$:Lscala/collection/immutable/PagedSeq$;


# instance fields
.field private final UndeterminedEnd:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/PagedSeq$;

    invoke-direct {v0}, Lscala/collection/immutable/PagedSeq$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/immutable/PagedSeq$;->MODULE$:Lscala/collection/immutable/PagedSeq$;

    return-void
.end method


# virtual methods
.method public final UndeterminedEnd()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public fromFile(Ljava/io/File;)Lscala/collection/immutable/PagedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lscala/collection/immutable/PagedSeq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 94
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lscala/collection/immutable/PagedSeq$;->fromReader(Ljava/io/Reader;)Lscala/collection/immutable/PagedSeq;

    move-result-object p1

    return-object p1
.end method

.method public fromFile(Ljava/lang/String;)Lscala/collection/immutable/PagedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lscala/collection/immutable/PagedSeq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lscala/collection/immutable/PagedSeq$;->fromFile(Ljava/io/File;)Lscala/collection/immutable/PagedSeq;

    move-result-object p1

    return-object p1
.end method

.method public fromIterable(Lscala/collection/immutable/Iterable;Lscala/reflect/ClassTag;)Lscala/collection/immutable/PagedSeq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/Iterable<",
            "TT;>;",
            "Lscala/reflect/ClassTag<",
            "TT;>;)",
            "Lscala/collection/immutable/PagedSeq<",
            "TT;>;"
        }
    .end annotation

    .line 42
    invoke-interface {p1}, Lscala/collection/immutable/Iterable;->iterator()Lscala/collection/Iterator;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/PagedSeq$;->fromIterator(Lscala/collection/Iterator;Lscala/reflect/ClassTag;)Lscala/collection/immutable/PagedSeq;

    move-result-object p1

    return-object p1
.end method

.method public fromIterator(Lscala/collection/Iterator;Lscala/reflect/ClassTag;)Lscala/collection/immutable/PagedSeq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Iterator<",
            "TT;>;",
            "Lscala/reflect/ClassTag<",
            "TT;>;)",
            "Lscala/collection/immutable/PagedSeq<",
            "TT;>;"
        }
    .end annotation

    .line 31
    new-instance v0, Lscala/collection/immutable/PagedSeq;

    new-instance v1, Lscala/collection/immutable/PagedSeq$$anonfun$fromIterator$1;

    invoke-direct {v1, p1}, Lscala/collection/immutable/PagedSeq$$anonfun$fromIterator$1;-><init>(Lscala/collection/Iterator;)V

    invoke-direct {v0, v1, p2}, Lscala/collection/immutable/PagedSeq;-><init>(Lscala/Function3;Lscala/reflect/ClassTag;)V

    return-object v0
.end method

.method public fromLines(Lscala/collection/Iterator;)Lscala/collection/immutable/PagedSeq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Iterator<",
            "Ljava/lang/String;",
            ">;)",
            "Lscala/collection/immutable/PagedSeq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 70
    invoke-static {v0}, Lscala/runtime/BooleanRef;->create(Z)Lscala/runtime/BooleanRef;

    move-result-object v0

    .line 71
    new-instance v1, Lscala/collection/immutable/PagedSeq$$anonfun$fromLines$1;

    invoke-direct {v1, v0}, Lscala/collection/immutable/PagedSeq$$anonfun$fromLines$1;-><init>(Lscala/runtime/BooleanRef;)V

    invoke-interface {p1, v1}, Lscala/collection/Iterator;->map(Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/PagedSeq$;->fromStrings(Lscala/collection/Iterator;)Lscala/collection/immutable/PagedSeq;

    move-result-object p1

    return-object p1
.end method

.method public fromLines(Lscala/collection/immutable/Iterable;)Lscala/collection/immutable/PagedSeq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lscala/collection/immutable/PagedSeq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 84
    invoke-interface {p1}, Lscala/collection/immutable/Iterable;->iterator()Lscala/collection/Iterator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/PagedSeq$;->fromLines(Lscala/collection/Iterator;)Lscala/collection/immutable/PagedSeq;

    move-result-object p1

    return-object p1
.end method

.method public fromReader(Ljava/io/Reader;)Lscala/collection/immutable/PagedSeq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")",
            "Lscala/collection/immutable/PagedSeq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 89
    new-instance v0, Lscala/collection/immutable/PagedSeq;

    new-instance v1, Lscala/collection/immutable/PagedSeq$$anonfun$fromReader$1;

    invoke-direct {v1, p1}, Lscala/collection/immutable/PagedSeq$$anonfun$fromReader$1;-><init>(Ljava/io/Reader;)V

    sget-object p1, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p1}, Lscala/reflect/ClassTag$;->Char()Lscala/reflect/ClassTag;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lscala/collection/immutable/PagedSeq;-><init>(Lscala/Function3;Lscala/reflect/ClassTag;)V

    return-object v0
.end method

.method public fromSource(Lscala/io/Source;)Lscala/collection/immutable/PagedSeq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/io/Source;",
            ")",
            "Lscala/collection/immutable/PagedSeq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 104
    invoke-virtual {p1}, Lscala/io/Source;->getLines()Lscala/collection/Iterator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/PagedSeq$;->fromLines(Lscala/collection/Iterator;)Lscala/collection/immutable/PagedSeq;

    move-result-object p1

    return-object p1
.end method

.method public fromStrings(Lscala/collection/Iterator;)Lscala/collection/immutable/PagedSeq;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Iterator<",
            "Ljava/lang/String;",
            ">;)",
            "Lscala/collection/immutable/PagedSeq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    .line 46
    invoke-static {v0}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object v0

    .line 58
    new-instance v1, Lscala/collection/immutable/PagedSeq;

    new-instance v2, Lscala/collection/immutable/PagedSeq$$anonfun$fromStrings$1;

    invoke-direct {v2, p1, v0}, Lscala/collection/immutable/PagedSeq$$anonfun$fromStrings$1;-><init>(Lscala/collection/Iterator;Lscala/runtime/ObjectRef;)V

    sget-object p1, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {p1}, Lscala/reflect/ClassTag$;->Char()Lscala/reflect/ClassTag;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lscala/collection/immutable/PagedSeq;-><init>(Lscala/Function3;Lscala/reflect/ClassTag;)V

    return-object v1
.end method

.method public fromStrings(Lscala/collection/immutable/Iterable;)Lscala/collection/immutable/PagedSeq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lscala/collection/immutable/PagedSeq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 63
    invoke-interface {p1}, Lscala/collection/immutable/Iterable;->iterator()Lscala/collection/Iterator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/PagedSeq$;->fromStrings(Lscala/collection/Iterator;)Lscala/collection/immutable/PagedSeq;

    move-result-object p1

    return-object p1
.end method

.method public final scala$collection$immutable$PagedSeq$$more$1([CIILscala/collection/Iterator;Lscala/runtime/ObjectRef;)I
    .locals 10

    .line 48
    :goto_0
    iget-object v0, p5, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 49
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    iget-object v1, p5, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result v0

    .line 50
    iget-object v1, p5, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    .line 51
    iget-object v1, p5, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p5, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    if-ne v0, p3, :cond_0

    goto :goto_1

    .line 52
    :cond_0
    sget-object v1, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 53
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    add-int v6, p2, v0

    sub-int v7, p3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v8, p4

    move-object v9, p5

    invoke-virtual/range {v4 .. v9}, Lscala/collection/immutable/PagedSeq$;->scala$collection$immutable$PagedSeq$$more$1([CIILscala/collection/Iterator;Lscala/runtime/ObjectRef;)I

    move-result p1

    invoke-virtual {v1, p1, v2}, Lscala/runtime/RichInt$;->max$extension(II)I

    move-result p1

    add-int/2addr v0, p1

    goto :goto_1

    .line 54
    :cond_1
    invoke-interface {p4}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    invoke-interface {p4}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p5, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    :goto_1
    return v0
.end method
