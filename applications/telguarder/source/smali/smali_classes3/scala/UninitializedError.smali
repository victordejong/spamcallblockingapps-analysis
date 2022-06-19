.class public final Lscala/UninitializedError;
.super Ljava/lang/RuntimeException;
.source "UninitializedError.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001I1A!\u0001\u0002\u0003\u000b\t\u0011RK\\5oSRL\u0017\r\\5{K\u0012,%O]8s\u0015\u0005\u0019\u0011!B:dC2\u000c7\u0001A\n\u0003\u0001\u0019\u0001\"aB\u0006\u000f\u0005!IQ\"\u0001\u0002\n\u0005)\u0011\u0011a\u00029bG.\u000cw-Z\u0005\u0003\u00195\u0011\u0001CU;oi&lW-\u0012=dKB$\u0018n\u001c8\u000b\u0005)\u0011\u0001\"B\u0008\u0001\t\u0003\u0001\u0012A\u0002\u001fj]&$h\u0008F\u0001\u0012!\tA\u0001\u0001"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "uninitialized value"

    .line 18
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
