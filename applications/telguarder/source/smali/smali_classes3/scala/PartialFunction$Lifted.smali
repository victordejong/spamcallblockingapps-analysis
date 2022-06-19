.class public Lscala/PartialFunction$Lifted;
.super Lscala/runtime/AbstractFunction1;
.source "PartialFunction.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/PartialFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifted"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/runtime/AbstractFunction1<",
        "TA;",
        "Lscala/Option<",
        "TB;>;>;"
    }
.end annotation


# instance fields
.field private final pf:Lscala/PartialFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/PartialFunction<",
            "TA;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/PartialFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/PartialFunction<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 219
    iput-object p1, p0, Lscala/PartialFunction$Lifted;->pf:Lscala/PartialFunction;

    .line 220
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 219
    invoke-virtual {p0, p1}, Lscala/PartialFunction$Lifted;->apply(Ljava/lang/Object;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/Object;)Lscala/Option;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 223
    invoke-virtual {p0}, Lscala/PartialFunction$Lifted;->pf()Lscala/PartialFunction;

    move-result-object v0

    sget-object v1, Lscala/PartialFunction$;->MODULE$:Lscala/PartialFunction$;

    invoke-virtual {v1}, Lscala/PartialFunction$;->scala$PartialFunction$$checkFallback()Lscala/PartialFunction;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lscala/PartialFunction;->applyOrElse(Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;

    move-result-object p1

    .line 224
    sget-object v0, Lscala/PartialFunction$;->MODULE$:Lscala/PartialFunction$;

    invoke-virtual {v0, p1}, Lscala/PartialFunction$;->scala$PartialFunction$$fallbackOccurred(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public pf()Lscala/PartialFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/PartialFunction<",
            "TA;TB;>;"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lscala/PartialFunction$Lifted;->pf:Lscala/PartialFunction;

    return-object v0
.end method
