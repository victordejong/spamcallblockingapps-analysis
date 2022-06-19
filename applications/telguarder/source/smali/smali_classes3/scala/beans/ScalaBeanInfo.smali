.class public abstract Lscala/beans/ScalaBeanInfo;
.super Ljava/beans/SimpleBeanInfo;
.source "ScalaBeanInfo.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001q3Q!\u0001\u0002\u0002\u0002\u001d\u0011QbU2bY\u0006\u0014U-\u00198J]\u001a|\'BA\u0002\u0005\u0003\u0015\u0011W-\u00198t\u0015\u0005)\u0011!B:dC2\u000c7\u0001A\n\u0003\u0001!\u0001\"!C\u0007\u000e\u0003)Q!aA\u0006\u000b\u00031\tAA[1wC&\u0011aB\u0003\u0002\u000f\'&l\u0007\u000f\\3CK\u0006t\u0017J\u001c4p\u0011!\u0001\u0002A!A!\u0002\u0013\t\u0012!B2mCjT\u0008G\u0001\n\u001b!\r\u0019b\u0003G\u0007\u0002))\u0011QcC\u0001\u0005Y\u0006tw-\u0003\u0002\u0018)\t)1\t\\1tgB\u0011\u0011D\u0007\u0007\u0001\t%Yr\"!A\u0001\u0002\u000b\u0005ADA\u0002`IE\n\"!H\u0011\u0011\u0005yyR\"\u0001\u0003\n\u0005\u0001\"!a\u0002(pi\"Lgn\u001a\t\u0003=\tJ!a\t\u0003\u0003\u0007\u0005s\u0017\u0010\u0003\u0005&\u0001\t\u0005\t\u0015!\u0003\'\u0003\u0015\u0001(o\u001c9t!\rqr%K\u0005\u0003Q\u0011\u0011Q!\u0011:sCf\u0004\"AK\u0017\u000f\u0005yY\u0013B\u0001\u0017\u0005\u0003\u0019\u0001&/\u001a3fM&\u0011af\u000c\u0002\u0007\'R\u0014\u0018N\\4\u000b\u00051\"\u0001\u0002C\u0019\u0001\u0005\u0003\u0005\u000b\u0011\u0002\u0014\u0002\u000f5,G\u000f[8eg\")1\u0007\u0001C\u0001i\u00051A(\u001b8jiz\"B!N\u001c={A\u0011a\u0007A\u0007\u0002\u0005!)\u0001C\ra\u0001qA\u0012\u0011h\u000f\t\u0004\'YQ\u0004CA\r<\t%Yr\'!A\u0001\u0002\u000b\u0005A\u0004C\u0003&e\u0001\u0007a\u0005C\u00032e\u0001\u0007a\u0005C\u0004@\u0001\t\u0007I\u0011\u0002!\u0002\u0005A$W#A!\u0011\u0007y9#\t\u0005\u0002\n\u0007&\u0011AI\u0003\u0002\u0013!J|\u0007/\u001a:us\u0012+7o\u0019:jaR|\'\u000f\u0003\u0004G\u0001\u0001\u0006I!Q\u0001\u0004a\u0012\u0004\u0003b\u0002%\u0001\u0005\u0004%I!S\u0001\u0003[\u0012,\u0012A\u0013\t\u0004=\u001dZ\u0005CA\u0005M\u0013\ti%B\u0001\tNKRDw\u000e\u001a#fg\u000e\u0014\u0018\u000e\u001d;pe\"1q\n\u0001Q\u0001\n)\u000b1!\u001c3!\u0011\u0015\t\u0006\u0001\"\u0011S\u0003Y9W\r\u001e)s_B,\'\u000f^=EKN\u001c\'/\u001b9u_J\u001cH#A!\t\u000bQ\u0003A\u0011I+\u0002)\u001d,G/T3uQ>$G)Z:de&\u0004Ho\u001c:t)\u0005Q\u0005\"B,\u0001\t\u0013A\u0016\u0001B5oSR$\u0012!\u0017\t\u0003=iK!a\u0017\u0003\u0003\tUs\u0017\u000e\u001e"
.end annotation


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final md:[Ljava/beans/MethodDescriptor;

.field private final pd:[Ljava/beans/PropertyDescriptor;

.field private final props:[Ljava/lang/String;

.field public final scala$beans$ScalaBeanInfo$$methods:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 19
    iput-object p1, p0, Lscala/beans/ScalaBeanInfo;->clazz:Ljava/lang/Class;

    .line 20
    iput-object p2, p0, Lscala/beans/ScalaBeanInfo;->props:[Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lscala/beans/ScalaBeanInfo;->scala$beans$ScalaBeanInfo$$methods:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/beans/SimpleBeanInfo;-><init>()V

    .line 25
    array-length p2, p2

    div-int/lit8 p2, p2, 0x3

    new-array p2, p2, [Ljava/beans/PropertyDescriptor;

    iput-object p2, p0, Lscala/beans/ScalaBeanInfo;->pd:[Ljava/beans/PropertyDescriptor;

    .line 27
    sget-object p2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p2, p1}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object p1

    new-instance p2, Lscala/beans/ScalaBeanInfo$$anonfun$1;

    invoke-direct {p2, p0}, Lscala/beans/ScalaBeanInfo$$anonfun$1;-><init>(Lscala/beans/ScalaBeanInfo;)V

    invoke-interface {p1, p2}, Lscala/collection/mutable/ArrayOps;->withFilter(Lscala/Function1;)Lscala/collection/generic/FilterMonadic;

    move-result-object p1

    new-instance p2, Lscala/beans/ScalaBeanInfo$$anonfun$2;

    invoke-direct {p2, p0}, Lscala/beans/ScalaBeanInfo$$anonfun$2;-><init>(Lscala/beans/ScalaBeanInfo;)V

    sget-object p3, Lscala/Array$;->MODULE$:Lscala/Array$;

    sget-object v0, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    const-class v1, Ljava/beans/MethodDescriptor;

    invoke-virtual {v0, v1}, Lscala/reflect/ClassTag$;->apply(Ljava/lang/Class;)Lscala/reflect/ClassTag;

    move-result-object v0

    invoke-virtual {p3, v0}, Lscala/Array$;->canBuildFrom(Lscala/reflect/ClassTag;)Lscala/collection/generic/CanBuildFrom;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lscala/collection/generic/FilterMonadic;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/beans/MethodDescriptor;

    .line 26
    iput-object p1, p0, Lscala/beans/ScalaBeanInfo;->md:[Ljava/beans/MethodDescriptor;

    .line 30
    invoke-direct {p0}, Lscala/beans/ScalaBeanInfo;->init()V

    return-void
.end method

.method private init()V
    .locals 9

    const/4 v0, 0x0

    .line 39
    :goto_0
    iget-object v1, p0, Lscala/beans/ScalaBeanInfo;->props:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 40
    invoke-direct {p0}, Lscala/beans/ScalaBeanInfo;->pd()[Ljava/beans/PropertyDescriptor;

    move-result-object v1

    div-int/lit8 v2, v0, 0x3

    new-instance v3, Ljava/beans/PropertyDescriptor;

    iget-object v4, p0, Lscala/beans/ScalaBeanInfo;->props:[Ljava/lang/String;

    aget-object v5, v4, v0

    iget-object v6, p0, Lscala/beans/ScalaBeanInfo;->clazz:Ljava/lang/Class;

    add-int/lit8 v7, v0, 0x1

    aget-object v7, v4, v7

    add-int/lit8 v8, v0, 0x2

    aget-object v4, v4, v8

    invoke-direct {v3, v5, v6, v7, v4}, Ljava/beans/PropertyDescriptor;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_0
    return-void
.end method

.method private md()[Ljava/beans/MethodDescriptor;
    .locals 1

    .line 26
    iget-object v0, p0, Lscala/beans/ScalaBeanInfo;->md:[Ljava/beans/MethodDescriptor;

    return-object v0
.end method

.method private pd()[Ljava/beans/PropertyDescriptor;
    .locals 1

    .line 25
    iget-object v0, p0, Lscala/beans/ScalaBeanInfo;->pd:[Ljava/beans/PropertyDescriptor;

    return-object v0
.end method


# virtual methods
.method public getMethodDescriptors()[Ljava/beans/MethodDescriptor;
    .locals 1

    .line 33
    invoke-direct {p0}, Lscala/beans/ScalaBeanInfo;->md()[Ljava/beans/MethodDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyDescriptors()[Ljava/beans/PropertyDescriptor;
    .locals 1

    .line 32
    invoke-direct {p0}, Lscala/beans/ScalaBeanInfo;->pd()[Ljava/beans/PropertyDescriptor;

    move-result-object v0

    return-object v0
.end method
