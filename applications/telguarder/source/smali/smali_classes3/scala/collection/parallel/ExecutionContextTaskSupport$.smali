.class public final Lscala/collection/parallel/ExecutionContextTaskSupport$;
.super Ljava/lang/Object;
.source "TaskSupport.scala"


# static fields
.field public static final MODULE$:Lscala/collection/parallel/ExecutionContextTaskSupport$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/parallel/ExecutionContextTaskSupport$;

    invoke-direct {v0}, Lscala/collection/parallel/ExecutionContextTaskSupport$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/parallel/ExecutionContextTaskSupport$;->MODULE$:Lscala/collection/parallel/ExecutionContextTaskSupport$;

    return-void
.end method


# virtual methods
.method public $lessinit$greater$default$1()Lscala/concurrent/ExecutionContext;
    .locals 1

    .line 80
    sget-object v0, Lscala/concurrent/ExecutionContext$;->MODULE$:Lscala/concurrent/ExecutionContext$;

    invoke-virtual {v0}, Lscala/concurrent/ExecutionContext$;->global()Lscala/concurrent/ExecutionContextExecutor;

    move-result-object v0

    return-object v0
.end method
