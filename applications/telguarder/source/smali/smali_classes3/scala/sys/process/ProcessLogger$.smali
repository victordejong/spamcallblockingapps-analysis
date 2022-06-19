.class public final Lscala/sys/process/ProcessLogger$;
.super Ljava/lang/Object;
.source "ProcessLogger.scala"


# static fields
.field public static final MODULE$:Lscala/sys/process/ProcessLogger$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/sys/process/ProcessLogger$;

    invoke-direct {v0}, Lscala/sys/process/ProcessLogger$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/sys/process/ProcessLogger$;->MODULE$:Lscala/sys/process/ProcessLogger$;

    return-void
.end method


# virtual methods
.method public apply(Ljava/io/File;)Lscala/sys/process/FileProcessLogger;
    .locals 1

    .line 81
    new-instance v0, Lscala/sys/process/FileProcessLogger;

    invoke-direct {v0, p1}, Lscala/sys/process/FileProcessLogger;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public apply(Lscala/Function1;)Lscala/sys/process/ProcessLogger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/lang/String;",
            "Lscala/runtime/BoxedUnit;",
            ">;)",
            "Lscala/sys/process/ProcessLogger;"
        }
    .end annotation

    .line 86
    new-instance v0, Lscala/sys/process/ProcessLogger$$anon$1;

    invoke-direct {v0, p1, p1}, Lscala/sys/process/ProcessLogger$$anon$1;-><init>(Lscala/Function1;Lscala/Function1;)V

    return-object v0
.end method

.method public apply(Lscala/Function1;Lscala/Function1;)Lscala/sys/process/ProcessLogger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/lang/String;",
            "Lscala/runtime/BoxedUnit;",
            ">;",
            "Lscala/Function1<",
            "Ljava/lang/String;",
            "Lscala/runtime/BoxedUnit;",
            ">;)",
            "Lscala/sys/process/ProcessLogger;"
        }
    .end annotation

    .line 96
    new-instance v0, Lscala/sys/process/ProcessLogger$$anon$1;

    invoke-direct {v0, p1, p2}, Lscala/sys/process/ProcessLogger$$anon$1;-><init>(Lscala/Function1;Lscala/Function1;)V

    return-object v0
.end method
