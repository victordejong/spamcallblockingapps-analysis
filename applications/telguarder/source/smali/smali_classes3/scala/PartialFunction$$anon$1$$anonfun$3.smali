.class public final Lscala/PartialFunction$$anon$1$$anonfun$3;
.super Lscala/runtime/AbstractFunction1;
.source "PartialFunction.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/PartialFunction$$anon$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/lang/Object;",
        "Lscala/None$;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lscala/PartialFunction$$anon$1;)V
    .locals 0

    .line 256
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 256
    invoke-virtual {p0, p1}, Lscala/PartialFunction$$anon$1$$anonfun$3;->apply(Ljava/lang/Object;)Lscala/None$;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Lscala/None$;
    .locals 0

    .line 256
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    return-object p1
.end method
