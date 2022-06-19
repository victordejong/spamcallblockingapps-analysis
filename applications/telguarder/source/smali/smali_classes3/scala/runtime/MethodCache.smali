.class public abstract Lscala/runtime/MethodCache;
.super Ljava/lang/Object;
.source "MethodCache.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\t3a!\u0001\u0002\u0002\"\u00111!aC\'fi\"|GmQ1dQ\u0016T!a\u0001\u0003\u0002\u000fI,h\u000e^5nK*\tQ!A\u0003tG\u0006d\u0017m\u0005\u0002\u0001\u000fA\u0011\u0001\"C\u0007\u0002\t%\u0011!\u0002\u0002\u0002\u0007\u0003:L(+\u001a4\t\u000b1\u0001A\u0011\u0001\u0008\u0002\rqJg.\u001b;?\u0007\u0001!\u0012a\u0004\t\u0003!\u0001i\u0011A\u0001\u0005\u0006%\u00011\taE\u0001\u0005M&tG\r\u0006\u0002\u0015=A\u0011Q\u0003H\u0007\u0002-)\u0011q\u0003G\u0001\u0008e\u00164G.Z2u\u0015\tI\"$\u0001\u0003mC:<\'\"A\u000e\u0002\t)\u000cg/Y\u0005\u0003;Y\u0011a!T3uQ>$\u0007\"B\u0010\u0012\u0001\u0004\u0001\u0013a\u00034peJ+7-Z5wKJ\u0004$!I\u0014\u0011\u0007\t\u001aS%D\u0001\u0019\u0013\t!\u0003DA\u0003DY\u0006\u001c8\u000f\u0005\u0002\'O1\u0001A!\u0003\u0015\u001f\u0003\u0003\u0005\tQ!\u0001*\u0005\ryF%M\t\u0003U5\u0002\"\u0001C\u0016\n\u00051\"!a\u0002(pi\"Lgn\u001a\t\u0003\u00119J!a\u000c\u0003\u0003\u0007\u0005s\u0017\u0010C\u00032\u0001\u0019\u0005!\'A\u0002bI\u0012$2aD\u001a:\u0011\u0015y\u0002\u00071\u00015a\t)t\u0007E\u0002#GY\u0002\"AJ\u001c\u0005\u0013a\u001a\u0014\u0011!A\u0001\u0006\u0003I#aA0%e!)!\u0008\ra\u0001)\u0005Iam\u001c:NKRDw\u000eZ\u0015\u0005\u0001qr\u0004)\u0003\u0002>\u0005\t\u0001R)\u001c9us6+G\u000f[8e\u0007\u0006\u001c\u0007.Z\u0005\u0003\u007f\t\u0011q\"T3hC6+G\u000f[8e\u0007\u0006\u001c\u0007.Z\u0005\u0003\u0003\n\u0011q\u0002U8ms6+G\u000f[8e\u0007\u0006\u001c\u0007.\u001a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract add(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lscala/runtime/MethodCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lscala/runtime/MethodCache;"
        }
    .end annotation
.end method

.method public abstract find(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation
.end method
