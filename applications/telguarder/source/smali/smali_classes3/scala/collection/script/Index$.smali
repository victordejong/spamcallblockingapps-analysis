.class public final Lscala/collection/script/Index$;
.super Lscala/runtime/AbstractFunction1;
.source "Location.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/lang/Object;",
        "Lscala/collection/script/Index;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/script/Index$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/script/Index$;

    invoke-direct {v0}, Lscala/collection/script/Index$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    sput-object p0, Lscala/collection/script/Index$;->MODULE$:Lscala/collection/script/Index$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 34
    sget-object v0, Lscala/collection/script/Index$;->MODULE$:Lscala/collection/script/Index$;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/script/Index$;->apply(I)Lscala/collection/script/Index;

    move-result-object p1

    return-object p1
.end method

.method public apply(I)Lscala/collection/script/Index;
    .locals 1

    .line 34
    new-instance v0, Lscala/collection/script/Index;

    invoke-direct {v0, p1}, Lscala/collection/script/Index;-><init>(I)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Index"

    return-object v0
.end method

.method public unapply(Lscala/collection/script/Index;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/script/Index;",
            ")",
            "Lscala/Option<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 34
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    invoke-virtual {p1}, Lscala/collection/script/Index;->n()I

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
