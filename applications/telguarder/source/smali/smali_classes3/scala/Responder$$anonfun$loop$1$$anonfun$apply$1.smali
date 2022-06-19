.class public final Lscala/Responder$$anonfun$loop$1$$anonfun$apply$1;
.super Lscala/runtime/AbstractFunction1;
.source "Responder.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/Responder$$anonfun$loop$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/runtime/Nothing$;",
        "Lscala/runtime/Nothing$;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lscala/Responder$$anonfun$loop$1;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    check-cast p1, Lscala/runtime/Nothing$;

    invoke-virtual {p0, p1}, Lscala/Responder$$anonfun$loop$1$$anonfun$apply$1;->apply(Lscala/runtime/Nothing$;)Lscala/runtime/Nothing$;

    move-result-object p1

    throw p1
.end method

.method public final apply(Lscala/runtime/Nothing$;)Lscala/runtime/Nothing$;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/runtime/Nothing$;",
            ")",
            "Lscala/runtime/Nothing$;"
        }
    .end annotation

    return-object p1
.end method
