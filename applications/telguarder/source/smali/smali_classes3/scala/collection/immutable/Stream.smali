.class public abstract Lscala/collection/immutable/Stream;
.super Lscala/collection/AbstractSeq;
.source "Stream.scala"

# interfaces
.implements Lscala/collection/immutable/LinearSeq;
.implements Lscala/collection/LinearSeqOptimized;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/immutable/Stream$cons$;,
        Lscala/collection/immutable/Stream$Cons;,
        Lscala/collection/immutable/Stream$Empty$;,
        Lscala/collection/immutable/Stream$ConsWrapper;,
        Lscala/collection/immutable/Stream$StreamBuilder;,
        Lscala/collection/immutable/Stream$StreamWithFilter;,
        Lscala/collection/immutable/Stream$$hash$colon$colon$;,
        Lscala/collection/immutable/Stream$StreamCanBuildFrom;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/AbstractSeq<",
        "TA;>;",
        "Lscala/collection/immutable/LinearSeq<",
        "TA;>;",
        "Lscala/collection/LinearSeqOptimized<",
        "TA;",
        "Lscala/collection/immutable/Stream<",
        "TA;>;>;",
        "Lscala/Serializable;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u0019]eAB\u0001\u0003\u0003\u0003I\u0011F\u0001\u0004TiJ,\u0017-\u001c\u0006\u0003\u0007\u0011\t\u0011\"[7nkR\u000c\'\r\\3\u000b\u0005\u00151\u0011AC2pY2,7\r^5p]*\tq!A\u0003tG\u0006d\u0017m\u0001\u0001\u0016\u0005)\t2C\u0002\u0001\u000c7}1#\u0006E\u0002\r\u001b=i\u0011\u0001B\u0005\u0003\u001d\u0011\u00111\"\u00112tiJ\u000c7\r^*fcB\u0011\u0001#\u0005\u0007\u0001\t\u0019\u0011\u0002\u0001\"b\u0001\'\t\t\u0011)\u0005\u0002\u00151A\u0011QCF\u0007\u0002\r%\u0011qC\u0002\u0002\u0008\u001d>$\u0008.\u001b8h!\t)\u0012$\u0003\u0002\u001b\r\t\u0019\u0011I\\=\u0011\u0007qir\"D\u0001\u0003\u0013\tq\"AA\u0005MS:,\u0017M]*fcB!\u0001eI\u0008&\u001b\u0005\t#B\u0001\u0012\u0005\u0003\u001d9WM\\3sS\u000eL!\u0001J\u0011\u00035\u001d+g.\u001a:jGR\u0013\u0018M^3sg\u0006\u0014G.\u001a+f[Bd\u0017\r^3\u0011\u0005q\u0001\u0001\u0003\u0002\u0007(\u001f%J!\u0001\u000b\u0003\u0003%1Kg.Z1s\'\u0016\u000cx\n\u001d;j[&TX\r\u001a\t\u00049\u0001y\u0001CA\u000b,\u0013\tacA\u0001\u0007TKJL\u0017\r\\5{C\ndW\rC\u0003/\u0001\u0011\u0005q&\u0001\u0004=S:LGO\u0010\u000b\u0002S!)\u0011\u0007\u0001C!e\u0005I1m\\7qC:LwN\\\u000b\u0002gA\u0019\u0001\u0005N\u0013\n\u0005U\n#\u0001E$f]\u0016\u0014\u0018nY\"p[B\u000cg.[8o\u0011\u00159\u0004A\"\u00019\u0003\u001dI7/R7qif,\u0012!\u000f\t\u0003+iJ!a\u000f\u0004\u0003\u000f\t{w\u000e\\3b]\")Q\u0008\u0001D\u0001}\u0005!\u0001.Z1e+\u0005y\u0001\"\u0002!\u0001\r\u0003\t\u0015\u0001\u0002;bS2,\u0012!\u000b\u0005\u0006\u0007\u00021\t\u0002O\u0001\u000ci\u0006LG\u000eR3gS:,G\rC\u0003F\u0001\u0011\u0005a)\u0001\u0004baB,g\u000eZ\u000b\u0003\u000f*#\"\u0001S\'\u0011\u0007q\u0001\u0011\n\u0005\u0002\u0011\u0015\u0012)1\n\u0012b\u0001\u0019\n\t!)\u0005\u0002\u00101!1a\n\u0012CA\u0002=\u000bAA]3tiB\u0019Q\u0003\u0015*\n\u0005E3!\u0001\u0003\u001fcs:\u000cW.\u001a \u0011\u00071\u0019\u0016*\u0003\u0002U\t\tyAK]1wKJ\u001c\u0018M\u00197f\u001f:\u001cW\rC\u0003W\u0001\u0011\u0005\u0011)A\u0003g_J\u001cW\rC\u0003Y\u0001\u0011\u0005\u0011,A\u0003qe&tG\u000fF\u0001[!\t)2,\u0003\u0002]\r\t!QK\\5u\u0011\u0015A\u0006\u0001\"\u0001_)\tQv\u000cC\u0003a;\u0002\u0007\u0011-A\u0002tKB\u0004\"AY3\u000f\u0005U\u0019\u0017B\u00013\u0007\u0003\u0019\u0001&/\u001a3fM&\u0011am\u001a\u0002\u0007\'R\u0014\u0018N\\4\u000b\u0005\u00114\u0001\"B5\u0001\t\u0003R\u0017A\u00027f]\u001e$\u0008.F\u0001l!\t)B.\u0003\u0002n\r\t\u0019\u0011J\u001c;\t\u000b=\u0004A\u0011\u00029\u0002\r\u0005\u001cH\u000b[1u+\t\t8\u000f\u0006\u0002skB\u0011\u0001c\u001d\u0003\u0006i:\u0014\ra\u0005\u0002\u0005)\"\u000cG\u000fC\u0003w]\u0002\u0007q/A\u0001y!\t)\u00020\u0003\u0002z\r\t1\u0011I\\=SK\u001aD#A\\>\u0011\u0005Ua\u0018BA?\u0007\u0005\u0019Ig\u000e\\5oK\"1q\u0010\u0001C\u0005\u0003\u0003\t\u0001\"Y:TiJ,\u0017-\\\u000b\u0005\u0003\u0007\tI\u0001\u0006\u0003\u0002\u0006\u0005-\u0001\u0003\u0002\u000f\u0001\u0003\u000f\u00012\u0001EA\u0005\t\u0015YeP1\u0001\u0014\u0011\u00151h\u00101\u0001xQ\tq8\u0010C\u0004\u0002\u0012\u0001!I!a\u0005\u0002\u001f%\u001c8\u000b\u001e:fC6\u0014U/\u001b7eKJ,b!!\u0006\u0002$\u0005\u001dBcA\u001d\u0002\u0018!A\u0011\u0011DA\u0008\u0001\u0004\tY\"\u0001\u0002cMBA\u0001%!\u0008*\u0003C\t)#C\u0002\u0002 \u0005\u0012AbQ1o\u0005VLG\u000e\u001a$s_6\u00042\u0001EA\u0012\t\u0019Y\u0015q\u0002b\u0001\'A\u0019\u0001#a\n\u0005\rQ\u000cyA1\u0001\u0014Q\r\tya\u001f\u0005\u0007\u0003[\u0001A\u0011I!\u0002\u0011Q|7\u000b\u001e:fC6Da!!\r\u0001\t\u0003B\u0014a\u00045bg\u0012+g-\u001b8ji\u0016\u001c\u0016N_3\t\u000f\u0005U\u0002\u0001\"\u0011\u00028\u0005QA\u0005\u001d7vg\u0012\u0002H.^:\u0016\r\u0005e\u0012qIA )\u0011\tY$!\u0013\u0015\t\u0005u\u0012\u0011\t\t\u0004!\u0005}BA\u0002;\u00024\t\u00071\u0003\u0003\u0005\u0002\u001a\u0005M\u00029AA\"!!\u0001\u0013QD\u0015\u0002F\u0005u\u0002c\u0001\t\u0002H\u001111*a\rC\u00021C\u0001\"a\u0013\u00024\u0001\u0007\u0011QJ\u0001\u0005i\"\u000cG\u000fE\u0003\r\u0003\u001f\n)%C\u0002\u0002R\u0011\u0011!cR3o)J\u000cg/\u001a:tC\ndWm\u00148dK\"9\u0011Q\u000b\u0001\u0005B\u0005]\u0013a\u0003\u0013qYV\u001cHeY8m_:,b!!\u0017\u0002h\u0005}C\u0003BA.\u0003S\"B!!\u0018\u0002bA\u0019\u0001#a\u0018\u0005\rQ\u000c\u0019F1\u0001\u0014\u0011!\tI\"a\u0015A\u0004\u0005\r\u0004\u0003\u0003\u0011\u0002\u001e%\n)\'!\u0018\u0011\u0007A\t9\u0007\u0002\u0004L\u0003\'\u0012\r\u0001\u0014\u0005\t\u0003W\n\u0019\u00061\u0001\u0002f\u0005!Q\r\\3n\u0011\u001d\ty\u0007\u0001C#\u0003c\n\u0001b]2b]2+g\r^\u000b\u0007\u0003g\n\u0019)a\u001f\u0015\t\u0005U\u0014q\u0012\u000b\u0005\u0003o\n)\t\u0006\u0003\u0002z\u0005u\u0004c\u0001\t\u0002|\u00111A/!\u001cC\u0002MA\u0001\"!\u0007\u0002n\u0001\u000f\u0011q\u0010\t\tA\u0005u\u0011&!!\u0002zA\u0019\u0001#a!\u0005\r-\u000biG1\u0001\u0014\u0011!\t9)!\u001cA\u0002\u0005%\u0015AA8q!!)\u00121RAA\u001f\u0005\u0005\u0015bAAG\r\tIa)\u001e8di&|gN\r\u0005\t\u0003#\u000bi\u00071\u0001\u0002\u0002\u0006\t!\u0010C\u0004\u0002\u0016\u0002!)%a&\u0002\u00075\u000c\u0007/\u0006\u0004\u0002\u001a\u0006\u001d\u0016q\u0014\u000b\u0005\u00037\u000bI\u000b\u0006\u0003\u0002\u001e\u0006\u0005\u0006c\u0001\t\u0002 \u00121A/a%C\u0002MA\u0001\"!\u0007\u0002\u0014\u0002\u000f\u00111\u0015\t\tA\u0005u\u0011&!*\u0002\u001eB\u0019\u0001#a*\u0005\r-\u000b\u0019J1\u0001\u0014\u0011!\tY+a%A\u0002\u00055\u0016!\u00014\u0011\rU\tykDAS\u0013\r\t\tL\u0002\u0002\n\rVt7\r^5p]FBq!!.\u0001\t\u000b\n9,A\u0004d_2dWm\u0019;\u0016\r\u0005e\u0016qYA`)\u0011\tY,!3\u0015\t\u0005u\u0016\u0011\u0019\t\u0004!\u0005}FA\u0002;\u00024\n\u00071\u0003\u0003\u0005\u0002\u001a\u0005M\u00069AAb!!\u0001\u0013QD\u0015\u0002F\u0006u\u0006c\u0001\t\u0002H\u001211*a-C\u0002MA\u0001\"a3\u00024\u0002\u0007\u0011QZ\u0001\u0003a\u001a\u0004b!FAh\u001f\u0005\u0015\u0017bAAi\r\ty\u0001+\u0019:uS\u0006dg)\u001e8di&|g\u000eC\u0004\u0002V\u0002!)%a6\u0002\u000f\u0019d\u0017\r^\'baV1\u0011\u0011\\At\u0003?$B!a7\u0002jR!\u0011Q\\Aq!\r\u0001\u0012q\u001c\u0003\u0007i\u0006M\'\u0019A\n\t\u0011\u0005e\u00111\u001ba\u0002\u0003G\u0004\u0002\u0002IA\u000fS\u0005\u0015\u0018Q\u001c\t\u0004!\u0005\u001dHAB&\u0002T\n\u00071\u0003\u0003\u0005\u0002,\u0006M\u0007\u0019AAv!\u0019)\u0012qV\u0008\u0002nB)A\"a\u0014\u0002f\"9\u0011\u0011\u001f\u0001\u0005B\u0005M\u0018A\u00024jYR,\'\u000fF\u0002*\u0003kD\u0001\"a>\u0002p\u0002\u0007\u0011\u0011`\u0001\u0002aB)Q#a,\u0010s!9\u0011Q \u0001\u0005F\u0005}\u0018AC<ji\"4\u0015\u000e\u001c;feR!!\u0011\u0001B4!\u0011\u0011\u0019A!\u0002\u000e\u0003\u00011aAa\u0002\u0001\u0005\t%!\u0001E*ue\u0016\u000cWnV5uQ\u001aKG\u000e^3s\'\u0011\u0011)Aa\u0003\u0011\t\t\r!QB\u0005\u0005\u0005\u001f\u0011\tB\u0001\u0006XSRDg)\u001b7uKJL1Aa\u0005\u0005\u0005=!&/\u0019<feN\u000c\'\r\\3MS.,\u0007bCA|\u0005\u000b\u0011\t\u0011)A\u0005\u0003sDqA\u000cB\u0003\t\u0003\u0011I\u0002\u0006\u0003\u0003\u0002\tm\u0001\u0002CA|\u0005/\u0001\r!!?\t\u0011\u0005U%Q\u0001C!\u0005?)bA!\t\u00030\t\u001dB\u0003\u0002B\u0012\u0005c!BA!\n\u0003*A\u0019\u0001Ca\n\u0005\rQ\u0014iB1\u0001\u0014\u0011!\tIB!\u0008A\u0004\t-\u0002\u0003\u0003\u0011\u0002\u001e%\u0012iC!\n\u0011\u0007A\u0011y\u0003\u0002\u0004L\u0005;\u0011\ra\u0005\u0005\t\u0003W\u0013i\u00021\u0001\u00034A1Q#a,\u0010\u0005[A\u0001\"!6\u0003\u0006\u0011\u0005#qG\u000b\u0007\u0005s\u00119Ea\u0010\u0015\t\tm\"\u0011\n\u000b\u0005\u0005{\u0011\t\u0005E\u0002\u0011\u0005\u007f!a\u0001\u001eB\u001b\u0005\u0004\u0019\u0002\u0002CA\r\u0005k\u0001\u001dAa\u0011\u0011\u0011\u0001\ni\"\u000bB#\u0005{\u00012\u0001\u0005B$\t\u0019Y%Q\u0007b\u0001\'!A\u00111\u0016B\u001b\u0001\u0004\u0011Y\u0005\u0005\u0004\u0016\u0003_{!Q\n\t\u0006\u0019\u0005=#Q\t\u0005\t\u0005#\u0012)\u0001\"\u0011\u0003T\u00059am\u001c:fC\u000eDW\u0003\u0002B+\u0005;\"2A\u0017B,\u0011!\tYKa\u0014A\u0002\te\u0003CB\u000b\u00020>\u0011Y\u0006E\u0002\u0011\u0005;\"aa\u0013B(\u0005\u0004\u0019\u0002\u0002CA\u007f\u0005\u000b!\tE!\u0019\u0015\t\t\u0005!1\r\u0005\t\u0005K\u0012y\u00061\u0001\u0002z\u0006\t\u0011\u000f\u0003\u0005\u0002x\u0006m\u0008\u0019AA}\u0011\u001d\u0011Y\u0007\u0001C!\u0005[\n\u0001\"\u001b;fe\u0006$xN]\u000b\u0003\u0005_\u0002B\u0001\u0004B9\u001f%\u0019!1\u000f\u0003\u0003\u0011%#XM]1u_JDqA!\u0015\u0001\t\u000b\u00129(\u0006\u0003\u0003z\t\u0005Ec\u0001.\u0003|!A\u00111\u0016B;\u0001\u0004\u0011i\u0008\u0005\u0004\u0016\u0003_{!q\u0010\t\u0004!\t\u0005EAB&\u0003v\t\u00071\u0003\u000b\u0003\u0003v\t\u0015\u0005\u0003\u0002BD\u0005\u001bk!A!#\u000b\u0007\t-e!\u0001\u0006b]:|G/\u0019;j_:LAAa$\u0003\n\n9A/Y5me\u0016\u001c\u0007b\u0002BJ\u0001\u0011\u0015#QS\u0001\tM>dG\rT3giV!!q\u0013BO)\u0011\u0011IJa)\u0015\t\tm%q\u0014\t\u0004!\tuEAB&\u0003\u0012\n\u00071\u0003\u0003\u0005\u0002\u0008\nE\u0005\u0019\u0001BQ!!)\u00121\u0012BN\u001f\tm\u0005\u0002CAI\u0005#\u0003\rAa\')\t\tE%Q\u0011\u0005\u0008\u0005S\u0003AQ\tBV\u0003)\u0011X\rZ;dK2+g\r^\u000b\u0005\u0005[\u0013\t\u000c\u0006\u0003\u00030\nM\u0006c\u0001\t\u00032\u001211Ja*C\u00021C\u0001\"a+\u0003(\u0002\u0007!Q\u0017\t\t+\u0005-%qV\u0008\u00030\"9!\u0011\u0018\u0001\u0005B\tm\u0016!\u00039beRLG/[8o)\u0011\u0011iLa1\u0011\u000bU\u0011y,K\u0015\n\u0007\t\u0005gA\u0001\u0004UkBdWM\r\u0005\t\u0003o\u00149\u000c1\u0001\u0002z\"9!q\u0019\u0001\u0005F\t%\u0017a\u0001>jaVA!1\u001aBn\u0005C\u0014\t\u000e\u0006\u0003\u0003N\n\rH\u0003\u0002Bh\u0005\'\u00042\u0001\u0005Bi\t\u0019!(Q\u0019b\u0001\'!A\u0011\u0011\u0004Bc\u0001\u0008\u0011)\u000e\u0005\u0005!\u0003;I#q\u001bBh!\u001d)\"q\u0018Bm\u0005?\u00042\u0001\u0005Bn\t\u001d\u0011iN!2C\u00021\u0013!!Q\u0019\u0011\u0007A\u0011\t\u000f\u0002\u0004L\u0005\u000b\u0014\ra\u0005\u0005\t\u0003\u0017\u0012)\r1\u0001\u0003fB)ABa:\u0003`&\u0019!\u0011\u001e\u0003\u0003\u0017\u001d+g.\u0013;fe\u0006\u0014G.\u001a\u0005\u0008\u0005[\u0004A\u0011\tBx\u00031Q\u0018\u000e],ji\"Le\u000eZ3y+\u0019\u0011\tPa@\u0003vR!!1\u001fB|!\r\u0001\"Q\u001f\u0003\u0007i\n-(\u0019A\n\t\u0011\u0005e!1\u001ea\u0002\u0005s\u0004\u0002\u0002IA\u000fS\tm(1\u001f\t\u0007+\t}&Q`6\u0011\u0007A\u0011y\u0010B\u0004\u0003^\n-(\u0019\u0001\'\t\u000f\r\r\u0001\u0001\"\u0011\u0004\u0006\u0005I\u0011\r\u001a3TiJLgn\u001a\u000b\u000b\u0007\u000f\u0019\u0019ba\u0006\u0004\u001c\ru\u0001\u0003BB\u0005\u0007\u001fi!aa\u0003\u000b\u0007\r5A!A\u0004nkR\u000c\'\r\\3\n\t\rE11\u0002\u0002\u000e\'R\u0014\u0018N\\4Ck&dG-\u001a:\t\u0011\rU1\u0011\u0001a\u0001\u0007\u000f\t\u0011A\u0019\u0005\u0008\u00073\u0019\t\u00011\u0001b\u0003\u0015\u0019H/\u0019:u\u0011\u0019\u00017\u0011\u0001a\u0001C\"91qDB\u0001\u0001\u0004\t\u0017aA3oI\"911\u0005\u0001\u0005B\r\u0015\u0012\u0001C7l\'R\u0014\u0018N\\4\u0015\u0007\u0005\u001c9\u0003\u0003\u0004a\u0007C\u0001\r!\u0019\u0005\u0008\u0007G\u0001A\u0011IB\u0016+\u0005\t\u0007bBB\u0012\u0001\u0011\u00053q\u0006\u000b\u0008C\u000eE21GB\u001b\u0011\u001d\u0019Ib!\u000cA\u0002\u0005Da\u0001YB\u0017\u0001\u0004\t\u0007bBB\u0010\u0007[\u0001\r!\u0019\u0005\u0008\u0007s\u0001A\u0011IB\u001e\u0003!!xn\u0015;sS:<G#A1\t\u000f\r}\u0002\u0001\"\u0011\u0004B\u000591\u000f\u001d7ji\u0006#H\u0003\u0002B_\u0007\u0007Bqa!\u0012\u0004>\u0001\u00071.A\u0001o\u0011\u001d\u0019I\u0005\u0001C!\u0007\u0017\nA\u0001^1lKR\u0019\u0011f!\u0014\t\u000f\r\u00153q\ta\u0001W\"91\u0011\u000b\u0001\u0005F\rM\u0013\u0001\u00023s_B$2!KB+\u0011\u001d\u0019)ea\u0014A\u0002-DCaa\u0014\u0003\u0006\"911\u000c\u0001\u0005B\ru\u0013!B:mS\u000e,G#B\u0015\u0004`\r\r\u0004bBB1\u00073\u0002\ra[\u0001\u0005MJ|W\u000eC\u0004\u0004f\re\u0003\u0019A6\u0002\u000bUtG/\u001b7\t\r\r%\u0004\u0001\"\u0011B\u0003\u0011Ig.\u001b;\t\u000f\r5\u0004\u0001\"\u0011\u0004p\u0005IA/Y6f%&<\u0007\u000e\u001e\u000b\u0004S\rE\u0004bBB#\u0007W\u0002\ra\u001b\u0005\u0008\u0007k\u0002A\u0011IB<\u0003%!\'o\u001c9SS\u001eDG\u000fF\u0002*\u0007sBqa!\u0012\u0004t\u0001\u00071\u000eC\u0004\u0004~\u0001!\tea \u0002\u0013Q\u000c7.Z,iS2,GcA\u0015\u0004\u0002\"A\u0011q_B>\u0001\u0004\tI\u0010C\u0004\u0004\u0006\u0002!\tea\"\u0002\u0013\u0011\u0014x\u000e],iS2,GcA\u0015\u0004\n\"A\u0011q_BB\u0001\u0004\tI\u0010\u0003\u0004\u0004\u000e\u0002!\t%Q\u0001\tI&\u001cH/\u001b8di\"91\u0011\u0013\u0001\u0005B\rM\u0015!\u00029bIR{WCBBK\u0007G\u001bY\n\u0006\u0004\u0004\u0018\u000e\u00156\u0011\u0016\u000b\u0005\u00073\u001bi\nE\u0002\u0011\u00077#a\u0001^BH\u0005\u0004\u0019\u0002\u0002CA\r\u0007\u001f\u0003\u001daa(\u0011\u0011\u0001\ni\"KBQ\u00073\u00032\u0001EBR\t\u0019Y5q\u0012b\u0001\u0019\"91qUBH\u0001\u0004Y\u0017a\u00017f]\"A\u00111NBH\u0001\u0004\u0019\t\u000b\u0003\u0004\u0004.\u0002!\t%Q\u0001\u0008e\u00164XM]:f\u0011\u001d\u0019\t\u000c\u0001C!\u0007g\u000bqA\u001a7biR,g.\u0006\u0003\u00046\u000emF\u0003BB\\\u0007{\u0003B\u0001\u0008\u0001\u0004:B\u0019\u0001ca/\u0005\r-\u001byK1\u0001\u0014\u0011!\u0019yla,A\u0004\r\u0005\u0017!D1t)J\u000cg/\u001a:tC\ndW\r\u0005\u0004\u0016\u0003_{11\u0019\t\u0006\u0019\u0005=3\u0011\u0018\u0005\u0008\u0007\u000f\u0004A\u0011IBe\u0003\u00111\u0018.Z<\u0016\u0005\r-\'#BBgo\u000eEgaBBh\u0007\u000b\u000411\u001a\u0002\ryI,g-\u001b8f[\u0016tGO\u0010\t\u00069\rMw\"K\u0005\u0004\u0007+\u0014!AC*ue\u0016\u000cWNV5fo\"91\u0011\u001c\u0001\u0005B\rm\u0017\u0001D:ue&tw\r\u0015:fM&DXCABo!\u0011\u0019yn!;\u000e\u0005\r\u0005(\u0002BBr\u0007K\u000cA\u0001\\1oO*\u00111q]\u0001\u0005U\u00064\u0018-C\u0002g\u0007CDs\u0001ABw\u0007g\u001c9\u0010E\u0002\u0016\u0007_L1a!=\u0007\u0005U!W\r\u001d:fG\u0006$X\rZ%oQ\u0016\u0014\u0018\u000e^1oG\u0016\u000c#a!>\u00025QC\u0017n\u001d\u0011dY\u0006\u001c8\u000fI<jY2\u0004#-\u001a\u0011tK\u0006dW\r\u001a\u0018\"\u0005\re\u0018A\u0002\u001a/cEr\u0003gB\u0004\u0004~\nA\taa@\u0002\rM#(/Z1n!\raB\u0011\u0001\u0004\u0007\u0003\tA\t\u0001b\u0001\u0014\u000b\u0011\u0005AQ\u0001\u0016\u0011\t\u0001\"9!J\u0005\u0004\t\u0013\t#AC*fc\u001a\u000b7\r^8ss\"9a\u0006\"\u0001\u0005\u0002\u00115ACAB\u0000\r\u001d!\t\u0002\"\u0001\u0001\t\'\u0011!c\u0015;sK\u0006l7)\u00198Ck&dGM\u0012:p[V!AQ\u0003C\u0013\'\u0011!y\u0001b\u0006\u0011\r\u0011eA1\u0004C\u0012\u001b\t!\t!\u0003\u0003\u0005\u001e\u0011}!aE$f]\u0016\u0014\u0018nY\"b]\n+\u0018\u000e\u001c3Ge>l\u0017b\u0001C\u0011C\t)r)\u001a8Ue\u00064XM]:bE2,g)Y2u_JL\u0008c\u0001\t\u0005&\u00111!\u0003b\u0004C\u0002MAqA\u000cC\u0008\t\u0003!I\u0003\u0006\u0002\u0005,A1A\u0011\u0004C\u0008\tGA\u0001\u0002b\u000c\u0005\u0002\u0011\rA\u0011G\u0001\rG\u0006t\')^5mI\u001a\u0013x.\\\u000b\u0005\tg!y$\u0006\u0002\u00056AI\u0001%!\u0008\u00058\u0011uB\u0011\t\t\u0005\t3!I$C\u0002\u0005<Q\u0012AaQ8mYB\u0019\u0001\u0003b\u0010\u0005\rI!iC1\u0001\u0014!\u0011a\u0002\u0001\"\u0010\t\u0011\u0011\u0015C\u0011\u0001C\u0001\t\u000f\n!B\\3x\u0005VLG\u000eZ3s+\u0011!I\u0005b\u0015\u0016\u0005\u0011-\u0003\u0003CB\u0005\t\u001b\"\t\u0006\"\u0016\n\t\u0011=31\u0002\u0002\u0008\u0005VLG\u000eZ3s!\r\u0001B1\u000b\u0003\u0007%\u0011\r#\u0019A\n\u0011\tq\u0001A\u0011\u000b\u0004\u0008\t3\"\t\u0001\u0001C.\u00055\u0019FO]3b[\n+\u0018\u000e\u001c3feV!AQ\u000cC4\'\u0011!9\u0006b\u0018\u0011\u0011\r%A\u0011\rC3\tSJA\u0001b\u0019\u0004\u000c\tYA*\u0019>z\u0005VLG\u000eZ3s!\r\u0001Bq\r\u0003\u0007%\u0011]#\u0019A\n\u0011\tq\u0001AQ\r\u0005\u0008]\u0011]C\u0011\u0001C7)\t!y\u0007\u0005\u0004\u0005\u001a\u0011]CQ\r\u0005\t\tg\"9\u0006\"\u0001\u0005v\u00051!/Z:vYR$\"\u0001\"\u001b\u0008\u0011\u0011eD\u0011\u0001E\u0001\tw\nQ!R7qif\u0004B\u0001\"\u0007\u0005~\u0019AAq\u0010C\u0001\u0011\u0003!\tIA\u0003F[B$\u0018p\u0005\u0003\u0005~\u0011\r\u0005c\u0001\u000f\u0001)!9a\u0006\" \u0005\u0002\u0011\u001dEC\u0001C>\u0011\u00199DQ\u0010C!q!9Q\u0008\" \u0005B\u00115U#\u0001\u000b\t\u000f\u0001#i\u0008\"\u0011\u0005\u000e\"11\t\" \u0005\u0002aB!\u0002\"&\u0005~\u0005\u0005I\u0011\u0002CL\u0003-\u0011X-\u00193SKN|GN^3\u0015\u0005\u0011e\u0005\u0003BBp\t7KA\u0001\"(\u0004b\n1qJ\u00196fGRD\u0001\u0002\")\u0005\u0002\u0011\u0005C1U\u0001\u0006K6\u0004H/_\u000b\u0005\tK#Y+\u0006\u0002\u0005(B!A\u0004\u0001CU!\r\u0001B1\u0016\u0003\u0007%\u0011}%\u0019A\n\t\u0011\u0011=F\u0011\u0001C!\tc\u000bQ!\u00199qYf,B\u0001b-\u0005:R!AQ\u0017C^!\u0011a\u0002\u0001b.\u0011\u0007A!I\u000c\u0002\u0004\u0013\t[\u0013\ra\u0005\u0005\t\t{#i\u000b1\u0001\u0005@\u0006\u0011\u0001p\u001d\t\u0006+\u0011\u0005GqW\u0005\u0004\t\u00074!A\u0003\u001fsKB,\u0017\r^3e}\u00199Aq\u0019C\u0001\u0001\u0011%\'aC\"p]N<&/\u00199qKJ,B\u0001b3\u0005XN\u0019AQY<\t\u0017\u0011=GQ\u0019B\u0001J\u0003%A\u0011[\u0001\u0003i2\u0004B!\u0006)\u0005TB!A\u0004\u0001Ck!\r\u0001Bq\u001b\u0003\u0007%\u0011\u0015\'\u0019A\n\t\u000f9\")\r\"\u0001\u0005\\R!AQ\u001cCp!\u0019!I\u0002\"2\u0005V\"IAq\u001aCm\t\u0003\u0007A\u0011\u001b\u0005\t\tG$)\r\"\u0001\u0005f\u0006\tB\u0005[1tQ\u0012\u001aw\u000e\\8oI\r|Gn\u001c8\u0015\t\u0011MGq\u001d\u0005\t\tS$\t\u000f1\u0001\u0005V\u0006\u0011\u0001\u000e\u001a\u0005\t\t[$)\r\"\u0001\u0005p\u00069B\u0005[1tQ\u0012\u001aw\u000e\\8oI\r|Gn\u001c8%G>dwN\u001c\u000b\u0005\t\'$\t\u0010\u0003\u0005\u0005t\u0012-\u0008\u0019\u0001Cj\u0003\u0019\u0001(/\u001a4jq\"AAq\u001fC\u0001\t\u0007!I0A\u0006d_:\u001cxK]1qa\u0016\u0014X\u0003\u0002C~\u000b\u0003!B\u0001\"@\u0006\u0004A1A\u0011\u0004Cc\t\u007f\u00042\u0001EC\u0001\t\u0019\u0011BQ\u001fb\u0001\'!IQQ\u0001C{\t\u0003\u0007QqA\u0001\u0007gR\u0014X-Y7\u0011\tU\u0001V\u0011\u0002\t\u00059\u0001!yp\u0002\u0005\u0005d\u0012\u0005\u0001\u0012AC\u0007!\u0011!I\"b\u0004\u0007\u0011\u0015EA\u0011\u0001E\u0001\u000b\'\u0011\u0011\u0003\n5bg\"$3m\u001c7p]\u0012\u001aw\u000e\\8o\'\r)ya\u001e\u0005\u0008]\u0015=A\u0011AC\u000c)\t)i\u0001\u0003\u0005\u0006\u001c\u0015=A\u0011AC\u000f\u0003\u001d)h.\u00199qYf,B!b\u0008\u0006,Q!Q\u0011EC\u0018!\u0015)R1EC\u0014\u0013\r))C\u0002\u0002\u0007\u001fB$\u0018n\u001c8\u0011\u000fU\u0011y,\"\u000b\u0006.A\u0019\u0001#b\u000b\u0005\rI)IB1\u0001\u0014!\u0011a\u0002!\"\u000b\t\u0011\u0011uV\u0011\u0004a\u0001\u000b[9\u0001\"b\r\u0005\u0002!\u0005QQG\u0001\u0005G>t7\u000f\u0005\u0003\u0005\u001a\u0015]b\u0001CC\u001d\t\u0003A\t!b\u000f\u0003\t\r|gn]\n\u0004\u000bo9\u0008b\u0002\u0018\u00068\u0011\u0005Qq\u0008\u000b\u0003\u000bkA\u0001\u0002b,\u00068\u0011\u0005Q1I\u000b\u0005\u000b\u000b*I\n\u0006\u0004\u0006H\u0015mUQ\u0014\t\u0007\t3)I%b&\u0007\u000f\u0015-C\u0011\u0001\u0002\u0006N\t!1i\u001c8t+\u0011)y%\"\u0016\u0014\t\u0015%S\u0011\u000b\t\u00059\u0001)\u0019\u0006E\u0002\u0011\u000b+\"qAEC%\t\u000b\u00071\u0003C\u0006\u0005j\u0016%#\u0011!Q\u0001\n\u0015M\u0003b\u0003Ch\u000b\u0013\u0012\t\u0011*A\u0005\u000b7\u0002B!\u0006)\u0006R!9a&\"\u0013\u0005\u0002\u0015}CCBC1\u000bG*)\u0007\u0005\u0004\u0005\u001a\u0015%S1\u000b\u0005\t\tS,i\u00061\u0001\u0006T!IAqZC/\t\u0003\u0007Q1\u000c\u0005\u0007o\u0015%C\u0011\t\u001d\t\u000fu*I\u0005\"\u0011\u0006lU\u0011Q1\u000b\u0005\r\u000b_*I\u00051A\u0001B\u0003&Q\u0011K\u0001\u0006i24\u0016\r\u001c\u0015\u0005\u000b[*\u0019\u0008E\u0002\u0016\u000bkJ1!b\u001e\u0007\u0005!1x\u000e\\1uS2,\u0007\"CC>\u000b\u0013\u0002\u000b\u0015BC?\u0003\u0015!HnR3o!\u0015)RqPC)\u0013\r)\tI\u0002\u0002\n\rVt7\r^5p]BBC!\"\u001f\u0006t!11)\"\u0013\u0005\u0002aBq\u0001QC%\t\u0003*I)\u0006\u0002\u0006R!BQ\u0011JCG\u000b\'+)\nE\u0002\u0016\u000b\u001fK1!\"%\u0007\u0005A\u0019VM]5bYZ+\'o]5p]VKE)A\u0003wC2,XM\u0008\u0005xJ3-B:x\u001dF!\r\u0001R\u0011\u0014\u0003\u0007%\u0015\u0005#\u0019A\n\t\u0011\u0011%X\u0011\ta\u0001\u000b/C\u0011\u0002b4\u0006B\u0011\u0005\r!b(\u0011\tU\u0001V\u0011\u0015\t\u00059\u0001)9\n\u0003\u0005\u0006\u001c\u0015]B\u0011ACS+\u0011)9+b,\u0015\t\u0015%V1\u0017\t\u0006+\u0015\rR1\u0016\t\u0008+\t}VQVCY!\r\u0001Rq\u0016\u0003\u0007%\u0015\r&\u0019A\n\u0011\tq\u0001QQ\u0016\u0005\t\t{+\u0019\u000b1\u0001\u00062\"AQq\u0017C\u0001\t\u0003)I,A\u0004ji\u0016\u0014\u0018\r^3\u0016\t\u0015mV1\u0019\u000b\u0005\u000b{+I\r\u0006\u0003\u0006@\u0016\u0015\u0007\u0003\u0002\u000f\u0001\u000b\u0003\u00042\u0001ECb\t\u0019\u0011RQ\u0017b\u0001\'!A\u00111VC[\u0001\u0004)9\rE\u0004\u0016\u0003_+\t-\"1\t\u0011\reQQ\u0017a\u0001\u000b\u0003D\u0001\"b.\u0005\u0002\u0011\u0005SQZ\u000b\u0005\u000b\u001f,9\u000e\u0006\u0004\u0006R\u0016uWq\u001c\u000b\u0005\u000b\',I\u000e\u0005\u0003\u001d\u0001\u0015U\u0007c\u0001\t\u0006X\u00121!#b3C\u0002MA\u0001\"a+\u0006L\u0002\u0007Q1\u001c\t\u0008+\u0005=VQ[Ck\u0011!\u0019I\"b3A\u0002\u0015U\u0007bBBT\u000b\u0017\u0004\ra\u001b\u0005\t\u0007C\"\t\u0001\"\u0001\u0006dR1QQ]Ct\u000bS\u00042\u0001\u0008\u0001l\u0011\u001d\u0019I\"\"9A\u0002-Dq!b;\u0006b\u0002\u00071.\u0001\u0003ti\u0016\u0004\u0008\u0002CB1\t\u0003!\t!b<\u0015\t\u0015\u0015X\u0011\u001f\u0005\u0008\u00073)i\u000f1\u0001l\u0011!))\u0010\"\u0001\u0005\u0002\u0015]\u0018aC2p]RLg.^1mYf,B!\"?\u0006\u0000R!Q1 D\u0001!\u0011a\u0002!\"@\u0011\u0007A)y\u0010\u0002\u0004\u0013\u000bg\u0014\ra\u0005\u0005\n\u0003W*\u0019\u0010\"a\u0001\r\u0007\u0001B!\u0006)\u0006~\"Aaq\u0001C\u0001\t\u00032I!\u0001\u0003gS2dW\u0003\u0002D\u0006\r\'!BA\"\u0004\u0007\u001aQ!aq\u0002D\u000b!\u0011a\u0002A\"\u0005\u0011\u0007A1\u0019\u0002\u0002\u0004\u0013\r\u000b\u0011\ra\u0005\u0005\n\u0003W2)\u0001\"a\u0001\r/\u0001B!\u0006)\u0007\u0012!91Q\tD\u0003\u0001\u0004Y\u0007\u0002\u0003D\u000f\t\u0003!\tEb\u0008\u0002\u0011Q\u000c\'-\u001e7bi\u0016,BA\"\t\u0007*Q!a1\u0005D\u0018)\u00111)Cb\u000b\u0011\tq\u0001aq\u0005\t\u0004!\u0019%BA\u0002\n\u0007\u001c\t\u00071\u0003\u0003\u0005\u0002,\u001am\u0001\u0019\u0001D\u0017!\u0019)\u0012qV6\u0007(!91Q\tD\u000e\u0001\u0004Y\u0007\u0002\u0003D\u001a\t\u0003!\tE\"\u000e\u0002\u000bI\u000cgnZ3\u0016\t\u0019]bq\u0008\u000b\t\rs1)Fb\u0016\u0007ZQ!a1\u0008D\"!\u0011a\u0002A\"\u0010\u0011\u0007A1y\u0004B\u0004\u0007B\u0019E\"\u0019A\n\u0003\u0003QC!B\"\u0012\u00072\u0005\u0005\t9\u0001D$\u0003))g/\u001b3f]\u000e,G%\r\t\u0007\r\u00132yE\"\u0010\u000f\u0007U1Y%C\u0002\u0007N\u0019\tq\u0001]1dW\u0006<W-\u0003\u0003\u0007R\u0019M#\u0001C%oi\u0016<\'/\u00197\u000b\u0007\u00195c\u0001\u0003\u0005\u0004\u001a\u0019E\u0002\u0019\u0001D\u001f\u0011!\u0019yB\"\rA\u0002\u0019u\u0002\u0002CCv\rc\u0001\rA\"\u0010\t\u0013\u0019uC\u0011\u0001C\u0001\u0005\u0019}\u0013\u0001\u00044jYR,\'/\u001a3UC&dW\u0003\u0002D1\rO\"bAb\u0019\u0007j\u00195\u0004C\u0002C\r\u000b\u00132)\u0007E\u0002\u0011\rO\"aA\u0005D.\u0005\u0004\u0019\u0002\u0002CC\u0003\r7\u0002\rAb\u001b\u0011\tq\u0001aQ\r\u0005\t\u0003o4Y\u00061\u0001\u0007pA1Q#a,\u0007feB\u0011Bb\u001d\u0005\u0002\u0011\u0005!A\"\u001e\u0002\u001b\r|G\u000e\\3di\u0016$G+Y5m+!19Hb\"\u0007~\u0019MEC\u0003D=\r\u007f2\tI\"#\u0007\u000eB1A\u0011DC%\rw\u00022\u0001\u0005D?\t\u0019Ye\u0011\u000fb\u0001\'!9QH\"\u001dA\u0002\u0019m\u0004\u0002CC\u0003\rc\u0002\rAb!\u0011\tq\u0001aQ\u0011\t\u0004!\u0019\u001dEA\u0002\n\u0007r\t\u00071\u0003\u0003\u0005\u0002L\u001aE\u0004\u0019\u0001DF!\u001d)\u0012q\u001aDC\rwB\u0001\"!\u0007\u0007r\u0001\u0007aq\u0012\t\nA\u0005ua1\u0011D>\r#\u00032\u0001\u0005DJ\t\u0019!h\u0011\u000fb\u0001\'!QAQ\u0013C\u0001\u0003\u0003%I\u0001b&"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 202
    invoke-direct {p0}, Lscala/collection/AbstractSeq;-><init>()V

    invoke-static {p0}, Lscala/collection/immutable/Traversable$class;->$init$(Lscala/collection/immutable/Traversable;)V

    invoke-static {p0}, Lscala/collection/immutable/Iterable$class;->$init$(Lscala/collection/immutable/Iterable;)V

    invoke-static {p0}, Lscala/collection/immutable/Seq$class;->$init$(Lscala/collection/immutable/Seq;)V

    invoke-static {p0}, Lscala/collection/LinearSeqLike$class;->$init$(Lscala/collection/LinearSeqLike;)V

    invoke-static {p0}, Lscala/collection/LinearSeq$class;->$init$(Lscala/collection/LinearSeq;)V

    invoke-static {p0}, Lscala/collection/immutable/LinearSeq$class;->$init$(Lscala/collection/immutable/LinearSeq;)V

    invoke-static {p0}, Lscala/collection/LinearSeqOptimized$class;->$init$(Lscala/collection/LinearSeqOptimized;)V

    return-void
.end method

.method public static ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenTraversableFactory<",
            "Lscala/collection/immutable/Stream;",
            ">.GenericCanBuildFrom<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation

    sget-object v0, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    invoke-virtual {v0}, Lscala/collection/immutable/Stream$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    move-result-object v0

    return-object v0
.end method

.method public static canBuildFrom()Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/Stream<",
            "*>;TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    invoke-virtual {v0}, Lscala/collection/immutable/Stream$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lscala/collection/Seq;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    invoke-virtual {v0, p0}, Lscala/collection/immutable/Stream$;->concat(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static consWrapper(Lscala/Function0;)Lscala/collection/immutable/Stream$ConsWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;)",
            "Lscala/collection/immutable/Stream$ConsWrapper<",
            "TA;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    invoke-virtual {v0, p0}, Lscala/collection/immutable/Stream$;->consWrapper(Lscala/Function0;)Lscala/collection/immutable/Stream$ConsWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static continually(Lscala/Function0;)Lscala/collection/immutable/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "TA;>;)",
            "Lscala/collection/immutable/Stream<",
            "TA;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    invoke-virtual {v0, p0}, Lscala/collection/immutable/Stream$;->continually(Lscala/Function0;)Lscala/collection/immutable/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static empty()Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    invoke-virtual {v0}, Lscala/collection/immutable/Stream$;->empty()Lscala/collection/GenTraversable;

    move-result-object v0

    return-object v0
.end method

.method public static empty()Lscala/collection/immutable/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/immutable/Stream<",
            "TA;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    invoke-virtual {v0}, Lscala/collection/immutable/Stream$;->empty()Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static fill(IIIIILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 7

    sget-object v0, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lscala/collection/immutable/Stream$;->fill(IIIIILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static fill(IIIILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 6

    sget-object v0, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lscala/collection/immutable/Stream$;->fill(IIIILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static fill(IIILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    invoke-virtual {v0, p0, p1, p2, p3}, Lscala/collection/immutable/Stream$;->fill(IIILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static fill(IILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/collection/immutable/Stream$;->fill(IILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static fill(ILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    invoke-virtual {v0, p0, p1}, Lscala/collection/immutable/Stream$;->fill(ILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static fill(ILscala/Function0;)Lscala/collection/immutable/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(I",
            "Lscala/Function0<",
            "TA;>;)",
            "Lscala/collection/immutable/Stream<",
            "TA;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    invoke-virtual {v0, p0, p1}, Lscala/collection/immutable/Stream$;->fill(ILscala/Function0;)Lscala/collection/immutable/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static from(I)Lscala/collection/immutable/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/immutable/Stream<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    invoke-virtual {v0, p0}, Lscala/collection/immutable/Stream$;->from(I)Lscala/collection/immutable/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static from(II)Lscala/collection/immutable/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lscala/collection/immutable/Stream<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    invoke-virtual {v0, p0, p1}, Lscala/collection/immutable/Stream$;->from(II)Lscala/collection/immutable/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static iterate(Ljava/lang/Object;ILscala/Function1;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/collection/immutable/Stream$;->iterate(Ljava/lang/Object;ILscala/Function1;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static iterate(Ljava/lang/Object;ILscala/Function1;)Lscala/collection/immutable/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;I",
            "Lscala/Function1<",
            "TA;TA;>;)",
            "Lscala/collection/immutable/Stream<",
            "TA;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/collection/immutable/Stream$;->iterate(Ljava/lang/Object;ILscala/Function1;)Lscala/collection/immutable/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static iterate(Ljava/lang/Object;Lscala/Function1;)Lscala/collection/immutable/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;",
            "Lscala/Function1<",
            "TA;TA;>;)",
            "Lscala/collection/immutable/Stream<",
            "TA;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    invoke-virtual {v0, p0, p1}, Lscala/collection/immutable/Stream$;->iterate(Ljava/lang/Object;Lscala/Function1;)Lscala/collection/immutable/Stream;

    move-result-object p0

    return-object p0
.end method

.method private final loop$1(Lscala/collection/immutable/Stream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 289
    :goto_0
    sget-object v0, Lscala/Console$;->MODULE$:Lscala/Console$;

    invoke-virtual {v0, p2}, Lscala/Console$;->print(Ljava/lang/Object;)V

    .line 290
    invoke-virtual {p1}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p1, Lscala/Console$;->MODULE$:Lscala/Console$;

    const-string p2, "empty"

    invoke-virtual {p1, p2}, Lscala/Console$;->print(Ljava/lang/Object;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-void

    .line 292
    :cond_0
    sget-object p2, Lscala/Console$;->MODULE$:Lscala/Console$;

    invoke-virtual {p1}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Lscala/Console$;->print(Ljava/lang/Object;)V

    .line 293
    invoke-virtual {p1}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/Stream;

    move-object p2, p3

    goto :goto_0
.end method

.method public static range(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    invoke-virtual {v0, p0, p1, p2, p3}, Lscala/collection/immutable/Stream$;->range(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static range(Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/collection/immutable/Stream$;->range(Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static range(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/immutable/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;",
            "Lscala/math/Integral<",
            "TT;>;)",
            "Lscala/collection/immutable/Stream<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    invoke-virtual {v0, p0, p1, p2, p3}, Lscala/collection/immutable/Stream$;->range(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/immutable/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(IIIIILscala/Function5;)Lscala/collection/GenTraversable;
    .locals 7

    sget-object v0, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lscala/collection/immutable/Stream$;->tabulate(IIIIILscala/Function5;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(IIIILscala/Function4;)Lscala/collection/GenTraversable;
    .locals 6

    sget-object v0, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lscala/collection/immutable/Stream$;->tabulate(IIIILscala/Function4;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(IIILscala/Function3;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    invoke-virtual {v0, p0, p1, p2, p3}, Lscala/collection/immutable/Stream$;->tabulate(IIILscala/Function3;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(IILscala/Function2;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/collection/immutable/Stream$;->tabulate(IILscala/Function2;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(ILscala/Function1;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    invoke-virtual {v0, p0, p1}, Lscala/collection/immutable/Stream$;->tabulate(ILscala/Function1;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(ILscala/Function1;)Lscala/collection/immutable/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(I",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "TA;>;)",
            "Lscala/collection/immutable/Stream<",
            "TA;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    invoke-virtual {v0, p0, p1}, Lscala/collection/immutable/Stream$;->tabulate(ILscala/Function1;)Lscala/collection/immutable/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static unapplySeq(Lscala/collection/Seq;)Lscala/Some;
    .locals 1

    sget-object v0, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    invoke-virtual {v0, p0}, Lscala/collection/immutable/Stream$;->unapplySeq(Lscala/collection/Seq;)Lscala/Some;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public $plus$colon(Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/Stream<",
            "TA;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 377
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->repr()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object v0

    instance-of v0, v0, Lscala/collection/immutable/Stream$StreamBuilder;

    if-eqz v0, :cond_0

    sget-object p2, Lscala/collection/immutable/Stream$cons$;->MODULE$:Lscala/collection/immutable/Stream$cons$;

    new-instance p2, Lscala/collection/immutable/Stream$$anonfun$$plus$colon$1;

    invoke-direct {p2, p0}, Lscala/collection/immutable/Stream$$anonfun$$plus$colon$1;-><init>(Lscala/collection/immutable/Stream;)V

    new-instance v0, Lscala/collection/immutable/Stream$Cons;

    invoke-direct {v0, p1, p2}, Lscala/collection/immutable/Stream$Cons;-><init>(Ljava/lang/Object;Lscala/Function0;)V

    goto :goto_0

    .line 378
    :cond_0
    invoke-static {p0, p1, p2}, Lscala/collection/SeqLike$class;->$plus$colon(Lscala/collection/SeqLike;Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public $plus$plus(Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenTraversableOnce<",
            "TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/Stream<",
            "TA;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 370
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->repr()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object v0

    instance-of v0, v0, Lscala/collection/immutable/Stream$StreamBuilder;

    if-eqz v0, :cond_1

    .line 371
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lscala/collection/GenTraversableOnce;->toStream()Lscala/collection/immutable/Stream;

    move-result-object p1

    goto :goto_0

    .line 372
    :cond_0
    sget-object p2, Lscala/collection/immutable/Stream$cons$;->MODULE$:Lscala/collection/immutable/Stream$cons$;

    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object p2

    new-instance v0, Lscala/collection/immutable/Stream$$anonfun$$plus$plus$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/immutable/Stream$$anonfun$$plus$plus$1;-><init>(Lscala/collection/immutable/Stream;Lscala/collection/GenTraversableOnce;)V

    new-instance p1, Lscala/collection/immutable/Stream$Cons;

    invoke-direct {p1, p2, v0}, Lscala/collection/immutable/Stream$Cons;-><init>(Ljava/lang/Object;Lscala/Function0;)V

    goto :goto_0

    .line 374
    :cond_1
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableLike$class;->$plus$plus(Lscala/collection/TraversableLike;Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 4

    .line 734
    invoke-virtual {p1, p2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    .line 735
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_6

    .line 736
    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    .line 738
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->tailDefined()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 740
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lscala/collection/immutable/Stream;

    .line 741
    invoke-virtual {p2}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 743
    invoke-virtual {p1, p4}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    return-object p1

    :cond_1
    if-eq p0, p2, :cond_5

    .line 748
    invoke-virtual {p2}, Lscala/collection/immutable/Stream;->tailDefined()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 749
    invoke-virtual {p2}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Stream;

    :cond_2
    :goto_0
    if-eq p2, v0, :cond_3

    .line 751
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->tailDefined()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 752
    invoke-virtual {p1, p3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    .line 754
    invoke-virtual {p2}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lscala/collection/immutable/Stream;

    .line 755
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Stream;

    .line 756
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->tailDefined()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Stream;

    goto :goto_0

    :cond_3
    move-object v3, v0

    move-object v0, p2

    move-object p2, v3

    goto :goto_1

    :cond_4
    move-object v0, p2

    goto :goto_1

    :cond_5
    move-object v0, p0

    .line 760
    :goto_1
    invoke-virtual {p2}, Lscala/collection/immutable/Stream;->tailDefined()Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    move-object v2, p0

    :goto_2
    if-eq v2, p2, :cond_6

    .line 783
    invoke-virtual {v2}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/collection/immutable/Stream;

    .line 784
    invoke-virtual {p2}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lscala/collection/immutable/Stream;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    if-ne v0, p2, :cond_7

    if-lez v1, :cond_7

    .line 793
    invoke-virtual {p1, p3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    .line 795
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Stream;

    :cond_7
    :goto_3
    if-eq v0, p2, :cond_8

    .line 798
    invoke-virtual {p1, p3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    .line 800
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Stream;

    goto :goto_3

    .line 804
    :cond_8
    sget-object p2, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_5

    :cond_9
    :goto_4
    if-eq v0, p2, :cond_a

    .line 762
    invoke-virtual {p1, p3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    .line 764
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Stream;

    goto :goto_4

    .line 766
    :cond_a
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->nonEmpty()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 767
    invoke-virtual {p1, p3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object p2

    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    goto :goto_5

    .line 766
    :cond_b
    sget-object p2, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_5

    .line 739
    :cond_c
    sget-object p2, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    move-object v0, p0

    .line 807
    :goto_5
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_d

    sget-object p2, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_6

    .line 809
    :cond_d
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->tailDefined()Z

    move-result p2

    if-eqz p2, :cond_e

    .line 810
    invoke-virtual {p1, p3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object p2

    const-string p3, "..."

    invoke-virtual {p2, p3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    goto :goto_6

    .line 809
    :cond_e
    invoke-virtual {p1, p3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object p2

    const-string p3, "?"

    invoke-virtual {p2, p3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    .line 813
    :goto_6
    invoke-virtual {p1, p4}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    return-object p1
.end method

.method public append(Lscala/Function0;)Lscala/collection/immutable/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "Lscala/collection/TraversableOnce<",
            "TB;>;>;)",
            "Lscala/collection/immutable/Stream<",
            "TB;>;"
        }
    .end annotation

    .line 255
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/GenTraversableOnce;

    invoke-interface {p1}, Lscala/collection/GenTraversableOnce;->toStream()Lscala/collection/immutable/Stream;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object v0, Lscala/collection/immutable/Stream$cons$;->MODULE$:Lscala/collection/immutable/Stream$cons$;

    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lscala/collection/immutable/Stream$$anonfun$append$1;

    invoke-direct {v1, p0, p1}, Lscala/collection/immutable/Stream$$anonfun$append$1;-><init>(Lscala/collection/immutable/Stream;Lscala/Function0;)V

    new-instance p1, Lscala/collection/immutable/Stream$Cons;

    invoke-direct {p1, v0, v1}, Lscala/collection/immutable/Stream$Cons;-><init>(Ljava/lang/Object;Lscala/Function0;)V

    :goto_0
    return-object p1
.end method

.method public apply(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TA;"
        }
    .end annotation

    .line 202
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->apply(Lscala/collection/LinearSeqOptimized;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 202
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream;->apply(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final collect(Lscala/PartialFunction;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/PartialFunction<",
            "TA;TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/Stream<",
            "TA;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 424
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->repr()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object v0

    instance-of v0, v0, Lscala/collection/immutable/Stream$StreamBuilder;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 432
    invoke-static {v0}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object v0

    .line 433
    new-instance v1, Lscala/collection/immutable/Stream$$anonfun$1;

    invoke-direct {v1, p0, v0}, Lscala/collection/immutable/Stream$$anonfun$1;-><init>(Lscala/collection/immutable/Stream;Lscala/runtime/ObjectRef;)V

    invoke-interface {p1, v1}, Lscala/PartialFunction;->runWith(Lscala/Function1;)Lscala/Function1;

    move-result-object v1

    move-object v2, p0

    .line 435
    :goto_0
    invoke-virtual {v2}, Lscala/collection/immutable/Stream;->nonEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/collection/immutable/Stream;

    goto :goto_0

    .line 439
    :cond_0
    invoke-virtual {v2}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p1, Lscala/collection/immutable/Stream$Empty$;->MODULE$:Lscala/collection/immutable/Stream$Empty$;

    goto :goto_1

    .line 440
    :cond_1
    sget-object v1, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    iget-object v0, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, p1, p2}, Lscala/collection/immutable/Stream$;->collectedTail(Ljava/lang/Object;Lscala/collection/immutable/Stream;Lscala/PartialFunction;Lscala/collection/generic/CanBuildFrom;)Lscala/collection/immutable/Stream$Cons;

    move-result-object p1

    goto :goto_1

    .line 424
    :cond_2
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableLike$class;->collect(Lscala/collection/TraversableLike;Lscala/PartialFunction;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public companion()Lscala/collection/generic/GenericCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion<",
            "Lscala/collection/immutable/Stream;",
            ">;"
        }
    .end annotation

    .line 208
    sget-object v0, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            ">(TA1;)Z"
        }
    .end annotation

    .line 202
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->contains(Lscala/collection/LinearSeqOptimized;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final corresponds(Lscala/collection/GenSeq;Lscala/Function2;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;",
            "Lscala/Function2<",
            "TA;TB;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 202
    invoke-static {p0, p1, p2}, Lscala/collection/LinearSeqLike$class;->corresponds(Lscala/collection/LinearSeqLike;Lscala/collection/GenSeq;Lscala/Function2;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic distinct()Ljava/lang/Object;
    .locals 1

    .line 202
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->distinct()Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public distinct()Lscala/collection/immutable/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream<",
            "TA;>;"
        }
    .end annotation

    .line 990
    sget-object v0, Lscala/collection/immutable/Set$;->MODULE$:Lscala/collection/immutable/Set$;

    sget-object v1, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-virtual {v0, v1}, Lscala/collection/immutable/Set$;->apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Set;

    invoke-virtual {p0, v0, p0}, Lscala/collection/immutable/Stream;->scala$collection$immutable$Stream$$loop$2(Lscala/collection/immutable/Set;Lscala/collection/immutable/Stream;)Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic drop(I)Ljava/lang/Object;
    .locals 0

    .line 202
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream;->drop(I)Lscala/collection/immutable/Stream;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic drop(I)Lscala/collection/LinearSeqOptimized;
    .locals 0

    .line 202
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream;->drop(I)Lscala/collection/immutable/Stream;

    move-result-object p1

    return-object p1
.end method

.method public final drop(I)Lscala/collection/immutable/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/immutable/Stream<",
            "TA;>;"
        }
    .end annotation

    move-object v0, p0

    :goto_0
    if-lez p1, :cond_1

    .line 857
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 858
    :cond_0
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Stream;

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public bridge synthetic dropRight(I)Ljava/lang/Object;
    .locals 0

    .line 202
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream;->dropRight(I)Lscala/collection/immutable/Stream;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dropRight(I)Lscala/collection/LinearSeqOptimized;
    .locals 0

    .line 202
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream;->dropRight(I)Lscala/collection/immutable/Stream;

    move-result-object p1

    return-object p1
.end method

.method public dropRight(I)Lscala/collection/immutable/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/immutable/Stream<",
            "TA;>;"
        }
    .end annotation

    if-gtz p1, :cond_0

    move-object p1, p0

    goto :goto_0

    .line 925
    :cond_0
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream;->take(I)Lscala/collection/immutable/Stream;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->toList()Lscala/collection/immutable/List;

    move-result-object v0

    sget-object v1, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream;->drop(I)Lscala/collection/immutable/Stream;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lscala/collection/immutable/Stream;->scala$collection$immutable$Stream$$advance$1(Lscala/collection/immutable/List;Lscala/collection/immutable/List;Lscala/collection/immutable/Stream;)Lscala/collection/immutable/Stream;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic dropWhile(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 202
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream;->dropWhile(Lscala/Function1;)Lscala/collection/immutable/Stream;

    move-result-object p1

    return-object p1
.end method

.method public dropWhile(Lscala/Function1;)Lscala/collection/immutable/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/immutable/Stream<",
            "TA;>;"
        }
    .end annotation

    move-object v0, p0

    .line 963
    :goto_0
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Stream;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public exists(Lscala/Function1;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 202
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->exists(Lscala/collection/LinearSeqOptimized;Lscala/Function1;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic filter(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 202
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream;->filter(Lscala/Function1;)Lscala/collection/immutable/Stream;

    move-result-object p1

    return-object p1
.end method

.method public filter(Lscala/Function1;)Lscala/collection/immutable/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/immutable/Stream<",
            "TA;>;"
        }
    .end annotation

    move-object v0, p0

    .line 519
    :goto_0
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Stream;

    goto :goto_0

    .line 521
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    invoke-virtual {v1, v0, p1}, Lscala/collection/immutable/Stream$;->filteredTail(Lscala/collection/immutable/Stream;Lscala/Function1;)Lscala/collection/immutable/Stream$Cons;

    move-result-object p1

    goto :goto_2

    .line 522
    :cond_2
    sget-object p1, Lscala/collection/immutable/Stream$Empty$;->MODULE$:Lscala/collection/immutable/Stream$Empty$;

    :goto_2
    return-object p1
.end method

.method public find(Lscala/Function1;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "TA;>;"
        }
    .end annotation

    .line 202
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->find(Lscala/collection/LinearSeqOptimized;Lscala/Function1;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;",
            "Lscala/collection/GenTraversableOnce<",
            "TB;>;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/Stream<",
            "TA;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 484
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->repr()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object v0

    instance-of v0, v0, Lscala/collection/immutable/Stream$StreamBuilder;

    if-eqz v0, :cond_4

    .line 485
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p1, Lscala/collection/immutable/Stream$Empty$;->MODULE$:Lscala/collection/immutable/Stream$Empty$;

    goto :goto_1

    .line 488
    :cond_0
    invoke-static {p0}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object p2

    .line 489
    iget-object v0, p2, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v0, Lscala/collection/immutable/Stream;

    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/GenTraversableOnce;

    invoke-interface {v0}, Lscala/collection/GenTraversableOnce;->toStream()Lscala/collection/immutable/Stream;

    move-result-object v0

    .line 490
    :cond_1
    :goto_0
    iget-object v1, p2, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v1, Lscala/collection/immutable/Stream;

    invoke-virtual {v1}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 491
    iget-object v1, p2, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v1, Lscala/collection/immutable/Stream;

    invoke-virtual {v1}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/immutable/Stream;

    iput-object v1, p2, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    .line 492
    iget-object v1, p2, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v1, Lscala/collection/immutable/Stream;

    invoke-virtual {v1}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 493
    iget-object v0, p2, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v0, Lscala/collection/immutable/Stream;

    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/GenTraversableOnce;

    invoke-interface {v0}, Lscala/collection/GenTraversableOnce;->toStream()Lscala/collection/immutable/Stream;

    move-result-object v0

    goto :goto_0

    .line 496
    :cond_2
    iget-object v1, p2, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v1, Lscala/collection/immutable/Stream;

    invoke-virtual {v1}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object p1, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    invoke-virtual {p1}, Lscala/collection/immutable/Stream$;->empty()Lscala/collection/immutable/Stream;

    move-result-object p1

    goto :goto_1

    .line 497
    :cond_3
    new-instance v1, Lscala/collection/immutable/Stream$$anonfun$flatMap$1;

    invoke-direct {v1, p0, p1, p2}, Lscala/collection/immutable/Stream$$anonfun$flatMap$1;-><init>(Lscala/collection/immutable/Stream;Lscala/Function1;Lscala/runtime/ObjectRef;)V

    invoke-virtual {v0, v1}, Lscala/collection/immutable/Stream;->append(Lscala/Function0;)Lscala/collection/immutable/Stream;

    move-result-object p1

    goto :goto_1

    .line 500
    :cond_4
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableLike$class;->flatMap(Lscala/collection/TraversableLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public bridge synthetic flatten(Lscala/Function1;)Lscala/collection/GenTraversable;
    .locals 0

    .line 202
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream;->flatten(Lscala/Function1;)Lscala/collection/immutable/Stream;

    move-result-object p1

    return-object p1
.end method

.method public flatten(Lscala/Function1;)Lscala/collection/immutable/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;",
            "Lscala/collection/GenTraversableOnce<",
            "TB;>;>;)",
            "Lscala/collection/immutable/Stream<",
            "TB;>;"
        }
    .end annotation

    .line 1073
    invoke-static {p0}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object v0

    .line 1074
    :goto_0
    iget-object v1, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v1, Lscala/collection/immutable/Stream;

    invoke-virtual {v1}, Lscala/collection/immutable/Stream;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1075
    iget-object v1, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v1, Lscala/collection/immutable/Stream;

    invoke-virtual {v1}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/GenTraversableOnce;

    .line 1076
    invoke-interface {v1}, Lscala/collection/GenTraversableOnce;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1077
    iget-object v1, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v1, Lscala/collection/immutable/Stream;

    invoke-virtual {v1}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/immutable/Stream;

    iput-object v1, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    goto :goto_0

    .line 1079
    :cond_0
    invoke-interface {v1}, Lscala/collection/GenTraversableOnce;->toStream()Lscala/collection/immutable/Stream;

    move-result-object v1

    sget-object v2, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    new-instance v2, Lscala/collection/immutable/Stream$$anonfun$flatten$1;

    invoke-direct {v2, p0, p1, v0}, Lscala/collection/immutable/Stream$$anonfun$flatten$1;-><init>(Lscala/collection/immutable/Stream;Lscala/Function1;Lscala/runtime/ObjectRef;)V

    new-instance p1, Lscala/collection/immutable/Stream$ConsWrapper;

    invoke-direct {p1, v2}, Lscala/collection/immutable/Stream$ConsWrapper;-><init>(Lscala/Function0;)V

    invoke-virtual {p1, v1}, Lscala/collection/immutable/Stream$ConsWrapper;->$hash$colon$colon$colon(Lscala/collection/immutable/Stream;)Lscala/collection/immutable/Stream;

    move-result-object p1

    return-object p1

    .line 1082
    :cond_1
    sget-object p1, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    sget-object p1, Lscala/collection/immutable/Stream$Empty$;->MODULE$:Lscala/collection/immutable/Stream$Empty$;

    return-object p1
.end method

.method public final foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "TB;TA;TB;>;)TB;"
        }
    .end annotation

    move-object v0, p0

    .line 609
    :goto_0
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    .line 610
    :cond_0
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/immutable/Stream;

    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, v1

    goto :goto_0
.end method

.method public foldRight(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "TA;TB;TB;>;)TB;"
        }
    .end annotation

    .line 202
    invoke-static {p0, p1, p2}, Lscala/collection/LinearSeqOptimized$class;->foldRight(Lscala/collection/LinearSeqOptimized;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public forall(Lscala/Function1;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 202
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->forall(Lscala/collection/LinearSeqOptimized;Lscala/Function1;)Z

    move-result p1

    return p1
.end method

.method public force()Lscala/collection/immutable/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream<",
            "TA;>;"
        }
    .end annotation

    .line 269
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Stream;

    move-object v1, p0

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v1, v0

    :goto_0
    if-eq v1, v0, :cond_4

    .line 271
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object p0

    .line 272
    :cond_1
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Stream;

    .line 273
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    return-object p0

    .line 274
    :cond_2
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Stream;

    if-ne v0, v1, :cond_3

    return-object p0

    .line 276
    :cond_3
    invoke-virtual {v1}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/immutable/Stream;

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method public final foreach(Lscala/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;TB;>;)V"
        }
    .end annotation

    move-object v0, p0

    .line 593
    :goto_0
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-void

    .line 594
    :cond_0
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Stream;

    goto :goto_0
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 202
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public hasDefiniteSize()Z
    .locals 5

    .line 328
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 329
    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->tailDefined()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 333
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Stream;

    move-object v3, p0

    :goto_0
    if-eq v3, v0, :cond_5

    .line 335
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    return v1

    .line 336
    :cond_1
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->tailDefined()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 337
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Stream;

    .line 338
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    return v1

    .line 339
    :cond_2
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->tailDefined()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 340
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Stream;

    if-ne v3, v0, :cond_3

    return v2

    .line 342
    :cond_3
    invoke-virtual {v3}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscala/collection/immutable/Stream;

    goto :goto_0

    :cond_4
    return v2

    :cond_5
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 202
    invoke-static {p0}, Lscala/collection/LinearSeqLike$class;->hashCode(Lscala/collection/LinearSeqLike;)I

    move-result v0

    return v0
.end method

.method public abstract head()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation
.end method

.method public indexWhere(Lscala/Function1;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    .line 202
    invoke-static {p0, p1, p2}, Lscala/collection/LinearSeqOptimized$class;->indexWhere(Lscala/collection/LinearSeqOptimized;Lscala/Function1;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic init()Ljava/lang/Object;
    .locals 1

    .line 202
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->init()Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public init()Lscala/collection/immutable/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream<",
            "TA;>;"
        }
    .end annotation

    .line 887
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lscala/collection/TraversableLike$class;->init(Lscala/collection/TraversableLike;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Stream;

    goto :goto_0

    .line 888
    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/SeqLike;

    invoke-interface {v0}, Lscala/collection/SeqLike;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lscala/collection/immutable/Stream$Empty$;->MODULE$:Lscala/collection/immutable/Stream$Empty$;

    goto :goto_0

    .line 889
    :cond_1
    sget-object v0, Lscala/collection/immutable/Stream$cons$;->MODULE$:Lscala/collection/immutable/Stream$cons$;

    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lscala/collection/immutable/Stream$$anonfun$init$1;

    invoke-direct {v1, p0}, Lscala/collection/immutable/Stream$$anonfun$init$1;-><init>(Lscala/collection/immutable/Stream;)V

    new-instance v2, Lscala/collection/immutable/Stream$Cons;

    invoke-direct {v2, v0, v1}, Lscala/collection/immutable/Stream$Cons;-><init>(Ljava/lang/Object;Lscala/Function0;)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public isDefinedAt(I)Z
    .locals 0

    .line 202
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->isDefinedAt(Lscala/collection/LinearSeqOptimized;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isDefinedAt(Ljava/lang/Object;)Z
    .locals 0

    .line 202
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream;->isDefinedAt(I)Z

    move-result p1

    return p1
.end method

.method public abstract isEmpty()Z
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation

    .line 578
    new-instance v0, Lscala/collection/immutable/StreamIterator;

    invoke-direct {v0, p0}, Lscala/collection/immutable/StreamIterator;-><init>(Lscala/collection/immutable/Stream;)V

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 202
    invoke-static {p0}, Lscala/collection/LinearSeqOptimized$class;->last(Lscala/collection/LinearSeqOptimized;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexWhere(Lscala/Function1;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    .line 202
    invoke-static {p0, p1, p2}, Lscala/collection/LinearSeqOptimized$class;->lastIndexWhere(Lscala/collection/LinearSeqOptimized;Lscala/Function1;I)I

    move-result p1

    return p1
.end method

.method public length()I
    .locals 3

    const/4 v0, 0x0

    move-object v1, p0

    .line 310
    :goto_0
    invoke-virtual {v1}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 312
    invoke-virtual {v1}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/immutable/Stream;

    goto :goto_0
.end method

.method public lengthCompare(I)I
    .locals 0

    .line 202
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->lengthCompare(Lscala/collection/LinearSeqOptimized;I)I

    move-result p1

    return p1
.end method

.method public final map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/Stream<",
            "TA;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 416
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->repr()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object v0

    instance-of v0, v0, Lscala/collection/immutable/Stream$StreamBuilder;

    if-eqz v0, :cond_1

    .line 417
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p1, Lscala/collection/immutable/Stream$Empty$;->MODULE$:Lscala/collection/immutable/Stream$Empty$;

    goto :goto_0

    .line 418
    :cond_0
    sget-object p2, Lscala/collection/immutable/Stream$cons$;->MODULE$:Lscala/collection/immutable/Stream$cons$;

    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    new-instance v0, Lscala/collection/immutable/Stream$$anonfun$map$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/immutable/Stream$$anonfun$map$1;-><init>(Lscala/collection/immutable/Stream;Lscala/Function1;)V

    new-instance p1, Lscala/collection/immutable/Stream$Cons;

    invoke-direct {p1, p2, v0}, Lscala/collection/immutable/Stream$Cons;-><init>(Ljava/lang/Object;Lscala/Function0;)V

    goto :goto_0

    .line 420
    :cond_1
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableLike$class;->map(Lscala/collection/TraversableLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public mkString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 818
    invoke-virtual {p0, v0}, Lscala/collection/immutable/Stream;->mkString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mkString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 817
    invoke-virtual {p0, v0, p1, v0}, Lscala/collection/immutable/Stream;->mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 820
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->force()Lscala/collection/immutable/Stream;

    .line 821
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableOnce$class;->mkString(Lscala/collection/TraversableOnce;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public padTo(ILjava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(ITB;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/Stream<",
            "TA;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 1024
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->repr()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object v0

    instance-of v0, v0, Lscala/collection/immutable/Stream$StreamBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p0, p2}, Lscala/collection/immutable/Stream;->scala$collection$immutable$Stream$$loop$3(ILscala/collection/immutable/Stream;Ljava/lang/Object;)Lscala/collection/immutable/Stream;

    move-result-object p1

    goto :goto_0

    .line 1025
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lscala/collection/SeqLike$class;->padTo(Lscala/collection/SeqLike;ILjava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public parCombiner()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "TA;",
            "Lscala/collection/parallel/immutable/ParSeq<",
            "TA;>;>;"
        }
    .end annotation

    .line 202
    invoke-static {p0}, Lscala/collection/immutable/Seq$class;->parCombiner(Lscala/collection/immutable/Seq;)Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public partition(Lscala/Function1;)Lscala/Tuple2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Tuple2<",
            "Lscala/collection/immutable/Stream<",
            "TA;>;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;"
        }
    .end annotation

    .line 650
    new-instance v0, Lscala/Tuple2;

    new-instance v1, Lscala/collection/immutable/Stream$$anonfun$partition$1;

    invoke-direct {v1, p0, p1}, Lscala/collection/immutable/Stream$$anonfun$partition$1;-><init>(Lscala/collection/immutable/Stream;Lscala/Function1;)V

    invoke-virtual {p0, v1}, Lscala/collection/immutable/Stream;->filter(Lscala/Function1;)Lscala/collection/immutable/Stream;

    move-result-object v1

    new-instance v2, Lscala/collection/immutable/Stream$$anonfun$partition$2;

    invoke-direct {v2, p0, p1}, Lscala/collection/immutable/Stream$$anonfun$partition$2;-><init>(Lscala/collection/immutable/Stream;Lscala/Function1;)V

    invoke-virtual {p0, v2}, Lscala/collection/immutable/Stream;->filterNot(Lscala/Function1;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public print()V
    .locals 1

    const-string v0, ", "

    .line 282
    invoke-virtual {p0, v0}, Lscala/collection/immutable/Stream;->print(Ljava/lang/String;)V

    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    .line 296
    invoke-direct {p0, p0, v0, p1}, Lscala/collection/immutable/Stream;->loop$1(Lscala/collection/immutable/Stream;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final reduceLeft(Lscala/Function2;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TB;TA;TB;>;)TB;"
        }
    .end annotation

    .line 621
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 623
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v0

    .line 624
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/immutable/Stream;

    .line 625
    :goto_0
    invoke-virtual {v1}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 626
    :cond_0
    invoke-virtual {v1}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 627
    invoke-virtual {v1}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/immutable/Stream;

    goto :goto_0

    .line 621
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "empty.reduceLeft"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reduceRight(Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TA;TB;TB;>;)TB;"
        }
    .end annotation

    .line 202
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->reduceRight(Lscala/collection/LinearSeqOptimized;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverse()Ljava/lang/Object;
    .locals 1

    .line 202
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->reverse()Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public reverse()Lscala/collection/immutable/Stream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream<",
            "TA;>;"
        }
    .end annotation

    .line 1049
    sget-object v0, Lscala/collection/immutable/Stream$Empty$;->MODULE$:Lscala/collection/immutable/Stream$Empty$;

    invoke-static {v0}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object v0

    move-object v1, p0

    .line 1051
    :goto_0
    invoke-virtual {v1}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1057
    iget-object v0, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v0, Lscala/collection/immutable/Stream;

    return-object v0

    .line 1052
    :cond_0
    sget-object v2, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    new-instance v2, Lscala/collection/immutable/Stream$$anonfun$2;

    invoke-direct {v2, p0, v0}, Lscala/collection/immutable/Stream$$anonfun$2;-><init>(Lscala/collection/immutable/Stream;Lscala/runtime/ObjectRef;)V

    new-instance v3, Lscala/collection/immutable/Stream$ConsWrapper;

    invoke-direct {v3, v2}, Lscala/collection/immutable/Stream$ConsWrapper;-><init>(Lscala/Function0;)V

    invoke-virtual {v1}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Lscala/collection/immutable/Stream$ConsWrapper;->$hash$colon$colon(Ljava/lang/Object;)Lscala/collection/immutable/Stream;

    move-result-object v2

    .line 1053
    invoke-virtual {v2}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    .line 1054
    iput-object v2, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    .line 1055
    invoke-virtual {v1}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/immutable/Stream;

    goto :goto_0
.end method

.method public sameElements(Lscala/collection/GenIterable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenIterable<",
            "TB;>;)Z"
        }
    .end annotation

    .line 202
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->sameElements(Lscala/collection/LinearSeqOptimized;Lscala/collection/GenIterable;)Z

    move-result p1

    return p1
.end method

.method public synthetic scala$collection$LinearSeqOptimized$$super$sameElements(Lscala/collection/GenIterable;)Z
    .locals 0

    .line 202
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->sameElements(Lscala/collection/IterableLike;Lscala/collection/GenIterable;)Z

    move-result p1

    return p1
.end method

.method public final scala$collection$immutable$Stream$$advance$1(Lscala/collection/immutable/List;Lscala/collection/immutable/List;Lscala/collection/immutable/Stream;)Lscala/collection/immutable/Stream;
    .locals 2

    .line 920
    :goto_0
    invoke-virtual {p3}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    sget-object p1, Lscala/collection/immutable/Stream$Empty$;->MODULE$:Lscala/collection/immutable/Stream$Empty$;

    goto :goto_1

    .line 921
    :cond_0
    invoke-virtual {p1}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lscala/collection/immutable/List;->reverse()Lscala/collection/immutable/List;

    move-result-object p1

    sget-object p2, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    goto :goto_0

    .line 922
    :cond_1
    sget-object v0, Lscala/collection/immutable/Stream$cons$;->MODULE$:Lscala/collection/immutable/Stream$cons$;

    invoke-virtual {p1}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$advance$1$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$advance$1$1;-><init>(Lscala/collection/immutable/Stream;Lscala/collection/immutable/List;Lscala/collection/immutable/List;Lscala/collection/immutable/Stream;)V

    new-instance p1, Lscala/collection/immutable/Stream$Cons;

    invoke-direct {p1, v0, v1}, Lscala/collection/immutable/Stream$Cons;-><init>(Ljava/lang/Object;Lscala/Function0;)V

    :goto_1
    return-object p1
.end method

.method public scala$collection$immutable$Stream$$asStream(Ljava/lang/Object;)Lscala/collection/immutable/Stream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Lscala/collection/immutable/Stream<",
            "TB;>;"
        }
    .end annotation

    .line 320
    check-cast p1, Lscala/collection/immutable/Stream;

    return-object p1
.end method

.method public scala$collection$immutable$Stream$$asThat(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<That:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TThat;"
        }
    .end annotation

    return-object p1
.end method

.method public scala$collection$immutable$Stream$$isStreamBuilder(Lscala/collection/generic/CanBuildFrom;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/Stream<",
            "TA;>;TB;TThat;>;)Z"
        }
    .end annotation

    .line 322
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->repr()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p1

    instance-of p1, p1, Lscala/collection/immutable/Stream$StreamBuilder;

    return p1
.end method

.method public final scala$collection$immutable$Stream$$loop$2(Lscala/collection/immutable/Set;Lscala/collection/immutable/Stream;)Lscala/collection/immutable/Stream;
    .locals 2

    .line 986
    :goto_0
    invoke-virtual {p2}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 987
    :cond_0
    invoke-virtual {p2}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/collection/immutable/Set;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lscala/collection/immutable/Stream;

    goto :goto_0

    .line 988
    :cond_1
    sget-object v0, Lscala/collection/immutable/Stream$cons$;->MODULE$:Lscala/collection/immutable/Stream$cons$;

    invoke-virtual {p2}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$loop$2$1;

    invoke-direct {v1, p0, p1, p2}, Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$loop$2$1;-><init>(Lscala/collection/immutable/Stream;Lscala/collection/immutable/Set;Lscala/collection/immutable/Stream;)V

    new-instance p2, Lscala/collection/immutable/Stream$Cons;

    invoke-direct {p2, v0, v1}, Lscala/collection/immutable/Stream$Cons;-><init>(Ljava/lang/Object;Lscala/Function0;)V

    :goto_1
    return-object p2
.end method

.method public final scala$collection$immutable$Stream$$loop$3(ILscala/collection/immutable/Stream;Ljava/lang/Object;)Lscala/collection/immutable/Stream;
    .locals 2

    .line 1021
    invoke-virtual {p2}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p2, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    new-instance p2, Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$loop$3$1;

    invoke-direct {p2, p0, p3}, Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$loop$3$1;-><init>(Lscala/collection/immutable/Stream;Ljava/lang/Object;)V

    if-gtz p1, :cond_0

    sget-object p1, Lscala/collection/immutable/Stream$Empty$;->MODULE$:Lscala/collection/immutable/Stream$Empty$;

    goto :goto_0

    :cond_0
    sget-object p3, Lscala/collection/immutable/Stream$cons$;->MODULE$:Lscala/collection/immutable/Stream$cons$;

    iget-object p3, p2, Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$loop$3$1;->elem$1:Ljava/lang/Object;

    new-instance v0, Lscala/collection/immutable/Stream$$anonfun$fill$1;

    invoke-direct {v0, p1, p2}, Lscala/collection/immutable/Stream$$anonfun$fill$1;-><init>(ILscala/Function0;)V

    new-instance p1, Lscala/collection/immutable/Stream$Cons;

    invoke-direct {p1, p3, v0}, Lscala/collection/immutable/Stream$Cons;-><init>(Ljava/lang/Object;Lscala/Function0;)V

    goto :goto_0

    .line 1022
    :cond_1
    sget-object v0, Lscala/collection/immutable/Stream$cons$;->MODULE$:Lscala/collection/immutable/Stream$cons$;

    invoke-virtual {p2}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$loop$3$2;

    invoke-direct {v1, p0, p3, p1, p2}, Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$loop$3$2;-><init>(Lscala/collection/immutable/Stream;Ljava/lang/Object;ILscala/collection/immutable/Stream;)V

    new-instance p1, Lscala/collection/immutable/Stream$Cons;

    invoke-direct {p1, v0, v1}, Lscala/collection/immutable/Stream$Cons;-><init>(Ljava/lang/Object;Lscala/Function0;)V

    :goto_0
    return-object p1
.end method

.method public final scanLeft(Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "TB;TA;TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/Stream<",
            "TA;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 395
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->repr()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object v0

    instance-of v0, v0, Lscala/collection/immutable/Stream$StreamBuilder;

    if-eqz v0, :cond_1

    .line 396
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    sget-object p2, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    sget-object p2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    invoke-virtual {p2, p3}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object p1

    invoke-interface {p1}, Lscala/collection/Seq;->toStream()Lscala/collection/immutable/Stream;

    move-result-object p1

    goto :goto_0

    .line 397
    :cond_0
    sget-object p3, Lscala/collection/immutable/Stream$cons$;->MODULE$:Lscala/collection/immutable/Stream$cons$;

    new-instance p3, Lscala/collection/immutable/Stream$$anonfun$scanLeft$1;

    invoke-direct {p3, p0, p1, p2}, Lscala/collection/immutable/Stream$$anonfun$scanLeft$1;-><init>(Lscala/collection/immutable/Stream;Ljava/lang/Object;Lscala/Function2;)V

    new-instance p2, Lscala/collection/immutable/Stream$Cons;

    invoke-direct {p2, p1, p3}, Lscala/collection/immutable/Stream$Cons;-><init>(Ljava/lang/Object;Lscala/Function0;)V

    move-object p1, p2

    goto :goto_0

    .line 399
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableLike$class;->scanLeft(Lscala/collection/TraversableLike;Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public segmentLength(Lscala/Function1;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    .line 202
    invoke-static {p0, p1, p2}, Lscala/collection/LinearSeqOptimized$class;->segmentLength(Lscala/collection/LinearSeqOptimized;Lscala/Function1;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .line 202
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->seq()Lscala/collection/immutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/LinearSeq;
    .locals 1

    .line 202
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->seq()Lscala/collection/immutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Seq;
    .locals 1

    .line 202
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->seq()Lscala/collection/immutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .line 202
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->seq()Lscala/collection/immutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 202
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->seq()Lscala/collection/immutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/immutable/Iterable;
    .locals 1

    .line 202
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->seq()Lscala/collection/immutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/immutable/LinearSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/LinearSeq<",
            "TA;>;"
        }
    .end annotation

    .line 202
    invoke-static {p0}, Lscala/collection/immutable/LinearSeq$class;->seq(Lscala/collection/immutable/LinearSeq;)Lscala/collection/immutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/immutable/Seq;
    .locals 1

    .line 202
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->seq()Lscala/collection/immutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/immutable/Traversable;
    .locals 1

    .line 202
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->seq()Lscala/collection/immutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic slice(II)Ljava/lang/Object;
    .locals 0

    .line 202
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/Stream;->slice(II)Lscala/collection/immutable/Stream;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic slice(II)Lscala/collection/LinearSeqOptimized;
    .locals 0

    .line 202
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/Stream;->slice(II)Lscala/collection/immutable/Stream;

    move-result-object p1

    return-object p1
.end method

.method public slice(II)Lscala/collection/immutable/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lscala/collection/immutable/Stream<",
            "TA;>;"
        }
    .end annotation

    sget-object v0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 874
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lscala/runtime/RichInt$;->max$extension(II)I

    move-result p1

    if-le p2, p1, :cond_1

    .line 875
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 876
    :cond_0
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream;->drop(I)Lscala/collection/immutable/Stream;

    move-result-object v0

    sub-int/2addr p2, p1

    invoke-virtual {v0, p2}, Lscala/collection/immutable/Stream;->take(I)Lscala/collection/immutable/Stream;

    move-result-object p1

    goto :goto_1

    .line 875
    :cond_1
    :goto_0
    sget-object p1, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    invoke-virtual {p1}, Lscala/collection/immutable/Stream$;->empty()Lscala/collection/immutable/Stream;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public span(Lscala/Function1;)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Tuple2<",
            "Lscala/collection/immutable/Stream<",
            "TA;>;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;"
        }
    .end annotation

    .line 202
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->span(Lscala/collection/LinearSeqOptimized;Lscala/Function1;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public splitAt(I)Lscala/Tuple2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/Tuple2<",
            "Lscala/collection/immutable/Stream<",
            "TA;>;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;"
        }
    .end annotation

    .line 825
    new-instance v0, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream;->take(I)Lscala/collection/immutable/Stream;

    move-result-object v1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream;->drop(I)Lscala/collection/immutable/Stream;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public stringPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "Stream"

    return-object v0
.end method

.method public bridge synthetic tail()Lscala/collection/LinearSeqOptimized;
    .locals 1

    .line 202
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/LinearSeqOptimized;

    return-object v0
.end method

.method public bridge synthetic tail()Lscala/collection/immutable/Stream;
    .locals 1

    .line 202
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Stream;

    return-object v0
.end method

.method public abstract tailDefined()Z
.end method

.method public bridge synthetic take(I)Ljava/lang/Object;
    .locals 0

    .line 202
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream;->take(I)Lscala/collection/immutable/Stream;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic take(I)Lscala/collection/LinearSeqOptimized;
    .locals 0

    .line 202
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream;->take(I)Lscala/collection/immutable/Stream;

    move-result-object p1

    return-object p1
.end method

.method public take(I)Lscala/collection/immutable/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/immutable/Stream<",
            "TA;>;"
        }
    .end annotation

    if-lez p1, :cond_2

    .line 851
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 852
    sget-object p1, Lscala/collection/immutable/Stream$cons$;->MODULE$:Lscala/collection/immutable/Stream$cons$;

    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object p1

    new-instance v0, Lscala/collection/immutable/Stream$$anonfun$take$1;

    invoke-direct {v0, p0}, Lscala/collection/immutable/Stream$$anonfun$take$1;-><init>(Lscala/collection/immutable/Stream;)V

    new-instance v1, Lscala/collection/immutable/Stream$Cons;

    invoke-direct {v1, p1, v0}, Lscala/collection/immutable/Stream$Cons;-><init>(Ljava/lang/Object;Lscala/Function0;)V

    goto :goto_1

    .line 853
    :cond_1
    sget-object v0, Lscala/collection/immutable/Stream$cons$;->MODULE$:Lscala/collection/immutable/Stream$cons$;

    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lscala/collection/immutable/Stream$$anonfun$take$2;

    invoke-direct {v1, p0, p1}, Lscala/collection/immutable/Stream$$anonfun$take$2;-><init>(Lscala/collection/immutable/Stream;I)V

    new-instance p1, Lscala/collection/immutable/Stream$Cons;

    invoke-direct {p1, v0, v1}, Lscala/collection/immutable/Stream$Cons;-><init>(Ljava/lang/Object;Lscala/Function0;)V

    move-object v1, p1

    goto :goto_1

    .line 851
    :cond_2
    :goto_0
    sget-object p1, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    sget-object v1, Lscala/collection/immutable/Stream$Empty$;->MODULE$:Lscala/collection/immutable/Stream$Empty$;

    :goto_1
    return-object v1
.end method

.method public bridge synthetic takeRight(I)Ljava/lang/Object;
    .locals 0

    .line 202
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream;->takeRight(I)Lscala/collection/immutable/Stream;

    move-result-object p1

    return-object p1
.end method

.method public takeRight(I)Lscala/collection/immutable/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/immutable/Stream<",
            "TA;>;"
        }
    .end annotation

    .line 902
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream;->drop(I)Lscala/collection/immutable/Stream;

    move-result-object p1

    move-object v0, p0

    .line 903
    :goto_0
    invoke-virtual {p1}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 904
    :cond_0
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Stream;

    .line 905
    invoke-virtual {p1}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/Stream;

    goto :goto_0
.end method

.method public bridge synthetic takeWhile(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 202
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream;->takeWhile(Lscala/Function1;)Lscala/collection/immutable/Stream;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic takeWhile(Lscala/Function1;)Lscala/collection/LinearSeqOptimized;
    .locals 0

    .line 202
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream;->takeWhile(Lscala/Function1;)Lscala/collection/immutable/Stream;

    move-result-object p1

    return-object p1
.end method

.method public takeWhile(Lscala/Function1;)Lscala/collection/immutable/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/immutable/Stream<",
            "TA;>;"
        }
    .end annotation

    .line 941
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lscala/collection/immutable/Stream$cons$;->MODULE$:Lscala/collection/immutable/Stream$cons$;

    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lscala/collection/immutable/Stream$$anonfun$takeWhile$1;

    invoke-direct {v1, p0, p1}, Lscala/collection/immutable/Stream$$anonfun$takeWhile$1;-><init>(Lscala/collection/immutable/Stream;Lscala/Function1;)V

    new-instance p1, Lscala/collection/immutable/Stream$Cons;

    invoke-direct {p1, v0, v1}, Lscala/collection/immutable/Stream$Cons;-><init>(Ljava/lang/Object;Lscala/Function0;)V

    goto :goto_0

    .line 942
    :cond_0
    sget-object p1, Lscala/collection/immutable/Stream$Empty$;->MODULE$:Lscala/collection/immutable/Stream$Empty$;

    :goto_0
    return-object p1
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Iterable;
    .locals 1

    .line 202
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->thisCollection()Lscala/collection/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public thisCollection()Lscala/collection/LinearSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/LinearSeq<",
            "TA;>;"
        }
    .end annotation

    .line 202
    invoke-static {p0}, Lscala/collection/LinearSeqLike$class;->thisCollection(Lscala/collection/LinearSeqLike;)Lscala/collection/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Seq;
    .locals 1

    .line 202
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->thisCollection()Lscala/collection/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 202
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->thisCollection()Lscala/collection/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;
    .locals 0

    .line 202
    check-cast p1, Lscala/collection/LinearSeqLike;

    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream;->toCollection(Lscala/collection/LinearSeqLike;)Lscala/collection/LinearSeq;

    move-result-object p1

    return-object p1
.end method

.method public toCollection(Lscala/collection/LinearSeqLike;)Lscala/collection/LinearSeq;
    .locals 0

    .line 202
    invoke-static {p0, p1}, Lscala/collection/LinearSeqLike$class;->toCollection(Lscala/collection/LinearSeqLike;Lscala/collection/LinearSeqLike;)Lscala/collection/LinearSeq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Seq;
    .locals 0

    .line 202
    check-cast p1, Lscala/collection/LinearSeqLike;

    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream;->toCollection(Lscala/collection/LinearSeqLike;)Lscala/collection/LinearSeq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 202
    check-cast p1, Lscala/collection/LinearSeqLike;

    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream;->toCollection(Lscala/collection/LinearSeqLike;)Lscala/collection/LinearSeq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 202
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 202
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->toSeq()Lscala/collection/immutable/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/Seq;
    .locals 1

    .line 202
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->toSeq()Lscala/collection/immutable/Seq;

    move-result-object v0

    return-object v0
.end method

.method public toSeq()Lscala/collection/immutable/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Seq<",
            "TA;>;"
        }
    .end annotation

    .line 202
    invoke-static {p0}, Lscala/collection/immutable/Seq$class;->toSeq(Lscala/collection/immutable/Seq;)Lscala/collection/immutable/Seq;

    move-result-object v0

    return-object v0
.end method

.method public toStream()Lscala/collection/immutable/Stream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream<",
            "TA;>;"
        }
    .end annotation

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 823
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->stringPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ", "

    const-string v2, ")"

    invoke-static {p0, v0, v1, v2}, Lscala/collection/TraversableOnce$class;->mkString(Lscala/collection/TraversableOnce;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 202
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view()Lscala/collection/IterableView;
    .locals 1

    .line 202
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->view()Lscala/collection/immutable/StreamView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/IterableView;
    .locals 0

    .line 202
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/Stream;->view(II)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic view()Lscala/collection/SeqView;
    .locals 1

    .line 202
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->view()Lscala/collection/immutable/StreamView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 202
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->view()Lscala/collection/immutable/StreamView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 202
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/Stream;->view(II)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method

.method public view()Lscala/collection/immutable/StreamView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1085
    new-instance v0, Lscala/collection/immutable/Stream$$anon$1;

    invoke-direct {v0, p0}, Lscala/collection/immutable/Stream$$anon$1;-><init>(Lscala/collection/immutable/Stream;)V

    return-object v0
.end method

.method public final bridge synthetic withFilter(Lscala/Function1;)Lscala/collection/generic/FilterMonadic;
    .locals 0

    .line 202
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream;->withFilter(Lscala/Function1;)Lscala/collection/immutable/Stream$StreamWithFilter;

    move-result-object p1

    return-object p1
.end method

.method public final withFilter(Lscala/Function1;)Lscala/collection/immutable/Stream$StreamWithFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/immutable/Stream<",
            "TA;>.StreamWithFilter;"
        }
    .end annotation

    .line 525
    new-instance v0, Lscala/collection/immutable/Stream$StreamWithFilter;

    invoke-direct {v0, p0, p1}, Lscala/collection/immutable/Stream$StreamWithFilter;-><init>(Lscala/collection/immutable/Stream;Lscala/Function1;)V

    return-object v0
.end method

.method public final zip(Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenIterable<",
            "TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/Stream<",
            "TA;>;",
            "Lscala/Tuple2<",
            "TA1;TB;>;TThat;>;)TThat;"
        }
    .end annotation

    .line 686
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->repr()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object v0

    instance-of v0, v0, Lscala/collection/immutable/Stream$StreamBuilder;

    if-eqz v0, :cond_2

    .line 687
    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-interface {p1}, Lscala/collection/GenIterable;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 688
    :cond_0
    sget-object p2, Lscala/collection/immutable/Stream$cons$;->MODULE$:Lscala/collection/immutable/Stream$cons$;

    new-instance p2, Lscala/Tuple2;

    invoke-virtual {p0}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lscala/collection/GenIterable;->head()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lscala/collection/immutable/Stream$$anonfun$zip$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/immutable/Stream$$anonfun$zip$1;-><init>(Lscala/collection/immutable/Stream;Lscala/collection/GenIterable;)V

    new-instance p1, Lscala/collection/immutable/Stream$Cons;

    invoke-direct {p1, p2, v0}, Lscala/collection/immutable/Stream$Cons;-><init>(Ljava/lang/Object;Lscala/Function0;)V

    goto :goto_1

    .line 687
    :cond_1
    :goto_0
    sget-object p1, Lscala/collection/immutable/Stream$Empty$;->MODULE$:Lscala/collection/immutable/Stream$Empty$;

    goto :goto_1

    .line 690
    :cond_2
    invoke-static {p0, p1, p2}, Lscala/collection/IterableLike$class;->zip(Lscala/collection/IterableLike;Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public zipWithIndex(Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/Stream<",
            "TA;>;",
            "Lscala/Tuple2<",
            "TA1;",
            "Ljava/lang/Object;",
            ">;TThat;>;)TThat;"
        }
    .end annotation

    .line 715
    sget-object v0, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lscala/collection/immutable/Stream$;->from(I)Lscala/collection/immutable/Stream;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lscala/collection/immutable/Stream;->zip(Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
