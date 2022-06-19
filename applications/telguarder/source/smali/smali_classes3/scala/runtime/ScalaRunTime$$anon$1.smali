.class public final Lscala/runtime/ScalaRunTime$$anon$1;
.super Lscala/collection/AbstractIterator;
.source "ScalaRunTime.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/runtime/ScalaRunTime$;->typedProductIterator(Lscala/Product;)Lscala/collection/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private c:I

.field private final cmax:I

.field private final x$2:Lscala/Product;


# direct methods
.method public constructor <init>(Lscala/Product;)V
    .locals 1

    .line 172
    iput-object p1, p0, Lscala/runtime/ScalaRunTime$$anon$1;->x$2:Lscala/Product;

    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    const/4 v0, 0x0

    .line 173
    iput v0, p0, Lscala/runtime/ScalaRunTime$$anon$1;->c:I

    .line 174
    invoke-interface {p1}, Lscala/Product;->productArity()I

    move-result p1

    iput p1, p0, Lscala/runtime/ScalaRunTime$$anon$1;->cmax:I

    return-void
.end method

.method private c()I
    .locals 1

    .line 173
    iget v0, p0, Lscala/runtime/ScalaRunTime$$anon$1;->c:I

    return v0
.end method

.method private c_$eq(I)V
    .locals 0

    .line 173
    iput p1, p0, Lscala/runtime/ScalaRunTime$$anon$1;->c:I

    return-void
.end method

.method private cmax()I
    .locals 1

    .line 174
    iget v0, p0, Lscala/runtime/ScalaRunTime$$anon$1;->cmax:I

    return v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 175
    invoke-direct {p0}, Lscala/runtime/ScalaRunTime$$anon$1;->c()I

    move-result v0

    invoke-direct {p0}, Lscala/runtime/ScalaRunTime$$anon$1;->cmax()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lscala/runtime/ScalaRunTime$$anon$1;->x$2:Lscala/Product;

    invoke-direct {p0}, Lscala/runtime/ScalaRunTime$$anon$1;->c()I

    move-result v1

    invoke-interface {v0, v1}, Lscala/Product;->productElement(I)Ljava/lang/Object;

    move-result-object v0

    .line 178
    invoke-direct {p0}, Lscala/runtime/ScalaRunTime$$anon$1;->c()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lscala/runtime/ScalaRunTime$$anon$1;->c_$eq(I)V

    return-object v0
.end method
