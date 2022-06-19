.class public final Lscala/collection/SeqViewLike$Prepended$$anonfun$iterator$1;
.super Lscala/runtime/AbstractFunction0;
.source "SeqViewLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/SeqViewLike$Prepended;->iterator()Lscala/collection/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Lscala/collection/Iterator<",
        "TA;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/SeqViewLike$Prepended;


# direct methods
.method public constructor <init>(Lscala/collection/SeqViewLike$Prepended;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/SeqViewLike<",
            "TA;TColl;TThis;>.Prepended<TB;>;)V"
        }
    .end annotation

    .line 184
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/SeqViewLike$Prepended$$anonfun$iterator$1;->$outer:Lscala/collection/SeqViewLike$Prepended;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 184
    invoke-virtual {p0}, Lscala/collection/SeqViewLike$Prepended$$anonfun$iterator$1;->apply()Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lscala/collection/SeqViewLike$Prepended$$anonfun$iterator$1;->$outer:Lscala/collection/SeqViewLike$Prepended;

    invoke-interface {v0}, Lscala/collection/SeqViewLike$Prepended;->scala$collection$SeqViewLike$Prepended$$$outer()Lscala/collection/SeqViewLike;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/SeqViewLike;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method
