.class public final Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$loop$3$1;
.super Lscala/runtime/AbstractFunction0;
.source "Stream.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/Stream;->scala$collection$immutable$Stream$$loop$3(ILscala/collection/immutable/Stream;Ljava/lang/Object;)Lscala/collection/immutable/Stream;
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
.field public final elem$1:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lscala/collection/immutable/Stream;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/Stream<",
            "TA;>;)V"
        }
    .end annotation

    .line 1021
    iput-object p2, p0, Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$loop$3$1;->elem$1:Ljava/lang/Object;

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

    .line 1021
    iget-object v0, p0, Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$loop$3$1;->elem$1:Ljava/lang/Object;

    return-object v0
.end method
