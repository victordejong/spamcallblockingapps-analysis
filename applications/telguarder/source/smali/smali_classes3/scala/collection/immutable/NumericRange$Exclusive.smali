.class public Lscala/collection/immutable/NumericRange$Exclusive;
.super Lscala/collection/immutable/NumericRange;
.source "NumericRange.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/NumericRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Exclusive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/immutable/NumericRange<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final num:Lscala/math/Integral;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/math/Integral<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;",
            "Lscala/math/Integral<",
            "TT;>;)V"
        }
    .end annotation

    .line 328
    iput-object p4, p0, Lscala/collection/immutable/NumericRange$Exclusive;->num:Lscala/math/Integral;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 329
    invoke-direct/range {v0 .. v5}, Lscala/collection/immutable/NumericRange;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZLscala/math/Integral;)V

    return-void
.end method


# virtual methods
.method public copy(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/NumericRange$Exclusive;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;)",
            "Lscala/collection/immutable/NumericRange$Exclusive<",
            "TT;>;"
        }
    .end annotation

    .line 331
    sget-object v0, Lscala/collection/immutable/NumericRange$;->MODULE$:Lscala/collection/immutable/NumericRange$;

    iget-object v1, p0, Lscala/collection/immutable/NumericRange$Exclusive;->num:Lscala/math/Integral;

    invoke-virtual {v0, p1, p2, p3, v1}, Lscala/collection/immutable/NumericRange$;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/immutable/NumericRange$Exclusive;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic copy(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/NumericRange;
    .locals 0

    .line 328
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/immutable/NumericRange$Exclusive;->copy(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/NumericRange$Exclusive;

    move-result-object p1

    return-object p1
.end method

.method public inclusive()Lscala/collection/immutable/NumericRange$Inclusive;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/NumericRange$Inclusive<",
            "TT;>;"
        }
    .end annotation

    .line 333
    sget-object v0, Lscala/collection/immutable/NumericRange$;->MODULE$:Lscala/collection/immutable/NumericRange$;

    invoke-super {p0}, Lscala/collection/immutable/NumericRange;->start()Ljava/lang/Object;

    move-result-object v1

    invoke-super {p0}, Lscala/collection/immutable/NumericRange;->end()Ljava/lang/Object;

    move-result-object v2

    invoke-super {p0}, Lscala/collection/immutable/NumericRange;->step()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lscala/collection/immutable/NumericRange$Exclusive;->num:Lscala/math/Integral;

    invoke-virtual {v0, v1, v2, v3, v4}, Lscala/collection/immutable/NumericRange$;->inclusive(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/immutable/NumericRange$Inclusive;

    move-result-object v0

    return-object v0
.end method
