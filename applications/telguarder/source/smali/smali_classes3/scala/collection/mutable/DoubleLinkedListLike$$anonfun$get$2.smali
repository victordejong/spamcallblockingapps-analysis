.class public final Lscala/collection/mutable/DoubleLinkedListLike$$anonfun$get$2;
.super Lscala/runtime/AbstractFunction0;
.source "DoubleLinkedListLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/DoubleLinkedListLike;->get(I)Lscala/Option;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Lscala/None$;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lscala/collection/mutable/DoubleLinkedListLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/DoubleLinkedListLike<",
            "TA;TThis;>;)V"
        }
    .end annotation

    .line 119
    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 119
    invoke-virtual {p0}, Lscala/collection/mutable/DoubleLinkedListLike$$anonfun$get$2;->apply()Lscala/None$;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Lscala/None$;
    .locals 1

    .line 119
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    return-object v0
.end method
