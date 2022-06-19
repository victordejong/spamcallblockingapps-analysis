.class public final Lscala/ScalaReflectionException$;
.super Lscala/runtime/AbstractFunction1;
.source "package.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/lang/String;",
        "Lscala/ScalaReflectionException;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/ScalaReflectionException$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/ScalaReflectionException$;

    invoke-direct {v0}, Lscala/ScalaReflectionException$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    sput-object p0, Lscala/ScalaReflectionException$;->MODULE$:Lscala/ScalaReflectionException$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 67
    sget-object v0, Lscala/ScalaReflectionException$;->MODULE$:Lscala/ScalaReflectionException$;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 67
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lscala/ScalaReflectionException$;->apply(Ljava/lang/String;)Lscala/ScalaReflectionException;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/String;)Lscala/ScalaReflectionException;
    .locals 1

    .line 67
    new-instance v0, Lscala/ScalaReflectionException;

    invoke-direct {v0, p1}, Lscala/ScalaReflectionException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "ScalaReflectionException"

    return-object v0
.end method

.method public unapply(Lscala/ScalaReflectionException;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/ScalaReflectionException;",
            ")",
            "Lscala/Option<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 67
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    invoke-virtual {p1}, Lscala/ScalaReflectionException;->msg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
