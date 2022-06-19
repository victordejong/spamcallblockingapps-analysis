.class public final Lscala/App$$anonfun$main$1;
.super Lscala/runtime/AbstractFunction1;
.source "App.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/App;->main([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/Function0<",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lscala/App;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 76
    check-cast p1, Lscala/Function0;

    invoke-virtual {p0, p1}, Lscala/App$$anonfun$main$1;->apply(Lscala/Function0;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Lscala/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function0<",
            "Lscala/runtime/BoxedUnit;",
            ">;)V"
        }
    .end annotation

    .line 76
    invoke-interface {p1}, Lscala/Function0;->apply$mcV$sp()V

    return-void
.end method
