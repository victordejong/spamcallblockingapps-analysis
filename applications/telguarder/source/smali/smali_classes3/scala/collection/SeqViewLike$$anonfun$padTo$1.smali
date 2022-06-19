.class public final Lscala/collection/SeqViewLike$$anonfun$padTo$1;
.super Lscala/runtime/AbstractFunction0;
.source "SeqViewLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/SeqViewLike;->padTo(ILjava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
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
.field private final elem$2:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lscala/collection/SeqViewLike;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/SeqViewLike<",
            "TA;TColl;TThis;>;)V"
        }
    .end annotation

    .line 234
    iput-object p2, p0, Lscala/collection/SeqViewLike$$anonfun$padTo$1;->elem$2:Ljava/lang/Object;

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

    .line 234
    iget-object v0, p0, Lscala/collection/SeqViewLike$$anonfun$padTo$1;->elem$2:Ljava/lang/Object;

    return-object v0
.end method
