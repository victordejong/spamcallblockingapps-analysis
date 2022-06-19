.class public Lscala/collection/mutable/OpenHashMap;
.super Lscala/collection/mutable/AbstractMap;
.source "OpenHashMap.scala"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/mutable/OpenHashMap$OpenEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Key:",
        "Ljava/lang/Object;",
        "Value:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/mutable/AbstractMap<",
        "TKey;TValue;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\t\u001dt!B\u0001\u0003\u0011\u0003I\u0011aC(qK:D\u0015m\u001d5NCBT!a\u0001\u0003\u0002\u000f5,H/\u00192mK*\u0011QAB\u0001\u000bG>dG.Z2uS>t\'\"A\u0004\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001A\u0011!bC\u0007\u0002\u0005\u0019)AB\u0001E\u0001\u001b\tYq\n]3o\u0011\u0006\u001c\u0008.T1q\'\tYa\u0002\u0005\u0002\u0010!5\ta!\u0003\u0002\u0012\r\t1\u0011I\\=SK\u001aDQaE\u0006\u0005\u0002Q\ta\u0001P5oSRtD#A\u0005\t\u000bYYA\u0011A\u000c\u0002\u000b\u0005\u0004\u0008\u000f\\=\u0016\u000ba\u00119D!\u0010\u0015\u0007e\u0011\t\u0005\u0005\u0004\u000b5\tU\"1\u0008\u0004\u0005\u0019\t\u00011$F\u0002\u001dE1\u001aBAG\u000f/cA!!B\u0008\u0011,\u0013\ty\"AA\u0006BEN$(/Y2u\u001b\u0006\u0004\u0008CA\u0011#\u0019\u0001!Qa\t\u000eC\u0002\u0011\u00121aS3z#\t)\u0003\u0006\u0005\u0002\u0010M%\u0011qE\u0002\u0002\u0008\u001d>$\u0008.\u001b8h!\ty\u0011&\u0003\u0002+\r\t\u0019\u0011I\\=\u0011\u0005\u0005bC!B\u0017\u001b\u0005\u0004!#!\u0002,bYV,\u0007\u0003\u0002\u00060A-J!\u0001\r\u0002\u0003\u00075\u000b\u0007\u000fE\u0003\u000be\u0001ZC\'\u0003\u00024\u0005\t9Q*\u00199MS.,\u0007\u0003\u0002\u0006\u001bA-B\u0001B\u000e\u000e\u0003\u0002\u0003\u0006IaN\u0001\u000cS:LG/[1m\'&TX\r\u0005\u0002\u0010q%\u0011\u0011H\u0002\u0002\u0004\u0013:$\u0008\"B\n\u001b\t\u0003YDC\u0001\u001b=\u0011\u00151$\u00081\u00018\u000b\u0011q$\u0004B \u0003\u000b\u0015sGO]=\u0011\t\u0001\u000b\u0005e\u000b\u0008\u0003\u0015\u00011AAQ\u0006\u0007\u0007\nIq\n]3o\u000b:$(/_\u000b\u0004\t&k5cA!\u000f\u000bB!!B\u0012%K\u0013\t9%AA\u0005ICNDWI\u001c;ssB\u0011\u0011%\u0013\u0003\u0006G\u0005\u0013\r\u0001\n\t\u0005\u0017\u0006CE*D\u0001\u000c!\t\tS\nB\u0003.\u0003\n\u0007A\u0005\u0003\u0005P\u0003\n\u0015\r\u0011\"\u0001Q\u0003\rYW-_\u000b\u0002\u0011\"A!+\u0011B\u0001B\u0003%\u0001*\u0001\u0003lKf\u0004\u0003\u0002\u0003+B\u0005\u000b\u0007I\u0011A+\u0002\t!\u000c7\u000f[\u000b\u0002o!Aq+\u0011B\u0001B\u0003%q\'A\u0003iCND\u0007\u0005\u0003\u0005Z\u0003\n\u0005\r\u0011\"\u0001[\u0003\u00151\u0018\r\\;f+\u0005Y\u0006cA\u0008]\u0019&\u0011QL\u0002\u0002\u0007\u001fB$\u0018n\u001c8\t\u0011}\u000b%\u00111A\u0005\u0002\u0001\u000c\u0011B^1mk\u0016|F%Z9\u0015\u0005\u0005$\u0007CA\u0008c\u0013\t\u0019gA\u0001\u0003V]&$\u0008bB3_\u0003\u0003\u0005\raW\u0001\u0004q\u0012\n\u0004\u0002C4B\u0005\u0003\u0005\u000b\u0015B.\u0002\rY\u000cG.^3!\u0011\u0015\u0019\u0012\t\"\u0001j)\u0011Q%n\u001b7\t\u000b=C\u0007\u0019\u0001%\t\u000bQC\u0007\u0019A\u001c\t\u000beC\u0007\u0019A.\t\u000bMQB\u0011\u00018\u0015\u0003QBQ\u0001\u001d\u000e\u0005BE\u000cQ!Z7qif,\u0012\u0001\u000e\u0005\u0007gj\u0001\u000b\u0011B\u001c\u0002#\u0005\u001cG/^1m\u0013:LG/[1m\'&TX\rC\u0004v5\u0001\u0007I\u0011B+\u0002\t5\u000c7o\u001b\u0005\u0008oj\u0001\r\u0011\"\u0003y\u0003!i\u0017m]6`I\u0015\u000cHCA1z\u0011\u001d)g/!AA\u0002]Baa\u001f\u000e!B\u00139\u0014!B7bg.\u0004\u0003bB?\u001b\u0001\u0004%IA`\u0001\u0006i\u0006\u0014G.Z\u000b\u0002\u007fB)q\"!\u0001\u0002\u0006%\u0019\u00111\u0001\u0004\u0003\u000b\u0005\u0013(/Y=\u0011\u0007\u0005\u001dQ(D\u0001\u001b\u0011%\tYA\u0007a\u0001\n\u0013\ti!A\u0005uC\ndWm\u0018\u0013fcR\u0019\u0011-a\u0004\t\u0011\u0015\u000cI!!AA\u0002}Dq!a\u0005\u001bA\u0003&q0\u0001\u0004uC\ndW\r\t\u0005\t\u0003/Q\u0002\u0019!C\u0005+\u0006)ql]5{K\"I\u00111\u0004\u000eA\u0002\u0013%\u0011QD\u0001\n?NL\'0Z0%KF$2!YA\u0010\u0011!)\u0017\u0011DA\u0001\u0002\u00049\u0004bBA\u00125\u0001\u0006KaN\u0001\u0007?NL\'0\u001a\u0011\t\u0011\u0005\u001d\"\u00041A\u0005\nU\u000bq\u0001Z3mKR,G\rC\u0005\u0002,i\u0001\r\u0011\"\u0003\u0002.\u0005YA-\u001a7fi\u0016$w\u000cJ3r)\r\t\u0017q\u0006\u0005\tK\u0006%\u0012\u0011!a\u0001o!9\u00111\u0007\u000e!B\u00139\u0014\u0001\u00033fY\u0016$X\r\u001a\u0011\t\u000f\u0005]\"\u0004)Q\u0005o\u0005AQn\u001c3D_VtG\u000f\u0003\u0004\u0002<i!\t%V\u0001\u0005g&TX\r\u0003\u0005\u0002@i\u0001K\u0011BA!\u0003!\u0019\u0018N_3`I\u0015\u000cHcA1\u0002D!9\u0011QIA\u001f\u0001\u00049\u0014!A:\t\u000f\u0005%#\u0004\"\u0005\u0002L\u00051\u0001.Y:i\u001f\u001a$2aNA\'\u0011\u0019y\u0015q\ta\u0001A!A\u0011\u0011\u000b\u000e!\n\u0013\t\u0019&A\u0005he><H+\u00192mKR\t\u0011\r\u0003\u0005\u0002Xi\u0001K\u0011BA-\u0003%1\u0017N\u001c3J]\u0012,\u0007\u0010F\u00028\u00037BaaTA+\u0001\u0004\u0001\u0003\u0002CA,5\u0001&I!a\u0018\u0015\u000b]\n\t\'a\u0019\t\r=\u000bi\u00061\u0001!\u0011\u0019!\u0016Q\u000ca\u0001o!A\u0011q\r\u000e!\n\u0013\tI\'\u0001\u0005bI\u0012,e\u000e\u001e:z)\r\t\u00171\u000e\u0005\t\u0003[\n)\u00071\u0001\u0002\u0006\u0005)QM\u001c;ss\"9\u0011\u0011\u000f\u000e\u0005B\u0005M\u0014AB;qI\u0006$X\rF\u0003b\u0003k\n9\u0008\u0003\u0004P\u0003_\u0002\r\u0001\t\u0005\u00073\u0006=\u0004\u0019A\u0016\t\u000f\u0005m$\u0004\"\u0001\u0002~\u0005AA\u0005\u001d7vg\u0012*\u0017\u000f\u0006\u0003\u0002\u0008\u0005}\u0004\u0002CAA\u0003s\u0002\r!a!\u0002\u0005-4\u0008#B\u0008\u0002\u0006\u0002Z\u0013bAAD\r\t1A+\u001e9mKJB\u0003\"!\u001f\u0002\u000c\u0006E\u0015Q\u0013\t\u0004\u001f\u00055\u0015bAAH\r\t!B-\u001a9sK\u000e\u000cG/\u001a3Pm\u0016\u0014(/\u001b3j]\u001e\u000c#!a%\u0002\r.j\u0004e\u001d5pk2$\u0007E\\8uA\t,\u0007e\u001c<feJLG\rZ3oA%t\u0007e\u001c:eKJ\u0004Co\u001c\u0011nC&tG/Y5oA\r|gn]5ti\u0016t7-\u001f\u0011xSRD\u0007\u0005];u]\u0005\u0012\u0011qS\u0001\u0007e9\n\u0014G\u000c\u0019\t\u000f\u0005m%\u0004\"\u0001\u0002\u001e\u0006IA%\\5okN$S-\u001d\u000b\u0005\u0003\u000f\ty\n\u0003\u0004P\u00033\u0003\r\u0001\t\u0015\t\u00033\u000bY)a)\u0002\u0016\u0006\u0012\u0011QU\u0001J[u\u00023\u000f[8vY\u0012\u0004cn\u001c;!E\u0016\u0004sN^3se&$G-\u001a8!S:\u0004sN\u001d3fe\u0002\"x\u000eI7bS:$\u0018-\u001b8!G>t7/[:uK:\u001c\u0017\u0010I<ji\"\u0004#/Z7pm\u0016t\u0003bBAU5\u0011\u0005\u00131V\u0001\u0004aV$HCBAW\u0003_\u000b\t\u000cE\u0002\u00109.BaaTAT\u0001\u0004\u0001\u0003BB-\u0002(\u0002\u00071\u0006C\u0004\u0002*j!I!!.\u0015\u0011\u00055\u0016qWA]\u0003wCaaTAZ\u0001\u0004\u0001\u0003B\u0002+\u00024\u0002\u0007q\u0007\u0003\u0004Z\u0003g\u0003\ra\u000b\u0005\u0008\u0003\u007fSB\u0011IAa\u0003\u0019\u0011X-\\8wKR!\u0011QVAb\u0011\u0019y\u0015Q\u0018a\u0001A!9\u0011q\u0019\u000e\u0005\u0002\u0005%\u0017aA4fiR!\u0011QVAf\u0011\u0019y\u0015Q\u0019a\u0001A!9\u0011q\u001a\u000e\u0005\u0002\u0005E\u0017\u0001C5uKJ\u000cGo\u001c:\u0016\u0005\u0005M\u0007CBAk\u0003/\u000c\u0019)D\u0001\u0005\u0013\r\tI\u000e\u0002\u0002\t\u0013R,\'/\u0019;pe\"1\u0011Q\u001c\u000e\u0005B9\u000cQa\u00197p]\u0016Dq!!9\u001b\t\u0003\n\u0019/A\u0004g_J,\u0017m\u00195\u0016\t\u0005\u0015\u00181\u001f\u000b\u0004C\u0006\u001d\u0008\u0002CAu\u0003?\u0004\r!a;\u0002\u0003\u0019\u0004raDAw\u0003\u0007\u000b\t0C\u0002\u0002p\u001a\u0011\u0011BR;oGRLwN\\\u0019\u0011\u0007\u0005\n\u0019\u0010B\u0004\u0002v\u0006}\'\u0019\u0001\u0013\u0003\u0003UC\u0001\"!?\u001bA\u0013%\u00111`\u0001\u0016M>\u0014X-Y2i+:$W\r\\3uK\u0012,e\u000e\u001e:z)\r\t\u0017Q \u0005\t\u0003S\u000c9\u00101\u0001\u0002\u0000B1q\"!<\u0002\u0006\u0005DqAa\u0001\u001b\t\u0003\u0012)!A\u0005ue\u0006t7OZ8s[R!\u0011q\u0001B\u0004\u0011!\tIO!\u0001A\u0002\t%\u0001CB\u0008\u0003\u000c\u0001Z3&C\u0002\u0003\u000e\u0019\u0011\u0011BR;oGRLwN\u001c\u001a\t\u000f\tE!\u0004\"\u0011\u0003\u0014\u00051!/\u001a;bS:$B!a\u0002\u0003\u0016!A\u0011\u0011\u001eB\u0008\u0001\u0004\u00119\u0002E\u0004\u0010\u0005\u0017\u00013F!\u0007\u0011\u0007=\u0011Y\"C\u0002\u0003\u001e\u0019\u0011qAQ8pY\u0016\u000cg\u000eC\u0004\u0003\"i!\tEa\t\u0002\u0019M$(/\u001b8h!J,g-\u001b=\u0016\u0005\t\u0015\u0002\u0003\u0002B\u0014\u0005ci!A!\u000b\u000b\t\t-\"QF\u0001\u0005Y\u0006twM\u0003\u0002\u00030\u0005!!.\u0019<b\u0013\u0011\u0011\u0019D!\u000b\u0003\rM#(/\u001b8h!\r\t#q\u0007\u0003\u0007\u0005s)\"\u0019\u0001\u0013\u0003\u0003-\u00032!\tB\u001f\t\u0019\u0011y$\u0006b\u0001I\t\ta\u000bC\u0004\u0003DU\u0001\rA!\u0012\u0002\u000b\u0015dW-\\:\u0011\u000b=\u00119Ea\u0013\n\u0007\t%cA\u0001\u0006=e\u0016\u0004X-\u0019;fIz\u0002raDAC\u0005k\u0011Y\u0004\u0003\u0004q\u0017\u0011\u0005!qJ\u000b\u0007\u0005#\u00129Fa\u0017\u0016\u0005\tM\u0003C\u0002\u0006\u001b\u0005+\u0012I\u0006E\u0002\"\u0005/\"qA!\u000f\u0003N\t\u0007A\u0005E\u0002\"\u00057\"qAa\u0010\u0003N\t\u0007A\u0005\u0003\u0005\u0003`-!\tA\u0001B1\u0003YqW\r\u001f;Q_NLG/\u001b<f!><XM](g)^|GcA\u001c\u0003d!9!Q\rB/\u0001\u00049\u0014!A5"
.end annotation


# instance fields
.field private _size:I

.field private final actualInitialSize:I

.field private scala$collection$mutable$OpenHashMap$$deleted:I

.field private scala$collection$mutable$OpenHashMap$$mask:I

.field public scala$collection$mutable$OpenHashMap$$modCount:I

.field private scala$collection$mutable$OpenHashMap$$table:[Lscala/collection/mutable/OpenHashMap$OpenEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lscala/collection/mutable/OpenHashMap$OpenEntry<",
            "TKey;TValue;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/16 v0, 0x8

    .line 60
    invoke-direct {p0, v0}, Lscala/collection/mutable/OpenHashMap;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Lscala/collection/mutable/AbstractMap;-><init>()V

    .line 64
    sget-object v0, Lscala/collection/mutable/OpenHashMap$;->MODULE$:Lscala/collection/mutable/OpenHashMap$;

    invoke-virtual {v0, p1}, Lscala/collection/mutable/OpenHashMap$;->nextPositivePowerOfTwo(I)I

    move-result p1

    iput p1, p0, Lscala/collection/mutable/OpenHashMap;->actualInitialSize:I

    add-int/lit8 v0, p1, -0x1

    .line 66
    iput v0, p0, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$mask:I

    .line 67
    new-array p1, p1, [Lscala/collection/mutable/OpenHashMap$OpenEntry;

    iput-object p1, p0, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$table:[Lscala/collection/mutable/OpenHashMap$OpenEntry;

    const/4 p1, 0x0

    .line 68
    iput p1, p0, Lscala/collection/mutable/OpenHashMap;->_size:I

    .line 69
    iput p1, p0, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$deleted:I

    .line 72
    iput p1, p0, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$modCount:I

    return-void
.end method

.method private _size()I
    .locals 1

    .line 68
    iget v0, p0, Lscala/collection/mutable/OpenHashMap;->_size:I

    return v0
.end method

.method private _size_$eq(I)V
    .locals 0

    .line 68
    iput p1, p0, Lscala/collection/mutable/OpenHashMap;->_size:I

    return-void
.end method

.method private findIndex(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;)I"
        }
    .end annotation

    .line 95
    invoke-virtual {p0, p1}, Lscala/collection/mutable/OpenHashMap;->hashOf(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lscala/collection/mutable/OpenHashMap;->findIndex(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method private findIndex(Ljava/lang/Object;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;I)I"
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$mask()I

    move-result v0

    and-int/2addr v0, p2

    move v2, p2

    move v1, v0

    .line 102
    :goto_0
    invoke-virtual {p0}, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$table()[Lscala/collection/mutable/OpenHashMap$OpenEntry;

    move-result-object v3

    aget-object v3, v3, v0

    if-eqz v3, :cond_5

    .line 103
    invoke-virtual {p0}, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$table()[Lscala/collection/mutable/OpenHashMap$OpenEntry;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lscala/collection/mutable/OpenHashMap$OpenEntry;->hash()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, p2, :cond_4

    .line 104
    invoke-virtual {p0}, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$table()[Lscala/collection/mutable/OpenHashMap$OpenEntry;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lscala/collection/mutable/OpenHashMap$OpenEntry;->key()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    instance-of v5, v3, Ljava/lang/Number;

    if-eqz v5, :cond_2

    check-cast v3, Ljava/lang/Number;

    invoke-static {v3, p1}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    :cond_2
    instance-of v5, v3, Ljava/lang/Character;

    if-eqz v5, :cond_3

    check-cast v3, Ljava/lang/Character;

    invoke-static {v3, p1}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    :cond_3
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    mul-int/lit8 v2, v2, 0x5

    add-int/2addr v2, v4

    add-int/2addr v2, v1

    shr-int/lit8 v1, v1, 0x5

    .line 107
    invoke-virtual {p0}, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$mask()I

    move-result v0

    and-int/2addr v0, v2

    goto :goto_0

    :cond_5
    :goto_2
    return v0
.end method

.method private foreachUndeletedEntry(Lscala/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/collection/mutable/OpenHashMap$OpenEntry<",
            "TKey;TValue;>;",
            "Lscala/runtime/BoxedUnit;",
            ">;)V"
        }
    .end annotation

    .line 226
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p0}, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$table()[Lscala/collection/mutable/OpenHashMap$OpenEntry;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v0

    new-instance v1, Lscala/collection/mutable/OpenHashMap$$anonfun$foreachUndeletedEntry$1;

    invoke-direct {v1, p0, p1}, Lscala/collection/mutable/OpenHashMap$$anonfun$foreachUndeletedEntry$1;-><init>(Lscala/collection/mutable/OpenHashMap;Lscala/Function1;)V

    invoke-interface {v0, v1}, Lscala/collection/mutable/ArrayOps;->foreach(Lscala/Function1;)V

    return-void
.end method

.method private growTable()V
    .locals 3

    .line 85
    invoke-virtual {p0}, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$mask()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x4

    .line 87
    invoke-virtual {p0}, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$table()[Lscala/collection/mutable/OpenHashMap$OpenEntry;

    move-result-object v1

    .line 88
    new-array v2, v0, [Lscala/collection/mutable/OpenHashMap$OpenEntry;

    invoke-direct {p0, v2}, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$table_$eq([Lscala/collection/mutable/OpenHashMap$OpenEntry;)V

    add-int/lit8 v0, v0, -0x1

    .line 89
    invoke-direct {p0, v0}, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$mask_$eq(I)V

    .line 90
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v0

    new-instance v1, Lscala/collection/mutable/OpenHashMap$$anonfun$growTable$1;

    invoke-direct {v1, p0}, Lscala/collection/mutable/OpenHashMap$$anonfun$growTable$1;-><init>(Lscala/collection/mutable/OpenHashMap;)V

    invoke-interface {v0, v1}, Lscala/collection/mutable/ArrayOps;->foreach(Lscala/Function1;)V

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p0, v0}, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$deleted_$eq(I)V

    return-void
.end method

.method private scala$collection$mutable$OpenHashMap$$mask_$eq(I)V
    .locals 0

    .line 66
    iput p1, p0, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$mask:I

    return-void
.end method

.method private scala$collection$mutable$OpenHashMap$$table_$eq([Lscala/collection/mutable/OpenHashMap$OpenEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lscala/collection/mutable/OpenHashMap$OpenEntry<",
            "TKey;TValue;>;)V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$table:[Lscala/collection/mutable/OpenHashMap$OpenEntry;

    return-void
.end method


# virtual methods
.method public bridge synthetic $minus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lscala/collection/mutable/OpenHashMap;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/Map;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lscala/collection/mutable/OpenHashMap;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lscala/collection/mutable/OpenHashMap;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/mutable/OpenHashMap;->$minus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus$eq(Ljava/lang/Object;)Lscala/collection/generic/Shrinkable;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lscala/collection/mutable/OpenHashMap;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/OpenHashMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/MapLike;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lscala/collection/mutable/OpenHashMap;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/OpenHashMap;

    move-result-object p1

    return-object p1
.end method

.method public $minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/OpenHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;)",
            "Lscala/collection/mutable/OpenHashMap<",
            "TKey;TValue;>;"
        }
    .end annotation

    .line 123
    invoke-virtual {p0, p1}, Lscala/collection/mutable/OpenHashMap;->remove(Ljava/lang/Object;)Lscala/Option;

    return-object p0
.end method

.method public bridge synthetic $minus$minus(Lscala/collection/GenTraversableOnce;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lscala/collection/mutable/OpenHashMap;->$minus$minus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/GenMap;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lscala/collection/mutable/OpenHashMap;->$plus(Lscala/Tuple2;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/Map;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lscala/collection/mutable/OpenHashMap;->$plus(Lscala/Tuple2;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/Map;
    .locals 0

    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/mutable/OpenHashMap;->$plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 0

    .line 50
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/OpenHashMap;->$plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/OpenHashMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 50
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/OpenHashMap;->$plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/OpenHashMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/MapLike;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lscala/collection/mutable/OpenHashMap;->$plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/OpenHashMap;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/OpenHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "TKey;TValue;>;)",
            "Lscala/collection/mutable/OpenHashMap<",
            "TKey;TValue;>;"
        }
    .end annotation

    .line 120
    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lscala/collection/mutable/OpenHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;

    return-object p0
.end method

.method public bridge synthetic $plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Map;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lscala/collection/mutable/OpenHashMap;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lscala/collection/mutable/OpenHashMap;->clone()Lscala/collection/mutable/OpenHashMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lscala/collection/mutable/Map;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lscala/collection/mutable/OpenHashMap;->clone()Lscala/collection/mutable/OpenHashMap;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lscala/collection/mutable/OpenHashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/OpenHashMap<",
            "TKey;TValue;>;"
        }
    .end annotation

    .line 202
    new-instance v0, Lscala/collection/mutable/OpenHashMap;

    invoke-direct {v0}, Lscala/collection/mutable/OpenHashMap;-><init>()V

    .line 203
    new-instance v1, Lscala/collection/mutable/OpenHashMap$$anonfun$clone$1;

    invoke-direct {v1, p0, v0}, Lscala/collection/mutable/OpenHashMap$$anonfun$clone$1;-><init>(Lscala/collection/mutable/OpenHashMap;Lscala/collection/mutable/OpenHashMap;)V

    invoke-direct {p0, v1}, Lscala/collection/mutable/OpenHashMap;->foreachUndeletedEntry(Lscala/Function1;)V

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/Map;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lscala/collection/mutable/OpenHashMap;->empty()Lscala/collection/mutable/OpenHashMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/mutable/Map;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lscala/collection/mutable/OpenHashMap;->empty()Lscala/collection/mutable/OpenHashMap;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/mutable/OpenHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/OpenHashMap<",
            "TKey;TValue;>;"
        }
    .end annotation

    .line 62
    sget-object v0, Lscala/collection/mutable/OpenHashMap$;->MODULE$:Lscala/collection/mutable/OpenHashMap$;

    invoke-virtual {v0}, Lscala/collection/mutable/OpenHashMap$;->empty()Lscala/collection/mutable/OpenHashMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic filterKeys(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lscala/collection/mutable/OpenHashMap;->filterKeys(Lscala/Function1;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic filterNot(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lscala/collection/mutable/OpenHashMap;->filterNot(Lscala/Function1;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public foreach(Lscala/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TKey;TValue;>;TU;>;)V"
        }
    .end annotation

    .line 218
    iget v0, p0, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$modCount:I

    .line 219
    new-instance v1, Lscala/collection/mutable/OpenHashMap$$anonfun$foreach$1;

    invoke-direct {v1, p0, p1, v0}, Lscala/collection/mutable/OpenHashMap$$anonfun$foreach$1;-><init>(Lscala/collection/mutable/OpenHashMap;Lscala/Function1;I)V

    invoke-direct {p0, v1}, Lscala/collection/mutable/OpenHashMap;->foreachUndeletedEntry(Lscala/Function1;)V

    return-void
.end method

.method public get(Ljava/lang/Object;)Lscala/Option;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;)",
            "Lscala/Option<",
            "TValue;>;"
        }
    .end annotation

    .line 157
    invoke-virtual {p0, p1}, Lscala/collection/mutable/OpenHashMap;->hashOf(Ljava/lang/Object;)I

    move-result v0

    .line 160
    invoke-virtual {p0}, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$mask()I

    move-result v1

    and-int/2addr v1, v0

    .line 162
    invoke-virtual {p0}, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$table()[Lscala/collection/mutable/OpenHashMap$OpenEntry;

    move-result-object v2

    aget-object v2, v2, v1

    move v3, v0

    :goto_0
    if-nez v2, :cond_0

    .line 174
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    return-object p1

    .line 164
    :cond_0
    invoke-virtual {v2}, Lscala/collection/mutable/OpenHashMap$OpenEntry;->hash()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v0, :cond_5

    .line 165
    invoke-virtual {v2}, Lscala/collection/mutable/OpenHashMap$OpenEntry;->key()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    instance-of v6, v4, Ljava/lang/Number;

    if-eqz v6, :cond_3

    check-cast v4, Ljava/lang/Number;

    invoke-static {v4, p1}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v4

    goto :goto_1

    :cond_3
    instance-of v6, v4, Ljava/lang/Character;

    if-eqz v6, :cond_4

    check-cast v4, Ljava/lang/Character;

    invoke-static {v4, p1}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v4

    goto :goto_1

    :cond_4
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    :goto_1
    if-eqz v4, :cond_5

    .line 166
    invoke-virtual {v2}, Lscala/collection/mutable/OpenHashMap$OpenEntry;->value()Lscala/Option;

    move-result-object p1

    return-object p1

    :cond_5
    mul-int/lit8 v3, v3, 0x5

    add-int/2addr v3, v5

    add-int/2addr v3, v1

    shr-int/lit8 v1, v1, 0x5

    .line 171
    invoke-virtual {p0}, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$mask()I

    move-result v2

    and-int/2addr v2, v3

    .line 172
    invoke-virtual {p0}, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$table()[Lscala/collection/mutable/OpenHashMap$OpenEntry;

    move-result-object v4

    aget-object v2, v4, v2

    goto :goto_0
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lscala/collection/mutable/OpenHashMap;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public hashOf(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;)I"
        }
    .end annotation

    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    .line 79
    invoke-virtual {v0, p1}, Lscala/runtime/ScalaRunTime$;->hash(Ljava/lang/Object;)I

    move-result p1

    ushr-int/lit8 v0, p1, 0x14

    ushr-int/lit8 v1, p1, 0xc

    xor-int/2addr v0, v1

    xor-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x7

    xor-int/2addr v0, p1

    ushr-int/lit8 p1, p1, 0x4

    xor-int/2addr p1, v0

    return p1
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TKey;TValue;>;>;"
        }
    .end annotation

    .line 182
    new-instance v0, Lscala/collection/mutable/OpenHashMap$$anon$1;

    invoke-direct {v0, p0}, Lscala/collection/mutable/OpenHashMap$$anon$1;-><init>(Lscala/collection/mutable/OpenHashMap;)V

    return-object v0
.end method

.method public bridge synthetic keySet()Lscala/collection/GenSet;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lscala/collection/mutable/OpenHashMap;->keySet()Lscala/collection/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keys()Lscala/collection/GenIterable;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lscala/collection/mutable/OpenHashMap;->keys()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mapValues(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lscala/collection/mutable/OpenHashMap;->mapValues(Lscala/Function1;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;TValue;)",
            "Lscala/Option<",
            "TValue;>;"
        }
    .end annotation

    .line 126
    invoke-virtual {p0, p1}, Lscala/collection/mutable/OpenHashMap;->hashOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$put(Ljava/lang/Object;ILjava/lang/Object;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Lscala/Option;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;)",
            "Lscala/Option<",
            "TValue;>;"
        }
    .end annotation

    .line 146
    invoke-direct {p0, p1}, Lscala/collection/mutable/OpenHashMap;->findIndex(Ljava/lang/Object;)I

    move-result p1

    .line 147
    invoke-virtual {p0}, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$table()[Lscala/collection/mutable/OpenHashMap$OpenEntry;

    move-result-object v0

    aget-object v0, v0, p1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$table()[Lscala/collection/mutable/OpenHashMap$OpenEntry;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lscala/collection/mutable/OpenHashMap$OpenEntry;->value()Lscala/Option;

    move-result-object v0

    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 148
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$table()[Lscala/collection/mutable/OpenHashMap$OpenEntry;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lscala/collection/mutable/OpenHashMap$OpenEntry;->value()Lscala/Option;

    move-result-object v0

    .line 149
    invoke-virtual {p0}, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$table()[Lscala/collection/mutable/OpenHashMap$OpenEntry;

    move-result-object v1

    aget-object p1, v1, p1

    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {p1, v1}, Lscala/collection/mutable/OpenHashMap$OpenEntry;->value_$eq(Lscala/Option;)V

    .line 150
    invoke-virtual {p0}, Lscala/collection/mutable/OpenHashMap;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$size_$eq(I)V

    .line 151
    invoke-virtual {p0}, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$deleted()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$deleted_$eq(I)V

    goto :goto_2

    .line 153
    :cond_2
    :goto_1
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    :goto_2
    return-object v0
.end method

.method public bridge synthetic repr()Lscala/collection/generic/Subtractable;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lscala/collection/mutable/OpenHashMap;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/generic/Subtractable;

    return-object v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lscala/collection/mutable/OpenHashMap;->result()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(Lscala/Function2;)Lscala/collection/mutable/MapLike;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lscala/collection/mutable/OpenHashMap;->retain(Lscala/Function2;)Lscala/collection/mutable/OpenHashMap;

    move-result-object p1

    return-object p1
.end method

.method public retain(Lscala/Function2;)Lscala/collection/mutable/OpenHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function2<",
            "TKey;TValue;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/mutable/OpenHashMap<",
            "TKey;TValue;>;"
        }
    .end annotation

    .line 235
    new-instance v0, Lscala/collection/mutable/OpenHashMap$$anonfun$retain$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/mutable/OpenHashMap$$anonfun$retain$1;-><init>(Lscala/collection/mutable/OpenHashMap;Lscala/Function2;)V

    invoke-direct {p0, v0}, Lscala/collection/mutable/OpenHashMap;->foreachUndeletedEntry(Lscala/Function1;)V

    return-object p0
.end method

.method public scala$collection$mutable$OpenHashMap$$addEntry(Lscala/collection/mutable/OpenHashMap$OpenEntry;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/OpenHashMap$OpenEntry<",
            "TKey;TValue;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 113
    invoke-virtual {p0}, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$table()[Lscala/collection/mutable/OpenHashMap$OpenEntry;

    move-result-object v0

    invoke-virtual {p1}, Lscala/collection/mutable/OpenHashMap$OpenEntry;->key()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lscala/collection/mutable/OpenHashMap$OpenEntry;->hash()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lscala/collection/mutable/OpenHashMap;->findIndex(Ljava/lang/Object;I)I

    move-result v1

    aput-object p1, v0, v1

    :cond_0
    return-void
.end method

.method public scala$collection$mutable$OpenHashMap$$deleted()I
    .locals 1

    .line 69
    iget v0, p0, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$deleted:I

    return v0
.end method

.method public scala$collection$mutable$OpenHashMap$$deleted_$eq(I)V
    .locals 0

    .line 69
    iput p1, p0, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$deleted:I

    return-void
.end method

.method public scala$collection$mutable$OpenHashMap$$mask()I
    .locals 1

    .line 66
    iget v0, p0, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$mask:I

    return v0
.end method

.method public scala$collection$mutable$OpenHashMap$$put(Ljava/lang/Object;ILjava/lang/Object;)Lscala/Option;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;ITValue;)",
            "Lscala/Option<",
            "TValue;>;"
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Lscala/collection/mutable/OpenHashMap;->size()I

    move-result v0

    invoke-virtual {p0}, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$deleted()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$mask()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/OpenHashMap;->growTable()V

    .line 130
    :cond_0
    invoke-direct {p0, p1, p2}, Lscala/collection/mutable/OpenHashMap;->findIndex(Ljava/lang/Object;I)I

    move-result v0

    .line 131
    invoke-virtual {p0}, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$table()[Lscala/collection/mutable/OpenHashMap$OpenEntry;

    move-result-object v1

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 133
    invoke-virtual {p0}, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$table()[Lscala/collection/mutable/OpenHashMap$OpenEntry;

    move-result-object v1

    new-instance v2, Lscala/collection/mutable/OpenHashMap$OpenEntry;

    new-instance v3, Lscala/Some;

    invoke-direct {v3, p3}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, p1, p2, v3}, Lscala/collection/mutable/OpenHashMap$OpenEntry;-><init>(Ljava/lang/Object;ILscala/Option;)V

    aput-object v2, v1, v0

    .line 134
    iget p1, p0, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$modCount:I

    .line 135
    invoke-virtual {p0}, Lscala/collection/mutable/OpenHashMap;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$size_$eq(I)V

    .line 136
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_1

    .line 138
    :cond_1
    invoke-virtual {v1}, Lscala/collection/mutable/OpenHashMap$OpenEntry;->value()Lscala/Option;

    move-result-object p1

    .line 139
    invoke-virtual {v1}, Lscala/collection/mutable/OpenHashMap$OpenEntry;->value()Lscala/Option;

    move-result-object p2

    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lscala/collection/mutable/OpenHashMap;->size()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p2}, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$size_$eq(I)V

    iget p2, p0, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$modCount:I

    .line 140
    :cond_3
    :goto_0
    new-instance p2, Lscala/Some;

    invoke-direct {p2, p3}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Lscala/collection/mutable/OpenHashMap$OpenEntry;->value_$eq(Lscala/Option;)V

    :goto_1
    return-object p1
.end method

.method public scala$collection$mutable$OpenHashMap$$size_$eq(I)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lscala/collection/mutable/OpenHashMap;->_size_$eq(I)V

    return-void
.end method

.method public scala$collection$mutable$OpenHashMap$$table()[Lscala/collection/mutable/OpenHashMap$OpenEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lscala/collection/mutable/OpenHashMap$OpenEntry<",
            "TKey;TValue;>;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$table:[Lscala/collection/mutable/OpenHashMap$OpenEntry;

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Map;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lscala/collection/mutable/OpenHashMap;->seq()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 74
    invoke-direct {p0}, Lscala/collection/mutable/OpenHashMap;->_size()I

    move-result v0

    return v0
.end method

.method public stringPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "OpenHashMap"

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lscala/collection/mutable/OpenHashMap;->thisCollection()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lscala/collection/mutable/OpenHashMap;->toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lscala/collection/mutable/OpenHashMap;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lscala/collection/mutable/OpenHashMap;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lscala/collection/mutable/OpenHashMap;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic transform(Lscala/Function2;)Lscala/collection/mutable/MapLike;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lscala/collection/mutable/OpenHashMap;->transform(Lscala/Function2;)Lscala/collection/mutable/OpenHashMap;

    move-result-object p1

    return-object p1
.end method

.method public transform(Lscala/Function2;)Lscala/collection/mutable/OpenHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function2<",
            "TKey;TValue;TValue;>;)",
            "Lscala/collection/mutable/OpenHashMap<",
            "TKey;TValue;>;"
        }
    .end annotation

    .line 230
    new-instance v0, Lscala/collection/mutable/OpenHashMap$$anonfun$transform$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/mutable/OpenHashMap$$anonfun$transform$1;-><init>(Lscala/collection/mutable/OpenHashMap;Lscala/Function2;)V

    invoke-direct {p0, v0}, Lscala/collection/mutable/OpenHashMap;->foreachUndeletedEntry(Lscala/Function1;)V

    return-object p0
.end method

.method public update(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;TValue;)V"
        }
    .end annotation

    .line 116
    invoke-virtual {p0, p1}, Lscala/collection/mutable/OpenHashMap;->hashOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lscala/collection/mutable/OpenHashMap;->scala$collection$mutable$OpenHashMap$$put(Ljava/lang/Object;ILjava/lang/Object;)Lscala/Option;

    return-void
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/GenMap;
    .locals 0

    .line 50
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/OpenHashMap;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/Map;
    .locals 0

    .line 50
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/OpenHashMap;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic values()Lscala/collection/GenIterable;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lscala/collection/mutable/OpenHashMap;->values()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lscala/collection/mutable/OpenHashMap;->view()Lscala/collection/IterableView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 50
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/OpenHashMap;->view(II)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method
