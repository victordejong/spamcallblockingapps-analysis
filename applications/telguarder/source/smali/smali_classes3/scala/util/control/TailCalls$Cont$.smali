.class public Lscala/util/control/TailCalls$Cont$;
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
    name = "Cont$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/util/control/TailCalls$Cont$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/util/control/TailCalls$Cont$;

    invoke-direct {v0}, Lscala/util/control/TailCalls$Cont$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/util/control/TailCalls$Cont$;->MODULE$:Lscala/util/control/TailCalls$Cont$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 95
    sget-object v0, Lscala/util/control/TailCalls$Cont$;->MODULE$:Lscala/util/control/TailCalls$Cont$;

    return-object v0
.end method


# virtual methods
.method public apply(Lscala/util/control/TailCalls$TailRec;Lscala/Function1;)Lscala/util/control/TailCalls$Cont;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/util/control/TailCalls$TailRec<",
            "TA;>;",
            "Lscala/Function1<",
            "TA;",
            "Lscala/util/control/TailCalls$TailRec<",
            "TB;>;>;)",
            "Lscala/util/control/TailCalls$Cont<",
            "TA;TB;>;"
        }
    .end annotation

    .line 95
    new-instance v0, Lscala/util/control/TailCalls$Cont;

    invoke-direct {v0, p1, p2}, Lscala/util/control/TailCalls$Cont;-><init>(Lscala/util/control/TailCalls$TailRec;Lscala/Function1;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Cont"

    return-object v0
.end method

.method public unapply(Lscala/util/control/TailCalls$Cont;)Lscala/Option;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/util/control/TailCalls$Cont<",
            "TA;TB;>;)",
            "Lscala/Option<",
            "Lscala/Tuple2<",
            "Lscala/util/control/TailCalls$TailRec<",
            "TA;>;",
            "Lscala/Function1<",
            "TA;",
            "Lscala/util/control/TailCalls$TailRec<",
            "TB;>;>;>;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 95
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    new-instance v1, Lscala/Tuple2;

    invoke-virtual {p1}, Lscala/util/control/TailCalls$Cont;->a()Lscala/util/control/TailCalls$TailRec;

    move-result-object v2

    invoke-virtual {p1}, Lscala/util/control/TailCalls$Cont;->f()Lscala/Function1;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
