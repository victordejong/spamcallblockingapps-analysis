.class public Lscala/concurrent/duration/Duration$DurationIsOrdered$;
.super Ljava/lang/Object;
.source "Duration.scala"

# interfaces
.implements Lscala/math/Ordering;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/concurrent/duration/Duration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DurationIsOrdered$"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/math/Ordering<",
        "Lscala/concurrent/duration/Duration;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/concurrent/duration/Duration$DurationIsOrdered$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/concurrent/duration/Duration$DurationIsOrdered$;

    invoke-direct {v0}, Lscala/concurrent/duration/Duration$DurationIsOrdered$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/concurrent/duration/Duration$DurationIsOrdered$;->MODULE$:Lscala/concurrent/duration/Duration$DurationIsOrdered$;

    invoke-static {p0}, Lscala/math/PartialOrdering$class;->$init$(Lscala/math/PartialOrdering;)V

    invoke-static {p0}, Lscala/math/Ordering$class;->$init$(Lscala/math/Ordering;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 297
    sget-object v0, Lscala/concurrent/duration/Duration$DurationIsOrdered$;->MODULE$:Lscala/concurrent/duration/Duration$DurationIsOrdered$;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 297
    check-cast p1, Lscala/concurrent/duration/Duration;

    check-cast p2, Lscala/concurrent/duration/Duration;

    invoke-virtual {p0, p1, p2}, Lscala/concurrent/duration/Duration$DurationIsOrdered$;->compare(Lscala/concurrent/duration/Duration;Lscala/concurrent/duration/Duration;)I

    move-result p1

    return p1
.end method

.method public compare(Lscala/concurrent/duration/Duration;Lscala/concurrent/duration/Duration;)I
    .locals 0

    .line 298
    invoke-virtual {p1, p2}, Lscala/concurrent/duration/Duration;->compare(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public equiv(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 297
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->equiv(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public gt(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 297
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->gt(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public gteq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 297
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->gteq(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public lt(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 297
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->lt(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public lteq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 297
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->lteq(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 297
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->max(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 297
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->min(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public mkOrderingOps(Ljava/lang/Object;)Lscala/math/Ordering$Ops;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lscala/math/Ordering$Ops;"
        }
    .end annotation

    .line 297
    invoke-static {p0, p1}, Lscala/math/Ordering$class;->mkOrderingOps(Lscala/math/Ordering;Ljava/lang/Object;)Lscala/math/Ordering$Ops;

    move-result-object p1

    return-object p1
.end method

.method public on(Lscala/Function1;)Lscala/math/Ordering;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TU;",
            "Lscala/concurrent/duration/Duration;",
            ">;)",
            "Lscala/math/Ordering<",
            "TU;>;"
        }
    .end annotation

    .line 297
    invoke-static {p0, p1}, Lscala/math/Ordering$class;->on(Lscala/math/Ordering;Lscala/Function1;)Lscala/math/Ordering;

    move-result-object p1

    return-object p1
.end method

.method public reverse()Lscala/math/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/math/Ordering<",
            "Lscala/concurrent/duration/Duration;",
            ">;"
        }
    .end annotation

    .line 297
    invoke-static {p0}, Lscala/math/Ordering$class;->reverse(Lscala/math/Ordering;)Lscala/math/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverse()Lscala/math/PartialOrdering;
    .locals 1

    .line 297
    invoke-virtual {p0}, Lscala/concurrent/duration/Duration$DurationIsOrdered$;->reverse()Lscala/math/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tryCompare(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;
    .locals 0

    .line 297
    invoke-virtual {p0, p1, p2}, Lscala/concurrent/duration/Duration$DurationIsOrdered$;->tryCompare(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Some;

    move-result-object p1

    return-object p1
.end method

.method public tryCompare(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Some;
    .locals 0

    .line 297
    invoke-static {p0, p1, p2}, Lscala/math/Ordering$class;->tryCompare(Lscala/math/Ordering;Ljava/lang/Object;Ljava/lang/Object;)Lscala/Some;

    move-result-object p1

    return-object p1
.end method
