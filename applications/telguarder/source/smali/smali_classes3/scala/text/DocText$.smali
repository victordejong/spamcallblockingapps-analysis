.class public final Lscala/text/DocText$;
.super Lscala/runtime/AbstractFunction1;
.source "Document.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/lang/String;",
        "Lscala/text/DocText;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/text/DocText$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/text/DocText$;

    invoke-direct {v0}, Lscala/text/DocText$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    sput-object p0, Lscala/text/DocText$;->MODULE$:Lscala/text/DocText$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 18
    sget-object v0, Lscala/text/DocText$;->MODULE$:Lscala/text/DocText$;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lscala/text/DocText$;->apply(Ljava/lang/String;)Lscala/text/DocText;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/String;)Lscala/text/DocText;
    .locals 1

    .line 18
    new-instance v0, Lscala/text/DocText;

    invoke-direct {v0, p1}, Lscala/text/DocText;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "DocText"

    return-object v0
.end method

.method public unapply(Lscala/text/DocText;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/text/DocText;",
            ")",
            "Lscala/Option<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 18
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    invoke-virtual {p1}, Lscala/text/DocText;->txt()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
