.class public Lscala/collection/convert/Wrappers$JPropertiesWrapper$;
.super Lscala/runtime/AbstractFunction1;
.source "Wrappers.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/convert/Wrappers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JPropertiesWrapper$"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/util/Properties;",
        "Lscala/collection/convert/Wrappers$JPropertiesWrapper;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/convert/Wrappers;


# direct methods
.method public constructor <init>(Lscala/collection/convert/Wrappers;)V
    .locals 0

    .line 408
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/convert/Wrappers$JPropertiesWrapper$;->$outer:Lscala/collection/convert/Wrappers;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 408
    iget-object v0, p0, Lscala/collection/convert/Wrappers$JPropertiesWrapper$;->$outer:Lscala/collection/convert/Wrappers;

    invoke-interface {v0}, Lscala/collection/convert/Wrappers;->JPropertiesWrapper()Lscala/collection/convert/Wrappers$JPropertiesWrapper$;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 408
    check-cast p1, Ljava/util/Properties;

    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JPropertiesWrapper$;->apply(Ljava/util/Properties;)Lscala/collection/convert/Wrappers$JPropertiesWrapper;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/util/Properties;)Lscala/collection/convert/Wrappers$JPropertiesWrapper;
    .locals 2

    .line 408
    new-instance v0, Lscala/collection/convert/Wrappers$JPropertiesWrapper;

    iget-object v1, p0, Lscala/collection/convert/Wrappers$JPropertiesWrapper$;->$outer:Lscala/collection/convert/Wrappers;

    invoke-direct {v0, v1, p1}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;-><init>(Lscala/collection/convert/Wrappers;Ljava/util/Properties;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "JPropertiesWrapper"

    return-object v0
.end method

.method public unapply(Lscala/collection/convert/Wrappers$JPropertiesWrapper;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/convert/Wrappers$JPropertiesWrapper;",
            ")",
            "Lscala/Option<",
            "Ljava/util/Properties;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 408
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    invoke-virtual {p1}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->underlying()Ljava/util/Properties;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
