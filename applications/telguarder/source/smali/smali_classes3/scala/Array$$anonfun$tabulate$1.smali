.class public final Lscala/Array$$anonfun$tabulate$1;
.super Lscala/runtime/AbstractFunction1;
.source "Array.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/Array$;->tabulate(IILscala/Function2;Lscala/reflect/ClassTag;)[Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final evidence$15$1:Lscala/reflect/ClassTag;

.field public final f$4:Lscala/Function2;

.field private final n2$6:I


# direct methods
.method public constructor <init>(ILscala/Function2;Lscala/reflect/ClassTag;)V
    .locals 0

    .line 345
    iput p1, p0, Lscala/Array$$anonfun$tabulate$1;->n2$6:I

    iput-object p2, p0, Lscala/Array$$anonfun$tabulate$1;->f$4:Lscala/Function2;

    iput-object p3, p0, Lscala/Array$$anonfun$tabulate$1;->evidence$15$1:Lscala/reflect/ClassTag;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 345
    sget-object v0, Lscala/Array$;->MODULE$:Lscala/Array$;

    iget v1, p0, Lscala/Array$$anonfun$tabulate$1;->n2$6:I

    new-instance v2, Lscala/Array$$anonfun$tabulate$1$$anonfun$apply$11;

    invoke-direct {v2, p0, p1}, Lscala/Array$$anonfun$tabulate$1$$anonfun$apply$11;-><init>(Lscala/Array$$anonfun$tabulate$1;I)V

    iget-object p1, p0, Lscala/Array$$anonfun$tabulate$1;->evidence$15$1:Lscala/reflect/ClassTag;

    invoke-virtual {v0, v1, v2, p1}, Lscala/Array$;->tabulate(ILscala/Function1;Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 345
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/Array$$anonfun$tabulate$1;->apply(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
