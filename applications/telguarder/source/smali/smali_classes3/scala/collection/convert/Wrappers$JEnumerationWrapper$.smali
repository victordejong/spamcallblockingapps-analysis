.class public Lscala/collection/convert/Wrappers$JEnumerationWrapper$;
.super Ljava/lang/Object;
.source "Wrappers.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/convert/Wrappers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JEnumerationWrapper$"
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/convert/Wrappers;


# direct methods
.method public constructor <init>(Lscala/collection/convert/Wrappers;)V
    .locals 0

    .line 46
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/convert/Wrappers$JEnumerationWrapper$;->$outer:Lscala/collection/convert/Wrappers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 46
    iget-object v0, p0, Lscala/collection/convert/Wrappers$JEnumerationWrapper$;->$outer:Lscala/collection/convert/Wrappers;

    invoke-interface {v0}, Lscala/collection/convert/Wrappers;->JEnumerationWrapper()Lscala/collection/convert/Wrappers$JEnumerationWrapper$;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/util/Enumeration;)Lscala/collection/convert/Wrappers$JEnumerationWrapper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Enumeration<",
            "TA;>;)",
            "Lscala/collection/convert/Wrappers$JEnumerationWrapper<",
            "TA;>;"
        }
    .end annotation

    .line 46
    new-instance v0, Lscala/collection/convert/Wrappers$JEnumerationWrapper;

    iget-object v1, p0, Lscala/collection/convert/Wrappers$JEnumerationWrapper$;->$outer:Lscala/collection/convert/Wrappers;

    invoke-direct {v0, v1, p1}, Lscala/collection/convert/Wrappers$JEnumerationWrapper;-><init>(Lscala/collection/convert/Wrappers;Ljava/util/Enumeration;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "JEnumerationWrapper"

    return-object v0
.end method

.method public unapply(Lscala/collection/convert/Wrappers$JEnumerationWrapper;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/convert/Wrappers$JEnumerationWrapper<",
            "TA;>;)",
            "Lscala/Option<",
            "Ljava/util/Enumeration<",
            "TA;>;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 46
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    invoke-virtual {p1}, Lscala/collection/convert/Wrappers$JEnumerationWrapper;->underlying()Ljava/util/Enumeration;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
