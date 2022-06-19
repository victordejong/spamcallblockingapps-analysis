.class public final Lkotlin/reflect/jvm/internal/impl/protobuf/h$c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;

.field private final b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Z


# direct methods
.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;Z)V
    .locals 1

    .line 279
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;)Lkotlin/reflect/jvm/internal/impl/protobuf/g;

    move-result-object p1

    .line 1197
    iget-boolean v0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->b:Z

    if-eqz v0, :cond_0

    .line 1198
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/k$b;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/u;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/k$b;-><init>(Ljava/util/Iterator;)V

    goto :goto_0

    .line 1201
    :cond_0
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/u;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 274
    :goto_0
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c$a;->b:Ljava/util/Iterator;

    .line 280
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 281
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c$a;->c:Ljava/util/Map$Entry;

    .line 283
    :cond_1
    iput-boolean p2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c$a;->d:Z

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;ZLkotlin/reflect/jvm/internal/impl/protobuf/h$1;)V
    .locals 0

    .line 270
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c$a;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;Z)V

    return-void
.end method


# virtual methods
.method public final a(ILkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    :goto_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c$a;->c:Ljava/util/Map$Entry;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;

    .line 1694
    iget v0, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;->b:I

    if-ge v0, p1, :cond_2

    .line 289
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c$a;->c:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;

    .line 290
    iget-boolean v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c$a;->d:Z

    if-eqz v1, :cond_0

    .line 1702
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;->getJavaType()Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;

    move-result-object v1

    .line 290
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;->MESSAGE:Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;

    if-ne v1, v2, :cond_0

    .line 1706
    iget-boolean v1, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;->d:Z

    if-nez v1, :cond_0

    .line 2694
    iget v0, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;->b:I

    .line 293
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c$a;->c:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-virtual {p2, v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->b(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    goto :goto_1

    .line 296
    :cond_0
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c$a;->c:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)V

    .line 298
    :goto_1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c$a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c$a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c$a;->c:Ljava/util/Map$Entry;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 301
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c$a;->c:Ljava/util/Map$Entry;

    goto :goto_0

    :cond_2
    return-void
.end method
