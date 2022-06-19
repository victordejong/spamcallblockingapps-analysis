.class public final Lscala/util/PropertiesTrait$$anonfun$4;
.super Lscala/runtime/AbstractFunction1;
.source "Properties.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/util/PropertiesTrait;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/lang/String;",
        "Lscala/Option<",
        "Ljava/lang/String;",
        ">;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/util/PropertiesTrait;


# direct methods
.method public constructor <init>(Lscala/util/PropertiesTrait;)V
    .locals 0

    .line 94
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/util/PropertiesTrait$$anonfun$4;->$outer:Lscala/util/PropertiesTrait;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 94
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lscala/util/PropertiesTrait$$anonfun$4;->apply(Ljava/lang/String;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/String;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lscala/Option<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object p1, p0, Lscala/util/PropertiesTrait$$anonfun$4;->$outer:Lscala/util/PropertiesTrait;

    const-string v0, "version.number"

    invoke-interface {p1, v0}, Lscala/util/PropertiesTrait;->scalaPropOrNone(Ljava/lang/String;)Lscala/Option;

    move-result-object p1

    invoke-virtual {p1}, Lscala/Option;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    invoke-virtual {p1}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
