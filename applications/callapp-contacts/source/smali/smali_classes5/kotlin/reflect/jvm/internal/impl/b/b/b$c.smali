.class public abstract Lkotlin/reflect/jvm/internal/impl/b/b/b$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method private constructor <init>(II)V
    .locals 0

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/b/b$c;->a:I

    .line 257
    iput p2, p0, Lkotlin/reflect/jvm/internal/impl/b/b/b$c;->b:I

    return-void
.end method

.method synthetic constructor <init>(IILkotlin/reflect/jvm/internal/impl/b/b/b$1;)V
    .locals 0

    .line 233
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/b/b$c;-><init>(II)V

    return-void
.end method

.method public static a()Lkotlin/reflect/jvm/internal/impl/b/b/b$a;
    .locals 2

    .line 244
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/b/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/b/b$a;-><init>(I)V

    return-object v0
.end method

.method public static a(Lkotlin/reflect/jvm/internal/impl/b/b/b$c;)Lkotlin/reflect/jvm/internal/impl/b/b/b$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/b/b/b$c<",
            "*>;)",
            "Lkotlin/reflect/jvm/internal/impl/b/b/b$a;"
        }
    .end annotation

    .line 248
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/b/b$c;->a:I

    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/b/b/b$c;->b:I

    add-int/2addr v0, p0

    .line 249
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/b/b/b$a;

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/b/b$a;-><init>(I)V

    return-object p0
.end method

.method public static a(Lkotlin/reflect/jvm/internal/impl/b/b/b$c;[Lkotlin/reflect/jvm/internal/impl/protobuf/j$a;)Lkotlin/reflect/jvm/internal/impl/b/b/b$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/j$a;",
            ">(",
            "Lkotlin/reflect/jvm/internal/impl/b/b/b$c<",
            "*>;[TE;)",
            "Lkotlin/reflect/jvm/internal/impl/b/b/b$c<",
            "TE;>;"
        }
    .end annotation

    .line 235
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/b/b$c;->a:I

    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/b/b/b$c;->b:I

    add-int/2addr v0, p0

    .line 236
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/b/b/b$b;

    invoke-direct {p0, v0, p1}, Lkotlin/reflect/jvm/internal/impl/b/b/b$b;-><init>(I[Lkotlin/reflect/jvm/internal/impl/protobuf/j$a;)V

    return-object p0
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation
.end method

.method public abstract b(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method
