.class public Lscala/collection/immutable/Range;
.super Lscala/collection/AbstractSeq;
.source "Range.scala"

# interfaces
.implements Lscala/collection/immutable/IndexedSeq;
.implements Lscala/collection/CustomParallelizable;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/immutable/Range$Int$;,
        Lscala/collection/immutable/Range$Long$;,
        Lscala/collection/immutable/Range$BigInt$;,
        Lscala/collection/immutable/Range$Double$;,
        Lscala/collection/immutable/Range$Partial;,
        Lscala/collection/immutable/Range$Inclusive;,
        Lscala/collection/immutable/Range$BigDecimal$;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractSeq<",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/collection/immutable/IndexedSeq<",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/collection/CustomParallelizable<",
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/immutable/ParRange;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u0011%c\u0001B\u0001\u0003\u0001%\u0011QAU1oO\u0016T!a\u0001\u0003\u0002\u0013%lW.\u001e;bE2,\'BA\u0003\u0007\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000f\u0005)1oY1mC\u000e\u00011#\u0002\u0001\u000b%Y\u0001\u0003cA\u0006\r\u001d5\tA!\u0003\u0002\u000e\t\tY\u0011IY:ue\u0006\u001cGoU3r!\ty\u0001#D\u0001\u0007\u0013\t\tbAA\u0002J]R\u00042a\u0005\u000b\u000f\u001b\u0005\u0011\u0011BA\u000b\u0003\u0005)Ie\u000eZ3yK\u0012\u001cV-\u001d\t\u0005\u0017]q\u0011$\u0003\u0002\u0019\t\t!2)^:u_6\u0004\u0016M]1mY\u0016d\u0017N_1cY\u0016\u0004\"A\u0007\u0010\u000e\u0003mQ!a\u0001\u000f\u000b\u0005u!\u0011\u0001\u00039be\u0006dG.\u001a7\n\u0005}Y\"\u0001\u0003)beJ\u000bgnZ3\u0011\u0005=\t\u0013B\u0001\u0012\u0007\u00051\u0019VM]5bY&T\u0018M\u00197f\u0011!!\u0003A!b\u0001\n\u0003)\u0013!B:uCJ$X#\u0001\u0008\t\u0011\u001d\u0002!\u0011!Q\u0001\n9\taa\u001d;beR\u0004\u0003\u0002C\u0015\u0001\u0005\u000b\u0007I\u0011A\u0013\u0002\u0007\u0015tG\r\u0003\u0005,\u0001\t\u0005\t\u0015!\u0003\u000f\u0003\u0011)g\u000e\u001a\u0011\t\u00115\u0002!Q1A\u0005\u0002\u0015\nAa\u001d;fa\"Aq\u0006\u0001B\u0001B\u0003%a\"A\u0003ti\u0016\u0004\u0008\u0005C\u00032\u0001\u0011\u0005!\'\u0001\u0004=S:LGO\u0010\u000b\u0005gQ*d\u0007\u0005\u0002\u0014\u0001!)A\u0005\ra\u0001\u001d!)\u0011\u0006\ra\u0001\u001d!)Q\u0006\ra\u0001\u001d!)\u0001\u0008\u0001C!s\u0005\u0019\u0001/\u0019:\u0016\u0003eAQa\u000f\u0001\u0005\nq\n1aZ1q+\u0005i\u0004CA\u0008?\u0013\tydA\u0001\u0003M_:<\u0007\"B!\u0001\t\u0013\u0011\u0015aB5t\u000bb\u000c7\r^\u000b\u0002\u0007B\u0011q\u0002R\u0005\u0003\u000b\u001a\u0011qAQ8pY\u0016\u000cg\u000eC\u0003H\u0001\u0011%!)A\u0004iCN\u001cF/\u001e2\t\u000b%\u0003A\u0011\u0002\u001f\u0002\u00151|gn\u001a\'f]\u001e$\u0008\u000eC\u0004L\u0001\t\u0007IQ\t\"\u0002\u000f%\u001cX)\u001c9us\"1Q\n\u0001Q\u0001\u000e\r\u000b\u0001\"[:F[B$\u0018\u0010\t\u0005\u0008\u001f\u0002\u0011\r\u0011\"\u0002&\u0003AqW/\u001c*b]\u001e,W\t\\3nK:$8\u000f\u000b\u0003O#R3\u0006CA\u0008S\u0013\t\u0019fA\u0001\u0006eKB\u0014XmY1uK\u0012\u000c\u0013!V\u00018)\"L7\u000fI7fi\"|G\rI<jY2\u0004#-\u001a\u0011nC\u0012,\u0007\u0005\u001d:jm\u0006$X\r\u000c\u0011vg\u0016\u0004\u0003\r\\3oORD\u0007\rI5ogR,\u0017\r\u001a\u0018\"\u0003]\u000bAA\r\u00182c!1\u0011\u000c\u0001Q\u0001\u000e9\t\u0011C\\;n%\u0006tw-Z#mK6,g\u000e^:!\u0011\u001dY\u0006A1A\u0005\u0006\u0015\n1\u0002\\1ti\u0016cW-\\3oi\"\"!,U/WC\u0005q\u0016!\u000e+iSN\u0004S.\u001a;i_\u0012\u0004s/\u001b7mA\t,\u0007%\\1eK\u0002\u0002(/\u001b<bi\u0016d\u0003%^:fA\u0001d\u0017m\u001d;aA%t7\u000f^3bI:Ba\u0001\u0019\u0001!\u0002\u001bq\u0011\u0001\u00047bgR,E.Z7f]R\u0004\u0003b\u00022\u0001\u0005\u0004%)!J\u0001\u0010i\u0016\u0014X.\u001b8bY\u0016cW-\\3oi\"\"\u0011-\u00153WC\u0005)\u0017!\t+iSN\u0004S.\u001a;i_\u0012\u0004s/\u001b7mA\t,\u0007%\\1eK\u0002\u0002(/\u001b<bi\u0016t\u0003BB4\u0001A\u00035a\"\u0001\tuKJl\u0017N\\1m\u000b2,W.\u001a8uA!)\u0011\u000e\u0001C!K\u0005!A.Y:u\u0011\u0015Y\u0007\u0001\"\u0011&\u0003\u0011AW-\u00193\t\u000b5\u0004A\u0011\t8\u0002\u00075Lg.\u0006\u0002pwR\u0011a\u0002\u001d\u0005\u0006c2\u0004\u001dA]\u0001\u0004_J$\u0007cA:ws:\u0011q\u0002^\u0005\u0003k\u001a\tq\u0001]1dW\u0006<W-\u0003\u0002xq\nAqJ\u001d3fe&twM\u0003\u0002v\rA\u0011!p\u001f\u0007\u0001\t\u0015aHN1\u0001~\u0005\t\t\u0015\'\u0005\u0002\u000f}B\u0011qb`\u0005\u0004\u0003\u00031!aA!os\"9\u0011Q\u0001\u0001\u0005B\u0005\u001d\u0011aA7bqV!\u0011\u0011BA\t)\rq\u00111\u0002\u0005\u0008c\u0006\r\u00019AA\u0007!\u0011\u0019h/a\u0004\u0011\u0007i\u000c\t\u0002\u0002\u0004}\u0003\u0007\u0011\r! \u0005\u0008\u0003+\u0001A\u0011CA\u000c\u0003\u0011\u0019w\u000e]=\u0015\u000fM\nI\"a\u0007\u0002\u001e!1A%a\u0005A\u00029Aa!KA\n\u0001\u0004q\u0001BB\u0017\u0002\u0014\u0001\u0007a\u0002C\u0004\u0002\"\u0001!\t!a\t\u0002\u0005\tLHcA\u001a\u0002&!1Q&a\u0008A\u00029Aa!!\u000b\u0001\t\u0003\u0011\u0015aC5t\u0013:\u001cG.^:jm\u0016Da!!\u000c\u0001\t\u0003*\u0013\u0001B:ju\u0016Da!!\r\u0001\t\u0003*\u0013A\u00027f]\u001e$\u0008\u000eC\u0004\u00026\u0001!I!a\u000e\u0002\u0017\u0011,7o\u0019:jaRLwN\\\u000b\u0003\u0003s\u0001B!a\u000f\u0002B9\u0019q\"!\u0010\n\u0007\u0005}b!\u0001\u0004Qe\u0016$WMZ\u0005\u0005\u0003\u0007\n)E\u0001\u0004TiJLgn\u001a\u0006\u0004\u0003\u007f1\u0001bBA%\u0001\u0011%\u00111J\u0001\u0005M\u0006LG\u000e\u0006\u0002\u0002NA\u0019q\"a\u0014\n\u0007\u0005EcAA\u0004O_RD\u0017N\\4\t\u001d\u0005U\u0003\u0001\"A\u0001\u0006\u0003\u0005\t\u0011\"\u0003\u0002X\u0005\u00194oY1mC\u0012\u001aw\u000e\u001c7fGRLwN\u001c\u0013j[6,H/\u00192mK\u0012\u0012\u0016M\\4fI\u00112\u0018\r\\5eCR,W*\u0019=MK:<G\u000f\u001b\u000b\u0003\u00033\u00022aDA.\u0013\r\tiF\u0002\u0002\u0005+:LG\u000fC\u0004\u0002b\u0001!)!a\u0019\u0002\u000b\u0005\u0004\u0008\u000f\\=\u0015\u00079\t)\u0007C\u0004\u0002h\u0005}\u0003\u0019\u0001\u0008\u0002\u0007%$\u0007\u0010C\u0004\u0002l\u0001!)%!\u001c\u0002\u000f\u0019|\'/Z1dQV!\u0011qNA?)\u0011\tI&!\u001d\t\u0011\u0005M\u0014\u0011\u000ea\u0001\u0003k\n\u0011A\u001a\t\u0007\u001f\u0005]d\"a\u001f\n\u0007\u0005edAA\u0005Gk:\u001cG/[8ocA\u0019!0! \u0005\u0019\u0005}\u0014\u0011\u000eQ\u0001\u0002\u0003\u0015\r!!!\u0003\u0003U\u000b2!!\u0014\u007fQ\u0019\ti(!\"\u0002\u000cB\u0019q\"a\"\n\u0007\u0005%eAA\u0006ta\u0016\u001c\u0017.\u00197ju\u0016$\u0017g\u0002\u0013\u0002\u000e\u0006=\u0015\u0011\u0013\u0008\u0004\u001f\u0005=\u0015bAAI\r\u0005!QK\\5uQ\u0011\tI\'!&\u0011\u0007=\t9*C\u0002\u0002\u001a\u001a\u0011a!\u001b8mS:,\u0007bBAO\u0001\u0011\u0015\u0013qT\u0001\u0005i\u0006\\W\rF\u00024\u0003CCq!a)\u0002\u001c\u0002\u0007a\"A\u0001o\u0011\u001d\t9\u000b\u0001C#\u0003S\u000bA\u0001\u001a:paR\u00191\'a+\t\u000f\u0005\r\u0016Q\u0015a\u0001\u001d!9\u0011q\u0016\u0001\u0005F\u0005E\u0016\u0001B5oSR,\u0012a\r\u0005\u0008\u0003k\u0003AQIAY\u0003\u0011!\u0018-\u001b7\t\u000f\u0005e\u0006\u0001\"\u0003\u0002<\u0006a\u0011M]4UC.,w\u000b[5mKR\u0019Q(!0\t\u0011\u0005}\u0016q\u0017a\u0001\u0003\u0003\u000c\u0011\u0001\u001d\t\u0006\u001f\u0005]db\u0011\u0005\u0008\u0003\u000b\u0004A\u0011BAd\u00039awnY1uS>t\u0017I\u001a;fe:#2ADAe\u0011\u001d\t\u0019+a1A\u00029Aq!!4\u0001\t\u0013\ty-A\u0007oK^,U\u000e\u001d;z%\u0006tw-\u001a\u000b\u0004g\u0005E\u0007bBAj\u0003\u0017\u0004\rAD\u0001\u0006m\u0006dW/\u001a\u0005\u0008\u0003/\u0004AQIAm\u0003%!\u0018m[3XQ&dW\rF\u00024\u00037D\u0001\"a0\u0002V\u0002\u0007\u0011\u0011\u0019\u0005\u0008\u0003?\u0004AQIAq\u0003%!\'o\u001c9XQ&dW\rF\u00024\u0003GD\u0001\"a0\u0002^\u0002\u0007\u0011\u0011\u0019\u0005\u0008\u0003O\u0004AQIAu\u0003\u0011\u0019\u0008/\u00198\u0015\t\u0005-\u0018\u0011\u001f\t\u0006\u001f\u000558gM\u0005\u0004\u0003_4!A\u0002+va2,\'\u0007\u0003\u0005\u0002@\u0006\u0015\u0008\u0019AAa\u0011\u001d\t)\u0010\u0001C#\u0003o\u000cqa\u001d9mSR\u000cE\u000f\u0006\u0003\u0002l\u0006e\u0008bBAR\u0003g\u0004\rA\u0004\u0005\u0008\u0003{\u0004AQIA\u0000\u0003%!\u0018m[3SS\u001eDG\u000fF\u00024\u0005\u0003Aq!a)\u0002|\u0002\u0007a\u0002C\u0004\u0003\u0006\u0001!)Ea\u0002\u0002\u0013\u0011\u0014x\u000e\u001d*jO\"$HcA\u001a\u0003\n!9\u00111\u0015B\u0002\u0001\u0004q\u0001b\u0002B\u0007\u0001\u0011\u0015\u0013\u0011W\u0001\u0008e\u00164XM]:f\u0011\u001d\u0011\t\u0002\u0001C\u0001\u0003c\u000b\u0011\"\u001b8dYV\u001c\u0018N^3\t\u000f\tU\u0001\u0001\"\u0002\u0003\u0018\u0005A1m\u001c8uC&t7\u000fF\u0002D\u00053AqAa\u0007\u0003\u0014\u0001\u0007a\"A\u0001y\u0011\u001d\u0011y\u0002\u0001C#\u0005C\t1a];n+\u0011\u0011\u0019C!\r\u0015\u00079\u0011)\u0003\u0003\u0005\u0003(\tu\u00019\u0001B\u0015\u0003\rqW/\u001c\t\u0006g\n-\"qF\u0005\u0004\u0005[A(a\u0002(v[\u0016\u0014\u0018n\u0019\t\u0004u\nEBa\u0002B\u001a\u0005;\u0011\r! \u0002\u0002\u0005\"9!q\u0007\u0001\u0005B\u0005E\u0016A\u0003;p\u0013R,\'/\u00192mK\"9!1\u0008\u0001\u0005B\u0005E\u0016!\u0002;p\'\u0016\u000c\u0008b\u0002B \u0001\u0011\u0005#\u0011I\u0001\u0007KF,\u0018\r\\:\u0015\u0007\r\u0013\u0019\u0005C\u0004\u0003F\tu\u0002\u0019\u0001@\u0002\u000b=$\u0008.\u001a:\t\u000f\t%\u0003\u0001\"\u0011\u0003L\u0005AAo\\*ue&tw\r\u0006\u0002\u0002:!:\u0001Aa\u0014\u0003V\te\u0003cA\u0008\u0003R%\u0019!1\u000b\u0004\u0003+\u0011,\u0007O]3dCR,G-\u00138iKJLG/\u00198dK\u0006\u0012!qK\u0001E)\",\u0007%[7qY\u0016lWM\u001c;bi&|g\u000e\t3fi\u0006LGn\u001d\u0011pM\u0002\u0012\u0016M\\4fA5\u000c7.Z:!S:DWM]5uS:<\u0007E\u001a:p[\u0002JG\u000fI;oo&\u001cXML\u0011\u0003\u00057\naA\r\u00182c9\u0002\u0004f\u0002\u0001\u0003`\u0005M\'Q\r\t\u0004\u001f\t\u0005\u0014b\u0001B2\r\t\u00012+\u001a:jC24VM]:j_:,\u0016\n\u0012\u0010\tSn\u001eKkk\u000b3\u001b\u001d9!\u0011\u000e\u0002\t\u0002\t-\u0014!\u0002*b]\u001e,\u0007cA\n\u0003n\u00191\u0011A\u0001E\u0001\u0005_\u001aRA!\u001c\u0003r\u0001\u00022a\u0004B:\u0013\r\u0011)H\u0002\u0002\u0007\u0003:L(+\u001a4\t\u000fE\u0012i\u0007\"\u0001\u0003zQ\u0011!1\u000e\u0005\u000b\u0005{\u0012iG1A\u0005\u0002\t)\u0013!C\'B1~\u0003&+\u0013(U\u0011!\u0011\tI!\u001c!\u0002\u0013q\u0011AC\'B1~\u0003&+\u0013(UA!A!Q\u0011B7\t\u0003\u00119)A\u0003d_VtG\u000fF\u0005\u000f\u0005\u0013\u0013YI!$\u0003\u0010\"1AEa!A\u00029Aa!\u000bBB\u0001\u0004q\u0001BB\u0017\u0003\u0004\u0002\u0007a\u0002C\u0004\u0002*\t\r\u0005\u0019A\"\t\u0011\t\u0015%Q\u000eC\u0001\u0005\'#rA\u0004BK\u0005/\u0013I\n\u0003\u0004%\u0005#\u0003\rA\u0004\u0005\u0007S\tE\u0005\u0019\u0001\u0008\t\r5\u0012\t\n1\u0001\u000f\r\u001d\u0011iJ!\u001c\u0001\u0005?\u0013\u0011\"\u00138dYV\u001c\u0018N^3\u0014\u0007\tm5\u0007\u0003\u0006%\u00057\u0013\t\u0011)A\u0005\u001d\rB!\"\u000bBN\u0005\u0003\u0005\u000b\u0011\u0002\u0008)\u0011)i#1\u0014B\u0001B\u0003%a\u0002\u000c\u0005\u0008c\tmE\u0011\u0001BU)!\u0011YKa,\u00032\nM\u0006\u0003\u0002BW\u00057k!A!\u001c\t\r\u0011\u00129\u000b1\u0001\u000f\u0011\u0019I#q\u0015a\u0001\u001d!1QFa*A\u00029Aq!!\u000b\u0003\u001c\u0012\u0005#\t\u0003\u0005\u0002\u0016\tmE\u0011\u000bB])\u001d\u0019$1\u0018B_\u0005\u007fCa\u0001\nB\\\u0001\u0004q\u0001BB\u0015\u00038\u0002\u0007a\u0002\u0003\u0004.\u0005o\u0003\rA\u0004\u0005\t\u0003C\u0012i\u0007\"\u0001\u0003DR91G!2\u0003H\n%\u0007B\u0002\u0013\u0003B\u0002\u0007a\u0002\u0003\u0004*\u0005\u0003\u0004\rA\u0004\u0005\u0007[\t\u0005\u0007\u0019\u0001\u0008\t\u0011\u0005\u0005$Q\u000eC\u0001\u0005\u001b$Ra\rBh\u0005#Da\u0001\nBf\u0001\u0004q\u0001BB\u0015\u0003L\u0002\u0007a\u0002\u0003\u0005\u0003\u0012\t5D\u0011\u0001Bk)!\u00119Na7\u0003^\n}\u0007\u0003\u0002Bm\u00057s1a\u0005B4\u0011\u0019!#1\u001ba\u0001\u001d!1\u0011Fa5A\u00029Aa!\u000cBj\u0001\u0004q\u0001\u0002\u0003B\t\u0005[\"\tAa9\u0015\r\t]\'Q\u001dBt\u0011\u0019!#\u0011\u001da\u0001\u001d!1\u0011F!9A\u000299\u0001Ba;\u0003n!\u0005!Q^\u0001\u0007\u0005&<\u0017J\u001c;\u0011\t\t5&q\u001e\u0004\t\u0005c\u0014i\u0007#\u0001\u0003t\n1!)[4J]R\u001cBAa<\u0003r!9\u0011Ga<\u0005\u0002\t]HC\u0001Bw\u0011!\t\tGa<\u0005\u0002\tmH\u0003\u0003B\u007f\u0007\u001f\u0019\tba\u0005\u0011\r\t}8QAB\u0006\u001d\r\u00192\u0011A\u0005\u0004\u0007\u0007\u0011\u0011\u0001\u0004(v[\u0016\u0014\u0018n\u0019*b]\u001e,\u0017\u0002BB\u0004\u0007\u0013\u0011\u0011\"\u0012=dYV\u001c\u0018N^3\u000b\u0007\r\r!\u0001E\u0002t\u0007\u001bI1A!=y\u0011\u001d!#\u0011 a\u0001\u0007\u0017Aq!\u000bB}\u0001\u0004\u0019Y\u0001C\u0004.\u0005s\u0004\raa\u0003\t\u0011\tE!q\u001eC\u0001\u0007/!\u0002b!\u0007\u0004\u001e\r}1\u0011\u0005\t\u0007\u0005\u007f\u001cYba\u0003\n\t\tu5\u0011\u0002\u0005\u0008I\rU\u0001\u0019AB\u0006\u0011\u001dI3Q\u0003a\u0001\u0007\u0017Aq!LB\u000b\u0001\u0004\u0019Ya\u0002\u0005\u0004&\t5\u0004\u0012AB\u0014\u0003\u0011auN\\4\u0011\t\t56\u0011\u0006\u0004\u0008\u007f\t5\u0004\u0012AB\u0016\'\u0011\u0019IC!\u001d\t\u000fE\u001aI\u0003\"\u0001\u00040Q\u00111q\u0005\u0005\t\u0003C\u001aI\u0003\"\u0001\u00044QA1QGB\u001c\u0007s\u0019Y\u0004E\u0003\u0003\u0000\u000e\u0015Q\u0008\u0003\u0004%\u0007c\u0001\r!\u0010\u0005\u0007S\rE\u0002\u0019A\u001f\t\r5\u001a\t\u00041\u0001>\u0011!\u0011\tb!\u000b\u0005\u0002\r}B\u0003CB!\u0007\u0007\u001a)ea\u0012\u0011\u000b\t}81D\u001f\t\r\u0011\u001ai\u00041\u0001>\u0011\u0019I3Q\u0008a\u0001{!1Qf!\u0010A\u0002u:\u0001ba\u0013\u0003n!\u00051QJ\u0001\u000b\u0005&<G)Z2j[\u0006d\u0007\u0003\u0002BW\u0007\u001f2\u0001b!\u0015\u0003n!\u000511\u000b\u0002\u000b\u0005&<G)Z2j[\u0006d7\u0003BB(\u0005cBq!MB(\t\u0003\u00199\u0006\u0006\u0002\u0004N!Q11LB(\u0005\u0004%\u0019a!\u0018\u0002!\tLw\rR3d\u0003NLe\u000e^3he\u0006dWCAB0\u001d\u0011\u0019\tg!\u001f\u000f\t\r\r41\u000f\u0008\u0005\u0007K\u001ayG\u0004\u0003\u0004h\r5TBAB5\u0015\r\u0019Y\u0007C\u0001\u0007yI|w\u000e\u001e \n\u0003\u001dI1a!\u001d\u0007\u0003\u0011i\u0017\r\u001e5\n\t\rU4qO\u0001\u0008\u001dVlWM]5d\u0015\r\u0019\tHB\u0005\u0005\u0007w\u001ai(\u0001\u000cCS\u001e$UmY5nC2\u000c5/\u00134J]R,wM]1m\u0015\u0011\u0019)ha\u001e\t\u0013\r\u00055q\nQ\u0001\n\r}\u0013!\u00052jO\u0012+7-Q:J]R,wM]1mA!A\u0011\u0011MB(\t\u0003\u0019)\t\u0006\u0005\u0004\u0008\u000e55qRBI!\u0019\u0011yp!\u0002\u0004\nB\u00191oa#\n\u0007\rE\u0003\u0010C\u0004%\u0007\u0007\u0003\ra!#\t\u000f%\u001a\u0019\t1\u0001\u0004\n\"9Qfa!A\u0002\r%\u0005\u0002\u0003B\t\u0007\u001f\"\ta!&\u0015\u0011\r]5\u0011TBN\u0007;\u0003bAa@\u0004\u001c\r%\u0005b\u0002\u0013\u0004\u0014\u0002\u00071\u0011\u0012\u0005\u0008S\rM\u0005\u0019ABE\u0011\u001di31\u0013a\u0001\u0007\u0013;\u0001b!)\u0003n!\u000511U\u0001\u0007\t>,(\r\\3\u0011\t\t56Q\u0015\u0004\t\u0007O\u0013i\u0007#\u0001\u0004*\n1Ai\\;cY\u0016\u001cBa!*\u0003r!9\u0011g!*\u0005\u0002\r5FCABR\u0011)\u0019Yf!*C\u0002\u0013\r1Q\u000c\u0005\n\u0007\u0003\u001b)\u000b)A\u0005\u0007?B!b!.\u0004&\n\u0007I1AB\\\u0003A!w.\u001e2mK\u0006\u001b\u0018J\u001c;fOJ\u000cG.\u0006\u0002\u0004::!1\u0011MB^\u0013\u0011\u0019il! \u0002%\u0011{WO\u00197f\u0003NLe-\u00138uK\u001e\u0014\u0018\r\u001c\u0005\n\u0007\u0003\u001c)\u000b)A\u0005\u0007s\u000b\u0011\u0003Z8vE2,\u0017i]%oi\u0016<\'/\u00197!\u0011!\u0019)m!*\u0005\u0002\r\u001d\u0017\u0001\u0002;p\u0005\u0012#Ba!#\u0004J\"A!1DBb\u0001\u0004\u0019Y\rE\u0002\u0010\u0007\u001bL1aa*\u0007\u0011!\t\tg!*\u0005\u0002\rEG\u0003CBj\u00073\u001cYn!8\u0011\u000bM\u0019)na3\n\u0007\r]\'A\u0001\u0007Ok6,\'/[2SC:<W\rC\u0004%\u0007\u001f\u0004\raa3\t\u000f%\u001ay\r1\u0001\u0004L\"9Qfa4A\u0002\r-\u0007\u0002\u0003B\t\u0007K#\ta!9\u0015\u0011\rM71]Bs\u0007ODq\u0001JBp\u0001\u0004\u0019Y\rC\u0004*\u0007?\u0004\raa3\t\u000f5\u001ay\u000e1\u0001\u0004L\u001a911\u001eB7\u0001\r5(a\u0002)beRL\u0017\r\\\u000b\u0007\u0007_\u001c9p!@\u0014\t\r%(\u0011\u000f\u0005\u000c\u0003g\u001aIO!A!\u0002\u0013\u0019\u0019\u0010E\u0004\u0010\u0003o\u001a)pa?\u0011\u0007i\u001c9\u0010\u0002\u0005\u0004z\u000e%(\u0019AAA\u0005\u0005!\u0006c\u0001>\u0004~\u0012A\u0011qPBu\u0005\u0004\t\t\tC\u00042\u0007S$\t\u0001\"\u0001\u0015\t\u0011\rAQ\u0001\t\t\u0005[\u001bIo!>\u0004|\"A\u00111OB\u0000\u0001\u0004\u0019\u0019\u0010\u0003\u0005\u0002\"\r%H\u0011\u0001C\u0005)\u0011\u0019Y\u0010b\u0003\t\u0011\tmAq\u0001a\u0001\u0007k<\u0001\u0002b\u0004\u0003n!\u0005A\u0011C\u0001\u0004\u0013:$\u0008\u0003\u0002BW\t\'1q!\u0005B7\u0011\u0003!)b\u0005\u0003\u0005\u0014\tE\u0004bB\u0019\u0005\u0014\u0011\u0005A\u0011\u0004\u000b\u0003\t#A\u0001\"!\u0019\u0005\u0014\u0011\u0005AQ\u0004\u000b\t\t?!\t\u0003b\t\u0005&A)!q`B\u0003\u001d!1A\u0005b\u0007A\u00029Aa!\u000bC\u000e\u0001\u0004q\u0001BB\u0017\u0005\u001c\u0001\u0007a\u0002\u0003\u0005\u0003\u0012\u0011MA\u0011\u0001C\u0015)!!Y\u0003\"\u000c\u00050\u0011E\u0002#\u0002B\u0000\u00077q\u0001B\u0002\u0013\u0005(\u0001\u0007a\u0002\u0003\u0004*\tO\u0001\rA\u0004\u0005\u0007[\u0011\u001d\u0002\u0019\u0001\u0008\t\u0015\u0011U\"QNA\u0001\n\u0013!9$A\u0006sK\u0006$\'+Z:pYZ,GC\u0001C\u001d!\u0011!Y\u0004\"\u0012\u000e\u0005\u0011u\"\u0002\u0002C \t\u0003\nA\u0001\\1oO*\u0011A1I\u0001\u0005U\u00064\u0018-\u0003\u0003\u0005H\u0011u\"AB(cU\u0016\u001cG\u000f"
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x69bba354ab15320dL


# instance fields
.field private final end:I

.field private final isEmpty:Z

.field private final lastElement:I

.field private final numRangeElements:I

.field private final start:I

.field private final step:I

.field private final terminalElement:I


# direct methods
.method public constructor <init>(III)V
    .locals 8

    .line 61
    iput p1, p0, Lscala/collection/immutable/Range;->start:I

    iput p2, p0, Lscala/collection/immutable/Range;->end:I

    iput p3, p0, Lscala/collection/immutable/Range;->step:I

    .line 62
    invoke-direct {p0}, Lscala/collection/AbstractSeq;-><init>()V

    invoke-static {p0}, Lscala/collection/immutable/Traversable$class;->$init$(Lscala/collection/immutable/Traversable;)V

    invoke-static {p0}, Lscala/collection/immutable/Iterable$class;->$init$(Lscala/collection/immutable/Iterable;)V

    invoke-static {p0}, Lscala/collection/immutable/Seq$class;->$init$(Lscala/collection/immutable/Seq;)V

    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->$init$(Lscala/collection/IndexedSeqLike;)V

    invoke-static {p0}, Lscala/collection/IndexedSeq$class;->$init$(Lscala/collection/IndexedSeq;)V

    invoke-static {p0}, Lscala/collection/immutable/IndexedSeq$class;->$init$(Lscala/collection/immutable/IndexedSeq;)V

    invoke-static {p0}, Lscala/collection/CustomParallelizable$class;->$init$(Lscala/collection/CustomParallelizable;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p1, p2, :cond_0

    if-gtz p3, :cond_2

    :cond_0
    if-ge p1, p2, :cond_1

    if-ltz p3, :cond_2

    :cond_1
    if-ne p1, p2, :cond_3

    .line 82
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->isInclusive()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lscala/collection/immutable/Range;->isEmpty:Z

    if-eqz p3, :cond_d

    .line 87
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->isEmpty()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_4

    goto :goto_1

    .line 89
    :cond_4
    invoke-direct {p0}, Lscala/collection/immutable/Range;->longLength()J

    move-result-wide v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v0, v4, v6

    if-lez v0, :cond_5

    const/4 v0, -0x1

    goto :goto_1

    :cond_5
    long-to-int v0, v4

    .line 85
    :goto_1
    iput v0, p0, Lscala/collection/immutable/Range;->numRangeElements:I

    .line 96
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    sub-int p2, p1, p3

    goto :goto_2

    :cond_6
    if-eq p3, v3, :cond_b

    if-eq p3, v1, :cond_9

    .line 101
    invoke-direct {p0}, Lscala/collection/immutable/Range;->gap()J

    move-result-wide v0

    int-to-long v2, p3

    rem-long/2addr v0, v2

    long-to-int p1, v0

    if-eqz p1, :cond_7

    sub-int/2addr p2, p1

    goto :goto_2

    .line 103
    :cond_7
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->isInclusive()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_8
    sub-int/2addr p2, p3

    goto :goto_2

    .line 98
    :cond_9
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->isInclusive()Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_2

    :cond_a
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    .line 99
    :cond_b
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->isInclusive()Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_2

    :cond_c
    add-int/lit8 p2, p2, 0x1

    .line 95
    :goto_2
    iput p2, p0, Lscala/collection/immutable/Range;->lastElement:I

    .line 108
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->lastElement()I

    move-result p1

    add-int/2addr p1, p3

    iput p1, p0, Lscala/collection/immutable/Range;->terminalElement:I

    return-void

    .line 86
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "step cannot be 0."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private argTakeWhile(Lscala/Function1;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)J"
        }
    .end annotation

    .line 234
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->start()I

    move-result p1

    int-to-long v0, p1

    goto :goto_1

    .line 236
    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->start()I

    move-result v0

    .line 237
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->last()I

    move-result v1

    :goto_0
    if-eq v0, v1, :cond_1

    .line 238
    invoke-interface {p1, v0}, Lscala/Function1;->apply$mcZI$sp(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->step()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    .line 239
    invoke-interface {p1, v0}, Lscala/Function1;->apply$mcZI$sp(I)Z

    move-result p1

    if-eqz p1, :cond_2

    int-to-long v0, v0

    .line 240
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->step()I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    goto :goto_1

    :cond_2
    int-to-long v0, v0

    :goto_1
    return-wide v0
.end method

.method private description()Ljava/lang/String;
    .locals 5

    .line 142
    new-instance v0, Lscala/collection/immutable/StringOps;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v1, "%d %s %d by %s"

    invoke-direct {v0, v1}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->start()I

    move-result v3

    invoke-static {v3}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->isInclusive()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "to"

    goto :goto_0

    :cond_0
    const-string v3, "until"

    :goto_0
    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->end()I

    move-result v4

    invoke-static {v4}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->step()I

    move-result v4

    invoke-static {v4}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/immutable/StringOps;->format(Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private fail()Lscala/runtime/Nothing$;
    .locals 3

    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-direct {p0}, Lscala/collection/immutable/Range;->description()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    const-string v2, ": seqs cannot contain more than Int.MaxValue elements."

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private gap()J
    .locals 4

    .line 69
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->end()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->start()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private hasStub()Z
    .locals 1

    .line 71
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->isInclusive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/collection/immutable/Range;->isExact()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private isExact()Z
    .locals 5

    .line 70
    invoke-direct {p0}, Lscala/collection/immutable/Range;->gap()J

    move-result-wide v0

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->step()I

    move-result v2

    int-to-long v2, v2

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private locationAfterN(I)I
    .locals 2

    .line 245
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->start()I

    move-result v0

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->step()I

    move-result v1

    mul-int v1, v1, p1

    add-int/2addr v0, v1

    return v0
.end method

.method private longLength()J
    .locals 4

    .line 72
    invoke-direct {p0}, Lscala/collection/immutable/Range;->gap()J

    move-result-wide v0

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->step()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    invoke-direct {p0}, Lscala/collection/immutable/Range;->hasStub()Z

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private newEmptyRange(I)Lscala/collection/immutable/Range;
    .locals 2

    .line 251
    new-instance v0, Lscala/collection/immutable/Range;

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->step()I

    move-result v1

    invoke-direct {v0, p1, p1, v1}, Lscala/collection/immutable/Range;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method public final apply(I)I
    .locals 0

    .line 149
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Range;->apply$mcII$sp(I)I

    move-result p1

    return p1
.end method

.method public final bridge synthetic apply(I)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Range;->apply(I)I

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/Range;->apply(I)I

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public apply$mcII$sp(I)I
    .locals 2

    .line 150
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->scala$collection$immutable$Range$$validateMaxLength()V

    if-ltz p1, :cond_0

    .line 151
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->numRangeElements()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->start()I

    move-result v0

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->step()I

    move-result v1

    mul-int v1, v1, p1

    add-int/2addr v0, v1

    return v0

    .line 151
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public by(I)Lscala/collection/immutable/Range;
    .locals 2

    .line 135
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->start()I

    move-result v0

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->end()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lscala/collection/immutable/Range;->copy(III)Lscala/collection/immutable/Range;

    move-result-object p1

    return-object p1
.end method

.method public companion()Lscala/collection/generic/GenericCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion<",
            "Lscala/collection/immutable/IndexedSeq;",
            ">;"
        }
    .end annotation

    .line 61
    invoke-static {p0}, Lscala/collection/immutable/IndexedSeq$class;->companion(Lscala/collection/immutable/IndexedSeq;)Lscala/collection/generic/GenericCompanion;

    move-result-object v0

    return-object v0
.end method

.method public final contains(I)Z
    .locals 4

    .line 334
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->end()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->isInclusive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    .line 335
    :cond_1
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->step()I

    move-result v0

    if-lez v0, :cond_3

    .line 336
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->start()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->end()I

    move-result v0

    if-le p1, v0, :cond_2

    goto :goto_0

    .line 337
    :cond_2
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->step()I

    move-result v0

    if-eq v0, v1, :cond_5

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->start()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->step()I

    move-result v0

    rem-int/2addr p1, v0

    if-nez p1, :cond_0

    goto :goto_1

    .line 340
    :cond_3
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->end()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->start()I

    move-result v0

    if-le p1, v0, :cond_4

    goto :goto_0

    .line 341
    :cond_4
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->step()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_5

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->start()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->step()I

    move-result v0

    rem-int/2addr p1, v0

    if-nez p1, :cond_0

    :cond_5
    :goto_1
    return v1
.end method

.method public copy(III)Lscala/collection/immutable/Range;
    .locals 1

    .line 128
    new-instance v0, Lscala/collection/immutable/Range;

    invoke-direct {v0, p1, p2, p3}, Lscala/collection/immutable/Range;-><init>(III)V

    return-object v0
.end method

.method public final bridge synthetic drop(I)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Range;->drop(I)Lscala/collection/immutable/Range;

    move-result-object p1

    return-object p1
.end method

.method public final drop(I)Lscala/collection/immutable/Range;
    .locals 2

    if-lez p1, :cond_2

    .line 197
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->numRangeElements()I

    move-result v0

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->numRangeElements()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->end()I

    move-result p1

    invoke-direct {p0, p1}, Lscala/collection/immutable/Range;->newEmptyRange(I)Lscala/collection/immutable/Range;

    move-result-object p1

    goto :goto_1

    .line 202
    :cond_1
    invoke-direct {p0, p1}, Lscala/collection/immutable/Range;->locationAfterN(I)I

    move-result p1

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->end()I

    move-result v0

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->step()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lscala/collection/immutable/Range;->copy(III)Lscala/collection/immutable/Range;

    move-result-object p1

    goto :goto_1

    :cond_2
    :goto_0
    move-object p1, p0

    :goto_1
    return-object p1
.end method

.method public final bridge synthetic dropRight(I)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Range;->dropRight(I)Lscala/collection/immutable/Range;

    move-result-object p1

    return-object p1
.end method

.method public final dropRight(I)Lscala/collection/immutable/Range;
    .locals 3

    if-gtz p1, :cond_0

    move-object p1, p0

    goto :goto_0

    .line 310
    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->numRangeElements()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->numRangeElements()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Range;->take(I)Lscala/collection/immutable/Range;

    move-result-object p1

    goto :goto_0

    .line 313
    :cond_1
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->last()I

    move-result v0

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->step()I

    move-result v1

    mul-int v1, v1, p1

    sub-int/2addr v0, v1

    .line 314
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->step()I

    move-result p1

    if-lez p1, :cond_2

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->start()I

    move-result p1

    if-lt v0, p1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->step()I

    move-result p1

    if-gez p1, :cond_4

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->start()I

    move-result p1

    if-le v0, p1, :cond_4

    :cond_3
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->start()I

    move-result p1

    invoke-direct {p0, p1}, Lscala/collection/immutable/Range;->newEmptyRange(I)Lscala/collection/immutable/Range;

    move-result-object p1

    goto :goto_0

    .line 315
    :cond_4
    new-instance p1, Lscala/collection/immutable/Range$Inclusive;

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->start()I

    move-result v1

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->step()I

    move-result v2

    invoke-direct {p1, v1, v0, v2}, Lscala/collection/immutable/Range$Inclusive;-><init>(III)V

    :goto_0
    return-object p1
.end method

.method public final bridge synthetic dropWhile(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Range;->dropWhile(Lscala/Function1;)Lscala/collection/immutable/Range;

    move-result-object p1

    return-object p1
.end method

.method public final dropWhile(Lscala/Function1;)Lscala/collection/immutable/Range;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/immutable/Range;"
        }
    .end annotation

    .line 263
    invoke-direct {p0, p1}, Lscala/collection/immutable/Range;->argTakeWhile(Lscala/Function1;)J

    move-result-wide v0

    .line 264
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->start()I

    move-result p1

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    move-object p1, p0

    goto :goto_0

    .line 266
    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->step()I

    move-result p1

    int-to-long v2, p1

    sub-long/2addr v0, v2

    long-to-int p1, v0

    .line 267
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->last()I

    move-result v0

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->last()I

    move-result p1

    invoke-direct {p0, p1}, Lscala/collection/immutable/Range;->newEmptyRange(I)Lscala/collection/immutable/Range;

    move-result-object p1

    goto :goto_0

    .line 268
    :cond_1
    new-instance v0, Lscala/collection/immutable/Range$Inclusive;

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->step()I

    move-result v1

    add-int/2addr p1, v1

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->last()I

    move-result v1

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->step()I

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lscala/collection/immutable/Range$Inclusive;-><init>(III)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public end()I
    .locals 1

    .line 61
    iget v0, p0, Lscala/collection/immutable/Range;->end:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 370
    instance-of v0, p1, Lscala/collection/immutable/Range;

    if-eqz v0, :cond_5

    check-cast p1, Lscala/collection/immutable/Range;

    .line 373
    invoke-virtual {p1, p0}, Lscala/collection/immutable/Range;->canEqual(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 374
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lscala/collection/immutable/Range;->isEmpty()Z

    move-result p1

    goto :goto_1

    .line 376
    :cond_0
    invoke-virtual {p1}, Lscala/collection/immutable/Range;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->start()I

    move-result v0

    invoke-virtual {p1}, Lscala/collection/immutable/Range;->start()I

    move-result v3

    if-ne v0, v3, :cond_3

    .line 377
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->last()I

    move-result v0

    .line 378
    invoke-virtual {p1}, Lscala/collection/immutable/Range;->last()I

    move-result v3

    if-ne v0, v3, :cond_2

    .line 379
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->start()I

    move-result v3

    if-eq v3, v0, :cond_1

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->step()I

    move-result v0

    invoke-virtual {p1}, Lscala/collection/immutable/Range;->step()I

    move-result p1

    if-ne v0, p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 384
    :cond_5
    invoke-static {p0, p1}, Lscala/collection/GenSeqLike$class;->equals(Lscala/collection/GenSeqLike;Ljava/lang/Object;)Z

    move-result v1

    :goto_2
    return v1
.end method

.method public final foreach(Lscala/Function1;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "TU;>;)V"
        }
    .end annotation

    .line 156
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->scala$collection$immutable$Range$$validateMaxLength()V

    .line 157
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->start()I

    move-result v0

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->end()I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 158
    :goto_1
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->start()I

    move-result v1

    .line 160
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->terminalElement()I

    move-result v4

    .line 161
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->step()I

    move-result v5

    const/4 v6, 0x0

    :goto_2
    if-eqz v0, :cond_2

    if-eq v1, v4, :cond_3

    goto :goto_3

    .line 164
    :cond_2
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->numRangeElements()I

    move-result v7

    if-ge v6, v7, :cond_3

    :goto_3
    const/4 v7, 0x1

    goto :goto_4

    :cond_3
    const/4 v7, 0x0

    :goto_4
    if-eqz v7, :cond_4

    .line 166
    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p1, v7}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v1, v5

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final foreach$mVc$sp(Lscala/Function1;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Lscala/runtime/BoxedUnit;",
            ">;)V"
        }
    .end annotation

    .line 156
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->scala$collection$immutable$Range$$validateMaxLength()V

    .line 157
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->start()I

    move-result v0

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->end()I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 158
    :goto_1
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->start()I

    move-result v1

    .line 160
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->terminalElement()I

    move-result v4

    .line 161
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->step()I

    move-result v5

    const/4 v6, 0x0

    :goto_2
    if-eqz v0, :cond_2

    if-eq v1, v4, :cond_3

    goto :goto_3

    .line 164
    :cond_2
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->numRangeElements()I

    move-result v7

    if-ge v6, v7, :cond_3

    :goto_3
    const/4 v7, 0x1

    goto :goto_4

    :cond_3
    const/4 v7, 0x0

    :goto_4
    if-eqz v7, :cond_4

    .line 166
    invoke-interface {p1, v1}, Lscala/Function1;->apply$mcVI$sp(I)V

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v1, v5

    goto :goto_2

    :cond_4
    return-void
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Range;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 61
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->hashCode(Lscala/collection/IndexedSeqLike;)I

    move-result v0

    return v0
.end method

.method public head()I
    .locals 1

    .line 114
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->start()I

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-virtual {v0}, Lscala/collection/immutable/Nil$;->head()Lscala/runtime/Nothing$;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic head()Ljava/lang/Object;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->head()I

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public inclusive()Lscala/collection/immutable/Range;
    .locals 4

    .line 330
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->isInclusive()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 331
    :cond_0
    new-instance v0, Lscala/collection/immutable/Range$Inclusive;

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->start()I

    move-result v1

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->end()I

    move-result v2

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->step()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lscala/collection/immutable/Range$Inclusive;-><init>(III)V

    :goto_0
    return-object v0
.end method

.method public final bridge synthetic init()Ljava/lang/Object;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->init()Lscala/collection/immutable/Range;

    move-result-object v0

    return-object v0
.end method

.method public final init()Lscala/collection/immutable/Range;
    .locals 1

    .line 213
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    sget-object v0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-virtual {v0}, Lscala/collection/immutable/Nil$;->init()Ljava/lang/Object;

    goto :goto_0

    .line 213
    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :goto_0
    const/4 v0, 0x1

    .line 216
    invoke-virtual {p0, v0}, Lscala/collection/immutable/Range;->dropRight(I)Lscala/collection/immutable/Range;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isDefinedAt(Ljava/lang/Object;)Z
    .locals 0

    .line 61
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/Range;->isDefinedAt(I)Z

    move-result p1

    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lscala/collection/immutable/Range;->isEmpty:Z

    return v0
.end method

.method public isInclusive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 61
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->iterator(Lscala/collection/IndexedSeqLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public last()I
    .locals 1

    .line 113
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-virtual {v0}, Lscala/collection/immutable/Nil$;->last()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->lastElement()I

    move-result v0

    :goto_0
    return v0
.end method

.method public bridge synthetic last()Ljava/lang/Object;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->last()I

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final lastElement()I
    .locals 1

    .line 95
    iget v0, p0, Lscala/collection/immutable/Range;->lastElement:I

    return v0
.end method

.method public length()I
    .locals 1

    .line 140
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->numRangeElements()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->numRangeElements()I

    move-result v0

    return v0

    :cond_0
    invoke-direct {p0}, Lscala/collection/immutable/Range;->fail()Lscala/runtime/Nothing$;

    move-result-object v0

    throw v0
.end method

.method public max(Lscala/math/Ordering;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TA1;>;)I"
        }
    .end annotation

    .line 123
    sget-object v0, Lscala/math/Ordering$Int$;->MODULE$:Lscala/math/Ordering$Int$;

    if-ne p1, v0, :cond_1

    .line 124
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->step()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->last()I

    move-result p1

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->head()I

    move-result p1

    goto :goto_0

    .line 126
    :cond_1
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->max(Lscala/collection/TraversableOnce;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public bridge synthetic max(Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Range;->max(Lscala/math/Ordering;)I

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public min(Lscala/math/Ordering;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TA1;>;)I"
        }
    .end annotation

    .line 117
    sget-object v0, Lscala/math/Ordering$Int$;->MODULE$:Lscala/math/Ordering$Int$;

    if-ne p1, v0, :cond_1

    .line 118
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->step()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->head()I

    move-result p1

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->last()I

    move-result p1

    goto :goto_0

    .line 120
    :cond_1
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->min(Lscala/collection/TraversableOnce;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public bridge synthetic min(Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Range;->min(Lscala/math/Ordering;)I

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final numRangeElements()I
    .locals 1

    .line 85
    iget v0, p0, Lscala/collection/immutable/Range;->numRangeElements:I

    return v0
.end method

.method public bridge synthetic par()Lscala/collection/Parallel;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->par()Lscala/collection/parallel/immutable/ParRange;

    move-result-object v0

    return-object v0
.end method

.method public par()Lscala/collection/parallel/immutable/ParRange;
    .locals 1

    .line 67
    new-instance v0, Lscala/collection/parallel/immutable/ParRange;

    invoke-direct {v0, p0}, Lscala/collection/parallel/immutable/ParRange;-><init>(Lscala/collection/immutable/Range;)V

    return-object v0
.end method

.method public parCombiner()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "Ljava/lang/Object;",
            "Lscala/collection/parallel/immutable/ParRange;",
            ">;"
        }
    .end annotation

    .line 61
    invoke-static {p0}, Lscala/collection/CustomParallelizable$class;->parCombiner(Lscala/collection/CustomParallelizable;)Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic reverse()Ljava/lang/Object;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->reverse()Lscala/collection/immutable/Range;

    move-result-object v0

    return-object v0
.end method

.method public final reverse()Lscala/collection/immutable/Range;
    .locals 4

    .line 324
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 325
    :cond_0
    new-instance v0, Lscala/collection/immutable/Range$Inclusive;

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->last()I

    move-result v1

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->start()I

    move-result v2

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->step()I

    move-result v3

    neg-int v3, v3

    invoke-direct {v0, v1, v2, v3}, Lscala/collection/immutable/Range$Inclusive;-><init>(III)V

    :goto_0
    return-object v0
.end method

.method public scala$collection$immutable$Range$$validateMaxLength()V
    .locals 1

    .line 145
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->numRangeElements()I

    move-result v0

    if-ltz v0, :cond_0

    return-void

    .line 146
    :cond_0
    invoke-direct {p0}, Lscala/collection/immutable/Range;->fail()Lscala/runtime/Nothing$;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic seq()Lscala/collection/IndexedSeq;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->seq()Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->seq()Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Seq;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->seq()Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->seq()Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->seq()Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/immutable/IndexedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/IndexedSeq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 61
    invoke-static {p0}, Lscala/collection/immutable/IndexedSeq$class;->seq(Lscala/collection/immutable/IndexedSeq;)Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/immutable/Iterable;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->seq()Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/immutable/Seq;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->seq()Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/immutable/Traversable;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->seq()Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 139
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->length()I

    move-result v0

    return v0
.end method

.method public final span(Lscala/Function1;)Lscala/Tuple2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Tuple2<",
            "Lscala/collection/immutable/Range;",
            "Lscala/collection/immutable/Range;",
            ">;"
        }
    .end annotation

    .line 272
    invoke-direct {p0, p1}, Lscala/collection/immutable/Range;->argTakeWhile(Lscala/Function1;)J

    move-result-wide v0

    .line 273
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->start()I

    move-result p1

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    new-instance p1, Lscala/Tuple2;

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->start()I

    move-result v0

    invoke-direct {p0, v0}, Lscala/collection/immutable/Range;->newEmptyRange(I)Lscala/collection/immutable/Range;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 275
    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->step()I

    move-result p1

    int-to-long v2, p1

    sub-long/2addr v0, v2

    long-to-int p1, v0

    .line 276
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->last()I

    move-result v0

    if-ne p1, v0, :cond_1

    new-instance p1, Lscala/Tuple2;

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->last()I

    move-result v0

    invoke-direct {p0, v0}, Lscala/collection/immutable/Range;->newEmptyRange(I)Lscala/collection/immutable/Range;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 277
    :cond_1
    new-instance v0, Lscala/Tuple2;

    new-instance v1, Lscala/collection/immutable/Range$Inclusive;

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->start()I

    move-result v2

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->step()I

    move-result v3

    invoke-direct {v1, v2, p1, v3}, Lscala/collection/immutable/Range$Inclusive;-><init>(III)V

    new-instance v2, Lscala/collection/immutable/Range$Inclusive;

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->step()I

    move-result v3

    add-int/2addr p1, v3

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->last()I

    move-result v3

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->step()I

    move-result v4

    invoke-direct {v2, p1, v3, v4}, Lscala/collection/immutable/Range$Inclusive;-><init>(III)V

    invoke-direct {v0, v1, v2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public final splitAt(I)Lscala/Tuple2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/Tuple2<",
            "Lscala/collection/immutable/Range;",
            "Lscala/collection/immutable/Range;",
            ">;"
        }
    .end annotation

    .line 286
    new-instance v0, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/immutable/Range;->take(I)Lscala/collection/immutable/Range;

    move-result-object v1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/Range;->drop(I)Lscala/collection/immutable/Range;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public start()I
    .locals 1

    .line 61
    iget v0, p0, Lscala/collection/immutable/Range;->start:I

    return v0
.end method

.method public step()I
    .locals 1

    .line 61
    iget v0, p0, Lscala/collection/immutable/Range;->step:I

    return v0
.end method

.method public final sum(Lscala/math/Numeric;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Numeric<",
            "TB;>;)I"
        }
    .end annotation

    .line 346
    sget-object v0, Lscala/math/Numeric$IntIsIntegral$;->MODULE$:Lscala/math/Numeric$IntIsIntegral$;

    if-ne p1, v0, :cond_2

    .line 348
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 349
    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->numRangeElements()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->head()I

    move-result p1

    goto :goto_1

    .line 350
    :cond_1
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->numRangeElements()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->head()I

    move-result p1

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->last()I

    move-result v2

    add-int/2addr p1, v2

    int-to-long v2, p1

    mul-long v0, v0, v2

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    long-to-int p1, v0

    goto :goto_1

    .line 353
    :cond_2
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lscala/math/Numeric;->zero()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/math/Numeric;->toInt(Ljava/lang/Object;)I

    move-result p1

    goto :goto_1

    .line 355
    :cond_3
    invoke-interface {p1}, Lscala/math/Numeric;->zero()Ljava/lang/Object;

    move-result-object v0

    .line 356
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->head()I

    move-result v1

    .line 357
    :goto_0
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->terminalElement()I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 358
    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Lscala/math/Numeric;->plus(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 359
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->step()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 361
    :cond_4
    invoke-interface {p1, v0}, Lscala/math/Numeric;->toInt(Ljava/lang/Object;)I

    move-result p1

    :goto_1
    return p1
.end method

.method public final bridge synthetic sum(Lscala/math/Numeric;)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Range;->sum(Lscala/math/Numeric;)I

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic tail()Ljava/lang/Object;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->tail()Lscala/collection/immutable/Range;

    move-result-object v0

    return-object v0
.end method

.method public final tail()Lscala/collection/immutable/Range;
    .locals 1

    .line 226
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    sget-object v0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-virtual {v0}, Lscala/collection/immutable/Nil$;->tail()Lscala/collection/immutable/List;

    goto :goto_0

    .line 226
    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :goto_0
    const/4 v0, 0x1

    .line 229
    invoke-virtual {p0, v0}, Lscala/collection/immutable/Range;->drop(I)Lscala/collection/immutable/Range;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic take(I)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Range;->take(I)Lscala/collection/immutable/Range;

    move-result-object p1

    return-object p1
.end method

.method public final take(I)Lscala/collection/immutable/Range;
    .locals 3

    if-lez p1, :cond_2

    .line 180
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->numRangeElements()I

    move-result v0

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->numRangeElements()I

    move-result v0

    if-ltz v0, :cond_1

    move-object v0, p0

    goto :goto_1

    .line 185
    :cond_1
    new-instance v0, Lscala/collection/immutable/Range$Inclusive;

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->start()I

    move-result v1

    add-int/lit8 p1, p1, -0x1

    invoke-direct {p0, p1}, Lscala/collection/immutable/Range;->locationAfterN(I)I

    move-result p1

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->step()I

    move-result v2

    invoke-direct {v0, v1, p1, v2}, Lscala/collection/immutable/Range$Inclusive;-><init>(III)V

    goto :goto_1

    .line 180
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->start()I

    move-result p1

    invoke-direct {p0, p1}, Lscala/collection/immutable/Range;->newEmptyRange(I)Lscala/collection/immutable/Range;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public final bridge synthetic takeRight(I)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Range;->takeRight(I)Lscala/collection/immutable/Range;

    move-result-object p1

    return-object p1
.end method

.method public final takeRight(I)Lscala/collection/immutable/Range;
    .locals 7

    if-gtz p1, :cond_0

    .line 293
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->start()I

    move-result p1

    invoke-direct {p0, p1}, Lscala/collection/immutable/Range;->newEmptyRange(I)Lscala/collection/immutable/Range;

    move-result-object p1

    goto :goto_0

    .line 294
    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->numRangeElements()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->numRangeElements()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Range;->drop(I)Lscala/collection/immutable/Range;

    move-result-object p1

    goto :goto_0

    .line 297
    :cond_1
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->last()I

    move-result v0

    int-to-long v1, v0

    .line 298
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->step()I

    move-result v3

    int-to-long v3, v3

    add-int/lit8 p1, p1, -0x1

    int-to-long v5, p1

    mul-long v3, v3, v5

    sub-long/2addr v1, v3

    .line 299
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->step()I

    move-result p1

    if-lez p1, :cond_2

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->start()I

    move-result p1

    int-to-long v3, p1

    cmp-long p1, v1, v3

    if-ltz p1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->step()I

    move-result p1

    if-gez p1, :cond_4

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->start()I

    move-result p1

    int-to-long v3, p1

    cmp-long p1, v1, v3

    if-lez p1, :cond_4

    :cond_3
    move-object p1, p0

    goto :goto_0

    .line 300
    :cond_4
    new-instance p1, Lscala/collection/immutable/Range$Inclusive;

    long-to-int v2, v1

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->step()I

    move-result v1

    invoke-direct {p1, v2, v0, v1}, Lscala/collection/immutable/Range$Inclusive;-><init>(III)V

    :goto_0
    return-object p1
.end method

.method public final bridge synthetic takeWhile(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Range;->takeWhile(Lscala/Function1;)Lscala/collection/immutable/Range;

    move-result-object p1

    return-object p1
.end method

.method public final takeWhile(Lscala/Function1;)Lscala/collection/immutable/Range;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/immutable/Range;"
        }
    .end annotation

    .line 254
    invoke-direct {p0, p1}, Lscala/collection/immutable/Range;->argTakeWhile(Lscala/Function1;)J

    move-result-wide v0

    .line 255
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->start()I

    move-result p1

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->start()I

    move-result p1

    invoke-direct {p0, p1}, Lscala/collection/immutable/Range;->newEmptyRange(I)Lscala/collection/immutable/Range;

    move-result-object p1

    goto :goto_0

    .line 257
    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->step()I

    move-result p1

    int-to-long v2, p1

    sub-long/2addr v0, v2

    long-to-int p1, v0

    .line 258
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->last()I

    move-result v0

    if-ne p1, v0, :cond_1

    move-object p1, p0

    goto :goto_0

    .line 259
    :cond_1
    new-instance v0, Lscala/collection/immutable/Range$Inclusive;

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->start()I

    move-result v1

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->step()I

    move-result v2

    invoke-direct {v0, v1, p1, v2}, Lscala/collection/immutable/Range$Inclusive;-><init>(III)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public final terminalElement()I
    .locals 1

    .line 108
    iget v0, p0, Lscala/collection/immutable/Range;->terminalElement:I

    return v0
.end method

.method public thisCollection()Lscala/collection/IndexedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/IndexedSeq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 61
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->thisCollection(Lscala/collection/IndexedSeqLike;)Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Iterable;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->thisCollection()Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Seq;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->thisCollection()Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->thisCollection()Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public toBuffer()Lscala/collection/mutable/Buffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Buffer<",
            "TA1;>;"
        }
    .end annotation

    .line 61
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->toBuffer(Lscala/collection/IndexedSeqLike;)Lscala/collection/mutable/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public toCollection(Ljava/lang/Object;)Lscala/collection/IndexedSeq;
    .locals 0

    .line 61
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqLike$class;->toCollection(Lscala/collection/IndexedSeqLike;Ljava/lang/Object;)Lscala/collection/IndexedSeq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Range;->toCollection(Ljava/lang/Object;)Lscala/collection/IndexedSeq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Seq;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Range;->toCollection(Ljava/lang/Object;)Lscala/collection/IndexedSeq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Range;->toCollection(Ljava/lang/Object;)Lscala/collection/IndexedSeq;

    move-result-object p1

    return-object p1
.end method

.method public toIndexedSeq()Lscala/collection/immutable/IndexedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/IndexedSeq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 61
    invoke-static {p0}, Lscala/collection/immutable/IndexedSeq$class;->toIndexedSeq(Lscala/collection/immutable/IndexedSeq;)Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->toIterable()Lscala/collection/immutable/Range;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toIterable()Lscala/collection/Iterable;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->toIterable()Lscala/collection/immutable/Range;

    move-result-object v0

    return-object v0
.end method

.method public toIterable()Lscala/collection/immutable/Range;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->toSeq()Lscala/collection/immutable/Range;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/Seq;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->toSeq()Lscala/collection/immutable/Range;

    move-result-object v0

    return-object v0
.end method

.method public toSeq()Lscala/collection/immutable/Range;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic toSeq()Lscala/collection/immutable/Seq;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->toSeq()Lscala/collection/immutable/Range;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 392
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->numRangeElements()I

    move-result v0

    sget-object v1, Lscala/collection/immutable/Range$;->MODULE$:Lscala/collection/immutable/Range$;

    invoke-virtual {v1}, Lscala/collection/immutable/Range$;->MAX_PRINT()I

    move-result v1

    if-gt v0, v1, :cond_1

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->numRangeElements()I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ")"

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, ", ... )"

    .line 393
    :goto_1
    sget-object v1, Lscala/collection/immutable/Range$;->MODULE$:Lscala/collection/immutable/Range$;

    invoke-virtual {v1}, Lscala/collection/immutable/Range$;->MAX_PRINT()I

    move-result v1

    invoke-virtual {p0, v1}, Lscala/collection/immutable/Range;->take(I)Lscala/collection/immutable/Range;

    move-result-object v1

    const-string v2, "Range("

    const-string v3, ", "

    invoke-virtual {v1, v2, v3, v0}, Lscala/collection/immutable/Range;->mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view()Lscala/collection/IterableView;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->view()Lscala/collection/SeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/IterableView;
    .locals 0

    .line 61
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/Range;->view(II)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->view()Lscala/collection/SeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 61
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/Range;->view(II)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method
