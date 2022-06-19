.class public final Lscala/Array$$anonfun$apply$9;
.super Lscala/runtime/AbstractFunction1;
.source "Array.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/Array$;->apply(CLscala/collection/Seq;)[C
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/lang/Object;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final array$5:[C

.field private final i$5:Lscala/runtime/IntRef;


# direct methods
.method public constructor <init>([CLscala/runtime/IntRef;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lscala/Array$$anonfun$apply$9;->array$5:[C

    iput-object p2, p0, Lscala/Array$$anonfun$apply$9;->i$5:Lscala/runtime/IntRef;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 163
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToChar(Ljava/lang/Object;)C

    move-result p1

    invoke-virtual {p0, p1}, Lscala/Array$$anonfun$apply$9;->apply(C)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(C)V
    .locals 2

    .line 163
    iget-object v0, p0, Lscala/Array$$anonfun$apply$9;->array$5:[C

    iget-object v1, p0, Lscala/Array$$anonfun$apply$9;->i$5:Lscala/runtime/IntRef;

    iget v1, v1, Lscala/runtime/IntRef;->elem:I

    aput-char p1, v0, v1

    iget-object p1, p0, Lscala/Array$$anonfun$apply$9;->i$5:Lscala/runtime/IntRef;

    iget v0, p1, Lscala/runtime/IntRef;->elem:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lscala/runtime/IntRef;->elem:I

    return-void
.end method
