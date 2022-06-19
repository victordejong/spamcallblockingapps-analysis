.class public final Lscala/collection/parallel/ThreadPoolTaskSupport$;
.super Ljava/lang/Object;
.source "TaskSupport.scala"


# static fields
.field public static final MODULE$:Lscala/collection/parallel/ThreadPoolTaskSupport$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/parallel/ThreadPoolTaskSupport$;

    invoke-direct {v0}, Lscala/collection/parallel/ThreadPoolTaskSupport$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/parallel/ThreadPoolTaskSupport$;->MODULE$:Lscala/collection/parallel/ThreadPoolTaskSupport$;

    return-void
.end method


# virtual methods
.method public $lessinit$greater$default$1()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    .line 64
    sget-object v0, Lscala/collection/parallel/ThreadPoolTasks$;->MODULE$:Lscala/collection/parallel/ThreadPoolTasks$;

    invoke-virtual {v0}, Lscala/collection/parallel/ThreadPoolTasks$;->defaultThreadPool()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    return-object v0
.end method
