.class public final Lscala/collection/immutable/ListSerializeEnd$;
.super Ljava/lang/Object;
.source "List.scala"

# interfaces
.implements Lscala/Product;
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/collection/immutable/ListSerializeEnd$; = null

.field public static final serialVersionUID:J = -0x75a39ca408acf493L


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/ListSerializeEnd$;

    invoke-direct {v0}, Lscala/collection/immutable/ListSerializeEnd$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/immutable/ListSerializeEnd$;->MODULE$:Lscala/collection/immutable/ListSerializeEnd$;

    invoke-static {p0}, Lscala/Product$class;->$init$(Lscala/Product;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 495
    sget-object v0, Lscala/collection/immutable/ListSerializeEnd$;->MODULE$:Lscala/collection/immutable/ListSerializeEnd$;

    return-object v0
.end method


# virtual methods
.method public canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 495
    instance-of p1, p1, Lscala/collection/immutable/ListSerializeEnd$;

    return p1
.end method

.method public hashCode()I
    .locals 1

    const v0, -0x6693f647

    return v0
.end method

.method public productArity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public productElement(I)Ljava/lang/Object;
    .locals 1

    .line 495
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public productIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 495
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->typedProductIterator(Lscala/Product;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public productPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "ListSerializeEnd"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "ListSerializeEnd"

    return-object v0
.end method
