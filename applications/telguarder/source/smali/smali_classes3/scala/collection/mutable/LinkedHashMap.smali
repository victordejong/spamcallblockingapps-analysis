.class public Lscala/collection/mutable/LinkedHashMap;
.super Lscala/collection/mutable/AbstractMap;
.source "LinkedHashMap.scala"

# interfaces
.implements Lscala/collection/mutable/HashTable;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/mutable/LinkedHashMap$FilteredKeys;,
        Lscala/collection/mutable/LinkedHashMap$MappedValues;,
        Lscala/collection/mutable/LinkedHashMap$DefaultKeySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/mutable/AbstractMap<",
        "TA;TB;>;",
        "Lscala/collection/mutable/HashTable<",
        "TA;",
        "Lscala/collection/mutable/LinkedEntry<",
        "TA;TB;>;>;",
        "Lscala/Serializable;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\t\ru!B\u0001\u0003\u0011\u0003I\u0011!\u0004\'j].,G\rS1tQ6\u000b\u0007O\u0003\u0002\u0004\t\u00059Q.\u001e;bE2,\'BA\u0003\u0007\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000f\u0005)1oY1mC\u000e\u0001\u0001C\u0001\u0006\u000c\u001b\u0005\u0011a!\u0002\u0007\u0003\u0011\u0003i!!\u0004\'j].,G\rS1tQ6\u000b\u0007oE\u0002\u000c\u001d]\u00022a\u0004\n\u0015\u001b\u0005\u0001\"BA\t\u0005\u0003\u001d9WM\\3sS\u000eL!a\u0005\t\u0003#5+H/\u00192mK6\u000b\u0007OR1di>\u0014\u0018\u0010\u0005\u0002\u000b+\u0019!AB\u0001\u0001\u0017+\r9R\u0004K\n\u0007+aQS&M\u001c\u0011\t)I2dJ\u0005\u00035\t\u00111\"\u00112tiJ\u000c7\r^\'baB\u0011A$\u0008\u0007\u0001\t\u0015qRC1\u0001 \u0005\u0005\t\u0015C\u0001\u0011%!\t\t#%D\u0001\u0007\u0013\t\u0019cAA\u0004O_RD\u0017N\\4\u0011\u0005\u0005*\u0013B\u0001\u0014\u0007\u0005\r\te.\u001f\t\u00039!\"Q!K\u000bC\u0002}\u0011\u0011A\u0011\t\u0005\u0015-Zr%\u0003\u0002-\u0005\t\u0019Q*\u00199\u0011\u000b)q3d\n\u0019\n\u0005=\u0012!aB\'ba2K7.\u001a\t\u0005\u0015UYr\u0005\u0005\u0003\u000bem!\u0014BA\u001a\u0003\u0005%A\u0015m\u001d5UC\ndW\r\u0005\u0003\u000bkm9\u0013B\u0001\u001c\u0003\u0005-a\u0015N\\6fI\u0016sGO]=\u0011\u0005\u0005B\u0014BA\u001d\u0007\u00051\u0019VM]5bY&T\u0018M\u00197f\u0011\u0015YT\u0003\"\u0001=\u0003\u0019a\u0014N\\5u}Q\t\u0001\u0007C\u0003?+\u0011\u0005s(A\u0003f[B$\u00180F\u00011\u0011\u0015\tU\u0003\"\u0011C\u0003\u0011\u0019\u0018N_3\u0016\u0003\r\u0003\"!\t#\n\u0005\u00153!aA%oi\u0016!q)\u0006\u00015\u0005\u0015)e\u000e\u001e:z\u0011\u001dIU\u00031A\u0005\u0012)\u000b!BZ5sgR,e\u000e\u001e:z+\u0005Y\u0005C\u0001\'G\u001b\u0005)\u0002b\u0002(\u0016\u0001\u0004%\tbT\u0001\u000fM&\u00148\u000f^#oiJLx\u000cJ3r)\t\u00016\u000b\u0005\u0002\"#&\u0011!K\u0002\u0002\u0005+:LG\u000fC\u0004U\u001b\u0006\u0005\t\u0019A&\u0002\u0007a$\u0013\u0007\u0003\u0004W+\u0001\u0006KaS\u0001\u000cM&\u00148\u000f^#oiJL\u0008\u0005\u000b\u0002V1B\u0011\u0011%W\u0005\u00035\u001a\u0011\u0011\u0002\u001e:b]NLWM\u001c;\t\u000fq+\u0002\u0019!C\t\u0015\u0006IA.Y:u\u000b:$(/\u001f\u0005\u0008=V\u0001\r\u0011\"\u0005`\u00035a\u0017m\u001d;F]R\u0014\u0018p\u0018\u0013fcR\u0011\u0001\u000b\u0019\u0005\u0008)v\u000b\t\u00111\u0001L\u0011\u0019\u0011W\u0003)Q\u0005\u0017\u0006QA.Y:u\u000b:$(/\u001f\u0011)\u0005\u0005D\u0006\"B3\u0016\t\u00031\u0017aA4fiR\u0011qM\u001b\t\u0004C!<\u0013BA5\u0007\u0005\u0019y\u0005\u000f^5p]\")1\u000e\u001aa\u00017\u0005\u00191.Z=\t\u000b5,B\u0011\t8\u0002\u0007A,H\u000fF\u0002h_BDQa\u001b7A\u0002mAQ!\u001d7A\u0002\u001d\nQA^1mk\u0016DQa]\u000b\u0005BQ\u000caA]3n_Z,GCA4v\u0011\u0015Y\'\u000f1\u0001\u001c\u0011\u00159X\u0003\"\u0001y\u0003!!\u0003\u000f\\;tI\u0015\u000cHC\u0001\'z\u0011\u0015Qh\u000f1\u0001|\u0003\tYg\u000f\u0005\u0003\"yn9\u0013BA?\u0007\u0005\u0019!V\u000f\u001d7fe!2ao`A\u0003\u0003\u0013\u00012!IA\u0001\u0013\r\t\u0019A\u0002\u0002\u0015I\u0016\u0004(/Z2bi\u0016$wJ^3se&$\u0017N\\4\"\u0005\u0005\u001d\u0011\u0001P\u0016>AMDw.\u001e7eA9|G\u000f\t2fA=4XM\u001d:jI\u0012,g\u000eI:pA%$\u0008e\u001d;bsN\u00043m\u001c8tSN$XM\u001c;!o&$\u0008\u000e\t9vi:\n#!a\u0003\u0002\rIr\u0013\'\r\u00181\u0011\u001d\ty!\u0006C\u0001\u0003#\t\u0011\u0002J7j]V\u001cH%Z9\u0015\u00071\u000b\u0019\u0002\u0003\u0004l\u0003\u001b\u0001\ra\u0007\u0015\u0008\u0003\u001by\u0018qCA\u0005C\t\tI\"A .{\u0001\u001a\u0008n\\;mI\u0002rw\u000e\u001e\u0011cK\u0002zg/\u001a:sS\u0012$WM\u001c\u0011t_\u0002JG\u000fI:uCf\u001c\u0008eY8og&\u001cH/\u001a8uA]LG\u000f\u001b\u0011sK6|g/\u001a\u0018\t\u000f\u0005uQ\u0003\"\u0001\u0002 \u0005A\u0011\u000e^3sCR|\'/\u0006\u0002\u0002\"A)\u00111EA\u0013w6\tA!C\u0002\u0002(\u0011\u0011\u0001\"\u0013;fe\u0006$xN\u001d\u0004\u0007\u0003W)\u0002\"!\u000c\u0003\u0019\u0019KG\u000e^3sK\u0012\\U-_:\u0014\t\u0005%\u0012q\u0006\t\u0004\u0019\u0006E\u0012\u0002BA\u0016\u0003gI!a\u000c\u0003\t\u0017\u0005]\u0012\u0011\u0006B\u0001B\u0003%\u0011\u0011H\u0001\u0002aB1\u0011%a\u000f\u001c\u0003\u007fI1!!\u0010\u0007\u0005%1UO\\2uS>t\u0017\u0007E\u0002\"\u0003\u0003J1!a\u0011\u0007\u0005\u001d\u0011un\u001c7fC:DqaOA\u0015\t\u0003\t9\u0005\u0006\u0003\u0002J\u0005-\u0003c\u0001\'\u0002*!A\u0011qGA#\u0001\u0004\tI\u0004C\u0004?\u0003S!\t%a\u0014\u0016\u0005\u0005E\u0003\u0003\u0002\u0006\u00167\u0001Bq!!\u0016\u0016\t\u0003\n9&\u0001\u0006gS2$XM]&fsN$B!!\u0017\u0002^A1\u00111EA.7\u001dJ!\u0001\u000c\u0003\t\u0011\u0005]\u00121\u000ba\u0001\u0003s1a!!\u0019\u0016\u0011\u0005\r$\u0001D\'baB,GMV1mk\u0016\u001cX\u0003BA3\u0003[\u001aB!a\u0018\u0002hA)A*!\u001b\u0002l%!\u0011\u0011MA\u001a!\ra\u0012Q\u000e\u0003\u0008\u0003_\nyF1\u0001 \u0005\u0005\u0019\u0005bCA:\u0003?\u0012\t\u0011)A\u0005\u0003k\n\u0011A\u001a\t\u0007C\u0005mr%a\u001b\t\u000fm\ny\u0006\"\u0001\u0002zQ!\u00111PA?!\u0015a\u0015qLA6\u0011!\t\u0019(a\u001eA\u0002\u0005U\u0004b\u0002 \u0002`\u0011\u0005\u0013q\n\u0005\u0008\u0003\u0007+B\u0011IAC\u0003%i\u0017\r\u001d,bYV,7/\u0006\u0003\u0002\u0008\u00065E\u0003BAE\u0003\u001f\u0003r!a\t\u0002\\m\tY\tE\u0002\u001d\u0003\u001b#q!a\u001c\u0002\u0002\n\u0007q\u0004\u0003\u0005\u0002t\u0005\u0005\u0005\u0019AAI!\u0019\t\u00131H\u0014\u0002\u000c\u001a1\u0011QS\u000b\t\u0003/\u0013Q\u0002R3gCVdGoS3z\'\u0016$8\u0003BAJ\u00033\u00032\u0001TAN\u0013\u0011\t)*a\r\t\u000fm\n\u0019\n\"\u0001\u0002 R\u0011\u0011\u0011\u0015\t\u0004\u0019\u0006M\u0005b\u0002 \u0002\u0014\u0012\u0005\u0013QU\u000b\u0003\u0003O\u0003BACAU7%\u0019\u00111\u0016\u0002\u0003\u001b1Kgn[3e\u0011\u0006\u001c\u0008nU3u\u0011\u001d\ty+\u0006C!\u0003c\u000baa[3z\'\u0016$XCAAZ!\u0015\t\u0019#!.\u001c\u0013\r\t9\u000c\u0002\u0002\u0004\'\u0016$\u0008bBA^+\u0011\u0005\u0013QX\u0001\rW\u0016L8/\u0013;fe\u0006$xN]\u000b\u0003\u0003\u007f\u0003R!a\t\u0002&mAq!a1\u0016\t\u0003\n)-\u0001\u0008wC2,Xm]%uKJ\u000cGo\u001c:\u0016\u0005\u0005\u001d\u0007#BA\u0012\u0003K9\u0003bBAf+\u0011\u0005\u0013QZ\u0001\u0008M>\u0014X-Y2i+\u0011\ty-a6\u0015\u0007A\u000b\t\u000e\u0003\u0005\u0002t\u0005%\u0007\u0019AAj!\u0019\t\u00131H>\u0002VB\u0019A$a6\u0005\u000f\u0005e\u0017\u0011\u001ab\u0001?\t\tQ\u000bC\u0004\u0002^V!\t&a8\u0002\u0019\u0019|\'/Z1dQ\u0016sGO]=\u0016\t\u0005\u0005\u0018\u0011\u001e\u000b\u0004!\u0006\r\u0008\u0002CA:\u00037\u0004\r!!:\u0011\r\u0005\nYdSAt!\ra\u0012\u0011\u001e\u0003\u0008\u00033\u000cYN1\u0001 \u0011\u001d\ti/\u0006C\t\u0003_\u000cab\u0019:fCR,g*Z<F]R\u0014\u00180\u0006\u0003\u0002r\u0006eH#B&\u0002t\u0006U\u0008BB6\u0002l\u0002\u00071\u0004C\u0004r\u0003W\u0004\r!a>\u0011\u0007q\tI\u0010B\u0004\u0002|\u0006-(\u0019A\u0010\u0003\u0005\t\u000b\u0004bBA\u0000+\u0011\u0005#\u0011A\u0001\u0006G2,\u0017M\u001d\u000b\u0002!\"9!QA\u000b\u0005\n\t\u001d\u0011aC<sSR,wJ\u00196fGR$2\u0001\u0015B\u0005\u0011!\u0011YAa\u0001A\u0002\t5\u0011aA8viB!!q\u0002B\r\u001b\t\u0011\tB\u0003\u0003\u0003\u0014\tU\u0011AA5p\u0015\t\u00119\"\u0001\u0003kCZ\u000c\u0017\u0002\u0002B\u000e\u0005#\u0011!c\u00142kK\u000e$x*\u001e;qkR\u001cFO]3b[\"9!qD\u000b\u0005\n\t\u0005\u0012A\u0003:fC\u0012|%M[3diR\u0019\u0001Ka\t\t\u0011\t\u0015\"Q\u0004a\u0001\u0005O\t!!\u001b8\u0011\t\t=!\u0011F\u0005\u0005\u0005W\u0011\tBA\tPE*,7\r^%oaV$8\u000b\u001e:fC6Dc!\u0006B\u0018c\nU\u0002cA\u0011\u00032%\u0019!1\u0007\u0004\u0003!M+\'/[1m-\u0016\u00148/[8o+&#e$A\u0001\t\rmZA\u0011\u0001B\u001d)\u0005I\u0001b\u0002B\u001f\u0017\u0011\r!qH\u0001\rG\u0006t\')^5mI\u001a\u0013x.\\\u000b\u0007\u0005\u0003\u0012IF!\u0018\u0016\u0005\t\r\u0003#C\u0008\u0003F\t%#Q\u000bB0\u0013\r\u00119\u0005\u0005\u0002\r\u0007\u0006t\')^5mI\u001a\u0013x.\u001c\t\u0005\u0005\u0017\u0012i%D\u0001\u000c\u0013\u0011\u0011yE!\u0015\u0003\t\r{G\u000e\\\u0005\u0004\u0005\'\u0002\"!D$f]6\u000b\u0007OR1di>\u0014\u0018\u0010\u0005\u0004\"y\n]#1\u000c\t\u00049\teCA\u0002\u0010\u0003<\t\u0007q\u0004E\u0002\u001d\u0005;\"a!\u000bB\u001e\u0005\u0004y\u0002C\u0002\u0006\u0016\u0005/\u0012Y\u0006\u0003\u0004?\u0017\u0011\u0005!1M\u000b\u0007\u0005K\u0012YGa\u001c\u0016\u0005\t\u001d\u0004C\u0002\u0006\u0016\u0005S\u0012i\u0007E\u0002\u001d\u0005W\"aA\u0008B1\u0005\u0004y\u0002c\u0001\u000f\u0003p\u00111\u0011F!\u0019C\u0002}A\u0011Ba\u001d\u000c\u0003\u0003%IA!\u001e\u0002\u0017I,\u0017\r\u001a*fg>dg/\u001a\u000b\u0003\u0005o\u0002BA!\u001f\u0003\u00005\u0011!1\u0010\u0006\u0005\u0005{\u0012)\"\u0001\u0003mC:<\u0017\u0002\u0002BA\u0005w\u0012aa\u00142kK\u000e$\u0008"
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x1L


# instance fields
.field private transient _loadFactor:I

.field private transient firstEntry:Lscala/collection/mutable/LinkedEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/mutable/LinkedEntry<",
            "TA;TB;>;"
        }
    .end annotation
.end field

.field private transient lastEntry:Lscala/collection/mutable/LinkedEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/mutable/LinkedEntry<",
            "TA;TB;>;"
        }
    .end annotation
.end field

.field private transient seedvalue:I

.field private transient sizemap:[I

.field private transient table:[Lscala/collection/mutable/HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lscala/collection/mutable/HashEntry<",
            "Ljava/lang/Object;",
            "Lscala/collection/mutable/HashEntry;",
            ">;"
        }
    .end annotation
.end field

.field private transient tableSize:I

.field private transient threshold:I


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Lscala/collection/mutable/AbstractMap;-><init>()V

    invoke-static {p0}, Lscala/collection/mutable/HashTable$HashUtils$class;->$init$(Lscala/collection/mutable/HashTable$HashUtils;)V

    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->$init$(Lscala/collection/mutable/HashTable;)V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lscala/collection/mutable/LinkedHashMap;->firstEntry:Lscala/collection/mutable/LinkedEntry;

    .line 62
    iput-object v0, p0, Lscala/collection/mutable/LinkedHashMap;->lastEntry:Lscala/collection/mutable/LinkedEntry;

    return-void
.end method

.method public static canBuildFrom()Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/mutable/LinkedHashMap<",
            "**>;",
            "Lscala/Tuple2<",
            "TA;TB;>;",
            "Lscala/collection/mutable/LinkedHashMap<",
            "TA;TB;>;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/mutable/LinkedHashMap$;->MODULE$:Lscala/collection/mutable/LinkedHashMap$;

    invoke-virtual {v0}, Lscala/collection/mutable/LinkedHashMap$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 174
    invoke-virtual {p0, v0}, Lscala/collection/mutable/LinkedHashMap;->firstEntry_$eq(Lscala/collection/mutable/LinkedEntry;)V

    .line 175
    invoke-virtual {p0, v0}, Lscala/collection/mutable/LinkedHashMap;->lastEntry_$eq(Lscala/collection/mutable/LinkedEntry;)V

    .line 176
    new-instance v0, Lscala/collection/mutable/LinkedHashMap$$anonfun$readObject$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/mutable/LinkedHashMap$$anonfun$readObject$1;-><init>(Lscala/collection/mutable/LinkedHashMap;Ljava/io/ObjectInputStream;)V

    invoke-virtual {p0, p1, v0}, Lscala/collection/mutable/LinkedHashMap;->init(Ljava/io/ObjectInputStream;Lscala/Function0;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .line 167
    new-instance v0, Lscala/collection/mutable/LinkedHashMap$$anonfun$writeObject$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/mutable/LinkedHashMap$$anonfun$writeObject$1;-><init>(Lscala/collection/mutable/LinkedHashMap;Ljava/io/ObjectOutputStream;)V

    invoke-virtual {p0, p1, v0}, Lscala/collection/mutable/LinkedHashMap;->serializeTo(Ljava/io/ObjectOutputStream;Lscala/Function1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic $minus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LinkedHashMap;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/Map;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LinkedHashMap;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LinkedHashMap;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/mutable/LinkedHashMap;->$minus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus$eq(Ljava/lang/Object;)Lscala/collection/generic/Shrinkable;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LinkedHashMap;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/LinkedHashMap;

    move-result-object p1

    return-object p1
.end method

.method public $minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/LinkedHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/LinkedHashMap<",
            "TA;TB;>;"
        }
    .end annotation

    .line 92
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LinkedHashMap;->remove(Ljava/lang/Object;)Lscala/Option;

    return-object p0
.end method

.method public bridge synthetic $minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/MapLike;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LinkedHashMap;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/LinkedHashMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus$minus(Lscala/collection/GenTraversableOnce;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LinkedHashMap;->$minus$minus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/GenMap;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LinkedHashMap;->$plus(Lscala/Tuple2;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/Map;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LinkedHashMap;->$plus(Lscala/Tuple2;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/Map;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/mutable/LinkedHashMap;->$plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 0

    .line 49
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/LinkedHashMap;->$plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/LinkedHashMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 49
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/LinkedHashMap;->$plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/LinkedHashMap;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "TA;TB;>;)",
            "Lscala/collection/mutable/LinkedHashMap<",
            "TA;TB;>;"
        }
    .end annotation

    .line 89
    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lscala/collection/mutable/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;

    return-object p0
.end method

.method public bridge synthetic $plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/MapLike;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LinkedHashMap;->$plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/LinkedHashMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Map;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LinkedHashMap;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public _loadFactor()I
    .locals 1

    .line 49
    iget v0, p0, Lscala/collection/mutable/LinkedHashMap;->_loadFactor:I

    return v0
.end method

.method public _loadFactor_$eq(I)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 49
    iput p1, p0, Lscala/collection/mutable/LinkedHashMap;->_loadFactor:I

    return-void
.end method

.method public addEntry(Lscala/collection/mutable/HashEntry;)V
    .locals 0

    .line 49
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->addEntry(Lscala/collection/mutable/HashTable;Lscala/collection/mutable/HashEntry;)V

    return-void
.end method

.method public alwaysInitSizeMap()Z
    .locals 1

    .line 49
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->alwaysInitSizeMap(Lscala/collection/mutable/HashTable;)Z

    move-result v0

    return v0
.end method

.method public calcSizeMapSize(I)I
    .locals 0

    .line 49
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->calcSizeMapSize(Lscala/collection/mutable/HashTable;I)I

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 1

    .line 161
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedHashMap;->clearTable()V

    const/4 v0, 0x0

    .line 162
    invoke-virtual {p0, v0}, Lscala/collection/mutable/LinkedHashMap;->firstEntry_$eq(Lscala/collection/mutable/LinkedEntry;)V

    .line 163
    invoke-virtual {p0, v0}, Lscala/collection/mutable/LinkedHashMap;->lastEntry_$eq(Lscala/collection/mutable/LinkedEntry;)V

    return-void
.end method

.method public clearTable()V
    .locals 0

    .line 49
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->clearTable(Lscala/collection/mutable/HashTable;)V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedHashMap;->clone()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createNewEntry(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/LinkedHashMap;->createNewEntry(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/LinkedEntry;

    move-result-object p1

    return-object p1
.end method

.method public createNewEntry(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/LinkedEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(TA;TB1;)",
            "Lscala/collection/mutable/LinkedEntry<",
            "TA;TB;>;"
        }
    .end annotation

    .line 153
    new-instance v0, Lscala/collection/mutable/LinkedEntry;

    invoke-direct {v0, p1, p2}, Lscala/collection/mutable/LinkedEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedHashMap;->firstEntry()Lscala/collection/mutable/LinkedEntry;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Lscala/collection/mutable/LinkedHashMap;->firstEntry_$eq(Lscala/collection/mutable/LinkedEntry;)V

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedHashMap;->lastEntry()Lscala/collection/mutable/LinkedEntry;

    move-result-object p1

    invoke-virtual {p1, v0}, Lscala/collection/mutable/LinkedEntry;->later_$eq(Lscala/collection/mutable/LinkedEntry;)V

    invoke-virtual {p0}, Lscala/collection/mutable/LinkedHashMap;->lastEntry()Lscala/collection/mutable/LinkedEntry;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/collection/mutable/LinkedEntry;->earlier_$eq(Lscala/collection/mutable/LinkedEntry;)V

    .line 156
    :goto_0
    invoke-virtual {p0, v0}, Lscala/collection/mutable/LinkedHashMap;->lastEntry_$eq(Lscala/collection/mutable/LinkedEntry;)V

    return-object v0
.end method

.method public elemEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TA;)Z"
        }
    .end annotation

    .line 49
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/HashTable$class;->elemEquals(Lscala/collection/mutable/HashTable;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public elemHashCode(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)I"
        }
    .end annotation

    .line 49
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$HashUtils$class;->elemHashCode(Lscala/collection/mutable/HashTable$HashUtils;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic empty()Lscala/collection/Map;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedHashMap;->empty()Lscala/collection/mutable/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/mutable/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/LinkedHashMap<",
            "TA;TB;>;"
        }
    .end annotation

    .line 56
    sget-object v0, Lscala/collection/mutable/LinkedHashMap$;->MODULE$:Lscala/collection/mutable/LinkedHashMap$;

    invoke-virtual {v0}, Lscala/collection/mutable/LinkedHashMap$;->empty()Lscala/collection/mutable/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/mutable/Map;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedHashMap;->empty()Lscala/collection/mutable/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method

.method public entriesIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/collection/mutable/LinkedEntry<",
            "TA;TB;>;>;"
        }
    .end annotation

    .line 49
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->entriesIterator(Lscala/collection/mutable/HashTable;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic filterKeys(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LinkedHashMap;->filterKeys(Lscala/Function1;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public filterKeys(Lscala/Function1;)Lscala/collection/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/Map<",
            "TA;TB;>;"
        }
    .end annotation

    .line 106
    new-instance v0, Lscala/collection/mutable/LinkedHashMap$FilteredKeys;

    invoke-direct {v0, p0, p1}, Lscala/collection/mutable/LinkedHashMap$FilteredKeys;-><init>(Lscala/collection/mutable/LinkedHashMap;Lscala/Function1;)V

    return-object v0
.end method

.method public bridge synthetic filterNot(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LinkedHashMap;->filterNot(Lscala/Function1;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public findEntry(Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;
    .locals 0

    .line 49
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->findEntry(Lscala/collection/mutable/HashTable;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;

    move-result-object p1

    return-object p1
.end method

.method public findOrAddEntry(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;
    .locals 0

    .line 49
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/HashTable$class;->findOrAddEntry(Lscala/collection/mutable/HashTable;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;

    move-result-object p1

    return-object p1
.end method

.method public firstEntry()Lscala/collection/mutable/LinkedEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/LinkedEntry<",
            "TA;TB;>;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lscala/collection/mutable/LinkedHashMap;->firstEntry:Lscala/collection/mutable/LinkedEntry;

    return-object v0
.end method

.method public firstEntry_$eq(Lscala/collection/mutable/LinkedEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/LinkedEntry<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lscala/collection/mutable/LinkedHashMap;->firstEntry:Lscala/collection/mutable/LinkedEntry;

    return-void
.end method

.method public foreach(Lscala/Function1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TA;TB;>;TU;>;)V"
        }
    .end annotation

    .line 137
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedHashMap;->firstEntry()Lscala/collection/mutable/LinkedEntry;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    .line 139
    new-instance v1, Lscala/Tuple2;

    invoke-virtual {v0}, Lscala/collection/mutable/LinkedEntry;->key()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lscala/collection/mutable/LinkedEntry;->value()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-virtual {v0}, Lscala/collection/mutable/LinkedEntry;->later()Lscala/collection/mutable/LinkedEntry;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public foreachEntry(Lscala/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/collection/mutable/LinkedEntry<",
            "TA;TB;>;TU;>;)V"
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedHashMap;->firstEntry()Lscala/collection/mutable/LinkedEntry;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    .line 147
    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-virtual {v0}, Lscala/collection/mutable/LinkedEntry;->later()Lscala/collection/mutable/LinkedEntry;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public get(Ljava/lang/Object;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 65
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LinkedHashMap;->findEntry(Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;

    move-result-object p1

    check-cast p1, Lscala/collection/mutable/LinkedEntry;

    if-nez p1, :cond_0

    .line 66
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    .line 67
    :cond_0
    new-instance v0, Lscala/Some;

    invoke-virtual {p1}, Lscala/collection/mutable/LinkedEntry;->value()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LinkedHashMap;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public hashTableContents()Lscala/collection/mutable/HashTable$Contents;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/HashTable$Contents<",
            "TA;",
            "Lscala/collection/mutable/LinkedEntry<",
            "TA;TB;>;>;"
        }
    .end annotation

    .line 49
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->hashTableContents(Lscala/collection/mutable/HashTable;)Lscala/collection/mutable/HashTable$Contents;

    move-result-object v0

    return-object v0
.end method

.method public final improve(II)I
    .locals 0

    .line 49
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/HashTable$HashUtils$class;->improve(Lscala/collection/mutable/HashTable$HashUtils;II)I

    move-result p1

    return p1
.end method

.method public final index(I)I
    .locals 0

    .line 49
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->index(Lscala/collection/mutable/HashTable;I)I

    move-result p1

    return p1
.end method

.method public init(Ljava/io/ObjectInputStream;Lscala/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectInputStream;",
            "Lscala/Function0<",
            "Lscala/collection/mutable/LinkedEntry<",
            "TA;TB;>;>;)V"
        }
    .end annotation

    .line 49
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/HashTable$class;->init(Lscala/collection/mutable/HashTable;Ljava/io/ObjectInputStream;Lscala/Function0;)V

    return-void
.end method

.method public initWithContents(Lscala/collection/mutable/HashTable$Contents;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/HashTable$Contents<",
            "TA;",
            "Lscala/collection/mutable/LinkedEntry<",
            "TA;TB;>;>;)V"
        }
    .end annotation

    .line 49
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->initWithContents(Lscala/collection/mutable/HashTable;Lscala/collection/mutable/HashTable$Contents;)V

    return-void
.end method

.method public initialSize()I
    .locals 1

    .line 49
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->initialSize(Lscala/collection/mutable/HashTable;)I

    move-result v0

    return v0
.end method

.method public isSizeMapDefined()Z
    .locals 1

    .line 49
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->isSizeMapDefined(Lscala/collection/mutable/HashTable;)Z

    move-result v0

    return v0
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TA;TB;>;>;"
        }
    .end annotation

    .line 94
    new-instance v0, Lscala/collection/mutable/LinkedHashMap$$anon$1;

    invoke-direct {v0, p0}, Lscala/collection/mutable/LinkedHashMap$$anon$1;-><init>(Lscala/collection/mutable/LinkedHashMap;)V

    return-object v0
.end method

.method public bridge synthetic keySet()Lscala/collection/GenSet;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedHashMap;->keySet()Lscala/collection/Set;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Lscala/collection/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Set<",
            "TA;>;"
        }
    .end annotation

    .line 118
    new-instance v0, Lscala/collection/mutable/LinkedHashMap$DefaultKeySet;

    invoke-direct {v0, p0}, Lscala/collection/mutable/LinkedHashMap$DefaultKeySet;-><init>(Lscala/collection/mutable/LinkedHashMap;)V

    return-object v0
.end method

.method public bridge synthetic keys()Lscala/collection/GenIterable;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedHashMap;->keys()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public keysIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation

    .line 120
    new-instance v0, Lscala/collection/mutable/LinkedHashMap$$anon$2;

    invoke-direct {v0, p0}, Lscala/collection/mutable/LinkedHashMap$$anon$2;-><init>(Lscala/collection/mutable/LinkedHashMap;)V

    return-object v0
.end method

.method public lastEntry()Lscala/collection/mutable/LinkedEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/LinkedEntry<",
            "TA;TB;>;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lscala/collection/mutable/LinkedHashMap;->lastEntry:Lscala/collection/mutable/LinkedEntry;

    return-object v0
.end method

.method public lastEntry_$eq(Lscala/collection/mutable/LinkedEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/LinkedEntry<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lscala/collection/mutable/LinkedHashMap;->lastEntry:Lscala/collection/mutable/LinkedEntry;

    return-void
.end method

.method public bridge synthetic mapValues(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LinkedHashMap;->mapValues(Lscala/Function1;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public mapValues(Lscala/Function1;)Lscala/collection/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TB;TC;>;)",
            "Lscala/collection/Map<",
            "TA;TC;>;"
        }
    .end annotation

    .line 112
    new-instance v0, Lscala/collection/mutable/LinkedHashMap$MappedValues;

    invoke-direct {v0, p0, p1}, Lscala/collection/mutable/LinkedHashMap$MappedValues;-><init>(Lscala/collection/mutable/LinkedHashMap;Lscala/Function1;)V

    return-object v0
.end method

.method public nnSizeMapAdd(I)V
    .locals 0

    .line 49
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->nnSizeMapAdd(Lscala/collection/mutable/HashTable;I)V

    return-void
.end method

.method public nnSizeMapRemove(I)V
    .locals 0

    .line 49
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->nnSizeMapRemove(Lscala/collection/mutable/HashTable;I)V

    return-void
.end method

.method public nnSizeMapReset(I)V
    .locals 0

    .line 49
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->nnSizeMapReset(Lscala/collection/mutable/HashTable;I)V

    return-void
.end method

.method public printSizeMap()V
    .locals 0

    .line 49
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->printSizeMap(Lscala/collection/mutable/HashTable;)V

    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 71
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/LinkedHashMap;->findOrAddEntry(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;

    move-result-object p1

    check-cast p1, Lscala/collection/mutable/LinkedEntry;

    if-nez p1, :cond_0

    .line 72
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p1}, Lscala/collection/mutable/LinkedEntry;->value()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2}, Lscala/collection/mutable/LinkedEntry;->value_$eq(Ljava/lang/Object;)V

    new-instance p1, Lscala/Some;

    invoke-direct {p1, v0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Lscala/Option;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 77
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LinkedHashMap;->removeEntry(Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;

    move-result-object p1

    check-cast p1, Lscala/collection/mutable/LinkedEntry;

    if-nez p1, :cond_0

    .line 78
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_2

    .line 80
    :cond_0
    invoke-virtual {p1}, Lscala/collection/mutable/LinkedEntry;->earlier()Lscala/collection/mutable/LinkedEntry;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lscala/collection/mutable/LinkedEntry;->later()Lscala/collection/mutable/LinkedEntry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/mutable/LinkedHashMap;->firstEntry_$eq(Lscala/collection/mutable/LinkedEntry;)V

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p1}, Lscala/collection/mutable/LinkedEntry;->earlier()Lscala/collection/mutable/LinkedEntry;

    move-result-object v0

    invoke-virtual {p1}, Lscala/collection/mutable/LinkedEntry;->later()Lscala/collection/mutable/LinkedEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/LinkedEntry;->later_$eq(Lscala/collection/mutable/LinkedEntry;)V

    .line 82
    :goto_0
    invoke-virtual {p1}, Lscala/collection/mutable/LinkedEntry;->later()Lscala/collection/mutable/LinkedEntry;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lscala/collection/mutable/LinkedEntry;->earlier()Lscala/collection/mutable/LinkedEntry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/mutable/LinkedHashMap;->lastEntry_$eq(Lscala/collection/mutable/LinkedEntry;)V

    goto :goto_1

    .line 83
    :cond_2
    invoke-virtual {p1}, Lscala/collection/mutable/LinkedEntry;->later()Lscala/collection/mutable/LinkedEntry;

    move-result-object v0

    invoke-virtual {p1}, Lscala/collection/mutable/LinkedEntry;->earlier()Lscala/collection/mutable/LinkedEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/LinkedEntry;->earlier_$eq(Lscala/collection/mutable/LinkedEntry;)V

    .line 84
    :goto_1
    new-instance v0, Lscala/Some;

    invoke-virtual {p1}, Lscala/collection/mutable/LinkedEntry;->value()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_2
    return-object p1
.end method

.method public removeEntry(Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;
    .locals 0

    .line 49
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->removeEntry(Lscala/collection/mutable/HashTable;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic repr()Lscala/collection/generic/Subtractable;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedHashMap;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/generic/Subtractable;

    return-object v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedHashMap;->result()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public seedvalue()I
    .locals 1

    .line 49
    iget v0, p0, Lscala/collection/mutable/LinkedHashMap;->seedvalue:I

    return v0
.end method

.method public seedvalue_$eq(I)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 49
    iput p1, p0, Lscala/collection/mutable/LinkedHashMap;->seedvalue:I

    return-void
.end method

.method public bridge synthetic seq()Lscala/collection/Map;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedHashMap;->seq()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public serializeTo(Ljava/io/ObjectOutputStream;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectOutputStream;",
            "Lscala/Function1<",
            "Lscala/collection/mutable/LinkedEntry<",
            "TA;TB;>;",
            "Lscala/runtime/BoxedUnit;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/HashTable$class;->serializeTo(Lscala/collection/mutable/HashTable;Ljava/io/ObjectOutputStream;Lscala/Function1;)V

    return-void
.end method

.method public size()I
    .locals 1

    .line 57
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedHashMap;->tableSize()I

    move-result v0

    return v0
.end method

.method public final sizeMapBucketBitSize()I
    .locals 1

    .line 49
    invoke-static {p0}, Lscala/collection/mutable/HashTable$HashUtils$class;->sizeMapBucketBitSize(Lscala/collection/mutable/HashTable$HashUtils;)I

    move-result v0

    return v0
.end method

.method public final sizeMapBucketSize()I
    .locals 1

    .line 49
    invoke-static {p0}, Lscala/collection/mutable/HashTable$HashUtils$class;->sizeMapBucketSize(Lscala/collection/mutable/HashTable$HashUtils;)I

    move-result v0

    return v0
.end method

.method public sizeMapDisable()V
    .locals 0

    .line 49
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->sizeMapDisable(Lscala/collection/mutable/HashTable;)V

    return-void
.end method

.method public sizeMapInit(I)V
    .locals 0

    .line 49
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->sizeMapInit(Lscala/collection/mutable/HashTable;I)V

    return-void
.end method

.method public sizeMapInitAndRebuild()V
    .locals 0

    .line 49
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->sizeMapInitAndRebuild(Lscala/collection/mutable/HashTable;)V

    return-void
.end method

.method public sizemap()[I
    .locals 1

    .line 49
    iget-object v0, p0, Lscala/collection/mutable/LinkedHashMap;->sizemap:[I

    return-object v0
.end method

.method public sizemap_$eq([I)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 49
    iput-object p1, p0, Lscala/collection/mutable/LinkedHashMap;->sizemap:[I

    return-void
.end method

.method public table()[Lscala/collection/mutable/HashEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lscala/collection/mutable/HashEntry<",
            "TA;",
            "Lscala/collection/mutable/LinkedEntry<",
            "TA;TB;>;>;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lscala/collection/mutable/LinkedHashMap;->table:[Lscala/collection/mutable/HashEntry;

    return-object v0
.end method

.method public tableSize()I
    .locals 1

    .line 49
    iget v0, p0, Lscala/collection/mutable/LinkedHashMap;->tableSize:I

    return v0
.end method

.method public tableSizeSeed()I
    .locals 1

    .line 49
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->tableSizeSeed(Lscala/collection/mutable/HashTable;)I

    move-result v0

    return v0
.end method

.method public tableSize_$eq(I)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 49
    iput p1, p0, Lscala/collection/mutable/LinkedHashMap;->tableSize:I

    return-void
.end method

.method public table_$eq([Lscala/collection/mutable/HashEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lscala/collection/mutable/HashEntry<",
            "TA;",
            "Lscala/collection/mutable/LinkedEntry<",
            "TA;TB;>;>;)V"
        }
    .end annotation

    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 49
    iput-object p1, p0, Lscala/collection/mutable/LinkedHashMap;->table:[Lscala/collection/mutable/HashEntry;

    return-void
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedHashMap;->thisCollection()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public threshold()I
    .locals 1

    .line 49
    iget v0, p0, Lscala/collection/mutable/LinkedHashMap;->threshold:I

    return v0
.end method

.method public threshold_$eq(I)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 49
    iput p1, p0, Lscala/collection/mutable/LinkedHashMap;->threshold:I

    return-void
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LinkedHashMap;->toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedHashMap;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedHashMap;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedHashMap;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public final totalSizeMapBuckets()I
    .locals 1

    .line 49
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->totalSizeMapBuckets(Lscala/collection/mutable/HashTable;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/GenMap;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/LinkedHashMap;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/Map;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/LinkedHashMap;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic values()Lscala/collection/GenIterable;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedHashMap;->values()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public valuesIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TB;>;"
        }
    .end annotation

    .line 128
    new-instance v0, Lscala/collection/mutable/LinkedHashMap$$anon$3;

    invoke-direct {v0, p0}, Lscala/collection/mutable/LinkedHashMap$$anon$3;-><init>(Lscala/collection/mutable/LinkedHashMap;)V

    return-object v0
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedHashMap;->view()Lscala/collection/IterableView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/LinkedHashMap;->view(II)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method
