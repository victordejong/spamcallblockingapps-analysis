.class public final Lscala/collection/script/End$;
.super Lscala/collection/script/Location;
.source "Location.scala"

# interfaces
.implements Lscala/Product;
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/collection/script/End$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/script/End$;

    invoke-direct {v0}, Lscala/collection/script/End$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lscala/collection/script/Location;-><init>()V

    sput-object p0, Lscala/collection/script/End$;->MODULE$:Lscala/collection/script/End$;

    invoke-static {p0}, Lscala/Product$class;->$init$(Lscala/Product;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 28
    sget-object v0, Lscala/collection/script/End$;->MODULE$:Lscala/collection/script/End$;

    return-object v0
.end method


# virtual methods
.method public canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 28
    instance-of p1, p1, Lscala/collection/script/End$;

    return p1
.end method

.method public hashCode()I
    .locals 1

    const v0, 0x110bb

    return v0
.end method

.method public productArity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public productElement(I)Ljava/lang/Object;
    .locals 1

    .line 28
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

    .line 28
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->typedProductIterator(Lscala/Product;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public productPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "End"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "End"

    return-object v0
.end method
