.class public final Lscala/Option$$anonfun$orNull$1;
.super Lscala/runtime/AbstractFunction0;
.source "Option.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/Option;->orNull(Lscala/Predef$$less$colon$less;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "TA1;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final ev$1:Lscala/Predef$$less$colon$less;


# direct methods
.method public constructor <init>(Lscala/Option;Lscala/Predef$$less$colon$less;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Option<",
            "TA;>;)V"
        }
    .end annotation

    .line 132
    iput-object p2, p0, Lscala/Option$$anonfun$orNull$1;->ev$1:Lscala/Predef$$less$colon$less;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA1;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lscala/Option$$anonfun$orNull$1;->ev$1:Lscala/Predef$$less$colon$less;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lscala/Predef$$less$colon$less;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
