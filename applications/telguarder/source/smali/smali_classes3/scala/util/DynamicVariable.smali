.class public Lscala/util/DynamicVariable;
.super Ljava/lang/Object;
.source "DynamicVariable.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\t4A!\u0001\u0002\u0001\u000f\tyA)\u001f8b[&\u001cg+\u0019:jC\ndWM\u0003\u0002\u0004\t\u0005!Q\u000f^5m\u0015\u0005)\u0011!B:dC2\u000c7\u0001A\u000b\u0003\u0011E\u0019\"\u0001A\u0005\u0011\u0005)YQ\"\u0001\u0003\n\u00051!!AB!osJ+g\r\u0003\u0005\u000f\u0001\t\u0005\t\u0015!\u0003\u0010\u0003\u0011Ig.\u001b;\u0011\u0005A\tB\u0002\u0001\u0003\u0006%\u0001\u0011\ra\u0005\u0002\u0002)F\u0011Ac\u0006\t\u0003\u0015UI!A\u0006\u0003\u0003\u000f9{G\u000f[5oOB\u0011!\u0002G\u0005\u00033\u0011\u00111!\u00118z\u0011\u0015Y\u0002\u0001\"\u0001\u001d\u0003\u0019a\u0014N\\5u}Q\u0011Qd\u0008\t\u0004=\u0001yQ\"\u0001\u0002\t\u000b9Q\u0002\u0019A\u0008\t\u000f\u0005\u0002!\u0019!C\u0005E\u0005\u0011A\u000f\\\u000b\u0002GI\u0011A\u0005\u000b\u0004\u0005K\u0019\u00021E\u0001\u0007=e\u00164\u0017N\\3nK:$h\u0008\u0003\u0004(\u0001\u0001\u0006IaI\u0001\u0004i2\u0004\u0003cA\u0015/\u001f5\t!F\u0003\u0002,Y\u0005!A.\u00198h\u0015\u0005i\u0013\u0001\u00026bm\u0006L!a\u000c\u0016\u0003-%s\u0007.\u001a:ji\u0006\u0014G.\u001a+ie\u0016\u000cG\rT8dC2DQ!\r\u0013\u0005BI\nA\"\u001b8ji&\u000cGNV1mk\u0016$\u0012a\r\n\u0004i=Ia\u0001B\u00136\u0001M2AA\u000e\u0014\u0003o\t)A%\u00198p]N\u0011Q\u0007\u000b\u0005\u00067U\"\t!\u000f\u000b\u0002uA\u0011\u0001#\u000e\u0005\u0006cU\"\t\u0005\u0010\u000b\u0002{I\u0019ahD\u0005\u0007\t\u0015*\u0004!\u0010\u0005\u0006\u0001\u0002!\t!Q\u0001\u0006m\u0006dW/Z\u000b\u0002\u001f!)1\t\u0001C\u0001\t\u0006Iq/\u001b;i-\u0006dW/Z\u000b\u0003\u000b\"#\"AR(\u0015\u0005\u001dS\u0005C\u0001\tI\t\u0015I%I1\u0001\u0014\u0005\u0005\u0019\u0006BB&C\t\u0003\u0007A*A\u0003uQVt7\u000eE\u0002\u000b\u001b\u001eK!A\u0014\u0003\u0003\u0011q\u0012\u0017P\\1nKzBQ\u0001\u0015\"A\u0002=\taA\\3xm\u0006d\u0007\"\u0002*\u0001\t\u0003\u0019\u0016!\u0003<bYV,w\u000cJ3r)\t!v\u000b\u0005\u0002\u000b+&\u0011a\u000b\u0002\u0002\u0005+:LG\u000fC\u0003Q#\u0002\u0007q\u0002C\u0003Z\u0001\u0011\u0005#,\u0001\u0005u_N#(/\u001b8h)\u0005Y\u0006C\u0001/`\u001d\tQQ,\u0003\u0002_\t\u00051\u0001K]3eK\u001aL!\u0001Y1\u0003\rM#(/\u001b8h\u0015\tqF\u0001"
.end annotation


# instance fields
.field public final scala$util$DynamicVariable$$init:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final tl:Ljava/lang/InheritableThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/InheritableThreadLocal<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lscala/util/DynamicVariable;->scala$util$DynamicVariable$$init:Ljava/lang/Object;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance p1, Lscala/util/DynamicVariable$$anon$1;

    invoke-direct {p1, p0}, Lscala/util/DynamicVariable$$anon$1;-><init>(Lscala/util/DynamicVariable;)V

    iput-object p1, p0, Lscala/util/DynamicVariable;->tl:Ljava/lang/InheritableThreadLocal;

    return-void
.end method

.method private tl()Ljava/lang/InheritableThreadLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/InheritableThreadLocal<",
            "TT;>;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lscala/util/DynamicVariable;->tl:Ljava/lang/InheritableThreadLocal;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 67
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "DynamicVariable("

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lscala/util/DynamicVariable;->value()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Lscala/util/DynamicVariable;->tl()Ljava/lang/InheritableThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/InheritableThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public value_$eq(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Lscala/util/DynamicVariable;->tl()Ljava/lang/InheritableThreadLocal;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/InheritableThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public withValue(Ljava/lang/Object;Lscala/Function0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lscala/Function0<",
            "TS;>;)TS;"
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Lscala/util/DynamicVariable;->value()Ljava/lang/Object;

    move-result-object v0

    .line 56
    invoke-direct {p0}, Lscala/util/DynamicVariable;->tl()Ljava/lang/InheritableThreadLocal;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/InheritableThreadLocal;->set(Ljava/lang/Object;)V

    .line 58
    :try_start_0
    invoke-interface {p2}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    invoke-direct {p0}, Lscala/util/DynamicVariable;->tl()Ljava/lang/InheritableThreadLocal;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/InheritableThreadLocal;->set(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lscala/util/DynamicVariable;->tl()Ljava/lang/InheritableThreadLocal;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/InheritableThreadLocal;->set(Ljava/lang/Object;)V

    throw p1
.end method
