.class public final Lscala/sys/process/BasicIO$Streamed$$anonfun$scala$sys$process$BasicIO$Streamed$$next$1$1;
.super Lscala/runtime/AbstractFunction0;
.source "BasicIO.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/sys/process/BasicIO$Streamed$;->scala$sys$process$BasicIO$Streamed$$next$1(ZLjava/util/concurrent/LinkedBlockingQueue;)Lscala/collection/immutable/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Lscala/collection/immutable/Stream<",
        "TT;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final nonzeroException$1:Z

.field private final q$1:Ljava/util/concurrent/LinkedBlockingQueue;


# direct methods
.method public constructor <init>(ZLjava/util/concurrent/LinkedBlockingQueue;)V
    .locals 0

    .line 50
    iput-boolean p1, p0, Lscala/sys/process/BasicIO$Streamed$$anonfun$scala$sys$process$BasicIO$Streamed$$next$1$1;->nonzeroException$1:Z

    iput-object p2, p0, Lscala/sys/process/BasicIO$Streamed$$anonfun$scala$sys$process$BasicIO$Streamed$$next$1$1;->q$1:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lscala/sys/process/BasicIO$Streamed$$anonfun$scala$sys$process$BasicIO$Streamed$$next$1$1;->apply()Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Lscala/collection/immutable/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 50
    sget-object v0, Lscala/sys/process/BasicIO$Streamed$;->MODULE$:Lscala/sys/process/BasicIO$Streamed$;

    iget-boolean v1, p0, Lscala/sys/process/BasicIO$Streamed$$anonfun$scala$sys$process$BasicIO$Streamed$$next$1$1;->nonzeroException$1:Z

    iget-object v2, p0, Lscala/sys/process/BasicIO$Streamed$$anonfun$scala$sys$process$BasicIO$Streamed$$next$1$1;->q$1:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, v1, v2}, Lscala/sys/process/BasicIO$Streamed$;->scala$sys$process$BasicIO$Streamed$$next$1(ZLjava/util/concurrent/LinkedBlockingQueue;)Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method
