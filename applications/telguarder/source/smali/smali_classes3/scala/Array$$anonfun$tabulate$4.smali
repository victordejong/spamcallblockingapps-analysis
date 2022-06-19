.class public final Lscala/Array$$anonfun$tabulate$4;
.super Lscala/runtime/AbstractFunction1;
.source "Array.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/Array$;->tabulate(IIIIILscala/Function5;Lscala/reflect/ClassTag;)[[[[Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/lang/Object;",
        "[[[",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final evidence$18$1:Lscala/reflect/ClassTag;

.field public final f$1:Lscala/Function5;

.field private final n2$3:I

.field private final n3$2:I

.field private final n4$1:I

.field private final n5$1:I


# direct methods
.method public constructor <init>(IIIILscala/Function5;Lscala/reflect/ClassTag;)V
    .locals 0

    .line 381
    iput p1, p0, Lscala/Array$$anonfun$tabulate$4;->n2$3:I

    iput p2, p0, Lscala/Array$$anonfun$tabulate$4;->n3$2:I

    iput p3, p0, Lscala/Array$$anonfun$tabulate$4;->n4$1:I

    iput p4, p0, Lscala/Array$$anonfun$tabulate$4;->n5$1:I

    iput-object p5, p0, Lscala/Array$$anonfun$tabulate$4;->f$1:Lscala/Function5;

    iput-object p6, p0, Lscala/Array$$anonfun$tabulate$4;->evidence$18$1:Lscala/reflect/ClassTag;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 381
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/Array$$anonfun$tabulate$4;->apply(I)[[[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final apply(I)[[[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[[[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 381
    sget-object v0, Lscala/Array$;->MODULE$:Lscala/Array$;

    iget v1, p0, Lscala/Array$$anonfun$tabulate$4;->n2$3:I

    iget v2, p0, Lscala/Array$$anonfun$tabulate$4;->n3$2:I

    iget v3, p0, Lscala/Array$$anonfun$tabulate$4;->n4$1:I

    iget v4, p0, Lscala/Array$$anonfun$tabulate$4;->n5$1:I

    new-instance v5, Lscala/Array$$anonfun$tabulate$4$$anonfun$apply$14;

    invoke-direct {v5, p0, p1}, Lscala/Array$$anonfun$tabulate$4$$anonfun$apply$14;-><init>(Lscala/Array$$anonfun$tabulate$4;I)V

    iget-object v6, p0, Lscala/Array$$anonfun$tabulate$4;->evidence$18$1:Lscala/reflect/ClassTag;

    invoke-virtual/range {v0 .. v6}, Lscala/Array$;->tabulate(IIIILscala/Function4;Lscala/reflect/ClassTag;)[[[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
