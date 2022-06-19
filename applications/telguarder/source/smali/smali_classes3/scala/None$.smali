.class public final Lscala/None$;
.super Lscala/Option;
.source "Option.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/Option<",
        "Lscala/runtime/Nothing$;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/None$; = null

.field public static final serialVersionUID:J = 0x465024f653ca94acL


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/None$;

    invoke-direct {v0}, Lscala/None$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 345
    invoke-direct {p0}, Lscala/Option;-><init>()V

    sput-object p0, Lscala/None$;->MODULE$:Lscala/None$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 345
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    return-object v0
.end method


# virtual methods
.method public canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 345
    instance-of p1, p1, Lscala/None$;

    return p1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 345
    invoke-virtual {p0}, Lscala/None$;->get()Lscala/runtime/Nothing$;

    move-result-object v0

    throw v0
.end method

.method public get()Lscala/runtime/Nothing$;
    .locals 2

    .line 347
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "None.get"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    const v0, 0x252358

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public productArity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public productElement(I)Ljava/lang/Object;
    .locals 1

    .line 345
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

    .line 345
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->typedProductIterator(Lscala/Product;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public productPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "None"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "None"

    return-object v0
.end method
