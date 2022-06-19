.class public final Lscala/Array$$anonfun$tabulate$2;
.super Lscala/runtime/AbstractFunction1;
.source "Array.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/Array$;->tabulate(IIILscala/Function3;Lscala/reflect/ClassTag;)[[Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/lang/Object;",
        "[",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final evidence$16$1:Lscala/reflect/ClassTag;

.field public final f$3:Lscala/Function3;

.field private final n2$5:I

.field private final n3$4:I


# direct methods
.method public constructor <init>(IILscala/Function3;Lscala/reflect/ClassTag;)V
    .locals 0

    .line 356
    iput p1, p0, Lscala/Array$$anonfun$tabulate$2;->n2$5:I

    iput p2, p0, Lscala/Array$$anonfun$tabulate$2;->n3$4:I

    iput-object p3, p0, Lscala/Array$$anonfun$tabulate$2;->f$3:Lscala/Function3;

    iput-object p4, p0, Lscala/Array$$anonfun$tabulate$2;->evidence$16$1:Lscala/reflect/ClassTag;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 356
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/Array$$anonfun$tabulate$2;->apply(I)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final apply(I)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 356
    sget-object v0, Lscala/Array$;->MODULE$:Lscala/Array$;

    iget v1, p0, Lscala/Array$$anonfun$tabulate$2;->n2$5:I

    iget v2, p0, Lscala/Array$$anonfun$tabulate$2;->n3$4:I

    new-instance v3, Lscala/Array$$anonfun$tabulate$2$$anonfun$apply$12;

    invoke-direct {v3, p0, p1}, Lscala/Array$$anonfun$tabulate$2$$anonfun$apply$12;-><init>(Lscala/Array$$anonfun$tabulate$2;I)V

    iget-object p1, p0, Lscala/Array$$anonfun$tabulate$2;->evidence$16$1:Lscala/reflect/ClassTag;

    invoke-virtual {v0, v1, v2, v3, p1}, Lscala/Array$;->tabulate(IILscala/Function2;Lscala/reflect/ClassTag;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
