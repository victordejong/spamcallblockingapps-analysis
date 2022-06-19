.class public abstract Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/h;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/protobuf/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/protobuf/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/protobuf/h$c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lkotlin/reflect/jvm/internal/impl/protobuf/h$c<",
        "TMessageType;>;>",
        "Lkotlin/reflect/jvm/internal/impl/protobuf/h;",
        "Lkotlin/reflect/jvm/internal/impl/protobuf/i<",
        "TMessageType;>;"
    }
.end annotation


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/protobuf/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/protobuf/g<",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 171
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h;-><init>()V

    .line 172
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/g;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/g;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/h$b<",
            "TMessageType;*>;)V"
        }
    .end annotation

    .line 175
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h;-><init>()V

    .line 176
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;)Lkotlin/reflect/jvm/internal/impl/protobuf/g;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/g;

    return-void
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;)Lkotlin/reflect/jvm/internal/impl/protobuf/g;
    .locals 0

    .line 164
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/g;

    return-object p0
.end method

.method private d(Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/h$e<",
            "TMessageType;*>;)V"
        }
    .end annotation

    .line 1825
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 181
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;->j()Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    .line 184
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/h$e<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;I)TType;"
        }
    .end annotation

    .line 226
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;->d(Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;)V

    .line 227
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/g;

    iget-object v1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;

    invoke-virtual {v0, v1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected final a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/f;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/g;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;->j()Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/h;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/g;Lkotlin/reflect/jvm/internal/impl/protobuf/p;Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/f;I)Z

    move-result p1

    return p1
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/h$e<",
            "TMessageType;TType;>;)Z"
        }
    .end annotation

    .line 194
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;->d(Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;)V

    .line 195
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/g;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;)Z

    move-result p1

    return p1
.end method

.method public final b(Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/h$e<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;)I"
        }
    .end annotation

    .line 202
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;->d(Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;)V

    .line 203
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/g;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;)I

    move-result p1

    return p1
.end method

.method public final c(Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/h$e<",
            "TMessageType;TType;>;)TType;"
        }
    .end annotation

    .line 211
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;->d(Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;)V

    .line 212
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/g;

    iget-object v1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->b(Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 214
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;->b:Ljava/lang/Object;

    return-object p1

    .line 216
    :cond_0
    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected final w()V
    .locals 1

    .line 261
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/g;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->c()V

    return-void
.end method

.method protected final x()Z
    .locals 1

    .line 233
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/g;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->e()Z

    move-result v0

    return v0
.end method

.method protected final y()Lkotlin/reflect/jvm/internal/impl/protobuf/h$c$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/h$c<",
            "TMessageType;>.a;"
        }
    .end annotation

    .line 308
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c$a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c$a;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;ZLkotlin/reflect/jvm/internal/impl/protobuf/h$1;)V

    return-object v0
.end method

.method protected final z()I
    .locals 5

    .line 316
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/g;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2755
    :goto_0
    iget-object v3, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/u;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->c()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 2756
    iget-object v3, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/u;

    invoke-virtual {v3, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->b(I)Ljava/util/Map$Entry;

    move-result-object v3

    .line 2758
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2761
    :cond_0
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/u;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->d()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2762
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v2, v1

    goto :goto_1

    :cond_1
    return v2
.end method
