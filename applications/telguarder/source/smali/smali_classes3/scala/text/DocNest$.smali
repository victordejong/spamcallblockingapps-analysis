.class public final Lscala/text/DocNest$;
.super Lscala/runtime/AbstractFunction2;
.source "Document.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction2<",
        "Ljava/lang/Object;",
        "Lscala/text/Document;",
        "Lscala/text/DocNest;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/text/DocNest$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/text/DocNest$;

    invoke-direct {v0}, Lscala/text/DocNest$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lscala/runtime/AbstractFunction2;-><init>()V

    sput-object p0, Lscala/text/DocNest$;->MODULE$:Lscala/text/DocNest$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 22
    sget-object v0, Lscala/text/DocNest$;->MODULE$:Lscala/text/DocNest$;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    check-cast p2, Lscala/text/Document;

    invoke-virtual {p0, p1, p2}, Lscala/text/DocNest$;->apply(ILscala/text/Document;)Lscala/text/DocNest;

    move-result-object p1

    return-object p1
.end method

.method public apply(ILscala/text/Document;)Lscala/text/DocNest;
    .locals 1

    .line 22
    new-instance v0, Lscala/text/DocNest;

    invoke-direct {v0, p1, p2}, Lscala/text/DocNest;-><init>(ILscala/text/Document;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "DocNest"

    return-object v0
.end method

.method public unapply(Lscala/text/DocNest;)Lscala/Option;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/text/DocNest;",
            ")",
            "Lscala/Option<",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Lscala/text/Document;",
            ">;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 22
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    new-instance v1, Lscala/Tuple2;

    invoke-virtual {p1}, Lscala/text/DocNest;->indent()I

    move-result v2

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Lscala/text/DocNest;->doc()Lscala/text/Document;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
