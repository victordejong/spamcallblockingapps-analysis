.class public final Lscala/collection/Iterator$GroupedIterator$$anonfun$padding$1;
.super Lscala/runtime/AbstractFunction0;
.source "Iterator.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/Iterator$GroupedIterator;->padding(I)Lscala/collection/immutable/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "TB;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/Iterator$GroupedIterator;


# direct methods
.method public constructor <init>(Lscala/collection/Iterator$GroupedIterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Iterator<",
            "TA;>.GroupedIterator<TB;>;)V"
        }
    .end annotation

    .line 940
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/Iterator$GroupedIterator$$anonfun$padding$1;->$outer:Lscala/collection/Iterator$GroupedIterator;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 940
    iget-object v0, p0, Lscala/collection/Iterator$GroupedIterator$$anonfun$padding$1;->$outer:Lscala/collection/Iterator$GroupedIterator;

    iget-object v0, v0, Lscala/collection/Iterator$GroupedIterator;->scala$collection$Iterator$GroupedIterator$$pad:Lscala/Option;

    invoke-virtual {v0}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/Function0;

    invoke-interface {v0}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
