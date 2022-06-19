.class public final Lscala/Array$$anonfun$ofDim$4;
.super Lscala/runtime/AbstractFunction1;
.source "Array.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/Array$;->ofDim(IIIIILscala/reflect/ClassTag;)[[[[Ljava/lang/Object;
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
.field private final evidence$7$1:Lscala/reflect/ClassTag;

.field private final n2$7:I

.field private final n3$5:I

.field private final n4$3:I

.field private final n5$2:I


# direct methods
.method public constructor <init>(IIIILscala/reflect/ClassTag;)V
    .locals 0

    .line 234
    iput p1, p0, Lscala/Array$$anonfun$ofDim$4;->n2$7:I

    iput p2, p0, Lscala/Array$$anonfun$ofDim$4;->n3$5:I

    iput p3, p0, Lscala/Array$$anonfun$ofDim$4;->n4$3:I

    iput p4, p0, Lscala/Array$$anonfun$ofDim$4;->n5$2:I

    iput-object p5, p0, Lscala/Array$$anonfun$ofDim$4;->evidence$7$1:Lscala/reflect/ClassTag;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 234
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/Array$$anonfun$ofDim$4;->apply(I)[[[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final apply(I)[[[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[[[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 234
    sget-object v0, Lscala/Array$;->MODULE$:Lscala/Array$;

    iget v1, p0, Lscala/Array$$anonfun$ofDim$4;->n2$7:I

    iget v2, p0, Lscala/Array$$anonfun$ofDim$4;->n3$5:I

    iget v3, p0, Lscala/Array$$anonfun$ofDim$4;->n4$3:I

    iget v4, p0, Lscala/Array$$anonfun$ofDim$4;->n5$2:I

    iget-object v5, p0, Lscala/Array$$anonfun$ofDim$4;->evidence$7$1:Lscala/reflect/ClassTag;

    invoke-virtual/range {v0 .. v5}, Lscala/Array$;->ofDim(IIIILscala/reflect/ClassTag;)[[[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
