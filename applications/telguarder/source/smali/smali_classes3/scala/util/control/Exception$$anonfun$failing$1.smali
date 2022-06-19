.class public final Lscala/util/control/Exception$$anonfun$failing$1;
.super Lscala/runtime/AbstractFunction1;
.source "Exception.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/util/control/Exception$;->failing(Lscala/collection/Seq;)Lscala/util/control/Exception$Catch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/lang/Throwable;",
        "Lscala/None$;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 189
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 189
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lscala/util/control/Exception$$anonfun$failing$1;->apply(Ljava/lang/Throwable;)Lscala/None$;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Throwable;)Lscala/None$;
    .locals 0

    .line 189
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    return-object p1
.end method
