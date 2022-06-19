.class public final Lscala/runtime/MegaMethodCache;
.super Lscala/runtime/MethodCache;
.source "MethodCache.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001U3Q!\u0001\u0002\u0003\t\u0019\u0011q\"T3hC6+G\u000f[8e\u0007\u0006\u001c\u0007.\u001a\u0006\u0003\u0007\u0011\tqA];oi&lWMC\u0001\u0006\u0003\u0015\u00198-\u00197b\'\t\u0001q\u0001\u0005\u0002\t\u00135\t!!\u0003\u0002\u000b\u0005\tYQ*\u001a;i_\u0012\u001c\u0015m\u00195f\u0011!a\u0001A!A!\u0002\u0013q\u0011a\u00024pe:\u000bW.Z\u0002\u0001!\ty1C\u0004\u0002\u0011#5\tA!\u0003\u0002\u0013\t\u00051\u0001K]3eK\u001aL!\u0001F\u000b\u0003\rM#(/\u001b8h\u0015\t\u0011B\u0001\u0003\u0005\u0018\u0001\t\u0005\t\u0015!\u0003\u0019\u0003E1wN\u001d)be\u0006lW\r^3s)f\u0004Xm\u001d\t\u0004!eY\u0012B\u0001\u000e\u0005\u0005\u0015\t%O]1za\tab\u0005E\u0002\u001eE\u0011j\u0011A\u0008\u0006\u0003?\u0001\nA\u0001\\1oO*\t\u0011%\u0001\u0003kCZ\u000c\u0017BA\u0012\u001f\u0005\u0015\u0019E.Y:t!\t)c\u0005\u0004\u0001\u0005\u0013\u001d2\u0012\u0011!A\u0001\u0006\u0003A#aA0%kE\u0011\u0011\u0006\u000c\t\u0003!)J!a\u000b\u0003\u0003\u000f9{G\u000f[5oOB\u0011\u0001#L\u0005\u0003]\u0011\u00111!\u00118z\u0011\u0015\u0001\u0004\u0001\"\u00012\u0003\u0019a\u0014N\\5u}Q\u0019!g\r\u001b\u0011\u0005!\u0001\u0001\"\u0002\u00070\u0001\u0004q\u0001\"B\u000c0\u0001\u0004)\u0004c\u0001\t\u001amA\u0012q\'\u000f\t\u0004;\tB\u0004CA\u0013:\t%9C\'!A\u0001\u0002\u000b\u0005\u0001\u0006C\u0003<\u0001\u0011\u0005A(\u0001\u0003gS:$GCA\u001fD!\tq\u0014)D\u0001@\u0015\t\u0001e$A\u0004sK\u001adWm\u0019;\n\u0005\t{$AB\'fi\"|G\rC\u0003Eu\u0001\u0007Q)A\u0006g_J\u0014VmY3jm\u0016\u0014\u0008G\u0001$I!\ri\"e\u0012\t\u0003K!#\u0011\"S\"\u0002\u0002\u0003\u0005)\u0011\u0001\u0015\u0003\u0007}#c\u0007C\u0003L\u0001\u0011\u0005A*A\u0002bI\u0012$2aB\'T\u0011\u0015!%\n1\u0001Oa\ty\u0015\u000bE\u0002\u001eEA\u0003\"!J)\u0005\u0013Ik\u0015\u0011!A\u0001\u0006\u0003A#aA0%o!)AK\u0013a\u0001{\u0005Iam\u001c:NKRDw\u000e\u001a"
.end annotation


# instance fields
.field private final forName:Ljava/lang/String;

.field private final forParameterTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lscala/runtime/MegaMethodCache;->forName:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lscala/runtime/MegaMethodCache;->forParameterTypes:[Ljava/lang/Class;

    .line 47
    invoke-direct {p0}, Lscala/runtime/MethodCache;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lscala/runtime/MethodCache;
    .locals 0
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

    return-object p0
.end method

.method public find(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lscala/runtime/MegaMethodCache;->forName:Ljava/lang/String;

    iget-object v1, p0, Lscala/runtime/MegaMethodCache;->forParameterTypes:[Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1
.end method
