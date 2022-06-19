.class public final Lkotlin/reflect/jvm/internal/impl/protobuf/v;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lkotlin/reflect/jvm/internal/impl/protobuf/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Lkotlin/reflect/jvm/internal/impl/protobuf/n;"
    }
.end annotation


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/protobuf/n;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/n;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 53
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/v;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    return-void
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/protobuf/v;)Lkotlin/reflect/jvm/internal/impl/protobuf/n;
    .locals 0

    .line 47
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/v;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/v;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Lkotlin/reflect/jvm/internal/impl/protobuf/d;
    .locals 1

    .line 68
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/v;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    invoke-interface {v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->a(I)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)V
    .locals 0

    .line 73
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final b()Lkotlin/reflect/jvm/internal/impl/protobuf/n;
    .locals 0

    return-object p0
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .line 1058
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/v;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    invoke-interface {v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 160
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/v$2;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/v$2;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/v;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 108
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/v$1;

    invoke-direct {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/v$1;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/v;I)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 63
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/v;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->size()I

    move-result v0

    return v0
.end method
