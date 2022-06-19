.class public final Lscala/Array$$anonfun$fill$1;
.super Lscala/runtime/AbstractFunction1;
.source "Array.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/Array$;->fill(IILscala/Function0;Lscala/reflect/ClassTag;)[Ljava/lang/Object;
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
.field private final elem$1:Lscala/Function0;

.field private final evidence$10$1:Lscala/reflect/ClassTag;

.field private final n2$9:I


# direct methods
.method public constructor <init>(ILscala/Function0;Lscala/reflect/ClassTag;)V
    .locals 0

    .line 281
    iput p1, p0, Lscala/Array$$anonfun$fill$1;->n2$9:I

    iput-object p2, p0, Lscala/Array$$anonfun$fill$1;->elem$1:Lscala/Function0;

    iput-object p3, p0, Lscala/Array$$anonfun$fill$1;->evidence$10$1:Lscala/reflect/ClassTag;

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

    .line 281
    sget-object p1, Lscala/Array$;->MODULE$:Lscala/Array$;

    iget v0, p0, Lscala/Array$$anonfun$fill$1;->n2$9:I

    iget-object v1, p0, Lscala/Array$$anonfun$fill$1;->elem$1:Lscala/Function0;

    iget-object v2, p0, Lscala/Array$$anonfun$fill$1;->evidence$10$1:Lscala/reflect/ClassTag;

    invoke-virtual {p1, v0, v1, v2}, Lscala/Array$;->fill(ILscala/Function0;Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 281
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/Array$$anonfun$fill$1;->apply(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
