.class public final Lscala/Array$$anonfun$fill$2;
.super Lscala/runtime/AbstractFunction1;
.source "Array.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/Array$;->fill(IIILscala/Function0;Lscala/reflect/ClassTag;)[[Ljava/lang/Object;
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
.field private final elem$4:Lscala/Function0;

.field private final evidence$11$1:Lscala/reflect/ClassTag;

.field private final n2$12:I

.field private final n3$9:I


# direct methods
.method public constructor <init>(IILscala/Function0;Lscala/reflect/ClassTag;)V
    .locals 0

    .line 292
    iput p1, p0, Lscala/Array$$anonfun$fill$2;->n2$12:I

    iput p2, p0, Lscala/Array$$anonfun$fill$2;->n3$9:I

    iput-object p3, p0, Lscala/Array$$anonfun$fill$2;->elem$4:Lscala/Function0;

    iput-object p4, p0, Lscala/Array$$anonfun$fill$2;->evidence$11$1:Lscala/reflect/ClassTag;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 292
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/Array$$anonfun$fill$2;->apply(I)[Ljava/lang/Object;

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

    .line 292
    sget-object p1, Lscala/Array$;->MODULE$:Lscala/Array$;

    iget v0, p0, Lscala/Array$$anonfun$fill$2;->n2$12:I

    iget v1, p0, Lscala/Array$$anonfun$fill$2;->n3$9:I

    iget-object v2, p0, Lscala/Array$$anonfun$fill$2;->elem$4:Lscala/Function0;

    iget-object v3, p0, Lscala/Array$$anonfun$fill$2;->evidence$11$1:Lscala/reflect/ClassTag;

    invoke-virtual {p1, v0, v1, v2, v3}, Lscala/Array$;->fill(IILscala/Function0;Lscala/reflect/ClassTag;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
