.class public final Lscala/Array$$anonfun$ofDim$3;
.super Lscala/runtime/AbstractFunction1;
.source "Array.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/Array$;->ofDim(IIIILscala/reflect/ClassTag;)[[[Ljava/lang/Object;
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
.field private final evidence$6$1:Lscala/reflect/ClassTag;

.field private final n2$8:I

.field private final n3$6:I

.field private final n4$4:I


# direct methods
.method public constructor <init>(IIILscala/reflect/ClassTag;)V
    .locals 0

    .line 231
    iput p1, p0, Lscala/Array$$anonfun$ofDim$3;->n2$8:I

    iput p2, p0, Lscala/Array$$anonfun$ofDim$3;->n3$6:I

    iput p3, p0, Lscala/Array$$anonfun$ofDim$3;->n4$4:I

    iput-object p4, p0, Lscala/Array$$anonfun$ofDim$3;->evidence$6$1:Lscala/reflect/ClassTag;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 231
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/Array$$anonfun$ofDim$3;->apply(I)[[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final apply(I)[[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 231
    sget-object p1, Lscala/Array$;->MODULE$:Lscala/Array$;

    iget v0, p0, Lscala/Array$$anonfun$ofDim$3;->n2$8:I

    iget v1, p0, Lscala/Array$$anonfun$ofDim$3;->n3$6:I

    iget v2, p0, Lscala/Array$$anonfun$ofDim$3;->n4$4:I

    iget-object v3, p0, Lscala/Array$$anonfun$ofDim$3;->evidence$6$1:Lscala/reflect/ClassTag;

    invoke-virtual {p1, v0, v1, v2, v3}, Lscala/Array$;->ofDim(IIILscala/reflect/ClassTag;)[[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
