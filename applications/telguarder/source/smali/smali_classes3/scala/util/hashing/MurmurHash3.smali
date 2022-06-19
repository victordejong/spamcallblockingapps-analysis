.class public Lscala/util/hashing/MurmurHash3;
.super Ljava/lang/Object;
.source "MurmurHash3.scala"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/util/hashing/MurmurHash3$ArrayHashing;
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\t\u001dd!B\u0001\u0003\u0001\tA!aC\'ve6,(\u000fS1tQNR!a\u0001\u0003\u0002\u000f!\u000c7\u000f[5oO*\u0011QAB\u0001\u0005kRLGNC\u0001\u0008\u0003\u0015\u00198-\u00197b\'\t\u0001\u0011\u0002\u0005\u0002\u000b\u00175\ta!\u0003\u0002\r\r\t1\u0011I\\=SK\u001aDQA\u0004\u0001\u0005\u0002A\ta\u0001P5oSRt4\u0001\u0001\u000b\u0002#A\u0011!\u0003A\u0007\u0002\u0005!)A\u0003\u0001C\u0003+\u0005\u0019Q.\u001b=\u0015\u0007YI2\u0004\u0005\u0002\u000b/%\u0011\u0001D\u0002\u0002\u0004\u0013:$\u0008\"\u0002\u000e\u0014\u0001\u00041\u0012\u0001\u00025bg\"DQ\u0001H\nA\u0002Y\tA\u0001Z1uC\")a\u0004\u0001C\u0003?\u00059Q.\u001b=MCN$Hc\u0001\u000c!C!)!$\u0008a\u0001-!)A$\u0008a\u0001-!)1\u0005\u0001C\u0003I\u0005aa-\u001b8bY&TX\rS1tQR\u0019a#\n\u0014\t\u000bi\u0011\u0003\u0019\u0001\u000c\t\u000b\u001d\u0012\u0003\u0019\u0001\u000c\u0002\r1,gn\u001a;i\u0011\u0015I\u0003\u0001\"\u0004+\u0003%\tg/\u00197b]\u000eDW\r\u0006\u0002\u0017W!)!\u0004\u000ba\u0001-!)Q\u0006\u0001C\u0003]\u0005Y\u0001O]8ek\u000e$\u0008*Y:i)\r1r\u0006\u000e\u0005\u0006a1\u0002\r!M\u0001\u0002qB\u0011!BM\u0005\u0003g\u0019\u0011q\u0001\u0015:pIV\u001cG\u000fC\u00036Y\u0001\u0007a#\u0001\u0003tK\u0016$\u0007\"B\u001c\u0001\t\u000bA\u0014AC:ue&tw\rS1tQR\u0019a#\u000f\"\t\u000bi2\u0004\u0019A\u001e\u0002\u0007M$(\u000f\u0005\u0002=\u007f9\u0011!\"P\u0005\u0003}\u0019\ta\u0001\u0015:fI\u00164\u0017B\u0001!B\u0005\u0019\u0019FO]5oO*\u0011aH\u0002\u0005\u0006kY\u0002\rA\u0006\u0005\u0006\t\u0002!)!R\u0001\u000ek:|\'\u000fZ3sK\u0012D\u0015m\u001d5\u0015\u0007Y1%\u000bC\u0003H\u0007\u0002\u0007\u0001*\u0001\u0002ygB\u0019\u0011\nT(\u000f\u0005)Q\u0015BA&\u0007\u0003\u001d\u0001\u0018mY6bO\u0016L!!\u0014(\u0003\u001fQ\u0013\u0018M^3sg\u0006\u0014G.Z(oG\u0016T!a\u0013\u0004\u0011\u0005)\u0001\u0016BA)\u0007\u0005\r\te.\u001f\u0005\u0006k\r\u0003\rA\u0006\u0005\u0006)\u0002!)!V\u0001\u000c_J$WM]3e\u0011\u0006\u001c\u0008\u000eF\u0002\u0017-^CQaR*A\u0002!CQ!N*A\u0002YAQ!\u0017\u0001\u0005\u0006i\u000b\u0011\"\u0019:sCfD\u0015m\u001d5\u0016\u0005m\u001bGc\u0001\u000c][\")Q\u000c\u0017a\u0001=\u0006\t\u0011\rE\u0002\u000b?\u0006L!\u0001\u0019\u0004\u0003\u000b\u0005\u0013(/Y=\u0011\u0005\t\u001cG\u0002\u0001\u0003\nIb\u0003\u000b\u0011!AC\u0002\u0015\u0014\u0011\u0001V\t\u0003M>\u0003\"AC4\n\u0005!4!a\u0002(pi\"Lgn\u001a\u0015\u0003G*\u0004\"AC6\n\u000514!aC:qK\u000eL\u0017\r\\5{K\u0012DQ!\u000e-A\u0002YAQa\u001c\u0001\u0005\u0006A\u000c\u0011BY=uKND\u0015m\u001d5\u0015\u0007Y\th\u000fC\u0003\u001d]\u0002\u0007!\u000fE\u0002\u000b?N\u0004\"A\u0003;\n\u0005U4!\u0001\u0002\"zi\u0016DQ!\u000e8A\u0002YAQ\u0001\u001f\u0001\u0005\u0006e\u000c\u0001\u0002\\5ti\"\u000b7\u000f\u001b\u000b\u0005-i\u000cy\u0001C\u0003Ho\u0002\u00071\u0010M\u0002}\u0003\u0017\u0001R!`A\u0003\u0003\u0013i\u0011A \u0006\u0004\u007f\u0006\u0005\u0011!C5n[V$\u0018M\u00197f\u0015\r\t\u0019AB\u0001\u000bG>dG.Z2uS>t\u0017bAA\u0004}\n!A*[:u!\r\u0011\u00171\u0002\u0003\u000b\u0003\u001bQ\u0018\u0011!A\u0001\u0006\u0003)\'aA0%c!)Qg\u001ea\u0001-\u001d9\u00111\u0003\u0002\t\u0002\u0005U\u0011aC\'ve6,(\u000fS1tQN\u00022AEA\u000c\r\u0019\t!\u0001#\u0001\u0002\u001aM\u0019\u0011qC\t\t\u000f9\t9\u0002\"\u0001\u0002\u001eQ\u0011\u0011Q\u0003\u0005\u000b\u0003C\t9B1A\u0005\u0006\u0005\r\u0012!C1se\u0006L8+Z3e+\t\t)c\u0004\u0002\u0002(u!Ah\u0002&b\u0011%\tY#a\u0006!\u0002\u001b\t)#\u0001\u0006beJ\u000c\u0017pU3fI\u0002B!\"a\u000c\u0002\u0018\t\u0007IQAA\u0019\u0003)\u0019HO]5oON+W\rZ\u000b\u0003\u0003gy!!!\u000e\u001e\t]X}P5\u0005\n\u0003s\t9\u0002)A\u0007\u0003g\t1b\u001d;sS:<7+Z3eA!Q\u0011QHA\u000c\u0005\u0004%)!a\u0010\u0002\u0017A\u0014x\u000eZ;diN+W\rZ\u000b\u0003\u0003\u0003z!!a\u0011\u001e\t)w0X0\u0005\n\u0003\u000f\n9\u0002)A\u0007\u0003\u0003\nA\u0002\u001d:pIV\u001cGoU3fI\u0002B!\"a\u0013\u0002\u0018\t\u0007IQAA\'\u00035\u0019\u00180\\7fiJL7mU3fIV\u0011\u0011qJ\u0008\u0003\u0003#jB!.Jx^#I\u0011QKA\u000cA\u00035\u0011qJ\u0001\u000fgflW.\u001a;sS\u000e\u001cV-\u001a3!\u0011)\tI&a\u0006C\u0002\u0013\u0015\u00111L\u0001\u0010iJ\u000cg/\u001a:tC\ndWmU3fIV\u0011\u0011QL\u0008\u0003\u0003?jBa:\u001e\u000c,!I\u00111MA\u000cA\u00035\u0011QL\u0001\u0011iJ\u000cg/\u001a:tC\ndWmU3fI\u0002B!\"a\u001a\u0002\u0018\t\u0007IQAA5\u0003\u001d\u0019X-]*fK\u0012,\u0012A\u0006\u0005\t\u0003[\n9\u0002)A\u0007-\u0005A1/Z9TK\u0016$\u0007\u0005\u0003\u0006\u0002r\u0005]!\u0019!C\u0003\u0003S\nq!\\1q\'\u0016,G\r\u0003\u0005\u0002v\u0005]\u0001\u0015!\u0004\u0017\u0003!i\u0017\r]*fK\u0012\u0004\u0003BCA=\u0003/\u0011\r\u0011\"\u0002\u0002j\u000591/\u001a;TK\u0016$\u0007\u0002CA?\u0003/\u0001\u000bQ\u0002\u000c\u0002\u0011M,GoU3fI\u0002Bq!WA\u000c\t\u0003\t\t)\u0006\u0003\u0002\u0004\u0006-Ec\u0001\u000c\u0002\u0006\"9Q,a A\u0002\u0005\u001d\u0005\u0003\u0002\u0006`\u0003\u0013\u00032AYAF\t)!\u0017q\u0010Q\u0001\u0002\u0003\u0015\r!\u001a\u0015\u0004\u0003\u0017S\u0007bB8\u0002\u0018\u0011\u0005\u0011\u0011\u0013\u000b\u0004-\u0005M\u0005B\u0002\u000f\u0002\u0010\u0002\u0007!\u000fC\u0004U\u0003/!\t!a&\u0015\u0007Y\tI\n\u0003\u0004H\u0003+\u0003\r\u0001\u0013\u0005\u0008[\u0005]A\u0011AAO)\r1\u0012q\u0014\u0005\u0007a\u0005m\u0005\u0019A\u0019\t\u000f]\n9\u0002\"\u0001\u0002$R\u0019a#!*\t\rA\n\t\u000b1\u0001<\u0011\u001d!\u0015q\u0003C\u0001\u0003S#2AFAV\u0011\u00199\u0015q\u0015a\u0001\u0011\"A\u0011qVA\u000c\t\u0003\t\t,A\u0004tKFD\u0015m\u001d5\u0015\u0007Y\t\u0019\u000cC\u0004H\u0003[\u0003\r!!.1\t\u0005]\u0016\u0011\u0019\t\u0007\u0003s\u000bY,a0\u000e\u0005\u0005\u0005\u0011\u0002BA_\u0003\u0003\u00111aU3r!\r\u0011\u0017\u0011\u0019\u0003\u000c\u0003\u0007\u000c\u0019,!A\u0001\u0002\u000b\u0005QMA\u0002`IIB\u0001\"a2\u0002\u0018\u0011\u0005\u0011\u0011Z\u0001\u0008[\u0006\u0004\u0008*Y:i)\r1\u00121\u001a\u0005\u0008\u000f\u0006\u0015\u0007\u0019AAga\u0019\ty-a6\u0002^BA\u0011\u0011XAi\u0003+\u000cY.\u0003\u0003\u0002T\u0006\u0005!aA\'baB\u0019!-a6\u0005\u0017\u0005e\u00171ZA\u0001\u0002\u0003\u0015\t!\u001a\u0002\u0004?\u0012\u001a\u0004c\u00012\u0002^\u0012Y\u0011q\\Af\u0003\u0003\u0005\tQ!\u0001f\u0005\ryF\u0005\u000e\u0005\t\u0003G\u000c9\u0002\"\u0001\u0002f\u000691/\u001a;ICNDGc\u0001\u000c\u0002h\"9q)!9A\u0002\u0005%\u0008\u0007BAv\u0003g\u0004b!!/\u0002n\u0006E\u0018\u0002BAx\u0003\u0003\u00111aU3u!\r\u0011\u00171\u001f\u0003\u000c\u0003k\u000c9/!A\u0001\u0002\u000b\u0005QMA\u0002`IU2q!!?\u0002\u0018\u0001\tYP\u0001\u0007BeJ\u000c\u0017\u0010S1tQ&tw-\u0006\u0003\u0002~\n%1#BA|\u0013\u0005}\u0008#\u0002\n\u0003\u0002\t\u0015\u0011b\u0001B\u0002\u0005\t9\u0001*Y:iS:<\u0007\u0003\u0002\u0006`\u0005\u000f\u00012A\u0019B\u0005\t)!\u0017q\u001fQ\u0001\u0002\u0003\u0015\r!\u001a\u0015\u0004\u0005\u0013Q\u0007b\u0002\u0008\u0002x\u0012\u0005!q\u0002\u000b\u0003\u0005#\u0001bAa\u0005\u0002x\n\u001dQBAA\u000c\u0011\u001dQ\u0012q\u001fC\u0001\u0005/!2A\u0006B\r\u0011\u001di&Q\u0003a\u0001\u0005\u000bA\u0001B!\u0008\u0002\u0018\u0011\u0005!qD\u0001\rCJ\u0014\u0018-\u001f%bg\"LgnZ\u000b\u0005\u0005C\u00119#\u0006\u0002\u0003$A1!1CA|\u0005K\u00012A\u0019B\u0014\t)!\'1\u0004Q\u0001\u0002\u0003\u0015\r!\u001a\u0015\u0004\u0005OQ\u0007\u0002\u0003B\u0017\u0003/!\tAa\u000c\u0002\u0019\tLH/Z:ICND\u0017N\\4\u0016\u0005\tE\"#\u0002B\u001a\u0013\t]ba\u0002B\u001b\u0005W\u0001!\u0011\u0007\u0002\ryI,g-\u001b8f[\u0016tGO\u0010\t\u0005%\t\u0005!\u000f\u0003\u0005\u0003<\u0005]A\u0011\u0001B\u001f\u00039y\'\u000fZ3sK\u0012D\u0015m\u001d5j]\u001e,\"Aa\u0010\u0013\u000b\t\u0005\u0013Ba\u0011\u0007\u000f\tU\"\u0011\u0008\u0001\u0003@A!!C!\u0001I\u0011!\u00119%a\u0006\u0005\u0002\t%\u0013A\u00049s_\u0012,8\r\u001e%bg\"LgnZ\u000b\u0003\u0005\u0017\u0012RA!\u0014\n\u0005\u001f2qA!\u000e\u0003F\u0001\u0011Y\u0005\u0005\u0003\u0013\u0005\u0003\t\u0004\u0002\u0003B*\u0003/!\tA!\u0016\u0002\u001bM$(/\u001b8h\u0011\u0006\u001c\u0008.\u001b8h+\t\u00119FE\u0003\u0003Z%\u0011YFB\u0004\u00036\tE\u0003Aa\u0016\u0011\tI\u0011\ta\u000f\u0005\t\u0005?\n9\u0002\"\u0001\u0003b\u0005\u0001RO\\8sI\u0016\u0014X\r\u001a%bg\"LgnZ\u000b\u0003\u0005G\u0012RA!\u001a\n\u0005\u00072qA!\u000e\u0003^\u0001\u0011\u0019\u0007"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static arrayHashing()Lscala/util/hashing/MurmurHash3$ArrayHashing;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/util/hashing/MurmurHash3$ArrayHashing<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lscala/util/hashing/MurmurHash3$;->MODULE$:Lscala/util/hashing/MurmurHash3$;

    invoke-virtual {v0}, Lscala/util/hashing/MurmurHash3$;->arrayHashing()Lscala/util/hashing/MurmurHash3$ArrayHashing;

    move-result-object v0

    return-object v0
.end method

.method public static arraySeed()I
    .locals 1

    sget-object v0, Lscala/util/hashing/MurmurHash3$;->MODULE$:Lscala/util/hashing/MurmurHash3$;

    invoke-virtual {v0}, Lscala/util/hashing/MurmurHash3$;->arraySeed()I

    move-result v0

    return v0
.end method

.method private final avalanche(I)I
    .locals 1

    ushr-int/lit8 v0, p1, 0x10

    xor-int/2addr p1, v0

    const v0, -0x7a143595

    mul-int p1, p1, v0

    ushr-int/lit8 v0, p1, 0xd

    xor-int/2addr p1, v0

    const v0, -0x3d4d51cb

    mul-int p1, p1, v0

    ushr-int/lit8 v0, p1, 0x10

    xor-int/2addr p1, v0

    return p1
.end method

.method public static bytesHashing()Lscala/util/hashing/Hashing;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lscala/util/hashing/MurmurHash3$;->MODULE$:Lscala/util/hashing/MurmurHash3$;

    invoke-virtual {v0}, Lscala/util/hashing/MurmurHash3$;->bytesHashing()Lscala/util/hashing/Hashing;

    move-result-object v0

    return-object v0
.end method

.method public static mapHash(Lscala/collection/Map;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Map<",
            "**>;)I"
        }
    .end annotation

    sget-object v0, Lscala/util/hashing/MurmurHash3$;->MODULE$:Lscala/util/hashing/MurmurHash3$;

    invoke-virtual {v0, p0}, Lscala/util/hashing/MurmurHash3$;->mapHash(Lscala/collection/Map;)I

    move-result p0

    return p0
.end method

.method public static mapSeed()I
    .locals 1

    sget-object v0, Lscala/util/hashing/MurmurHash3$;->MODULE$:Lscala/util/hashing/MurmurHash3$;

    invoke-virtual {v0}, Lscala/util/hashing/MurmurHash3$;->mapSeed()I

    move-result v0

    return v0
.end method

.method public static orderedHashing()Lscala/util/hashing/Hashing;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lscala/util/hashing/MurmurHash3$;->MODULE$:Lscala/util/hashing/MurmurHash3$;

    invoke-virtual {v0}, Lscala/util/hashing/MurmurHash3$;->orderedHashing()Lscala/util/hashing/Hashing;

    move-result-object v0

    return-object v0
.end method

.method public static productHashing()Lscala/util/hashing/Hashing;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lscala/util/hashing/MurmurHash3$;->MODULE$:Lscala/util/hashing/MurmurHash3$;

    invoke-virtual {v0}, Lscala/util/hashing/MurmurHash3$;->productHashing()Lscala/util/hashing/Hashing;

    move-result-object v0

    return-object v0
.end method

.method public static productSeed()I
    .locals 1

    sget-object v0, Lscala/util/hashing/MurmurHash3$;->MODULE$:Lscala/util/hashing/MurmurHash3$;

    invoke-virtual {v0}, Lscala/util/hashing/MurmurHash3$;->productSeed()I

    move-result v0

    return v0
.end method

.method public static seqHash(Lscala/collection/Seq;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Seq<",
            "*>;)I"
        }
    .end annotation

    sget-object v0, Lscala/util/hashing/MurmurHash3$;->MODULE$:Lscala/util/hashing/MurmurHash3$;

    invoke-virtual {v0, p0}, Lscala/util/hashing/MurmurHash3$;->seqHash(Lscala/collection/Seq;)I

    move-result p0

    return p0
.end method

.method public static seqSeed()I
    .locals 1

    sget-object v0, Lscala/util/hashing/MurmurHash3$;->MODULE$:Lscala/util/hashing/MurmurHash3$;

    invoke-virtual {v0}, Lscala/util/hashing/MurmurHash3$;->seqSeed()I

    move-result v0

    return v0
.end method

.method public static setHash(Lscala/collection/Set;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Set<",
            "*>;)I"
        }
    .end annotation

    sget-object v0, Lscala/util/hashing/MurmurHash3$;->MODULE$:Lscala/util/hashing/MurmurHash3$;

    invoke-virtual {v0, p0}, Lscala/util/hashing/MurmurHash3$;->setHash(Lscala/collection/Set;)I

    move-result p0

    return p0
.end method

.method public static setSeed()I
    .locals 1

    sget-object v0, Lscala/util/hashing/MurmurHash3$;->MODULE$:Lscala/util/hashing/MurmurHash3$;

    invoke-virtual {v0}, Lscala/util/hashing/MurmurHash3$;->setSeed()I

    move-result v0

    return v0
.end method

.method public static stringHashing()Lscala/util/hashing/Hashing;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lscala/util/hashing/MurmurHash3$;->MODULE$:Lscala/util/hashing/MurmurHash3$;

    invoke-virtual {v0}, Lscala/util/hashing/MurmurHash3$;->stringHashing()Lscala/util/hashing/Hashing;

    move-result-object v0

    return-object v0
.end method

.method public static stringSeed()I
    .locals 1

    sget-object v0, Lscala/util/hashing/MurmurHash3$;->MODULE$:Lscala/util/hashing/MurmurHash3$;

    invoke-virtual {v0}, Lscala/util/hashing/MurmurHash3$;->stringSeed()I

    move-result v0

    return v0
.end method

.method public static symmetricSeed()I
    .locals 1

    sget-object v0, Lscala/util/hashing/MurmurHash3$;->MODULE$:Lscala/util/hashing/MurmurHash3$;

    invoke-virtual {v0}, Lscala/util/hashing/MurmurHash3$;->symmetricSeed()I

    move-result v0

    return v0
.end method

.method public static traversableSeed()I
    .locals 1

    sget-object v0, Lscala/util/hashing/MurmurHash3$;->MODULE$:Lscala/util/hashing/MurmurHash3$;

    invoke-virtual {v0}, Lscala/util/hashing/MurmurHash3$;->traversableSeed()I

    move-result v0

    return v0
.end method

.method public static unorderedHashing()Lscala/util/hashing/Hashing;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lscala/util/hashing/MurmurHash3$;->MODULE$:Lscala/util/hashing/MurmurHash3$;

    invoke-virtual {v0}, Lscala/util/hashing/MurmurHash3$;->unorderedHashing()Lscala/util/hashing/Hashing;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final arrayHash(Ljava/lang/Object;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 121
    :goto_0
    sget-object v1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v1, p1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 122
    sget-object v1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    sget-object v2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v2, p1, v0}, Lscala/runtime/ScalaRunTime$;->array_apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/runtime/ScalaRunTime$;->hash(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, p2, v1}, Lscala/util/hashing/MurmurHash3;->mix(II)I

    move-result p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_0
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lscala/util/hashing/MurmurHash3;->finalizeHash(II)I

    move-result p1

    return p1
.end method

.method public final arrayHash$mBc$sp([BI)I
    .locals 2

    const/4 v0, 0x0

    .line 121
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 122
    aget-byte v1, p1, v0

    invoke-virtual {p0, p2, v1}, Lscala/util/hashing/MurmurHash3;->mix(II)I

    move-result p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_0
    array-length p1, p1

    invoke-virtual {p0, p2, p1}, Lscala/util/hashing/MurmurHash3;->finalizeHash(II)I

    move-result p1

    return p1
.end method

.method public final arrayHash$mCc$sp([CI)I
    .locals 2

    const/4 v0, 0x0

    .line 121
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 122
    aget-char v1, p1, v0

    invoke-virtual {p0, p2, v1}, Lscala/util/hashing/MurmurHash3;->mix(II)I

    move-result p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_0
    array-length p1, p1

    invoke-virtual {p0, p2, p1}, Lscala/util/hashing/MurmurHash3;->finalizeHash(II)I

    move-result p1

    return p1
.end method

.method public final arrayHash$mDc$sp([DI)I
    .locals 4

    const/4 v0, 0x0

    .line 121
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 122
    sget-object v1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    aget-wide v2, p1, v0

    invoke-virtual {v1, v2, v3}, Lscala/runtime/ScalaRunTime$;->hash(D)I

    move-result v1

    invoke-virtual {p0, p2, v1}, Lscala/util/hashing/MurmurHash3;->mix(II)I

    move-result p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_0
    array-length p1, p1

    invoke-virtual {p0, p2, p1}, Lscala/util/hashing/MurmurHash3;->finalizeHash(II)I

    move-result p1

    return p1
.end method

.method public final arrayHash$mFc$sp([FI)I
    .locals 3

    const/4 v0, 0x0

    .line 121
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 122
    sget-object v1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Lscala/runtime/ScalaRunTime$;->hash(F)I

    move-result v1

    invoke-virtual {p0, p2, v1}, Lscala/util/hashing/MurmurHash3;->mix(II)I

    move-result p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_0
    array-length p1, p1

    invoke-virtual {p0, p2, p1}, Lscala/util/hashing/MurmurHash3;->finalizeHash(II)I

    move-result p1

    return p1
.end method

.method public final arrayHash$mIc$sp([II)I
    .locals 2

    const/4 v0, 0x0

    .line 121
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 122
    aget v1, p1, v0

    invoke-virtual {p0, p2, v1}, Lscala/util/hashing/MurmurHash3;->mix(II)I

    move-result p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_0
    array-length p1, p1

    invoke-virtual {p0, p2, p1}, Lscala/util/hashing/MurmurHash3;->finalizeHash(II)I

    move-result p1

    return p1
.end method

.method public final arrayHash$mJc$sp([JI)I
    .locals 4

    const/4 v0, 0x0

    .line 121
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 122
    sget-object v1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    aget-wide v2, p1, v0

    invoke-virtual {v1, v2, v3}, Lscala/runtime/ScalaRunTime$;->hash(J)I

    move-result v1

    invoke-virtual {p0, p2, v1}, Lscala/util/hashing/MurmurHash3;->mix(II)I

    move-result p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_0
    array-length p1, p1

    invoke-virtual {p0, p2, p1}, Lscala/util/hashing/MurmurHash3;->finalizeHash(II)I

    move-result p1

    return p1
.end method

.method public final arrayHash$mSc$sp([SI)I
    .locals 2

    const/4 v0, 0x0

    .line 121
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 122
    aget-short v1, p1, v0

    invoke-virtual {p0, p2, v1}, Lscala/util/hashing/MurmurHash3;->mix(II)I

    move-result p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_0
    array-length p1, p1

    invoke-virtual {p0, p2, p1}, Lscala/util/hashing/MurmurHash3;->finalizeHash(II)I

    move-result p1

    return p1
.end method

.method public final arrayHash$mVc$sp([Lscala/runtime/BoxedUnit;I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 121
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 122
    invoke-virtual {p0, p2, v0}, Lscala/util/hashing/MurmurHash3;->mix(II)I

    move-result p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    :cond_0
    array-length p1, p1

    invoke-virtual {p0, p2, p1}, Lscala/util/hashing/MurmurHash3;->finalizeHash(II)I

    move-result p1

    return p1
.end method

.method public final arrayHash$mZc$sp([ZI)I
    .locals 2

    const/4 v0, 0x0

    .line 121
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 122
    aget-boolean v1, p1, v0

    if-eqz v1, :cond_0

    const/16 v1, 0x4cf

    goto :goto_1

    :cond_0
    const/16 v1, 0x4d5

    :goto_1
    invoke-virtual {p0, p2, v1}, Lscala/util/hashing/MurmurHash3;->mix(II)I

    move-result p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_1
    array-length p1, p1

    invoke-virtual {p0, p2, p1}, Lscala/util/hashing/MurmurHash3;->finalizeHash(II)I

    move-result p1

    return p1
.end method

.method public final bytesHash([BI)I
    .locals 5

    .line 132
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-lt v0, v3, :cond_0

    add-int/lit8 v3, v2, 0x0

    .line 138
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v2, 0x1

    .line 139
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    add-int/lit8 v4, v2, 0x2

    .line 140
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    add-int/lit8 v4, v2, 0x3

    .line 141
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v3, v4

    .line 143
    invoke-virtual {p0, p2, v3}, Lscala/util/hashing/MurmurHash3;->mix(II)I

    move-result p2

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v0, v0, -0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    add-int/lit8 v3, v2, 0x2

    .line 151
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    xor-int/2addr v3, v1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x2

    if-lt v0, v4, :cond_2

    add-int/lit8 v4, v2, 0x1

    .line 152
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    xor-int/2addr v3, v4

    :cond_2
    const/4 v4, 0x1

    if-lt v0, v4, :cond_3

    add-int/2addr v2, v1

    .line 154
    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0xff

    xor-int/2addr v0, v3

    .line 155
    invoke-virtual {p0, p2, v0}, Lscala/util/hashing/MurmurHash3;->mixLast(II)I

    move-result p2

    .line 159
    :cond_3
    array-length p1, p1

    invoke-virtual {p0, p2, p1}, Lscala/util/hashing/MurmurHash3;->finalizeHash(II)I

    move-result p1

    return p1
.end method

.method public final finalizeHash(II)I
    .locals 0

    xor-int/2addr p1, p2

    .line 36
    invoke-direct {p0, p1}, Lscala/util/hashing/MurmurHash3;->avalanche(I)I

    move-result p1

    return p1
.end method

.method public final listHash(Lscala/collection/immutable/List;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/List<",
            "*>;I)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 166
    :goto_0
    invoke-virtual {p1}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    invoke-virtual {p0, p2, v0}, Lscala/util/hashing/MurmurHash3;->finalizeHash(II)I

    move-result p1

    return p1

    .line 167
    :cond_0
    invoke-virtual {p1}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v1

    .line 168
    invoke-virtual {p1}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/List;

    .line 169
    sget-object v2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v2, v1}, Lscala/runtime/ScalaRunTime$;->hash(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, p2, v1}, Lscala/util/hashing/MurmurHash3;->mix(II)I

    move-result p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final mix(II)I
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lscala/util/hashing/MurmurHash3;->mixLast(II)I

    move-result p1

    const/16 p2, 0xd

    .line 18
    invoke-static {p1, p2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p1

    mul-int/lit8 p1, p1, 0x5

    const p2, -0x19ab949c

    add-int/2addr p1, p2

    return p1
.end method

.method public final mixLast(II)I
    .locals 1

    const v0, -0x3361d2af    # -8.2930312E7f

    mul-int p2, p2, v0

    const/16 v0, 0xf

    .line 29
    invoke-static {p2, v0}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p2

    const v0, 0x1b873593

    mul-int p2, p2, v0

    xor-int/2addr p1, p2

    return p1
.end method

.method public final orderedHash(Lscala/collection/TraversableOnce;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 107
    invoke-static {v0}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object v0

    .line 108
    invoke-static {p2}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object p2

    .line 109
    new-instance v1, Lscala/util/hashing/MurmurHash3$$anonfun$orderedHash$1;

    invoke-direct {v1, p0, v0, p2}, Lscala/util/hashing/MurmurHash3$$anonfun$orderedHash$1;-><init>(Lscala/util/hashing/MurmurHash3;Lscala/runtime/IntRef;Lscala/runtime/IntRef;)V

    invoke-interface {p1, v1}, Lscala/collection/TraversableOnce;->foreach(Lscala/Function1;)V

    .line 113
    iget p1, p2, Lscala/runtime/IntRef;->elem:I

    iget p2, v0, Lscala/runtime/IntRef;->elem:I

    invoke-virtual {p0, p1, p2}, Lscala/util/hashing/MurmurHash3;->finalizeHash(II)I

    move-result p1

    return p1
.end method

.method public final productHash(Lscala/Product;I)I
    .locals 4

    .line 53
    invoke-interface {p1}, Lscala/Product;->productArity()I

    move-result v0

    if-nez v0, :cond_0

    .line 58
    invoke-interface {p1}, Lscala/Product;->productPrefix()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 64
    sget-object v2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-interface {p1, v1}, Lscala/Product;->productElement(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lscala/runtime/ScalaRunTime$;->hash(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p0, p2, v2}, Lscala/util/hashing/MurmurHash3;->mix(II)I

    move-result p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p0, p2, v0}, Lscala/util/hashing/MurmurHash3;->finalizeHash(II)I

    move-result p1

    :goto_1
    return p1
.end method

.method public final stringHash(Ljava/lang/String;I)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v0, 0x1

    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 76
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/2addr v2, v1

    .line 77
    invoke-virtual {p0, p2, v2}, Lscala/util/hashing/MurmurHash3;->mix(II)I

    move-result p2

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, p2, v0}, Lscala/util/hashing/MurmurHash3;->mixLast(II)I

    move-result p2

    .line 81
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lscala/util/hashing/MurmurHash3;->finalizeHash(II)I

    move-result p1

    return p1
.end method

.method public final unorderedHash(Lscala/collection/TraversableOnce;I)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 89
    invoke-static {v0}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object v7

    invoke-static {v0}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object v8

    invoke-static {v0}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object v0

    const/4 v1, 0x1

    .line 90
    invoke-static {v1}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object v9

    .line 91
    new-instance v10, Lscala/util/hashing/MurmurHash3$$anonfun$unorderedHash$1;

    move-object v1, v10

    move-object v2, p0

    move-object v3, v7

    move-object v4, v8

    move-object v5, v0

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lscala/util/hashing/MurmurHash3$$anonfun$unorderedHash$1;-><init>(Lscala/util/hashing/MurmurHash3;Lscala/runtime/IntRef;Lscala/runtime/IntRef;Lscala/runtime/IntRef;Lscala/runtime/IntRef;)V

    invoke-interface {p1, v10}, Lscala/collection/TraversableOnce;->foreach(Lscala/Function1;)V

    .line 98
    iget p1, v7, Lscala/runtime/IntRef;->elem:I

    invoke-virtual {p0, p2, p1}, Lscala/util/hashing/MurmurHash3;->mix(II)I

    move-result p1

    .line 100
    iget p2, v8, Lscala/runtime/IntRef;->elem:I

    invoke-virtual {p0, p1, p2}, Lscala/util/hashing/MurmurHash3;->mix(II)I

    move-result p1

    .line 101
    iget p2, v9, Lscala/runtime/IntRef;->elem:I

    invoke-virtual {p0, p1, p2}, Lscala/util/hashing/MurmurHash3;->mixLast(II)I

    move-result p1

    .line 102
    iget p2, v0, Lscala/runtime/IntRef;->elem:I

    invoke-virtual {p0, p1, p2}, Lscala/util/hashing/MurmurHash3;->finalizeHash(II)I

    move-result p1

    return p1
.end method
