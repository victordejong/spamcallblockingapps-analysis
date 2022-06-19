.class public final Lscala/collection/generic/GenTraversableFactory$$anonfun$fill$1;
.super Lscala/runtime/AbstractFunction1;
.source "GenTraversableFactory.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/generic/GenTraversableFactory;->fill(IILscala/Function0;)Lscala/collection/GenTraversable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/lang/Object;",
        "TCC;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/generic/GenTraversableFactory;

.field private final elem$4:Lscala/Function0;

.field private final n2$4:I


# direct methods
.method public constructor <init>(Lscala/collection/generic/GenTraversableFactory;ILscala/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/generic/GenTraversableFactory<",
            "TCC;>;)V"
        }
    .end annotation

    .line 103
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/generic/GenTraversableFactory$$anonfun$fill$1;->$outer:Lscala/collection/generic/GenTraversableFactory;

    iput p2, p0, Lscala/collection/generic/GenTraversableFactory$$anonfun$fill$1;->n2$4:I

    iput-object p3, p0, Lscala/collection/generic/GenTraversableFactory$$anonfun$fill$1;->elem$4:Lscala/Function0;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 103
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/generic/GenTraversableFactory$$anonfun$fill$1;->apply(I)Lscala/collection/GenTraversable;

    move-result-object p1

    return-object p1
.end method

.method public final apply(I)Lscala/collection/GenTraversable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TCC;"
        }
    .end annotation

    .line 103
    iget-object p1, p0, Lscala/collection/generic/GenTraversableFactory$$anonfun$fill$1;->$outer:Lscala/collection/generic/GenTraversableFactory;

    iget v0, p0, Lscala/collection/generic/GenTraversableFactory$$anonfun$fill$1;->n2$4:I

    iget-object v1, p0, Lscala/collection/generic/GenTraversableFactory$$anonfun$fill$1;->elem$4:Lscala/Function0;

    invoke-virtual {p1, v0, v1}, Lscala/collection/generic/GenTraversableFactory;->fill(ILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p1

    return-object p1
.end method
