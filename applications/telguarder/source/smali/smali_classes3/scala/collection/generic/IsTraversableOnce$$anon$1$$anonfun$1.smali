.class public final Lscala/collection/generic/IsTraversableOnce$$anon$1$$anonfun$1;
.super Lscala/runtime/AbstractFunction1;
.source "IsTraversableOnce.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/generic/IsTraversableOnce$$anon$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lscala/collection/generic/IsTraversableOnce$$anon$1;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 54
    new-instance v0, Lscala/collection/immutable/StringOps;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lscala/collection/generic/IsTraversableOnce$$anon$1$$anonfun$1;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final apply(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 54
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    return-object p1
.end method
