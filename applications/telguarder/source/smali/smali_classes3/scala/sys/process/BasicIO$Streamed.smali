.class public final Lscala/sys/process/BasicIO$Streamed;
.super Ljava/lang/Object;
.source "BasicIO.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/sys/process/BasicIO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Streamed"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final done:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation
.end field

.field private final process:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1<",
            "TT;",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation
.end field

.field private final stream:Lscala/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function0<",
            "Lscala/collection/immutable/Stream<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/Function1;Lscala/Function1;Lscala/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TT;",
            "Lscala/runtime/BoxedUnit;",
            ">;",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Lscala/runtime/BoxedUnit;",
            ">;",
            "Lscala/Function0<",
            "Lscala/collection/immutable/Stream<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lscala/sys/process/BasicIO$Streamed;->process:Lscala/Function1;

    .line 40
    iput-object p2, p0, Lscala/sys/process/BasicIO$Streamed;->done:Lscala/Function1;

    .line 41
    iput-object p3, p0, Lscala/sys/process/BasicIO$Streamed;->stream:Lscala/Function0;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done()Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lscala/sys/process/BasicIO$Streamed;->done:Lscala/Function1;

    return-object v0
.end method

.method public process()Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function1<",
            "TT;",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lscala/sys/process/BasicIO$Streamed;->process:Lscala/Function1;

    return-object v0
.end method

.method public stream()Lscala/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function0<",
            "Lscala/collection/immutable/Stream<",
            "TT;>;>;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lscala/sys/process/BasicIO$Streamed;->stream:Lscala/Function0;

    return-object v0
.end method
