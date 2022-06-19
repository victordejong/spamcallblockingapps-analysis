.class public interface abstract Lscala/collection/mutable/HashTable;
.super Ljava/lang/Object;
.source "HashTable.scala"

# interfaces
.implements Lscala/collection/mutable/HashTable$HashUtils;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/mutable/HashTable$Contents;,
        Lscala/collection/mutable/HashTable$HashUtils;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "Entry::",
        "Lscala/collection/mutable/HashEntry<",
        "TA;TEntry;>;>",
        "Ljava/lang/Object;",
        "Lscala/collection/mutable/HashTable$HashUtils<",
        "TA;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\r%baB\u0001\u0003!\u0003\r\t!\u0003\u0002\n\u0011\u0006\u001c\u0008\u000eV1cY\u0016T!a\u0001\u0003\u0002\u000f5,H/\u00192mK*\u0011QAB\u0001\u000bG>dG.Z2uS>t\'\"A\u0004\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001U)!\"!\u0012\u0002lM\u0019\u0001aC\u0008\u0011\u00051iQ\"\u0001\u0004\n\u000591!AB!osJ+g\r\u0005\u0003\u0011i\u0005\rcBA\t\u0013\u001b\u0005\u0011qAB\n\u0003\u0011\u0003!A#A\u0005ICNDG+\u00192mKB\u0011\u0011#\u0006\u0004\u0007\u0003\tA\t\u0001\u0002\u000c\u0014\u0005UY\u0001\"\u0002\r\u0016\t\u0003I\u0012A\u0002\u001fj]&$h\u0008F\u0001\u0015\u0011\u0019YR\u0003\"\u0002\u00059\u0005\tB-\u001a4bk2$Hj\\1e\r\u0006\u001cGo\u001c:\u0016\u0003u\u0001\"\u0001\u0004\u0010\n\u0005}1!aA%oi\"1\u0011%\u0006C\u0003\tq\tq\u0002\\8bI\u001a\u000b7\r^8s\t\u0016tW/\u001c\u0005\u0007GU!)\u0001\u0002\u0013\u0002\u00199,w\u000f\u00165sKNDw\u000e\u001c3\u0015\u0007u)s\u0005C\u0003\'E\u0001\u0007Q$A\u0006`Y>\u000cGMR1di>\u0014\u0008\"\u0002\u0015#\u0001\u0004i\u0012\u0001B:ju\u0016DaAK\u000b\u0005\u0006\u0011Y\u0013\u0001E:ju\u00164uN\u001d+ie\u0016\u001c\u0008n\u001c7e)\riB&\u000c\u0005\u0006M%\u0002\r!\u0008\u0005\u0006]%\u0002\r!H\u0001\u0004i\"\u0014\u0008B\u0002\u0019\u0016\t\u000b!\u0011\'\u0001\u0005dCB\u000c7-\u001b;z)\ti\"\u0007C\u00034_\u0001\u0007Q$\u0001\u0007fqB,7\r^3e\'&TXMB\u00046+A\u0005\u0019\u0011\u0001\u001c\u0003\u0013!\u000b7\u000f[+uS2\u001cXCA\u001cJ\'\t!4\u0002C\u0003:i\u0011\u0005!(\u0001\u0004%S:LG\u000f\n\u000b\u0002wA\u0011A\u0002P\u0005\u0003{\u0019\u0011A!\u00168ji\")q\u0008\u000eC\u000b9\u0005!2/\u001b>f\u001b\u0006\u0004()^2lKR\u0014\u0015\u000e^*ju\u0016DQ!\u0011\u001b\u0005\u0016q\t\u0011c]5{K6\u000b\u0007OQ;dW\u0016$8+\u001b>f\u0011\u0015\u0019E\u0007\"\u0005E\u00031)G.Z7ICND7i\u001c3f)\tiR\tC\u0003G\u0005\u0002\u0007q)A\u0002lKf\u0004\"\u0001S%\r\u0001\u0011)!\n\u000eb\u0001\u0017\n91*Z=UsB,\u0017C\u0001\'P!\taQ*\u0003\u0002O\r\t9aj\u001c;iS:<\u0007C\u0001\u0007Q\u0013\t\tfAA\u0002B]fDQa\u0015\u001b\u0005\u0016Q\u000bq![7qe>4X\rF\u0002\u001e+^CQA\u0016*A\u0002u\tQ\u0001[2pI\u0016DQ\u0001\u0017*A\u0002u\tAa]3fI\"1!,\u0006C\u0001\tm\u000b!\u0002]8xKJ|e\rV<p)\tiB\u000cC\u0003^3\u0002\u0007Q$\u0001\u0004uCJ<W\r\u001e\u0004\u0005?V\u0001\u0001M\u0001\u0005D_:$XM\u001c;t+\r\t\u0007o]\n\u0003=.A\u0001b\u00190\u0003\u0006\u0004%\t\u0001H\u0001\u000bY>\u000cGMR1di>\u0014\u0008\u0002C3_\u0005\u0003\u0005\u000b\u0011B\u000f\u0002\u00171|\u0017\r\u001a$bGR|\'\u000f\t\u0005\tOz\u0013)\u0019!C\u0001Q\u0006)A/\u00192mKV\t\u0011\u000eE\u0002\rU2L!a\u001b\u0004\u0003\u000b\u0005\u0013(/Y=\u0011\tEiwN]\u0005\u0003]\n\u0011\u0011\u0002S1tQ\u0016sGO]=\u0011\u0005!\u0003H!B9_\u0005\u0004Y%!A!\u0011\u0005!\u001bH!\u0002;_\u0005\u0004)(!B#oiJL\u0018C\u0001<m!\taq/\u0003\u0002y\r\t!a*\u001e7m\u0011!QhL!A!\u0002\u0013I\u0017A\u0002;bE2,\u0007\u0005\u0003\u0005}=\n\u0015\r\u0011\"\u0001\u001d\u0003%!\u0018M\u00197f\'&TX\r\u0003\u0005\u007f=\n\u0005\t\u0015!\u0003\u001e\u0003)!\u0018M\u00197f\'&TX\r\t\u0005\n\u0003\u0003q&Q1A\u0005\u0002q\t\u0011\u0002\u001e5sKNDw\u000e\u001c3\t\u0013\u0005\u0015aL!A!\u0002\u0013i\u0012A\u0003;ie\u0016\u001c\u0008n\u001c7eA!I\u0011\u0011\u00020\u0003\u0006\u0004%\t\u0001H\u0001\ng\u0016,GM^1mk\u0016D\u0011\"!\u0004_\u0005\u0003\u0005\u000b\u0011B\u000f\u0002\u0015M,W\r\u001a<bYV,\u0007\u0005\u0003\u0006\u0002\u0012y\u0013)\u0019!C\u0001\u0003\'\tqa]5{K6\u000c\u0007/\u0006\u0002\u0002\u0016A\u0019AB[\u000f\t\u0015\u0005eaL!A!\u0002\u0013\t)\"\u0001\u0005tSj,W.\u00199!\u0011\u0019Ab\u000c\"\u0001\u0002\u001eQq\u0011qDA\u0012\u0003K\t9#!\u000b\u0002,\u00055\u0002#BA\u0011=>\u0014X\"A\u000b\t\r\r\u000cY\u00021\u0001\u001e\u0011\u00199\u00171\u0004a\u0001S\"1A0a\u0007A\u0002uAq!!\u0001\u0002\u001c\u0001\u0007Q\u0004C\u0004\u0002\n\u0005m\u0001\u0019A\u000f\t\u0011\u0005E\u00111\u0004a\u0001\u0003+A\u0001\"!\r_\t\u0003!\u00111G\u0001\u0011I\u0016\u0014WoZ%oM>\u0014X.\u0019;j_:,\"!!\u000e\u0011\t\u0005]\u0012Q\u0008\u0008\u0004\u0019\u0005e\u0012bAA\u001e\r\u00051\u0001K]3eK\u001aLA!a\u0010\u0002B\t11\u000b\u001e:j]\u001eT1!a\u000f\u0007!\rA\u0015Q\t\u0003\u0006c\u0002\u0011\ra\u0013\u0005\u0006s\u0001!\tA\u000f\u0005\u0008M\u0001\u0001\r\u0011\"\u0005\u001d\u0011%\ti\u0005\u0001a\u0001\n#\ty%A\u0008`Y>\u000cGMR1di>\u0014x\u000cJ3r)\rY\u0014\u0011\u000b\u0005\n\u0003\'\nY%!AA\u0002u\t1\u0001\u001f\u00132\u0011\u001d\t9\u0006\u0001Q!\nu\tAb\u00187pC\u00124\u0015m\u0019;pe\u0002BC!!\u0016\u0002\\A\u0019A\"!\u0018\n\u0007\u0005}cAA\u0005ue\u0006t7/[3oi\"Aq\r\u0001a\u0001\n#\t\u0019\'\u0006\u0002\u0002fA!AB[A4!\u0019\tR.a\u0011\u0002jA\u0019\u0001*a\u001b\u0005\rQ\u0004!\u0019AA7#\r1\u0018q\r\u0005\n\u0003c\u0002\u0001\u0019!C\t\u0003g\n\u0011\u0002^1cY\u0016|F%Z9\u0015\u0007m\n)\u0008\u0003\u0006\u0002T\u0005=\u0014\u0011!a\u0001\u0003KBqA\u001f\u0001!B\u0013\t)\u0007\u000b\u0003\u0002x\u0005m\u0003b\u0002?\u0001\u0001\u0004%\t\u0002\u0008\u0005\n\u0003\u007f\u0002\u0001\u0019!C\t\u0003\u0003\u000bQ\u0002^1cY\u0016\u001c\u0016N_3`I\u0015\u000cHcA\u001e\u0002\u0004\"I\u00111KA?\u0003\u0003\u0005\r!\u0008\u0005\u0007}\u0002\u0001\u000b\u0015B\u000f)\t\u0005\u0015\u00151\u000c\u0005\t\u0003\u0003\u0001\u0001\u0019!C\t9!I\u0011Q\u0012\u0001A\u0002\u0013E\u0011qR\u0001\u000ei\"\u0014Xm\u001d5pY\u0012|F%Z9\u0015\u0007m\n\t\nC\u0005\u0002T\u0005-\u0015\u0011!a\u0001;!9\u0011Q\u0001\u0001!B\u0013i\u0002\u0006BAJ\u00037B\u0011\"!\u0005\u0001\u0001\u0004%\t\"a\u0005\t\u0013\u0005m\u0005\u00011A\u0005\u0012\u0005u\u0015aC:ju\u0016l\u0017\r]0%KF$2aOAP\u0011)\t\u0019&!\'\u0002\u0002\u0003\u0007\u0011Q\u0003\u0005\t\u00033\u0001\u0001\u0015)\u0003\u0002\u0016!\"\u0011\u0011UA.\u0011!\tI\u0001\u0001a\u0001\n#a\u0002\"CAU\u0001\u0001\u0007I\u0011CAV\u00035\u0019X-\u001a3wC2,Xm\u0018\u0013fcR\u00191(!,\t\u0013\u0005M\u0013qUA\u0001\u0002\u0004i\u0002bBA\u0007\u0001\u0001\u0006K!\u0008\u0015\u0005\u0003_\u000bY\u0006\u0003\u0004\u00026\u0002!\t\u0002H\u0001\u000ei\u0006\u0014G.Z*ju\u0016\u001cV-\u001a3\t\r\u0005e\u0006\u0001\"\u0005\u001d\u0003-Ig.\u001b;jC2\u001c\u0016N_3\t\u000f\u0005u\u0006\u0001\"\u0003\u0002@\u0006\u0001\u0012N\\5uS\u0006dG\u000b\u001b:fg\"|G\u000e\u001a\u000b\u0004;\u0005\u0005\u0007B\u0002\u0014\u0002<\u0002\u0007Q\u0004\u0003\u0004\u0002F\u0002!I\u0001H\u0001\u0010S:LG/[1m\u0007\u0006\u0004\u0018mY5us\"1\u0011\u0011\u001a\u0001\u0005\nq\t!\u0003\\1tiB{\u0007/\u001e7bi\u0016$\u0017J\u001c3fq\"A\u0011Q\u001a\u0001\u0005\u0002\u0011\ty-\u0001\u0003j]&$H#B\u001e\u0002R\u0006\u0015\u0008\u0002CAj\u0003\u0017\u0004\r!!6\u0002\u0005%t\u0007\u0003BAl\u0003Cl!!!7\u000b\t\u0005m\u0017Q\\\u0001\u0003S>T!!a8\u0002\t)\u000cg/Y\u0005\u0005\u0003G\u000cINA\tPE*,7\r^%oaV$8\u000b\u001e:fC6D\u0011\"a:\u0002L\u0012\u0005\r!!;\u0002\u0013I,\u0017\rZ#oiJL\u0008#\u0002\u0007\u0002l\u0006%\u0014bAAw\r\tAAHY=oC6,g\u0008\u0003\u0005\u0002r\u0002!\t\u0001BAz\u0003-\u0019XM]5bY&TX\rV8\u0015\u000bm\n)0a@\t\u0011\u0005]\u0018q\u001ea\u0001\u0003s\u000c1a\\;u!\u0011\t9.a?\n\t\u0005u\u0018\u0011\u001c\u0002\u0013\u001f\nTWm\u0019;PkR\u0004X\u000f^*ue\u0016\u000cW\u000e\u0003\u0005\u0003\u0002\u0005=\u0008\u0019\u0001B\u0002\u0003)9(/\u001b;f\u000b:$(/\u001f\t\u0007\u0019\t\u0015\u0011\u0011N\u001e\n\u0007\t\u001daAA\u0005Gk:\u001cG/[8oc!9!1\u0002\u0001\u0005\u0012\t5\u0011!\u00034j]\u0012,e\u000e\u001e:z)\u0011\tIGa\u0004\t\u000f\u0019\u0013I\u00011\u0001\u0002D!B!\u0011\u0002B\n\u00053\u0011i\u0002E\u0002\r\u0005+I1Aa\u0006\u0007\u0005Q!W\r\u001d:fG\u0006$X\rZ(wKJ\u0014\u0018\u000eZ5oO\u0006\u0012!1D\u0001c\u001d>\u00043/\u001a8tS\ndW\rI<bs\u0002\"x\u000eI8wKJ\u0014\u0018\u000eZ3!M&tG-\u00128uef\u0004\u0013m\u001d\u0011qe&4\u0018\r^3!M&tG-\u00128uef\u0004\u0004%[:!kN,G\rI5oA5,H\u000e^5qY\u0016\u0004\u0003\u000f\\1dKN\u0004\u0013N\u001c;fe:\u000cG\u000e\\=/C\t\u0011y\"\u0001\u00043]E\nd\u0006\r\u0005\t\u0005G\u0001\u0001\u0015\"\u0003\u0003&\u0005Qa-\u001b8e\u000b:$(/\u001f\u0019\u0015\r\u0005%$q\u0005B\u0015\u0011\u001d1%\u0011\u0005a\u0001\u0003\u0007BqAa\u000b\u0003\"\u0001\u0007Q$A\u0001i\u0011\u001d\u0011y\u0003\u0001C\t\u0005c\t\u0001\"\u00193e\u000b:$(/\u001f\u000b\u0004w\tM\u0002\u0002\u0003B\u001b\u0005[\u0001\r!!\u001b\u0002\u0003\u0015D\u0003B!\u000c\u0003\u0014\te\"QD\u0011\u0003\u0005w\t\u0001MT8!g\u0016t7/\u001b2mK\u0002:\u0018-\u001f\u0011u_\u0002zg/\u001a:sS\u0012,\u0007%\u00193e\u000b:$(/\u001f\u0011bg\u0002\u0002(/\u001b<bi\u0016\u0004\u0013\r\u001a3F]R\u0014\u0018\u0010\r\u0011jg\u0002*8/\u001a3!S:\u0004S.\u001e7uSBdW\r\t9mC\u000e,7\u000fI5oi\u0016\u0014h.\u00197ms:B\u0001Ba\u0010\u0001A\u0013%!\u0011I\u0001\nC\u0012$WI\u001c;ssB\"Ra\u000fB\"\u0005\u000bB\u0001B!\u000e\u0003>\u0001\u0007\u0011\u0011\u000e\u0005\u0008\u0005W\u0011i\u00041\u0001\u001e\u0011\u001d\u0011I\u0005\u0001C\t\u0005\u0017\naBZ5oI>\u0013\u0018\t\u001a3F]R\u0014\u00180\u0006\u0003\u0003N\t]CCBA5\u0005\u001f\u0012\t\u0006C\u0004G\u0005\u000f\u0002\r!a\u0011\t\u0011\tM#q\ta\u0001\u0005+\nQA^1mk\u0016\u00042\u0001\u0013B,\t\u001d\u0011IFa\u0012C\u0002-\u0013\u0011A\u0011\u0005\u0008\u0005;\u0002a\u0011\u0003B0\u00039\u0019\'/Z1uK:+w/\u00128uef,BA!\u0019\u0003jQ1\u0011\u0011\u000eB2\u0005KBqA\u0012B.\u0001\u0004\t\u0019\u0005\u0003\u0005\u0003T\tm\u0003\u0019\u0001B4!\rA%\u0011\u000e\u0003\u0008\u00053\u0012YF1\u0001L\u0011\u001d\u0011i\u0007\u0001C\t\u0005_\n1B]3n_Z,WI\u001c;ssR!\u0011\u0011\u000eB9\u0011\u001d1%1\u000ea\u0001\u0003\u0007B\u0003Ba\u001b\u0003\u0014\tU$QD\u0011\u0003\u0005o\n!*\u00138uKJt\u0017\r\u001c\u0011j[BdW-\\3oi\u0006$\u0018n\u001c8!I>,7\u000f\t8pi\u0002\nG-\\5uAM,gn]5cY\u0016\u0004sN^3se&$\u0017N\\4!_\u001a\u0004C\u000f[5tA5,G\u000f[8e]!9!1\u0010\u0001\u0005\u0012\tu\u0014aD3oiJLWm]%uKJ\u000cGo\u001c:\u0016\u0005\t}\u0004C\u0002BA\u0005\u0007\u000bI\'D\u0001\u0005\u0013\r\u0011)\t\u0002\u0002\t\u0013R,\'/\u0019;pe\"9!\u0011\u0012\u0001\u0005\u0012\t-\u0015\u0001\u00044pe\u0016\u000c7\r[#oiJLX\u0003\u0002BG\u0005/#2a\u000fBH\u0011!\u0011\tJa\"A\u0002\tM\u0015!\u00014\u0011\u000f1\u0011)!!\u001b\u0003\u0016B\u0019\u0001Ja&\u0005\u000f\te%q\u0011b\u0001\u0017\n\tQ\u000b\u0003\u0004\u0003\u001e\u0002!\tBO\u0001\u000bG2,\u0017M\u001d+bE2,\u0007b\u0002BQ\u0001\u0011%!1U\u0001\u0007e\u0016\u001c\u0018N_3\u0015\u0007m\u0012)\u000bC\u0004\u0003(\n}\u0005\u0019A\u000f\u0002\u000f9,woU5{K\"9!1\u0016\u0001\u0005\u0012\t5\u0016\u0001\u00048o\'&TX-T1q\u0003\u0012$GcA\u001e\u00030\"9!1\u0006BU\u0001\u0004i\u0002\u0006\u0003BU\u0005\'\u0011)H!\u0008\t\u000f\tU\u0006\u0001\"\u0005\u00038\u0006yaN\\*ju\u0016l\u0015\r\u001d*f[>4X\rF\u0002<\u0005sCqAa\u000b\u00034\u0002\u0007Q\u0004\u000b\u0005\u00034\nM!Q\u000fB\u000f\u0011\u001d\u0011y\u000c\u0001C\t\u0005\u0003\u000caB\u001c8TSj,W*\u00199SKN,G\u000fF\u0002<\u0005\u0007DqA!2\u0003>\u0002\u0007Q$A\u0006uC\ndW\rT3oORD\u0007\u0006\u0003B_\u0005\'\u0011)H!\u0008\t\u000f\t-\u0007\u0001\"\u0002\u00059\u0005\u0019Bo\u001c;bYNK\'0Z\'ba\n+8m[3ug\"9!q\u001a\u0001\u0005\u0012\tE\u0017aD2bY\u000e\u001c\u0016N_3NCB\u001c\u0016N_3\u0015\u0007u\u0011\u0019\u000eC\u0004\u0003F\n5\u0007\u0019A\u000f)\u0011\t5\'1\u0003B;\u0005;AqA!7\u0001\t#\u0011Y.A\u0006tSj,W*\u00199J]&$HcA\u001e\u0003^\"9!Q\u0019Bl\u0001\u0004i\u0002B\u0002Bq\u0001\u0011E!(A\u000btSj,W*\u00199J]&$\u0018I\u001c3SK\n,\u0018\u000e\u001c3)\u0011\t}\'1\u0003B;\u0005;AqAa:\u0001\t\u0003!!(\u0001\u0007qe&tGoU5{K6\u000b\u0007\u000f\u0003\u0004\u0003l\u0002!\tBO\u0001\u000fg&TX-T1q\t&\u001c\u0018M\u00197fQ!\u0011IOa\u0005\u0003v\tu\u0001b\u0002By\u0001\u0011E!1_\u0001\u0011SN\u001c\u0016N_3NCB$UMZ5oK\u0012,\"A!>\u0011\u00071\u001190C\u0002\u0003z\u001a\u0011qAQ8pY\u0016\u000cg\u000e\u000b\u0005\u0003p\nM!Q\u000fB\u000f\u0011\u001d\u0011y\u0010\u0001C\t\u0005g\u000c\u0011#\u00197xCf\u001c\u0018J\\5u\'&TX-T1q\u0011\u001d\u0019\u0019\u0001\u0001C\t\u0007\u000b\t!\"\u001a7f[\u0016\u000bX/\u00197t)\u0019\u0011)pa\u0002\u0004\u000c!A1\u0011BB\u0001\u0001\u0004\t\u0019%\u0001\u0003lKf\u000c\u0004\u0002CB\u0007\u0007\u0003\u0001\r!a\u0011\u0002\t-,\u0017P\r\u0005\u0008\u0007#\u0001AQCB\n\u0003\u0015Ig\u000eZ3y)\ri2Q\u0003\u0005\u0007-\u000e=\u0001\u0019A\u000f\t\u000f\re\u0001\u0001\"\u0005\u0004\u001c\u0005\u0001\u0012N\\5u/&$\u0008nQ8oi\u0016tGo\u001d\u000b\u0004w\ru\u0001\u0002CB\u0010\u0007/\u0001\ra!\t\u0002\u0003\r\u0004b\u0001\u00050\u0002D\u0005%\u0004\u0002CB\u0013\u0001\u0011\u0005Aaa\n\u0002#!\u000c7\u000f\u001b+bE2,7i\u001c8uK:$8/\u0006\u0002\u0004\"\u0001"
.end annotation


# virtual methods
.method public abstract _loadFactor()I
.end method

.method public abstract _loadFactor_$eq(I)V
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation
.end method

.method public abstract addEntry(Lscala/collection/mutable/HashEntry;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEntry;)V"
        }
    .end annotation
.end method

.method public abstract alwaysInitSizeMap()Z
.end method

.method public abstract calcSizeMapSize(I)I
.end method

.method public abstract clearTable()V
.end method

.method public abstract createNewEntry(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TA;TB;)TEntry;"
        }
    .end annotation
.end method

.method public abstract elemEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TA;)Z"
        }
    .end annotation
.end method

.method public abstract entriesIterator()Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TEntry;>;"
        }
    .end annotation
.end method

.method public abstract findEntry(Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TEntry;"
        }
    .end annotation
.end method

.method public abstract findOrAddEntry(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TA;TB;)TEntry;"
        }
    .end annotation
.end method

.method public abstract foreachEntry(Lscala/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TEntry;TU;>;)V"
        }
    .end annotation
.end method

.method public abstract hashTableContents()Lscala/collection/mutable/HashTable$Contents;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/HashTable$Contents<",
            "TA;TEntry;>;"
        }
    .end annotation
.end method

.method public abstract index(I)I
.end method

.method public abstract init(Ljava/io/ObjectInputStream;Lscala/Function0;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectInputStream;",
            "Lscala/Function0<",
            "TEntry;>;)V"
        }
    .end annotation
.end method

.method public abstract initWithContents(Lscala/collection/mutable/HashTable$Contents;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/HashTable$Contents<",
            "TA;TEntry;>;)V"
        }
    .end annotation
.end method

.method public abstract initialSize()I
.end method

.method public abstract isSizeMapDefined()Z
.end method

.method public abstract nnSizeMapAdd(I)V
.end method

.method public abstract nnSizeMapRemove(I)V
.end method

.method public abstract nnSizeMapReset(I)V
.end method

.method public abstract printSizeMap()V
.end method

.method public abstract removeEntry(Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TEntry;"
        }
    .end annotation
.end method

.method public abstract seedvalue()I
.end method

.method public abstract seedvalue_$eq(I)V
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation
.end method

.method public abstract serializeTo(Ljava/io/ObjectOutputStream;Lscala/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectOutputStream;",
            "Lscala/Function1<",
            "TEntry;",
            "Lscala/runtime/BoxedUnit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sizeMapDisable()V
.end method

.method public abstract sizeMapInit(I)V
.end method

.method public abstract sizeMapInitAndRebuild()V
.end method

.method public abstract sizemap()[I
.end method

.method public abstract sizemap_$eq([I)V
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation
.end method

.method public abstract table()[Lscala/collection/mutable/HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lscala/collection/mutable/HashEntry<",
            "TA;TEntry;>;"
        }
    .end annotation
.end method

.method public abstract tableSize()I
.end method

.method public abstract tableSizeSeed()I
.end method

.method public abstract tableSize_$eq(I)V
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation
.end method

.method public abstract table_$eq([Lscala/collection/mutable/HashEntry;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lscala/collection/mutable/HashEntry<",
            "TA;TEntry;>;)V"
        }
    .end annotation

    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation
.end method

.method public abstract threshold()I
.end method

.method public abstract threshold_$eq(I)V
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation
.end method

.method public abstract totalSizeMapBuckets()I
.end method
