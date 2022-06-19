.class public Lscala/util/control/TailCalls$Done$;
.super Ljava/lang/Object;
.source "TailCalls.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/util/control/TailCalls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Done$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/util/control/TailCalls$Done$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/util/control/TailCalls$Done$;

    invoke-direct {v0}, Lscala/util/control/TailCalls$Done$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/util/control/TailCalls$Done$;->MODULE$:Lscala/util/control/TailCalls$Done$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 91
    sget-object v0, Lscala/util/control/TailCalls$Done$;->MODULE$:Lscala/util/control/TailCalls$Done$;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Lscala/util/control/TailCalls$Done;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;)",
            "Lscala/util/control/TailCalls$Done<",
            "TA;>;"
        }
    .end annotation

    .line 91
    new-instance v0, Lscala/util/control/TailCalls$Done;

    invoke-direct {v0, p1}, Lscala/util/control/TailCalls$Done;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Done"

    return-object v0
.end method

.method public unapply(Lscala/util/control/TailCalls$Done;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/util/control/TailCalls$Done<",
            "TA;>;)",
            "Lscala/Option<",
            "TA;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 91
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    invoke-virtual {p1}, Lscala/util/control/TailCalls$Done;->value()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
