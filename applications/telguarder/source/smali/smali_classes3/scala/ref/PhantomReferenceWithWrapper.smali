.class public Lscala/ref/PhantomReferenceWithWrapper;
.super Ljava/lang/ref/PhantomReference;
.source "PhantomReference.scala"

# interfaces
.implements Lscala/ref/ReferenceWithWrapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/PhantomReference<",
        "TT;>;",
        "Lscala/ref/ReferenceWithWrapper<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001]2A!\u0001\u0002\u0005\u000f\tY\u0002\u000b[1oi>l\'+\u001a4fe\u0016t7-Z,ji\"<&/\u00199qKJT!a\u0001\u0003\u0002\u0007I,gMC\u0001\u0006\u0003\u0015\u00198-\u00197b\u0007\u0001)\"\u0001\u0003\u000b\u0014\u0007\u0001Ia\u0004E\u0002\u000b!Ii\u0011a\u0003\u0006\u0003\u00071Q!!\u0004\u0008\u0002\t1\u000cgn\u001a\u0006\u0002\u001f\u0005!!.\u0019<b\u0013\t\t2B\u0001\tQQ\u0006tGo\\7SK\u001a,\'/\u001a8dKB\u00111\u0003\u0006\u0007\u0001\t\u0015)\u0002A1\u0001\u0017\u0005\u0005!\u0016CA\u000c\u001c!\tA\u0012$D\u0001\u0005\u0013\tQBAA\u0004O_RD\u0017N\\4\u0011\u0005aa\u0012BA\u000f\u0005\u0005\u0019\te.\u001f*fMB\u0019q\u0004\t\n\u000e\u0003\tI!!\t\u0002\u0003)I+g-\u001a:f]\u000e,w+\u001b;i/J\u000c\u0007\u000f]3s\u0011!\u0019\u0003A!A!\u0002\u0013\u0011\u0012!\u0002<bYV,\u0007\u0002C\u0013\u0001\u0005\u0003\u0005\u000b\u0011\u0002\u0014\u0002\u000bE,X-^3\u0011\u0007}9##\u0003\u0002)\u0005\tq!+\u001a4fe\u0016t7-Z)vKV,\u0007\u0002\u0003\u0016\u0001\u0005\u000b\u0007I\u0011A\u0016\u0002\u000f]\u0014\u0018\r\u001d9feV\tA\u0006E\u0002 [II!!\u0005\u0002\t\u0011=\u0002!\u0011!Q\u0001\n1\n\u0001b\u001e:baB,\'\u000f\t\u0005\u0006c\u0001!\tAM\u0001\u0007y%t\u0017\u000e\u001e \u0015\tM\"TG\u000e\t\u0004?\u0001\u0011\u0002\"B\u00121\u0001\u0004\u0011\u0002\"B\u00131\u0001\u00041\u0003\"\u0002\u00161\u0001\u0004a\u0003"
.end annotation


# instance fields
.field private final wrapper:Lscala/ref/PhantomReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/ref/PhantomReference<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lscala/ref/ReferenceQueue;Lscala/ref/PhantomReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lscala/ref/ReferenceQueue<",
            "TT;>;",
            "Lscala/ref/PhantomReference<",
            "TT;>;)V"
        }
    .end annotation

    .line 23
    iput-object p3, p0, Lscala/ref/PhantomReferenceWithWrapper;->wrapper:Lscala/ref/PhantomReference;

    .line 24
    invoke-virtual {p2}, Lscala/ref/ReferenceQueue;->underlying()Ljava/lang/ref/ReferenceQueue;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method


# virtual methods
.method public wrapper()Lscala/ref/PhantomReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/ref/PhantomReference<",
            "TT;>;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lscala/ref/PhantomReferenceWithWrapper;->wrapper:Lscala/ref/PhantomReference;

    return-object v0
.end method

.method public bridge synthetic wrapper()Lscala/ref/ReferenceWrapper;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lscala/ref/PhantomReferenceWithWrapper;->wrapper()Lscala/ref/PhantomReference;

    move-result-object v0

    return-object v0
.end method
