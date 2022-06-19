.class public Lscala/collection/generic/TaggedDelegatedContext;
.super Lscala/collection/generic/DelegatedContext;
.source "Signalling.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\t2A!\u0001\u0002\u0001\u0013\t1B+Y4hK\u0012$U\r\\3hCR,GmQ8oi\u0016DHO\u0003\u0002\u0004\t\u00059q-\u001a8fe&\u001c\'BA\u0003\u0007\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000f\u0005)1oY1mC\u000e\u00011C\u0001\u0001\u000b!\tYA\"D\u0001\u0003\u0013\ti!A\u0001\tEK2,w-\u0019;fI\u000e{g\u000e^3yi\"Aq\u0002\u0001B\u0001B\u0003%\u0001#A\u0003eK2,w\r\u0005\u0002\u000c#%\u0011!C\u0001\u0002\u000b\'&<g.\u00197mS:<\u0007\u0002\u0003\u000b\u0001\u0005\u000b\u0007I\u0011I\u000b\u0002\u0007Q\u000cw-F\u0001\u0017!\t9\u0002$D\u0001\u0007\u0013\tIbAA\u0002J]RD\u0001b\u0007\u0001\u0003\u0002\u0003\u0006IAF\u0001\u0005i\u0006<\u0007\u0005C\u0003\u001e\u0001\u0011\u0005a$\u0001\u0004=S:LGO\u0010\u000b\u0004?\u0001\n\u0003CA\u0006\u0001\u0011\u0015yA\u00041\u0001\u0011\u0011\u0015!B\u00041\u0001\u0017\u0001"
.end annotation


# instance fields
.field private final tag:I


# direct methods
.method public constructor <init>(Lscala/collection/generic/Signalling;I)V
    .locals 0

    .line 176
    iput p2, p0, Lscala/collection/generic/TaggedDelegatedContext;->tag:I

    invoke-direct {p0, p1}, Lscala/collection/generic/DelegatedContext;-><init>(Lscala/collection/generic/Signalling;)V

    return-void
.end method


# virtual methods
.method public tag()I
    .locals 1

    .line 176
    iget v0, p0, Lscala/collection/generic/TaggedDelegatedContext;->tag:I

    return v0
.end method
