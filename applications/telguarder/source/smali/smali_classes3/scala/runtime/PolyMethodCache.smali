.class public final Lscala/runtime/PolyMethodCache;
.super Lscala/runtime/MethodCache;
.source "MethodCache.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001)4Q!\u0001\u0002\u0003\t\u0019\u0011q\u0002U8ms6+G\u000f[8e\u0007\u0006\u001c\u0007.\u001a\u0006\u0003\u0007\u0011\tqA];oi&lWMC\u0001\u0006\u0003\u0015\u00198-\u00197b\'\t\u0001q\u0001\u0005\u0002\t\u00135\t!!\u0003\u0002\u000b\u0005\tYQ*\u001a;i_\u0012\u001c\u0015m\u00195f\u0011!a\u0001A!A!\u0002\u00139\u0011\u0001\u00028fqR\u001c\u0001\u0001\u0003\u0005\u0010\u0001\t\u0005\t\u0015!\u0003\u0011\u0003!\u0011XmY3jm\u0016\u0014\u0008GA\t\u001c!\r\u0011r#G\u0007\u0002\')\u0011A#F\u0001\u0005Y\u0006twMC\u0001\u0017\u0003\u0011Q\u0017M^1\n\u0005a\u0019\"!B\"mCN\u001c\u0008C\u0001\u000e\u001c\u0019\u0001!\u0011\u0002\u0008\u0008\u0002\u0002\u0003\u0005)\u0011A\u000f\u0003\u0007}#\u0003(\u0005\u0002\u001fEA\u0011q\u0004I\u0007\u0002\t%\u0011\u0011\u0005\u0002\u0002\u0008\u001d>$\u0008.\u001b8h!\ty2%\u0003\u0002%\t\t\u0019\u0011I\\=\t\u0011\u0019\u0002!\u0011!Q\u0001\n\u001d\na!\\3uQ>$\u0007C\u0001\u0015,\u001b\u0005I#B\u0001\u0016\u0014\u0003\u001d\u0011XM\u001a7fGRL!\u0001L\u0015\u0003\r5+G\u000f[8e\u0011!q\u0003A!A!\u0002\u0013y\u0013AC2p[BdW\r_5usB\u0011q\u0004M\u0005\u0003c\u0011\u00111!\u00138u\u0011\u0015\u0019\u0004\u0001\"\u00015\u0003\u0019a\u0014N\\5u}Q)QGN\u001c={A\u0011\u0001\u0002\u0001\u0005\u0006\u0019I\u0002\ra\u0002\u0005\u0006\u001fI\u0002\r\u0001\u000f\u0019\u0003sm\u00022AE\u000c;!\tQ2\u0008B\u0005\u001do\u0005\u0005\t\u0011!B\u0001;!)aE\ra\u0001O!)aF\ra\u0001_!)q\u0008\u0001C\u0005\u0001\u0006aa-\u001b8e\u0013:$XM\u001d8bYR\u0011q%\u0011\u0005\u0006\u0005z\u0002\raQ\u0001\u000cM>\u0014(+Z2fSZ,\'\u000f\r\u0002E\rB\u0019!cF#\u0011\u0005i1E!C$B\u0003\u0003\u0005\tQ!\u0001\u001e\u0005\ryF%\u000f\u0015\u0003}%\u0003\"AS\'\u000e\u0003-S!\u0001\u0014\u0003\u0002\u0015\u0005tgn\u001c;bi&|g.\u0003\u0002O\u0017\n9A/Y5me\u0016\u001c\u0007\"\u0002)\u0001\t\u0003\t\u0016\u0001\u00024j]\u0012$\"a\n*\t\u000b\t{\u0005\u0019A*1\u0005Q3\u0006c\u0001\n\u0018+B\u0011!D\u0016\u0003\n/J\u000b\t\u0011!A\u0003\u0002u\u0011Aa\u0018\u00132a!9\u0011\u000c\u0001b\u0001\n\u001bQ\u0016!D\'bq\u000e{W\u000e\u001d7fq&$\u00180F\u0001\\\u001f\u0005aVD\u0001\u0001!\u0012\u0019q\u0006\u0001)A\u00077\u0006qQ*\u0019=D_6\u0004H.\u001a=jif\u0004\u0003\"\u00021\u0001\t\u0003\t\u0017aA1eIR\u0019qA\u00195\t\u000b\t{\u0006\u0019A21\u0005\u00114\u0007c\u0001\n\u0018KB\u0011!D\u001a\u0003\nO\n\u000c\t\u0011!A\u0003\u0002u\u0011Aa\u0018\u00132c!)\u0011n\u0018a\u0001O\u0005Iam\u001c:NKRDw\u000e\u001a"
.end annotation


# instance fields
.field private final MaxComplexity:I

.field private final complexity:I

.field private final method:Ljava/lang/reflect/Method;

.field private final next:Lscala/runtime/MethodCache;

.field private final receiver:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/runtime/MethodCache;Ljava/lang/Class;Ljava/lang/reflect/Method;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/runtime/MethodCache;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "I)V"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lscala/runtime/PolyMethodCache;->next:Lscala/runtime/MethodCache;

    .line 58
    iput-object p2, p0, Lscala/runtime/PolyMethodCache;->receiver:Ljava/lang/Class;

    .line 59
    iput-object p3, p0, Lscala/runtime/PolyMethodCache;->method:Ljava/lang/reflect/Method;

    .line 60
    iput p4, p0, Lscala/runtime/PolyMethodCache;->complexity:I

    .line 61
    invoke-direct {p0}, Lscala/runtime/MethodCache;-><init>()V

    return-void
.end method

.method private final MaxComplexity()I
    .locals 1

    const/16 v0, 0xa0

    return v0
.end method

.method private findInternal(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    move-object v0, p0

    .line 67
    :goto_0
    iget-object v1, v0, Lscala/runtime/PolyMethodCache;->receiver:Ljava/lang/Class;

    if-ne p1, v1, :cond_0

    iget-object p1, v0, Lscala/runtime/PolyMethodCache;->method:Ljava/lang/reflect/Method;

    goto :goto_1

    .line 68
    :cond_0
    iget-object v0, v0, Lscala/runtime/PolyMethodCache;->next:Lscala/runtime/MethodCache;

    .line 69
    instance-of v1, v0, Lscala/runtime/PolyMethodCache;

    if-eqz v1, :cond_1

    check-cast v0, Lscala/runtime/PolyMethodCache;

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {v0, p1}, Lscala/runtime/MethodCache;->find(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    :goto_1
    return-object p1
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

    .line 79
    iget v0, p0, Lscala/runtime/PolyMethodCache;->complexity:I

    const/16 v1, 0xa0

    if-ge v0, v1, :cond_0

    .line 80
    new-instance v1, Lscala/runtime/PolyMethodCache;

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v1, p0, p1, p2, v0}, Lscala/runtime/PolyMethodCache;-><init>(Lscala/runtime/MethodCache;Ljava/lang/Class;Ljava/lang/reflect/Method;I)V

    goto :goto_0

    .line 82
    :cond_0
    new-instance v1, Lscala/runtime/MegaMethodCache;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lscala/runtime/MegaMethodCache;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    :goto_0
    return-object v1
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

    .line 73
    invoke-direct {p0, p1}, Lscala/runtime/PolyMethodCache;->findInternal(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1
.end method
