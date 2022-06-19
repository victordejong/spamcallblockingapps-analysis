.class public Lscala/collection/immutable/LongMap$Nil$;
.super Lscala/collection/immutable/LongMap;
.source "LongMap.scala"

# interfaces
.implements Lscala/Product;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/LongMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Nil$"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/immutable/LongMap<",
        "Lscala/runtime/Nothing$;",
        ">;",
        "Lscala/Product;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/immutable/LongMap$Nil$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/LongMap$Nil$;

    invoke-direct {v0}, Lscala/collection/immutable/LongMap$Nil$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Lscala/collection/immutable/LongMap;-><init>()V

    sput-object p0, Lscala/collection/immutable/LongMap$Nil$;->MODULE$:Lscala/collection/immutable/LongMap$Nil$;

    invoke-static {p0}, Lscala/Product$class;->$init$(Lscala/Product;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 59
    sget-object v0, Lscala/collection/immutable/LongMap$Nil$;->MODULE$:Lscala/collection/immutable/LongMap$Nil$;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 61
    instance-of v0, p1, Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 63
    :cond_0
    instance-of v0, p1, Lscala/collection/immutable/LongMap;

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 64
    :cond_1
    invoke-static {p0, p1}, Lscala/collection/GenMapLike$class;->equals(Lscala/collection/GenMapLike;Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public productArity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public productElement(I)Ljava/lang/Object;
    .locals 1

    .line 59
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

    .line 59
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->typedProductIterator(Lscala/Product;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public productPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "Nil"

    return-object v0
.end method
