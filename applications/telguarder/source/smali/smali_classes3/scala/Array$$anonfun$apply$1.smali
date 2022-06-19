.class public final Lscala/Array$$anonfun$apply$1;
.super Lscala/runtime/AbstractFunction1$mcVI$sp;
.source "Array.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/Array$;->apply(ILscala/collection/Seq;)[I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final array$6:[I

.field private final i$6:Lscala/runtime/IntRef;


# direct methods
.method public constructor <init>([ILscala/runtime/IntRef;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lscala/Array$$anonfun$apply$1;->array$6:[I

    iput-object p2, p0, Lscala/Array$$anonfun$apply$1;->i$6:Lscala/runtime/IntRef;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1$mcVI$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 173
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/Array$$anonfun$apply$1;->apply(I)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(I)V
    .locals 0

    .line 173
    invoke-virtual {p0, p1}, Lscala/Array$$anonfun$apply$1;->apply$mcVI$sp(I)V

    return-void
.end method

.method public apply$mcVI$sp(I)V
    .locals 2

    .line 173
    iget-object v0, p0, Lscala/Array$$anonfun$apply$1;->array$6:[I

    iget-object v1, p0, Lscala/Array$$anonfun$apply$1;->i$6:Lscala/runtime/IntRef;

    iget v1, v1, Lscala/runtime/IntRef;->elem:I

    aput p1, v0, v1

    iget-object p1, p0, Lscala/Array$$anonfun$apply$1;->i$6:Lscala/runtime/IntRef;

    iget v0, p1, Lscala/runtime/IntRef;->elem:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lscala/runtime/IntRef;->elem:I

    return-void
.end method
