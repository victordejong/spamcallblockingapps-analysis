.class public final Lscala/util/control/TailCalls$;
.super Ljava/lang/Object;
.source "TailCalls.scala"


# static fields
.field public static final MODULE$:Lscala/util/control/TailCalls$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/util/control/TailCalls$;

    invoke-direct {v0}, Lscala/util/control/TailCalls$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/util/control/TailCalls$;->MODULE$:Lscala/util/control/TailCalls$;

    return-void
.end method


# virtual methods
.method public done(Ljava/lang/Object;)Lscala/util/control/TailCalls$TailRec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;)",
            "Lscala/util/control/TailCalls$TailRec<",
            "TA;>;"
        }
    .end annotation

    .line 108
    new-instance v0, Lscala/util/control/TailCalls$Done;

    invoke-direct {v0, p1}, Lscala/util/control/TailCalls$Done;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public tailcall(Lscala/Function0;)Lscala/util/control/TailCalls$TailRec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "Lscala/util/control/TailCalls$TailRec<",
            "TA;>;>;)",
            "Lscala/util/control/TailCalls$TailRec<",
            "TA;>;"
        }
    .end annotation

    .line 101
    new-instance v0, Lscala/util/control/TailCalls$Call;

    invoke-direct {v0, p1}, Lscala/util/control/TailCalls$Call;-><init>(Lscala/Function0;)V

    return-object v0
.end method
