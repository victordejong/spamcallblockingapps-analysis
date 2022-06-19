.class public final Lscala/sys/process/BasicIO$Streamed$$anonfun$apply$1;
.super Lscala/runtime/AbstractFunction1$mcVI$sp;
.source "BasicIO.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/sys/process/BasicIO$Streamed$;->apply(Z)Lscala/sys/process/BasicIO$Streamed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final q$1:Ljava/util/concurrent/LinkedBlockingQueue;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/LinkedBlockingQueue;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lscala/sys/process/BasicIO$Streamed$$anonfun$apply$1;->q$1:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1$mcVI$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 52
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/sys/process/BasicIO$Streamed$$anonfun$apply$1;->apply(I)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(I)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lscala/sys/process/BasicIO$Streamed$$anonfun$apply$1;->apply$mcVI$sp(I)V

    return-void
.end method

.method public apply$mcVI$sp(I)V
    .locals 2

    .line 52
    iget-object v0, p0, Lscala/sys/process/BasicIO$Streamed$$anonfun$apply$1;->q$1:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v1, Lscala/package$;->MODULE$:Lscala/package$;

    invoke-virtual {v1}, Lscala/package$;->Left()Lscala/util/Left$;

    move-result-object v1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lscala/util/Left$;->apply(Ljava/lang/Object;)Lscala/util/Left;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    return-void
.end method
