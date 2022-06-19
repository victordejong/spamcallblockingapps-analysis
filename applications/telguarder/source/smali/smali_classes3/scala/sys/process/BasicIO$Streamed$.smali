.class public Lscala/sys/process/BasicIO$Streamed$;
.super Ljava/lang/Object;
.source "BasicIO.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/sys/process/BasicIO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Streamed$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/sys/process/BasicIO$Streamed$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/sys/process/BasicIO$Streamed$;

    invoke-direct {v0}, Lscala/sys/process/BasicIO$Streamed$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/sys/process/BasicIO$Streamed$;->MODULE$:Lscala/sys/process/BasicIO$Streamed$;

    return-void
.end method


# virtual methods
.method public apply(Z)Lscala/sys/process/BasicIO$Streamed;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z)",
            "Lscala/sys/process/BasicIO$Streamed<",
            "TT;>;"
        }
    .end annotation

    .line 46
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 52
    new-instance v1, Lscala/sys/process/BasicIO$Streamed;

    new-instance v2, Lscala/sys/process/BasicIO$Streamed$$anonfun$apply$2;

    invoke-direct {v2, v0}, Lscala/sys/process/BasicIO$Streamed$$anonfun$apply$2;-><init>(Ljava/util/concurrent/LinkedBlockingQueue;)V

    new-instance v3, Lscala/sys/process/BasicIO$Streamed$$anonfun$apply$1;

    invoke-direct {v3, v0}, Lscala/sys/process/BasicIO$Streamed$$anonfun$apply$1;-><init>(Ljava/util/concurrent/LinkedBlockingQueue;)V

    new-instance v4, Lscala/sys/process/BasicIO$Streamed$$anonfun$apply$3;

    invoke-direct {v4, p1, v0}, Lscala/sys/process/BasicIO$Streamed$$anonfun$apply$3;-><init>(ZLjava/util/concurrent/LinkedBlockingQueue;)V

    invoke-direct {v1, v2, v3, v4}, Lscala/sys/process/BasicIO$Streamed;-><init>(Lscala/Function1;Lscala/Function1;Lscala/Function0;)V

    return-object v1
.end method

.method public final scala$sys$process$BasicIO$Streamed$$next$1(ZLjava/util/concurrent/LinkedBlockingQueue;)Lscala/collection/immutable/Stream;
    .locals 4

    .line 47
    invoke-virtual {p2}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/util/Either;

    .line 48
    instance-of v1, v0, Lscala/util/Left;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move-object v2, v0

    check-cast v2, Lscala/util/Left;

    invoke-virtual {v2}, Lscala/util/Left;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v3

    if-nez v3, :cond_1

    sget-object p1, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    sget-object p1, Lscala/collection/immutable/Stream$Empty$;->MODULE$:Lscala/collection/immutable/Stream$Empty$;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_1
    if-eqz v1, :cond_3

    if-nez p1, :cond_2

    .line 49
    sget-object p1, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    sget-object p1, Lscala/collection/immutable/Stream$Empty$;->MODULE$:Lscala/collection/immutable/Stream$Empty$;

    goto :goto_0

    :cond_2
    sget-object p1, Lscala/sys/package$;->MODULE$:Lscala/sys/package$;

    new-instance p1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {p1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string p2, "Nonzero exit code: "

    invoke-virtual {p1, p2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-virtual {v2}, Lscala/util/Left;->a()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 50
    :cond_3
    instance-of v1, v0, Lscala/util/Right;

    if-eqz v1, :cond_4

    check-cast v0, Lscala/util/Right;

    sget-object v1, Lscala/collection/immutable/Stream$cons$;->MODULE$:Lscala/collection/immutable/Stream$cons$;

    invoke-virtual {v0}, Lscala/util/Right;->b()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lscala/sys/process/BasicIO$Streamed$$anonfun$scala$sys$process$BasicIO$Streamed$$next$1$1;

    invoke-direct {v1, p1, p2}, Lscala/sys/process/BasicIO$Streamed$$anonfun$scala$sys$process$BasicIO$Streamed$$next$1$1;-><init>(ZLjava/util/concurrent/LinkedBlockingQueue;)V

    new-instance p1, Lscala/collection/immutable/Stream$Cons;

    invoke-direct {p1, v0, v1}, Lscala/collection/immutable/Stream$Cons;-><init>(Ljava/lang/Object;Lscala/Function0;)V

    :goto_0
    return-object p1

    .line 47
    :cond_4
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method
