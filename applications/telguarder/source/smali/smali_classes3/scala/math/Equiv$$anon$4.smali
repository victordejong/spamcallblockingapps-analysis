.class public final Lscala/math/Equiv$$anon$4;
.super Ljava/lang/Object;
.source "Equiv.scala"

# interfaces
.implements Lscala/math/Equiv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/math/Equiv$;->fromFunction(Lscala/Function2;)Lscala/math/Equiv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/math/Equiv<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final cmp$2:Lscala/Function2;


# direct methods
.method public constructor <init>(Lscala/Function2;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lscala/math/Equiv$$anon$4;->cmp$2:Lscala/Function2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equiv(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lscala/math/Equiv$$anon$4;->cmp$2:Lscala/Function2;

    invoke-interface {v0, p1, p2}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
