.class public final Lscala/text/DocCons$;
.super Lscala/runtime/AbstractFunction2;
.source "Document.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction2<",
        "Lscala/text/Document;",
        "Lscala/text/Document;",
        "Lscala/text/DocCons;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/text/DocCons$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/text/DocCons$;

    invoke-direct {v0}, Lscala/text/DocCons$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lscala/runtime/AbstractFunction2;-><init>()V

    sput-object p0, Lscala/text/DocCons$;->MODULE$:Lscala/text/DocCons$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 24
    sget-object v0, Lscala/text/DocCons$;->MODULE$:Lscala/text/DocCons$;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 24
    check-cast p1, Lscala/text/Document;

    check-cast p2, Lscala/text/Document;

    invoke-virtual {p0, p1, p2}, Lscala/text/DocCons$;->apply(Lscala/text/Document;Lscala/text/Document;)Lscala/text/DocCons;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lscala/text/Document;Lscala/text/Document;)Lscala/text/DocCons;
    .locals 1

    .line 24
    new-instance v0, Lscala/text/DocCons;

    invoke-direct {v0, p1, p2}, Lscala/text/DocCons;-><init>(Lscala/text/Document;Lscala/text/Document;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "DocCons"

    return-object v0
.end method

.method public unapply(Lscala/text/DocCons;)Lscala/Option;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/text/DocCons;",
            ")",
            "Lscala/Option<",
            "Lscala/Tuple2<",
            "Lscala/text/Document;",
            "Lscala/text/Document;",
            ">;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 24
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    new-instance v1, Lscala/Tuple2;

    invoke-virtual {p1}, Lscala/text/DocCons;->hd()Lscala/text/Document;

    move-result-object v2

    invoke-virtual {p1}, Lscala/text/DocCons;->tl()Lscala/text/Document;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
