.class public final Lscala/math/Equiv$;
.super Ljava/lang/Object;
.source "Equiv.scala"

# interfaces
.implements Lscala/math/LowPriorityEquiv;
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/math/Equiv$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/math/Equiv$;

    invoke-direct {v0}, Lscala/math/Equiv$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/math/Equiv$;->MODULE$:Lscala/math/Equiv$;

    invoke-static {p0}, Lscala/math/LowPriorityEquiv$class;->$init$(Lscala/math/Equiv$;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 45
    sget-object v0, Lscala/math/Equiv$;->MODULE$:Lscala/math/Equiv$;

    return-object v0
.end method


# virtual methods
.method public apply(Lscala/math/Equiv;)Lscala/math/Equiv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Equiv<",
            "TT;>;)",
            "Lscala/math/Equiv<",
            "TT;>;"
        }
    .end annotation

    .line 61
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    check-cast p1, Lscala/math/Equiv;

    return-object p1
.end method

.method public by(Lscala/Function1;Lscala/math/Equiv;)Lscala/math/Equiv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TT;TS;>;",
            "Lscala/math/Equiv<",
            "TS;>;)",
            "Lscala/math/Equiv<",
            "TT;>;"
        }
    .end annotation

    .line 59
    new-instance v0, Lscala/math/Equiv$$anonfun$by$1;

    invoke-direct {v0, p1, p2}, Lscala/math/Equiv$$anonfun$by$1;-><init>(Lscala/Function1;Lscala/math/Equiv;)V

    new-instance p1, Lscala/math/Equiv$$anon$4;

    invoke-direct {p1, v0}, Lscala/math/Equiv$$anon$4;-><init>(Lscala/Function2;)V

    return-object p1
.end method

.method public fromComparator(Ljava/util/Comparator;)Lscala/math/Equiv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Lscala/math/Equiv<",
            "TT;>;"
        }
    .end annotation

    .line 52
    new-instance v0, Lscala/math/Equiv$$anon$3;

    invoke-direct {v0, p1}, Lscala/math/Equiv$$anon$3;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public fromFunction(Lscala/Function2;)Lscala/math/Equiv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TT;TT;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/math/Equiv<",
            "TT;>;"
        }
    .end annotation

    .line 55
    new-instance v0, Lscala/math/Equiv$$anon$4;

    invoke-direct {v0, p1}, Lscala/math/Equiv$$anon$4;-><init>(Lscala/Function2;)V

    return-object v0
.end method

.method public reference()Lscala/math/Equiv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/math/Equiv<",
            "TT;>;"
        }
    .end annotation

    .line 46
    new-instance v0, Lscala/math/Equiv$$anon$1;

    invoke-direct {v0}, Lscala/math/Equiv$$anon$1;-><init>()V

    return-object v0
.end method

.method public universal()Lscala/math/Equiv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/math/Equiv<",
            "TT;>;"
        }
    .end annotation

    .line 49
    new-instance v0, Lscala/math/Equiv$$anon$2;

    invoke-direct {v0}, Lscala/math/Equiv$$anon$2;-><init>()V

    return-object v0
.end method

.method public universalEquiv()Lscala/math/Equiv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/math/Equiv<",
            "TT;>;"
        }
    .end annotation

    .line 45
    invoke-static {p0}, Lscala/math/LowPriorityEquiv$class;->universalEquiv(Lscala/math/Equiv$;)Lscala/math/Equiv;

    move-result-object v0

    return-object v0
.end method
