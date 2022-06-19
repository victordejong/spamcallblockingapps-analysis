.class public final Lscala/Array$$anonfun$tabulate$3;
.super Lscala/runtime/AbstractFunction1;
.source "Array.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/Array$;->tabulate(IIIILscala/Function4;Lscala/reflect/ClassTag;)[[[Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/lang/Object;",
        "[[",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final evidence$17$1:Lscala/reflect/ClassTag;

.field public final f$2:Lscala/Function4;

.field private final n2$4:I

.field private final n3$3:I

.field private final n4$2:I


# direct methods
.method public constructor <init>(IIILscala/Function4;Lscala/reflect/ClassTag;)V
    .locals 0

    .line 368
    iput p1, p0, Lscala/Array$$anonfun$tabulate$3;->n2$4:I

    iput p2, p0, Lscala/Array$$anonfun$tabulate$3;->n3$3:I

    iput p3, p0, Lscala/Array$$anonfun$tabulate$3;->n4$2:I

    iput-object p4, p0, Lscala/Array$$anonfun$tabulate$3;->f$2:Lscala/Function4;

    iput-object p5, p0, Lscala/Array$$anonfun$tabulate$3;->evidence$17$1:Lscala/reflect/ClassTag;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 368
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/Array$$anonfun$tabulate$3;->apply(I)[[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final apply(I)[[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 368
    sget-object v0, Lscala/Array$;->MODULE$:Lscala/Array$;

    iget v1, p0, Lscala/Array$$anonfun$tabulate$3;->n2$4:I

    iget v2, p0, Lscala/Array$$anonfun$tabulate$3;->n3$3:I

    iget v3, p0, Lscala/Array$$anonfun$tabulate$3;->n4$2:I

    new-instance v4, Lscala/Array$$anonfun$tabulate$3$$anonfun$apply$13;

    invoke-direct {v4, p0, p1}, Lscala/Array$$anonfun$tabulate$3$$anonfun$apply$13;-><init>(Lscala/Array$$anonfun$tabulate$3;I)V

    iget-object v5, p0, Lscala/Array$$anonfun$tabulate$3;->evidence$17$1:Lscala/reflect/ClassTag;

    invoke-virtual/range {v0 .. v5}, Lscala/Array$;->tabulate(IIILscala/Function3;Lscala/reflect/ClassTag;)[[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
