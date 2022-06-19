.class public final Lscala/runtime/EmptyMethodCache;
.super Lscala/runtime/MethodCache;
.source "MethodCache.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001m2Q!\u0001\u0002\u0003\t\u0019\u0011\u0001#R7qiflU\r\u001e5pI\u000e\u000b7\r[3\u000b\u0005\r!\u0011a\u0002:v]RLW.\u001a\u0006\u0002\u000b\u0005)1oY1mCN\u0011\u0001a\u0002\t\u0003\u0011%i\u0011AA\u0005\u0003\u0015\t\u00111\"T3uQ>$7)Y2iK\")A\u0002\u0001C\u0001\u001d\u00051A(\u001b8jiz\u001a\u0001\u0001F\u0001\u0010!\tA\u0001\u0001C\u0003\u0012\u0001\u0011\u0005!#\u0001\u0003gS:$GCA\n\u001e!\t!2$D\u0001\u0016\u0015\t1r#A\u0004sK\u001adWm\u0019;\u000b\u0005aI\u0012\u0001\u00027b]\u001eT\u0011AG\u0001\u0005U\u00064\u0018-\u0003\u0002\u001d+\t1Q*\u001a;i_\u0012DQA\u0008\tA\u0002}\t1BZ8s%\u0016\u001cW-\u001b<feB\u0012\u0001E\n\t\u0004C\t\"S\"A\u000c\n\u0005\r:\"!B\"mCN\u001c\u0008CA\u0013\'\u0019\u0001!\u0011bJ\u000f\u0002\u0002\u0003\u0005)\u0011\u0001\u0015\u0003\u0007}#3\'\u0005\u0002*[A\u0011!fK\u0007\u0002\t%\u0011A\u0006\u0002\u0002\u0008\u001d>$\u0008.\u001b8h!\tQc&\u0003\u00020\t\t\u0019\u0011I\\=\t\u000bE\u0002A\u0011\u0001\u001a\u0002\u0007\u0005$G\rF\u0002\u0008geBQA\u0008\u0019A\u0002Q\u0002$!N\u001c\u0011\u0007\u0005\u0012c\u0007\u0005\u0002&o\u0011I\u0001hMA\u0001\u0002\u0003\u0015\t\u0001\u000b\u0002\u0004?\u0012\"\u0004\"\u0002\u001e1\u0001\u0004\u0019\u0012!\u00034pe6+G\u000f[8e\u0001"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lscala/runtime/MethodCache;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lscala/runtime/MethodCache;
    .locals 2
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

    .line 40
    new-instance v0, Lscala/runtime/PolyMethodCache;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lscala/runtime/PolyMethodCache;-><init>(Lscala/runtime/MethodCache;Ljava/lang/Class;Ljava/lang/reflect/Method;I)V

    return-object v0
.end method

.method public find(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
