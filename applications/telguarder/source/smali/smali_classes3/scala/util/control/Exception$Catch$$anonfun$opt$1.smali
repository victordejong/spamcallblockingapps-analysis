.class public final Lscala/util/control/Exception$Catch$$anonfun$opt$1;
.super Lscala/runtime/AbstractFunction0;
.source "Exception.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/util/control/Exception$Catch;->opt(Lscala/Function0;)Lscala/Option;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Lscala/Some<",
        "TU;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final body$1:Lscala/Function0;


# direct methods
.method public constructor <init>(Lscala/util/control/Exception$Catch;Lscala/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/util/control/Exception$Catch<",
            "TT;>;)V"
        }
    .end annotation

    .line 119
    iput-object p2, p0, Lscala/util/control/Exception$Catch$$anonfun$opt$1;->body$1:Lscala/Function0;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 119
    invoke-virtual {p0}, Lscala/util/control/Exception$Catch$$anonfun$opt$1;->apply()Lscala/Some;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Lscala/Some;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Some<",
            "TU;>;"
        }
    .end annotation

    .line 119
    new-instance v0, Lscala/Some;

    iget-object v1, p0, Lscala/util/control/Exception$Catch$$anonfun$opt$1;->body$1:Lscala/Function0;

    invoke-interface {v1}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
