.class public final Lscala/math/Equiv$$anon$3;
.super Ljava/lang/Object;
.source "Equiv.scala"

# interfaces
.implements Lscala/math/Equiv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/math/Equiv$;->fromComparator(Ljava/util/Comparator;)Lscala/math/Equiv;
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
.field private final cmp$1:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lscala/math/Equiv$$anon$3;->cmp$1:Ljava/util/Comparator;

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

    .line 53
    iget-object v0, p0, Lscala/math/Equiv$$anon$3;->cmp$1:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
