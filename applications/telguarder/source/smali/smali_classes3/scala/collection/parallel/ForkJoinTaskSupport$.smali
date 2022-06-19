.class public final Lscala/collection/parallel/ForkJoinTaskSupport$;
.super Ljava/lang/Object;
.source "TaskSupport.scala"


# static fields
.field public static final MODULE$:Lscala/collection/parallel/ForkJoinTaskSupport$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/parallel/ForkJoinTaskSupport$;

    invoke-direct {v0}, Lscala/collection/parallel/ForkJoinTaskSupport$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/parallel/ForkJoinTaskSupport$;->MODULE$:Lscala/collection/parallel/ForkJoinTaskSupport$;

    return-void
.end method


# virtual methods
.method public $lessinit$greater$default$1()Lscala/concurrent/forkjoin/ForkJoinPool;
    .locals 1

    .line 56
    sget-object v0, Lscala/collection/parallel/ForkJoinTasks$;->MODULE$:Lscala/collection/parallel/ForkJoinTasks$;

    invoke-virtual {v0}, Lscala/collection/parallel/ForkJoinTasks$;->defaultForkJoinPool()Lscala/concurrent/forkjoin/ForkJoinPool;

    move-result-object v0

    return-object v0
.end method
