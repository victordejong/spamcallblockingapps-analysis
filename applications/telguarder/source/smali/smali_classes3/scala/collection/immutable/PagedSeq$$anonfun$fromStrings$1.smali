.class public final Lscala/collection/immutable/PagedSeq$$anonfun$fromStrings$1;
.super Lscala/runtime/AbstractFunction3;
.source "PagedSeq.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/PagedSeq$;->fromStrings(Lscala/collection/Iterator;)Lscala/collection/immutable/PagedSeq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction3<",
        "[C",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final current$1:Lscala/runtime/ObjectRef;

.field private final source$2:Lscala/collection/Iterator;


# direct methods
.method public constructor <init>(Lscala/collection/Iterator;Lscala/runtime/ObjectRef;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lscala/collection/immutable/PagedSeq$$anonfun$fromStrings$1;->source$2:Lscala/collection/Iterator;

    iput-object p2, p0, Lscala/collection/immutable/PagedSeq$$anonfun$fromStrings$1;->current$1:Lscala/runtime/ObjectRef;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction3;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply([CII)I
    .locals 6

    .line 58
    sget-object v0, Lscala/collection/immutable/PagedSeq$;->MODULE$:Lscala/collection/immutable/PagedSeq$;

    iget-object v4, p0, Lscala/collection/immutable/PagedSeq$$anonfun$fromStrings$1;->source$2:Lscala/collection/Iterator;

    iget-object v5, p0, Lscala/collection/immutable/PagedSeq$$anonfun$fromStrings$1;->current$1:Lscala/runtime/ObjectRef;

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lscala/collection/immutable/PagedSeq$;->scala$collection$immutable$PagedSeq$$more$1([CIILscala/collection/Iterator;Lscala/runtime/ObjectRef;)I

    move-result p1

    return p1
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 58
    check-cast p1, [C

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p3}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/immutable/PagedSeq$$anonfun$fromStrings$1;->apply([CII)I

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
