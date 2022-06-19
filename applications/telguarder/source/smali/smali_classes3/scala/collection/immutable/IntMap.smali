.class public abstract Lscala/collection/immutable/IntMap;
.super Lscala/collection/immutable/AbstractMap;
.source "IntMap.scala"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/immutable/IntMap$Nil$;,
        Lscala/collection/immutable/IntMap$Bin;,
        Lscala/collection/immutable/IntMap$Tip;,
        Lscala/collection/immutable/IntMap$Tip$;,
        Lscala/collection/immutable/IntMap$Bin$;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/immutable/AbstractMap<",
        "Ljava/lang/Object;",
        "TT;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u0011\u0005t!B\u0001\u0003\u0011\u0003I\u0011AB%oi6\u000b\u0007O\u0003\u0002\u0004\t\u0005I\u0011.\\7vi\u0006\u0014G.\u001a\u0006\u0003\u000b\u0019\t!bY8mY\u0016\u001cG/[8o\u0015\u00059\u0011!B:dC2\u000c7\u0001\u0001\t\u0003\u0015-i\u0011A\u0001\u0004\u0006\u0019\tA\t!\u0004\u0002\u0007\u0013:$X*\u00199\u0014\u0005-q\u0001CA\u0008\u0011\u001b\u00051\u0011BA\t\u0007\u0005\u0019\te.\u001f*fM\")1c\u0003C\u0001)\u00051A(\u001b8jiz\"\u0012!\u0003\u0005\u0006--!\u0019aF\u0001\rG\u0006t\')^5mI\u001a\u0013x.\\\u000b\u00061\ru5QU\u000b\u00023I\u0019!D\u0004\u000f\u0007\tm)\u0002!\u0007\u0002\ryI,g-\u001b8f[\u0016tGO\u0010\t\u0008;\u0001\u00123\u0011UBU\u001b\u0005q\"BA\u0010\u0005\u0003\u001d9WM\\3sS\u000eL!!\t\u0010\u0003\u0019\r\u000bgNQ;jY\u00124%o\\7\u0011\t)\u001931\u0014\u0004\u0006\u0019\t\t\t\u0003J\u000b\u0003KQ\u001aBa\t\u0014>\u0001B!!bJ\u00153\u0013\tA#AA\u0006BEN$(/Y2u\u001b\u0006\u0004\u0008C\u0001\u0016.\u001d\tQ1&\u0003\u0002-\u0005\u0005Y\u0011J\u001c;NCB,F/\u001b7t\u0013\tqsFA\u0002J]RL!A\u000c\u0019\u000b\u0005Er\u0012!\u0004\"ji>\u0003XM]1uS>t7\u000f\u0005\u00024i1\u0001AAB\u001b$\t\u000b\u0007aGA\u0001U#\t9$\u0008\u0005\u0002\u0010q%\u0011\u0011H\u0002\u0002\u0008\u001d>$\u0008.\u001b8h!\ty1(\u0003\u0002=\r\t\u0019\u0011I\\=\u0011\t)q\u0014FM\u0005\u0003\u007f\t\u00111!T1q!\u0015Q\u0011)\u000b\u001aD\u0013\t\u0011%AA\u0004NCBd\u0015n[3\u0011\u0007)\u0019#\u0007C\u0003\u0014G\u0011\u0005Q\tF\u0001D\u0011\u001595\u0005\"\u0011I\u0003\u0015)W\u000e\u001d;z+\u0005\u0019\u0005\"\u0002&$\t\u0003Z\u0015A\u0002;p\u0019&\u001cH/F\u0001M!\rQQjT\u0005\u0003\u001d\n\u0011A\u0001T5tiB!q\u0002U\u00153\u0013\t\tfA\u0001\u0004UkBdWM\r\u0005\u0006\'\u000e\"\t\u0001V\u0001\tSR,\'/\u0019;peV\tQ\u000bE\u0002W/>k\u0011\u0001B\u0005\u00031\u0012\u0011\u0001\"\u0013;fe\u0006$xN\u001d\u0005\u00065\u000e\")eW\u0001\u0008M>\u0014X-Y2i+\taf\r\u0006\u0002^AB\u0011qBX\u0005\u0003?\u001a\u0011A!\u00168ji\")\u0011-\u0017a\u0001E\u0006\ta\r\u0005\u0003\u0010G>+\u0017B\u00013\u0007\u0005%1UO\\2uS>t\u0017\u0007\u0005\u00024M\u0012)q-\u0017b\u0001m\t\tQ\u000bC\u0003jG\u0011\u0005#.\u0001\u0007lKf\u001c\u0018\n^3sCR|\'/F\u0001l!\r1v+\u000b\u0005\u0006[\u000e\")A\\\u0001\u000bM>\u0014X-Y2i\u0017\u0016LHCA/p\u0011\u0015\tG\u000e1\u0001q!\u0011y1-K/\t\u000bI\u001cC\u0011I:\u0002\u001dY\u000cG.^3t\u0013R,\'/\u0019;peV\tA\u000fE\u0002W/JBQA^\u0012\u0005\u0006]\u000cABZ8sK\u0006\u001c\u0007NV1mk\u0016$\"!\u0018=\t\u000b\u0005,\u0008\u0019A=\u0011\t=\u0019\'\'\u0018\u0005\u0006w\u000e\"\t\u0005`\u0001\rgR\u0014\u0018N\\4Qe\u00164\u0017\u000e_\u000b\u0002{B\u0019a0a\u0002\u000e\u0003}TA!!\u0001\u0002\u0004\u0005!A.\u00198h\u0015\t\t)!\u0001\u0003kCZ\u000c\u0017bAA\u0005\u007f\n11\u000b\u001e:j]\u001eDq!!\u0004$\t\u0003\ny!A\u0004jg\u0016k\u0007\u000f^=\u0016\u0005\u0005E\u0001cA\u0008\u0002\u0014%\u0019\u0011Q\u0003\u0004\u0003\u000f\t{w\u000e\\3b]\"9\u0011\u0011D\u0012\u0005B\u0005m\u0011A\u00024jYR,\'\u000fF\u0002D\u0003;Aq!YA\u000c\u0001\u0004\ty\u0002E\u0003\u0010G>\u000b\t\u0002C\u0004\u0002$\r\"\t!!\n\u0002\u0013Q\u0014\u0018M\\:g_JlW\u0003BA\u0014\u0003[!B!!\u000b\u00022A!!bIA\u0016!\r\u0019\u0014Q\u0006\u0003\u0008\u0003_\t\tC1\u00017\u0005\u0005\u0019\u0006bB1\u0002\"\u0001\u0007\u00111\u0007\t\u0008\u001f\u0005U\u0012FMA\u0016\u0013\r\t9D\u0002\u0002\n\rVt7\r^5p]JBq!a\u000f$\t\u000b\ni$\u0001\u0003tSj,W#A\u0015\t\u000f\u0005\u00053\u0005\"\u0002\u0002D\u0005\u0019q-\u001a;\u0015\t\u0005\u0015\u00131\n\t\u0005\u001f\u0005\u001d#\'C\u0002\u0002J\u0019\u0011aa\u00149uS>t\u0007bBA\'\u0003\u007f\u0001\r!K\u0001\u0004W\u0016L\u0008bBA)G\u0011\u0015\u00131K\u0001\nO\u0016$xJ]#mg\u0016,B!!\u0016\u0002ZQ1\u0011qKA/\u0003?\u00022aMA-\t!\ty#a\u0014C\u0002\u0005m\u0013C\u0001\u001a;\u0011\u001d\ti%a\u0014A\u0002%B\u0011\"!\u0019\u0002P\u0011\u0005\r!a\u0019\u0002\u000f\u0011,g-Y;miB)q\"!\u001a\u0002X%\u0019\u0011q\r\u0004\u0003\u0011q\u0012\u0017P\\1nKzBq!a\u001b$\t\u000b\ni\'A\u0003baBd\u0017\u0010F\u00023\u0003_Bq!!\u0014\u0002j\u0001\u0007\u0011\u0006C\u0004\u0002t\r\"\t!!\u001e\u0002\u000b\u0011\u0002H.^:\u0016\t\u0005]\u0014Q\u0010\u000b\u0005\u0003s\ny\u0008\u0005\u0003\u000bG\u0005m\u0004cA\u001a\u0002~\u0011A\u0011qFA9\u0005\u0004\tY\u0006\u0003\u0005\u0002\u0002\u0006E\u0004\u0019AAB\u0003\tYg\u000fE\u0003\u0010!&\nY\u0008C\u0004\u0002\u0008\u000e\"\t%!#\u0002\u000fU\u0004H-\u0019;fIV!\u00111RAI)\u0019\ti)a%\u0002\u0016B!!bIAH!\r\u0019\u0014\u0011\u0013\u0003\t\u0003_\t)I1\u0001\u0002\\!9\u0011QJAC\u0001\u0004I\u0003\u0002CAL\u0003\u000b\u0003\r!a$\u0002\u000bY\u000cG.^3\t\u000f\u0005m5\u0005\"\u0001\u0002\u001e\u0006QQ\u000f\u001d3bi\u0016<\u0016\u000e\u001e5\u0016\t\u0005}\u0015Q\u0015\u000b\t\u0003C\u000b9+!+\u0002,B!!bIAR!\r\u0019\u0014Q\u0015\u0003\t\u0003_\tIJ1\u0001\u0002\\!9\u0011QJAM\u0001\u0004I\u0003\u0002CAL\u00033\u0003\r!a)\t\u000f\u0005\u000cI\n1\u0001\u0002.BAq\"!\u000e3\u0003G\u000b\u0019\u000bC\u0004\u00022\u000e\"\t!a-\u0002\r\u0011j\u0017N\\;t)\r\u0019\u0015Q\u0017\u0005\u0008\u0003\u001b\ny\u000b1\u0001*\u0011\u001d\tIl\tC\u0001\u0003w\u000ba\"\\8eS\u001aLxJ\u001d*f[>4X-\u0006\u0003\u0002>\u0006\rG\u0003BA`\u0003\u000b\u0004BAC\u0012\u0002BB\u00191\'a1\u0005\u000f\u0005=\u0012q\u0017b\u0001m!9\u0011-a.A\u0002\u0005\u001d\u0007cB\u0008\u00026%\u0012\u0014\u0011\u001a\t\u0006\u001f\u0005\u001d\u0013\u0011\u0019\u0005\u0008\u0003\u001b\u001cC\u0011AAh\u0003%)h.[8o/&$\u0008.\u0006\u0003\u0002R\u0006]GCBAj\u00033\u000ci\u000e\u0005\u0003\u000bG\u0005U\u0007cA\u001a\u0002X\u0012A\u0011qFAf\u0005\u0004\tY\u0006\u0003\u0005\u0002\\\u0006-\u0007\u0019AAj\u0003\u0011!\u0008.\u0019;\t\u000f\u0005\u000cY\r1\u0001\u0002`BQq\"!9*\u0003+\u000c).!6\n\u0007\u0005\rhAA\u0005Gk:\u001cG/[8og!9\u0011q]\u0012\u0005\u0002\u0005%\u0018\u0001E5oi\u0016\u00148/Z2uS>tw+\u001b;i+\u0019\tY/a?\u0002rR1\u0011Q^A{\u0003{\u0004BAC\u0012\u0002pB\u00191\'!=\u0005\u000f\u0005M\u0018Q\u001db\u0001m\t\t!\u000b\u0003\u0005\u0002\\\u0006\u0015\u0008\u0019AA|!\u0011Q1%!?\u0011\u0007M\nY\u0010B\u0004\u00020\u0005\u0015(\u0019\u0001\u001c\t\u000f\u0005\u000c)\u000f1\u0001\u0002\u0000BIq\"!9*e\u0005e\u0018q\u001e\u0005\u0008\u0005\u0007\u0019C\u0011\u0001B\u0003\u00031Ig\u000e^3sg\u0016\u001cG/[8o+\u0011\u00119Aa\u0004\u0015\u0007\r\u0013I\u0001\u0003\u0005\u0002\\\n\u0005\u0001\u0019\u0001B\u0006!\u0011Q1E!\u0004\u0011\u0007M\u0012y\u0001B\u0004\u0002t\n\u0005!\u0019\u0001\u001c\t\u000f\tM1\u0005\"\u0001\u0003\u0016\u0005QA\u0005\u001d7vg\u0012\u0002H.^:\u0016\t\t]!Q\u0004\u000b\u0005\u00053\u0011y\u0002\u0005\u0003\u000bG\tm\u0001cA\u001a\u0003\u001e\u0011A\u0011q\u0006B\t\u0005\u0004\tY\u0006\u0003\u0005\u0002\\\nE\u0001\u0019\u0001B\r\u0011\u001d\u0011\u0019c\tC\u0003\u0003{\t\u0001BZ5sgR\\U-\u001f\u0015\u0005\u0005C\u00119\u0003\u0005\u0003\u0003*\t=RB\u0001B\u0016\u0015\r\u0011iCB\u0001\u000bC:tw\u000e^1uS>t\u0017\u0002\u0002B\u0019\u0005W\u0011q\u0001^1jYJ,7\rC\u0004\u00036\r\")!!\u0010\u0002\u000f1\u000c7\u000f^&fs\"\"!1\u0007B\u0014S\u001d\u0019#1HB\u0004\u0007k1qA!\u0010\u000c\u0001\n\u0011yDA\u0002CS:,BA!\u0011\u0003HMA!1\u0008B\"\u0005\u0013\u0012y\u0005\u0005\u0003\u000bG\t\u0015\u0003cA\u001a\u0003H\u00119QGa\u000f\u0005\u0006\u00041\u0004cA\u0008\u0003L%\u0019!Q\n\u0004\u0003\u000fA\u0013x\u000eZ;diB\u0019qB!\u0015\n\u0007\tMcA\u0001\u0007TKJL\u0017\r\\5{C\ndW\rC\u0006\u0003X\tm\"Q3A\u0005\u0002\u0005u\u0012A\u00029sK\u001aL\u0007\u0010\u0003\u0006\u0003\\\tm\"\u0011#Q\u0001\n%\nq\u0001\u001d:fM&D\u0008\u0005C\u0006\u0003`\tm\"Q3A\u0005\u0002\u0005u\u0012\u0001B7bg.D!Ba\u0019\u0003<\tE\t\u0015!\u0003*\u0003\u0015i\u0017m]6!\u0011-\u00119Ga\u000f\u0003\u0016\u0004%\tA!\u001b\u0002\t1,g\r^\u000b\u0003\u0005\u0007B1B!\u001c\u0003<\tE\t\u0015!\u0003\u0003D\u0005)A.\u001a4uA!Y!\u0011\u000fB\u001e\u0005+\u0007I\u0011\u0001B5\u0003\u0015\u0011\u0018n\u001a5u\u0011-\u0011)Ha\u000f\u0003\u0012\u0003\u0006IAa\u0011\u0002\rILw\r\u001b;!\u0011\u001d\u0019\"1\u0008C\u0001\u0005s\"\"Ba\u001f\u0003\u0000\t\u0005%1\u0011BC!\u0019\u0011iHa\u000f\u0003F5\t1\u0002C\u0004\u0003X\t]\u0004\u0019A\u0015\t\u000f\t}#q\u000fa\u0001S!A!q\rB<\u0001\u0004\u0011\u0019\u0005\u0003\u0005\u0003r\t]\u0004\u0019\u0001B\"\u0011!\u0011IIa\u000f\u0005\u0002\t-\u0015a\u00012j]V!!Q\u0012BJ)\u0019\u0011yI!&\u0003\u0018B!!b\tBI!\r\u0019$1\u0013\u0003\u0008\u0003_\u00119I1\u00017\u0011!\u00119Ga\"A\u0002\t=\u0005\u0002\u0003B9\u0005\u000f\u0003\rAa$\t\u0015\tm%1HA\u0001\n\u0003\u0011i*\u0001\u0003d_BLX\u0003\u0002BP\u0005K#\"B!)\u0003(\n%&1\u0016BX!\u0019\u0011iHa\u000f\u0003$B\u00191G!*\u0005\rU\u0012IJ1\u00017\u0011%\u00119F!\'\u0011\u0002\u0003\u0007\u0011\u0006C\u0005\u0003`\te\u0005\u0013!a\u0001S!Q!q\rBM!\u0003\u0005\rA!,\u0011\t)\u0019#1\u0015\u0005\u000b\u0005c\u0012I\n%AA\u0002\t5\u0006B\u0003BZ\u0005w\t\n\u0011\"\u0001\u00036\u0006q1m\u001c9zI\u0011,g-Y;mi\u0012\nT\u0003\u0002B\\\u0005\u0013,\"A!/+\u0007%\u0012Yl\u000b\u0002\u0003>B!!q\u0018Bc\u001b\t\u0011\tM\u0003\u0003\u0003D\n-\u0012!C;oG\",7m[3e\u0013\u0011\u00119M!1\u0003#Ut7\r[3dW\u0016$g+\u0019:jC:\u001cW\r\u0002\u00046\u0005c\u0013\rA\u000e\u0005\u000b\u0005\u001b\u0014Y$%A\u0005\u0002\t=\u0017AD2paf$C-\u001a4bk2$HEM\u000b\u0005\u0005o\u0013\t\u000e\u0002\u00046\u0005\u0017\u0014\rA\u000e\u0005\u000b\u0005+\u0014Y$%A\u0005\u0002\t]\u0017AD2paf$C-\u001a4bk2$HeM\u000b\u0005\u00053\u0014i.\u0006\u0002\u0003\\*\"!1\tB^\t\u0019)$1\u001bb\u0001m!Q!\u0011\u001dB\u001e#\u0003%\tAa9\u0002\u001d\r|\u0007/\u001f\u0013eK\u001a\u000cW\u000f\u001c;%iU!!\u0011\u001cBs\t\u0019)$q\u001cb\u0001m!I!\u0011\u001eB\u001e\u0003\u0003%\t\u0005`\u0001\u000eaJ|G-^2u!J,g-\u001b=\t\u0015\t5(1HA\u0001\n\u0003\u0011y/\u0001\u0007qe>$Wo\u0019;Be&$\u00180\u0006\u0002\u0003rB\u0019qBa=\n\u000592\u0001B\u0003B|\u0005w\t\t\u0011\"\u0001\u0003z\u0006q\u0001O]8ek\u000e$X\t\\3nK:$Hc\u0001\u001e\u0003|\"Q!Q B{\u0003\u0003\u0005\rA!=\u0002\u0007a$\u0013\u0007\u0003\u0006\u0004\u0002\tm\u0012\u0011!C!\u0007\u0007\tq\u0002\u001d:pIV\u001cG/\u0013;fe\u0006$xN]\u000b\u0003\u0007\u000b\u00012AV,;\r!\u0019Ia\u0003EA\u0005\r-!a\u0001(jYNA1qAB\u0007\u0005\u0013\u0012y\u0005E\u0002\u000bG]BqaEB\u0004\t\u0003\u0019\t\u0002\u0006\u0002\u0004\u0014A!!QPB\u0004\u0011!\u00199ba\u0002\u0005B\re\u0011AB3rk\u0006d7\u000f\u0006\u0003\u0002\u0012\rm\u0001bBAn\u0007+\u0001\rA\u000f\u0005\n\u0005S\u001c9!!A\u0005BqD!B!<\u0004\u0008\u0005\u0005I\u0011\u0001Bx\u0011)\u00119pa\u0002\u0002\u0002\u0013\u000511\u0005\u000b\u0004u\r\u0015\u0002B\u0003B\u007f\u0007C\t\t\u00111\u0001\u0003r\"Q1\u0011AB\u0004\u0003\u0003%\tea\u0001\t\u0015\r-2qAA\u0001\n\u0013\u0019i#A\u0006sK\u0006$\'+Z:pYZ,GCAB\u0018!\rq8\u0011G\u0005\u0004\u0007gy(AB(cU\u0016\u001cGOB\u0004\u00048-\u0001%a!\u000f\u0003\u0007QK\u0007/\u0006\u0003\u0004<\r\u00053\u0003CB\u001b\u0007{\u0011IEa\u0014\u0011\t)\u00193q\u0008\t\u0004g\r\u0005CaB\u001b\u00046\u0011\u0015\rA\u000e\u0005\u000c\u0003\u001b\u001a)D!f\u0001\n\u0003\ti\u0004\u0003\u0006\u0004H\rU\"\u0011#Q\u0001\n%\nAa[3zA!Y\u0011qSB\u001b\u0005+\u0007I\u0011AB&+\t\u0019y\u0004C\u0006\u0004P\rU\"\u0011#Q\u0001\n\r}\u0012A\u0002<bYV,\u0007\u0005C\u0004\u0014\u0007k!\taa\u0015\u0015\r\rU3qKB-!\u0019\u0011ih!\u000e\u0004@!9\u0011QJB)\u0001\u0004I\u0003\u0002CAL\u0007#\u0002\raa\u0010\t\u0011\ru3Q\u0007C\u0001\u0007?\n\u0011b^5uQZ\u000bG.^3\u0016\t\r\u00054\u0011\u000e\u000b\u0005\u0007G\u001aY\u0007\u0005\u0004\u0004f\rU2q\r\u0008\u0003\u0015\u0001\u00012aMB5\t\u001d\tyca\u0017C\u0002YB\u0001b!\u001c\u0004\\\u0001\u00071qM\u0001\u0002g\"Q!1TB\u001b\u0003\u0003%\ta!\u001d\u0016\t\rM4\u0011\u0010\u000b\u0007\u0007k\u001aYh! \u0011\r\tu4QGB<!\r\u00194\u0011\u0010\u0003\u0007k\r=$\u0019\u0001\u001c\t\u0013\u000553q\u000eI\u0001\u0002\u0004I\u0003BCAL\u0007_\u0002\n\u00111\u0001\u0004x!Q!1WB\u001b#\u0003%\ta!!\u0016\t\t]61\u0011\u0003\u0007k\r}$\u0019\u0001\u001c\t\u0015\t57QGI\u0001\n\u0003\u00199)\u0006\u0003\u0004\n\u000e5UCABFU\u0011\u0019yDa/\u0005\rU\u001a)I1\u00017\u0011%\u0011Io!\u000e\u0002\u0002\u0013\u0005C\u0010\u0003\u0006\u0003n\u000eU\u0012\u0011!C\u0001\u0005_D!Ba>\u00046\u0005\u0005I\u0011ABK)\rQ4q\u0013\u0005\u000b\u0005{\u001c\u0019*!AA\u0002\tE\u0008BCB\u0001\u0007k\t\t\u0011\"\u0011\u0004\u0004A\u00191g!(\u0005\r\r}UC1\u00017\u0005\u0005\t\u0005#B\u0008QS\r\r\u0006cA\u001a\u0004&\u001211qU\u000bC\u0002Y\u0012\u0011A\u0011\t\u0005\u0015\r\u001a\u0019\u000b\u0003\u0004H\u0017\u0011\u00051QV\u000b\u0005\u0007_\u001b),\u0006\u0002\u00042B!!bIBZ!\r\u00194Q\u0017\u0003\u0007k\r-&\u0019\u0001\u001c\t\u000f\re6\u0002\"\u0001\u0004<\u0006I1/\u001b8hY\u0016$xN\\\u000b\u0005\u0007{\u001b\u0019\r\u0006\u0004\u0004@\u000e\u00157q\u0019\t\u0005\u0015\r\u001a\t\rE\u00024\u0007\u0007$a!NB\\\u0005\u00041\u0004bBA\'\u0007o\u0003\r!\u000b\u0005\t\u0003/\u001b9\u000c1\u0001\u0004B\"9\u00111N\u0006\u0005\u0002\r-W\u0003BBg\u0007\'$Baa4\u0004VB!!bIBi!\r\u001941\u001b\u0003\u0007k\r%\'\u0019\u0001\u001c\t\u0011\r]7\u0011\u001aa\u0001\u00073\u000cQ!\u001a7f[N\u0004RaDBn\u0007?L1a!8\u0007\u0005)a$/\u001a9fCR,GM\u0010\t\u0006\u001fAK3\u0011[\u0004\t\u0007G\\\u0001\u0012\u0011\u0002\u0004\u0014\u0005\u0019a*\u001b7\u0008\u0015\r\u001d8\"!A\t\u0002\t\u0019I/A\u0002USB\u0004BA! \u0004l\u001aQ1qG\u0006\u0002\u0002#\u0005!a!<\u0014\u000b\r-hBa\u0014\t\u000fM\u0019Y\u000f\"\u0001\u0004rR\u00111\u0011\u001e\u0005\u000b\u0007k\u001cY/!A\u0005F\r]\u0018\u0001\u0003;p\'R\u0014\u0018N\\4\u0015\u0003uD!\"a\u001b\u0004l\u0006\u0005I\u0011QB~+\u0011\u0019i\u0010b\u0001\u0015\r\r}HQ\u0001C\u0004!\u0019\u0011ih!\u000e\u0005\u0002A\u00191\u0007b\u0001\u0005\rU\u001aIP1\u00017\u0011\u001d\tie!?A\u0002%B\u0001\"a&\u0004z\u0002\u0007A\u0011\u0001\u0005\u000b\t\u0017\u0019Y/!A\u0005\u0002\u00125\u0011aB;oCB\u0004H._\u000b\u0005\t\u001f!9\u0002\u0006\u0003\u0005\u0012\u0011e\u0001#B\u0008\u0002H\u0011M\u0001#B\u0008QS\u0011U\u0001cA\u001a\u0005\u0018\u00111Q\u0007\"\u0003C\u0002YB!\u0002b\u0007\u0005\n\u0005\u0005\t\u0019\u0001C\u000f\u0003\rAH\u0005\r\t\u0007\u0005{\u001a)\u0004\"\u0006\t\u0015\r-21^A\u0001\n\u0013\u0019ic\u0002\u0006\u0005$-\t\t\u0011#\u0001\u0003\tK\t1AQ5o!\u0011\u0011i\u0008b\n\u0007\u0015\tu2\"!A\t\u0002\t!IcE\u0003\u0005(9\u0011y\u0005C\u0004\u0014\tO!\t\u0001\"\u000c\u0015\u0005\u0011\u0015\u0002BCB{\tO\t\t\u0011\"\u0012\u0004x\"Q\u00111\u000eC\u0014\u0003\u0003%\t\tb\r\u0016\t\u0011UB1\u0008\u000b\u000b\to!i\u0004b\u0010\u0005B\u0011\u0015\u0003C\u0002B?\u0005w!I\u0004E\u00024\tw!a!\u000eC\u0019\u0005\u00041\u0004b\u0002B,\tc\u0001\r!\u000b\u0005\u0008\u0005?\"\t\u00041\u0001*\u0011!\u00119\u0007\"\rA\u0002\u0011\r\u0003\u0003\u0002\u0006$\tsA\u0001B!\u001d\u00052\u0001\u0007A1\t\u0005\u000b\t\u0017!9#!A\u0005\u0002\u0012%S\u0003\u0002C&\t3\"B\u0001\"\u0014\u0005\\A)q\"a\u0012\u0005PAIq\u0002\"\u0015*S\u0011UCQK\u0005\u0004\t\'2!A\u0002+va2,G\u0007\u0005\u0003\u000bG\u0011]\u0003cA\u001a\u0005Z\u00111Q\u0007b\u0012C\u0002YB!\u0002b\u0007\u0005H\u0005\u0005\t\u0019\u0001C/!\u0019\u0011iHa\u000f\u0005X!Q11\u0006C\u0014\u0003\u0003%Ia!\u000c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 162
    invoke-direct {p0}, Lscala/collection/immutable/AbstractMap;-><init>()V

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
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lscala/collection/immutable/IntMap$;->MODULE$:Lscala/collection/immutable/IntMap$;

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    return-object v0
.end method

.method public static singleton(ILjava/lang/Object;)Lscala/collection/immutable/IntMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)",
            "Lscala/collection/immutable/IntMap<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/immutable/IntMap$;->MODULE$:Lscala/collection/immutable/IntMap$;

    invoke-virtual {v0, p0, p1}, Lscala/collection/immutable/IntMap$;->singleton(ILjava/lang/Object;)Lscala/collection/immutable/IntMap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic $minus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 162
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/IntMap;->$minus(I)Lscala/collection/immutable/IntMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/Map;
    .locals 0

    .line 162
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/IntMap;->$minus(I)Lscala/collection/immutable/IntMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 162
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/IntMap;->$minus(I)Lscala/collection/immutable/IntMap;

    move-result-object p1

    return-object p1
.end method

.method public $minus(I)Lscala/collection/immutable/IntMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/immutable/IntMap<",
            "TT;>;"
        }
    .end annotation

    .line 315
    instance-of v0, p0, Lscala/collection/immutable/IntMap$Bin;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lscala/collection/immutable/IntMap$Bin;

    .line 317
    sget-object v1, Lscala/collection/immutable/IntMapUtils$;->MODULE$:Lscala/collection/immutable/IntMapUtils$;

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->prefix()I

    move-result v2

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->mask()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Lscala/collection/immutable/IntMapUtils$;->hasMatch(III)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 318
    sget-object v1, Lscala/collection/immutable/IntMapUtils$;->MODULE$:Lscala/collection/immutable/IntMapUtils$;

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->mask()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lscala/collection/immutable/IntMapUtils$;->zero(II)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lscala/collection/immutable/IntMapUtils$;->MODULE$:Lscala/collection/immutable/IntMapUtils$;

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->prefix()I

    move-result v2

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->mask()I

    move-result v3

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->left()Lscala/collection/immutable/IntMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Lscala/collection/immutable/IntMap;->$minus(I)Lscala/collection/immutable/IntMap;

    move-result-object p1

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->right()Lscala/collection/immutable/IntMap;

    move-result-object v0

    invoke-virtual {v1, v2, v3, p1, v0}, Lscala/collection/immutable/IntMapUtils$;->bin(IILscala/collection/immutable/IntMap;Lscala/collection/immutable/IntMap;)Lscala/collection/immutable/IntMap;

    move-result-object p1

    goto :goto_0

    .line 319
    :cond_0
    sget-object v1, Lscala/collection/immutable/IntMapUtils$;->MODULE$:Lscala/collection/immutable/IntMapUtils$;

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->prefix()I

    move-result v2

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->mask()I

    move-result v3

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->left()Lscala/collection/immutable/IntMap;

    move-result-object v4

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->right()Lscala/collection/immutable/IntMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/immutable/IntMap;->$minus(I)Lscala/collection/immutable/IntMap;

    move-result-object p1

    invoke-virtual {v1, v2, v3, v4, p1}, Lscala/collection/immutable/IntMapUtils$;->bin(IILscala/collection/immutable/IntMap;Lscala/collection/immutable/IntMap;)Lscala/collection/immutable/IntMap;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, p0

    goto :goto_0

    .line 320
    :cond_2
    instance-of v0, p0, Lscala/collection/immutable/IntMap$Tip;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Lscala/collection/immutable/IntMap$Tip;

    .line 321
    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Tip;->key()I

    move-result v0

    if-ne p1, v0, :cond_1

    sget-object p1, Lscala/collection/immutable/IntMap$Nil$;->MODULE$:Lscala/collection/immutable/IntMap$Nil$;

    goto :goto_0

    .line 323
    :cond_3
    sget-object p1, Lscala/collection/immutable/IntMap$Nil$;->MODULE$:Lscala/collection/immutable/IntMap$Nil$;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lscala/collection/immutable/IntMap$Nil$;->MODULE$:Lscala/collection/immutable/IntMap$Nil$;

    :goto_0
    return-object p1

    .line 315
    :cond_4
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, p0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/GenMap;
    .locals 0

    .line 162
    invoke-virtual {p0, p1}, Lscala/collection/immutable/IntMap;->$plus(Lscala/Tuple2;)Lscala/collection/immutable/IntMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/Map;
    .locals 0

    .line 162
    invoke-virtual {p0, p1}, Lscala/collection/immutable/IntMap;->$plus(Lscala/Tuple2;)Lscala/collection/immutable/IntMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/Map;
    .locals 0

    .line 162
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/immutable/IntMap;->$plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public $plus(Lscala/Tuple2;)Lscala/collection/immutable/IntMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "TS;>;)",
            "Lscala/collection/immutable/IntMap<",
            "TS;>;"
        }
    .end annotation

    .line 274
    invoke-virtual {p1}, Lscala/Tuple2;->_1$mcI$sp()I

    move-result v0

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lscala/collection/immutable/IntMap;->updated(ILjava/lang/Object;)Lscala/collection/immutable/IntMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/immutable/Map;
    .locals 0

    .line 162
    invoke-virtual {p0, p1}, Lscala/collection/immutable/IntMap;->$plus(Lscala/Tuple2;)Lscala/collection/immutable/IntMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Map;
    .locals 0

    .line 162
    invoke-virtual {p0, p1}, Lscala/collection/immutable/IntMap;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public $plus$plus(Lscala/collection/immutable/IntMap;)Lscala/collection/immutable/IntMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/IntMap<",
            "TS;>;)",
            "Lscala/collection/immutable/IntMap<",
            "TS;>;"
        }
    .end annotation

    .line 428
    new-instance v0, Lscala/collection/immutable/IntMap$$anonfun$$plus$plus$1;

    invoke-direct {v0, p0}, Lscala/collection/immutable/IntMap$$anonfun$$plus$plus$1;-><init>(Lscala/collection/immutable/IntMap;)V

    invoke-virtual {p0, p1, v0}, Lscala/collection/immutable/IntMap;->unionWith(Lscala/collection/immutable/IntMap;Lscala/Function3;)Lscala/collection/immutable/IntMap;

    move-result-object p1

    return-object p1
.end method

.method public final apply(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    move-object v0, p0

    .line 268
    :goto_0
    instance-of v1, v0, Lscala/collection/immutable/IntMap$Bin;

    if-eqz v1, :cond_1

    check-cast v0, Lscala/collection/immutable/IntMap$Bin;

    sget-object v1, Lscala/collection/immutable/IntMapUtils$;->MODULE$:Lscala/collection/immutable/IntMapUtils$;

    .line 269
    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->mask()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lscala/collection/immutable/IntMapUtils$;->zero(II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->left()Lscala/collection/immutable/IntMap;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->right()Lscala/collection/immutable/IntMap;

    move-result-object v0

    goto :goto_0

    .line 270
    :cond_1
    instance-of v1, v0, Lscala/collection/immutable/IntMap$Tip;

    if-eqz v1, :cond_3

    check-cast v0, Lscala/collection/immutable/IntMap$Tip;

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Tip;->key()I

    move-result v1

    if-ne p1, v1, :cond_2

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Tip;->value()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    sget-object p1, Lscala/sys/package$;->MODULE$:Lscala/sys/package$;

    const-string v0, "Key not found"

    invoke-virtual {p1, v0}, Lscala/sys/package$;->error(Ljava/lang/String;)Lscala/runtime/Nothing$;

    move-result-object p1

    throw p1

    .line 271
    :cond_3
    sget-object p1, Lscala/collection/immutable/IntMap$Nil$;->MODULE$:Lscala/collection/immutable/IntMap$Nil$;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lscala/sys/package$;->MODULE$:Lscala/sys/package$;

    const-string v0, "key not found"

    invoke-virtual {p1, v0}, Lscala/sys/package$;->error(Ljava/lang/String;)Lscala/runtime/Nothing$;

    move-result-object p1

    throw p1

    .line 268
    :cond_4
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 162
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/IntMap;->apply(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic empty()Lscala/collection/Map;
    .locals 1

    .line 162
    invoke-virtual {p0}, Lscala/collection/immutable/IntMap;->empty()Lscala/collection/immutable/IntMap;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/immutable/IntMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/IntMap<",
            "TT;>;"
        }
    .end annotation

    .line 166
    sget-object v0, Lscala/collection/immutable/IntMap$Nil$;->MODULE$:Lscala/collection/immutable/IntMap$Nil$;

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/immutable/Map;
    .locals 1

    .line 162
    invoke-virtual {p0}, Lscala/collection/immutable/IntMap;->empty()Lscala/collection/immutable/IntMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic filter(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 162
    invoke-virtual {p0, p1}, Lscala/collection/immutable/IntMap;->filter(Lscala/Function1;)Lscala/collection/immutable/IntMap;

    move-result-object p1

    return-object p1
.end method

.method public filter(Lscala/Function1;)Lscala/collection/immutable/IntMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "TT;>;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/immutable/IntMap<",
            "TT;>;"
        }
    .end annotation

    .line 231
    instance-of v0, p0, Lscala/collection/immutable/IntMap$Bin;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lscala/collection/immutable/IntMap$Bin;

    .line 233
    new-instance v1, Lscala/Tuple2;

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->left()Lscala/collection/immutable/IntMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Lscala/collection/immutable/IntMap;->filter(Lscala/Function1;)Lscala/collection/immutable/IntMap;

    move-result-object v2

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->right()Lscala/collection/immutable/IntMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Lscala/collection/immutable/IntMap;->filter(Lscala/Function1;)Lscala/collection/immutable/IntMap;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Lscala/Tuple2;

    invoke-virtual {v1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p1, v2, v1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/immutable/IntMap;

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/IntMap;

    .line 234
    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->left()Lscala/collection/immutable/IntMap;

    move-result-object v2

    if-ne v2, v1, :cond_0

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->right()Lscala/collection/immutable/IntMap;

    move-result-object v2

    if-ne v2, p1, :cond_0

    :goto_0
    move-object p1, p0

    goto :goto_1

    .line 235
    :cond_0
    sget-object v2, Lscala/collection/immutable/IntMapUtils$;->MODULE$:Lscala/collection/immutable/IntMapUtils$;

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->prefix()I

    move-result v3

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->mask()I

    move-result v0

    invoke-virtual {v2, v3, v0, v1, p1}, Lscala/collection/immutable/IntMapUtils$;->bin(IILscala/collection/immutable/IntMap;Lscala/collection/immutable/IntMap;)Lscala/collection/immutable/IntMap;

    move-result-object p1

    goto :goto_1

    .line 237
    :cond_1
    instance-of v0, p0, Lscala/collection/immutable/IntMap$Tip;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Lscala/collection/immutable/IntMap$Tip;

    .line 238
    new-instance v1, Lscala/Tuple2;

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Tip;->key()I

    move-result v2

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Tip;->value()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 239
    :cond_2
    sget-object p1, Lscala/collection/immutable/IntMap$Nil$;->MODULE$:Lscala/collection/immutable/IntMap$Nil$;

    goto :goto_1

    .line 240
    :cond_3
    sget-object p1, Lscala/collection/immutable/IntMap$Nil$;->MODULE$:Lscala/collection/immutable/IntMap$Nil$;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lscala/collection/immutable/IntMap$Nil$;->MODULE$:Lscala/collection/immutable/IntMap$Nil$;

    :goto_1
    return-object p1

    .line 231
    :cond_4
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, p0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public bridge synthetic filterKeys(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 162
    invoke-virtual {p0, p1}, Lscala/collection/immutable/IntMap;->filterKeys(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic filterKeys(Lscala/Function1;)Lscala/collection/Map;
    .locals 0

    .line 162
    invoke-virtual {p0, p1}, Lscala/collection/immutable/IntMap;->filterKeys(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic filterNot(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 162
    invoke-virtual {p0, p1}, Lscala/collection/immutable/IntMap;->filterNot(Lscala/Function1;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public final firstKey()I
    .locals 2

    move-object v0, p0

    .line 434
    :goto_0
    instance-of v1, v0, Lscala/collection/immutable/IntMap$Bin;

    if-eqz v1, :cond_0

    check-cast v0, Lscala/collection/immutable/IntMap$Bin;

    .line 435
    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->left()Lscala/collection/immutable/IntMap;

    move-result-object v0

    goto :goto_0

    .line 436
    :cond_0
    instance-of v1, v0, Lscala/collection/immutable/IntMap$Tip;

    if-eqz v1, :cond_1

    check-cast v0, Lscala/collection/immutable/IntMap$Tip;

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Tip;->key()I

    move-result v0

    return v0

    .line 437
    :cond_1
    sget-object v1, Lscala/collection/immutable/IntMap$Nil$;->MODULE$:Lscala/collection/immutable/IntMap$Nil$;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lscala/sys/package$;->MODULE$:Lscala/sys/package$;

    const-string v1, "Empty set"

    invoke-virtual {v0, v1}, Lscala/sys/package$;->error(Ljava/lang/String;)Lscala/runtime/Nothing$;

    move-result-object v0

    throw v0

    .line 434
    :cond_2
    new-instance v1, Lscala/MatchError;

    invoke-direct {v1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final foreach(Lscala/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "TT;>;TU;>;)V"
        }
    .end annotation

    move-object v0, p0

    .line 187
    :goto_0
    instance-of v1, v0, Lscala/collection/immutable/IntMap$Bin;

    if-eqz v1, :cond_0

    check-cast v0, Lscala/collection/immutable/IntMap$Bin;

    .line 188
    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->left()Lscala/collection/immutable/IntMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lscala/collection/immutable/IntMap;->foreach(Lscala/Function1;)V

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->right()Lscala/collection/immutable/IntMap;

    move-result-object v0

    goto :goto_0

    .line 189
    :cond_0
    instance-of v1, v0, Lscala/collection/immutable/IntMap$Tip;

    if-eqz v1, :cond_1

    check-cast v0, Lscala/collection/immutable/IntMap$Tip;

    new-instance v1, Lscala/Tuple2;

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Tip;->key()I

    move-result v2

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Tip;->value()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_1

    .line 190
    :cond_1
    sget-object p1, Lscala/collection/immutable/IntMap$Nil$;->MODULE$:Lscala/collection/immutable/IntMap$Nil$;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 187
    :goto_1
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-void

    :cond_2
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public final foreachKey(Lscala/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Lscala/runtime/BoxedUnit;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 204
    :goto_0
    instance-of v1, v0, Lscala/collection/immutable/IntMap$Bin;

    if-eqz v1, :cond_0

    check-cast v0, Lscala/collection/immutable/IntMap$Bin;

    .line 205
    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->left()Lscala/collection/immutable/IntMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lscala/collection/immutable/IntMap;->foreachKey(Lscala/Function1;)V

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->right()Lscala/collection/immutable/IntMap;

    move-result-object v0

    goto :goto_0

    .line 206
    :cond_0
    instance-of v1, v0, Lscala/collection/immutable/IntMap$Tip;

    if-eqz v1, :cond_1

    check-cast v0, Lscala/collection/immutable/IntMap$Tip;

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Tip;->key()I

    move-result v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply$mcVI$sp(I)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_1

    .line 207
    :cond_1
    sget-object p1, Lscala/collection/immutable/IntMap$Nil$;->MODULE$:Lscala/collection/immutable/IntMap$Nil$;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 204
    :goto_1
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-void

    :cond_2
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public final foreachValue(Lscala/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TT;",
            "Lscala/runtime/BoxedUnit;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 221
    :goto_0
    instance-of v1, v0, Lscala/collection/immutable/IntMap$Bin;

    if-eqz v1, :cond_0

    check-cast v0, Lscala/collection/immutable/IntMap$Bin;

    .line 222
    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->left()Lscala/collection/immutable/IntMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lscala/collection/immutable/IntMap;->foreachValue(Lscala/Function1;)V

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->right()Lscala/collection/immutable/IntMap;

    move-result-object v0

    goto :goto_0

    .line 223
    :cond_0
    instance-of v1, v0, Lscala/collection/immutable/IntMap$Tip;

    if-eqz v1, :cond_1

    check-cast v0, Lscala/collection/immutable/IntMap$Tip;

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Tip;->value()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/runtime/BoxedUnit;

    goto :goto_1

    .line 224
    :cond_1
    sget-object p1, Lscala/collection/immutable/IntMap$Nil$;->MODULE$:Lscala/collection/immutable/IntMap$Nil$;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 221
    :goto_1
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-void

    :cond_2
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public final get(I)Lscala/Option;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/Option<",
            "TT;>;"
        }
    .end annotation

    move-object v0, p0

    .line 255
    :goto_0
    instance-of v1, v0, Lscala/collection/immutable/IntMap$Bin;

    if-eqz v1, :cond_1

    check-cast v0, Lscala/collection/immutable/IntMap$Bin;

    sget-object v1, Lscala/collection/immutable/IntMapUtils$;->MODULE$:Lscala/collection/immutable/IntMapUtils$;

    .line 256
    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->mask()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lscala/collection/immutable/IntMapUtils$;->zero(II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->left()Lscala/collection/immutable/IntMap;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->right()Lscala/collection/immutable/IntMap;

    move-result-object v0

    goto :goto_0

    .line 257
    :cond_1
    instance-of v1, v0, Lscala/collection/immutable/IntMap$Tip;

    if-eqz v1, :cond_3

    check-cast v0, Lscala/collection/immutable/IntMap$Tip;

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Tip;->key()I

    move-result v1

    if-ne p1, v1, :cond_2

    new-instance p1, Lscala/Some;

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Tip;->value()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, v0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_1

    .line 258
    :cond_3
    sget-object p1, Lscala/collection/immutable/IntMap$Nil$;->MODULE$:Lscala/collection/immutable/IntMap$Nil$;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    :goto_1
    return-object p1

    .line 255
    :cond_4
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public final bridge synthetic get(Ljava/lang/Object;)Lscala/Option;
    .locals 0

    .line 162
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/IntMap;->get(I)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public final getOrElse(ILscala/Function0;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(I",
            "Lscala/Function0<",
            "TS;>;)TS;"
        }
    .end annotation

    move-object v0, p0

    .line 261
    :goto_0
    sget-object v1, Lscala/collection/immutable/IntMap$Nil$;->MODULE$:Lscala/collection/immutable/IntMap$Nil$;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    .line 263
    :cond_0
    instance-of v1, v0, Lscala/collection/immutable/IntMap$Tip;

    if-eqz v1, :cond_2

    check-cast v0, Lscala/collection/immutable/IntMap$Tip;

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Tip;->key()I

    move-result v1

    if-ne p1, v1, :cond_1

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Tip;->value()Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p1

    :goto_1
    return-object p1

    .line 264
    :cond_2
    instance-of v1, v0, Lscala/collection/immutable/IntMap$Bin;

    if-eqz v1, :cond_4

    check-cast v0, Lscala/collection/immutable/IntMap$Bin;

    .line 265
    sget-object v1, Lscala/collection/immutable/IntMapUtils$;->MODULE$:Lscala/collection/immutable/IntMapUtils$;

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->mask()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lscala/collection/immutable/IntMapUtils$;->zero(II)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->left()Lscala/collection/immutable/IntMap;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->right()Lscala/collection/immutable/IntMap;

    move-result-object v0

    goto :goto_0

    .line 261
    :cond_4
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public final bridge synthetic getOrElse(Ljava/lang/Object;Lscala/Function0;)Ljava/lang/Object;
    .locals 0

    .line 162
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/IntMap;->getOrElse(ILscala/Function0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 162
    invoke-virtual {p0, p1}, Lscala/collection/immutable/IntMap;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public intersection(Lscala/collection/immutable/IntMap;)Lscala/collection/immutable/IntMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/IntMap<",
            "TR;>;)",
            "Lscala/collection/immutable/IntMap<",
            "TT;>;"
        }
    .end annotation

    .line 425
    new-instance v0, Lscala/collection/immutable/IntMap$$anonfun$intersection$1;

    invoke-direct {v0, p0}, Lscala/collection/immutable/IntMap$$anonfun$intersection$1;-><init>(Lscala/collection/immutable/IntMap;)V

    invoke-virtual {p0, p1, v0}, Lscala/collection/immutable/IntMap;->intersectionWith(Lscala/collection/immutable/IntMap;Lscala/Function3;)Lscala/collection/immutable/IntMap;

    move-result-object p1

    return-object p1
.end method

.method public intersectionWith(Lscala/collection/immutable/IntMap;Lscala/Function3;)Lscala/collection/immutable/IntMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/IntMap<",
            "TS;>;",
            "Lscala/Function3<",
            "Ljava/lang/Object;",
            "TT;TS;TR;>;)",
            "Lscala/collection/immutable/IntMap<",
            "TR;>;"
        }
    .end annotation

    .line 393
    new-instance v0, Lscala/Tuple2;

    invoke-direct {v0, p0, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 394
    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lscala/collection/immutable/IntMap$Bin;

    if-eqz p1, :cond_6

    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/IntMap$Bin;

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lscala/collection/immutable/IntMap$Bin;

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/IntMap$Bin;

    .line 395
    sget-object v1, Lscala/collection/immutable/IntMapUtils$;->MODULE$:Lscala/collection/immutable/IntMapUtils$;

    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Bin;->mask()I

    move-result v2

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->mask()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lscala/collection/immutable/IntMapUtils$;->shorter(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 396
    sget-object v1, Lscala/collection/immutable/IntMapUtils$;->MODULE$:Lscala/collection/immutable/IntMapUtils$;

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->prefix()I

    move-result v2

    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Bin;->prefix()I

    move-result v3

    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Bin;->mask()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lscala/collection/immutable/IntMapUtils$;->hasMatch(III)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 397
    sget-object v1, Lscala/collection/immutable/IntMapUtils$;->MODULE$:Lscala/collection/immutable/IntMapUtils$;

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->prefix()I

    move-result v2

    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Bin;->mask()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lscala/collection/immutable/IntMapUtils$;->zero(II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Bin;->left()Lscala/collection/immutable/IntMap;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lscala/collection/immutable/IntMap;->intersectionWith(Lscala/collection/immutable/IntMap;Lscala/Function3;)Lscala/collection/immutable/IntMap;

    move-result-object p1

    goto/16 :goto_1

    .line 398
    :cond_0
    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Bin;->right()Lscala/collection/immutable/IntMap;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lscala/collection/immutable/IntMap;->intersectionWith(Lscala/collection/immutable/IntMap;Lscala/Function3;)Lscala/collection/immutable/IntMap;

    move-result-object p1

    goto/16 :goto_1

    .line 396
    :cond_1
    sget-object p1, Lscala/collection/immutable/IntMap$Nil$;->MODULE$:Lscala/collection/immutable/IntMap$Nil$;

    goto/16 :goto_1

    .line 399
    :cond_2
    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Bin;->mask()I

    move-result v1

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->mask()I

    move-result v2

    if-ne v1, v2, :cond_3

    sget-object v1, Lscala/collection/immutable/IntMapUtils$;->MODULE$:Lscala/collection/immutable/IntMapUtils$;

    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Bin;->prefix()I

    move-result v2

    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Bin;->mask()I

    move-result v3

    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Bin;->left()Lscala/collection/immutable/IntMap;

    move-result-object v4

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->left()Lscala/collection/immutable/IntMap;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Lscala/collection/immutable/IntMap;->intersectionWith(Lscala/collection/immutable/IntMap;Lscala/Function3;)Lscala/collection/immutable/IntMap;

    move-result-object v4

    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Bin;->right()Lscala/collection/immutable/IntMap;

    move-result-object p1

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->right()Lscala/collection/immutable/IntMap;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lscala/collection/immutable/IntMap;->intersectionWith(Lscala/collection/immutable/IntMap;Lscala/Function3;)Lscala/collection/immutable/IntMap;

    move-result-object p1

    invoke-virtual {v1, v2, v3, v4, p1}, Lscala/collection/immutable/IntMapUtils$;->bin(IILscala/collection/immutable/IntMap;Lscala/collection/immutable/IntMap;)Lscala/collection/immutable/IntMap;

    move-result-object p1

    goto/16 :goto_1

    .line 401
    :cond_3
    sget-object v1, Lscala/collection/immutable/IntMapUtils$;->MODULE$:Lscala/collection/immutable/IntMapUtils$;

    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Bin;->prefix()I

    move-result v2

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->prefix()I

    move-result v3

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->mask()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lscala/collection/immutable/IntMapUtils$;->hasMatch(III)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 402
    sget-object v1, Lscala/collection/immutable/IntMapUtils$;->MODULE$:Lscala/collection/immutable/IntMapUtils$;

    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Bin;->prefix()I

    move-result p1

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->mask()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lscala/collection/immutable/IntMapUtils$;->zero(II)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->left()Lscala/collection/immutable/IntMap;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/IntMap;->intersectionWith(Lscala/collection/immutable/IntMap;Lscala/Function3;)Lscala/collection/immutable/IntMap;

    move-result-object p1

    goto/16 :goto_1

    .line 403
    :cond_4
    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->right()Lscala/collection/immutable/IntMap;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/IntMap;->intersectionWith(Lscala/collection/immutable/IntMap;Lscala/Function3;)Lscala/collection/immutable/IntMap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 401
    :cond_5
    sget-object p1, Lscala/collection/immutable/IntMap$Nil$;->MODULE$:Lscala/collection/immutable/IntMap$Nil$;

    goto/16 :goto_1

    .line 405
    :cond_6
    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lscala/collection/immutable/IntMap$Tip;

    if-eqz p1, :cond_9

    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/IntMap$Tip;

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/IntMap;

    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Tip;->key()I

    move-result v1

    invoke-virtual {v0, v1}, Lscala/collection/immutable/IntMap;->get(I)Lscala/Option;

    move-result-object v0

    .line 406
    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object p1, Lscala/collection/immutable/IntMap$Nil$;->MODULE$:Lscala/collection/immutable/IntMap$Nil$;

    goto/16 :goto_1

    .line 407
    :cond_7
    instance-of v1, v0, Lscala/Some;

    if-eqz v1, :cond_8

    check-cast v0, Lscala/Some;

    new-instance v1, Lscala/collection/immutable/IntMap$Tip;

    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Tip;->key()I

    move-result v2

    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Tip;->key()I

    move-result v3

    invoke-static {v3}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Tip;->value()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v3, p1, v0}, Lscala/Function3;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lscala/collection/immutable/IntMap$Tip;-><init>(ILjava/lang/Object;)V

    :goto_0
    move-object p1, v1

    goto :goto_1

    .line 405
    :cond_8
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 409
    :cond_9
    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lscala/collection/immutable/IntMap$Tip;

    if-eqz p1, :cond_c

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/IntMap$Tip;

    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Tip;->key()I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/IntMap;->get(I)Lscala/Option;

    move-result-object v0

    .line 410
    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object p1, Lscala/collection/immutable/IntMap$Nil$;->MODULE$:Lscala/collection/immutable/IntMap$Nil$;

    goto :goto_1

    .line 411
    :cond_a
    instance-of v1, v0, Lscala/Some;

    if-eqz v1, :cond_b

    check-cast v0, Lscala/Some;

    new-instance v1, Lscala/collection/immutable/IntMap$Tip;

    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Tip;->key()I

    move-result v2

    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Tip;->key()I

    move-result v3

    invoke-static {v3}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Tip;->value()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, v3, v0, p1}, Lscala/Function3;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lscala/collection/immutable/IntMap$Tip;-><init>(ILjava/lang/Object;)V

    goto :goto_0

    .line 409
    :cond_b
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 413
    :cond_c
    sget-object p1, Lscala/collection/immutable/IntMap$Nil$;->MODULE$:Lscala/collection/immutable/IntMap$Nil$;

    :goto_1
    return-object p1

    :catchall_0
    move-exception p1

    .line 403
    throw p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 229
    sget-object v0, Lscala/collection/immutable/IntMap$Nil$;->MODULE$:Lscala/collection/immutable/IntMap$Nil$;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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
            "Ljava/lang/Object;",
            "TT;>;>;"
        }
    .end annotation

    .line 179
    sget-object v0, Lscala/collection/immutable/IntMap$Nil$;->MODULE$:Lscala/collection/immutable/IntMap$Nil$;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {v0}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object v0

    goto :goto_0

    .line 181
    :cond_0
    new-instance v0, Lscala/collection/immutable/IntMapEntryIterator;

    invoke-direct {v0, p0}, Lscala/collection/immutable/IntMapEntryIterator;-><init>(Lscala/collection/immutable/IntMap;)V

    :goto_0
    return-object v0
.end method

.method public bridge synthetic keySet()Lscala/collection/GenSet;
    .locals 1

    .line 162
    invoke-virtual {p0}, Lscala/collection/immutable/IntMap;->keySet()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Lscala/collection/Set;
    .locals 1

    .line 162
    invoke-virtual {p0}, Lscala/collection/immutable/IntMap;->keySet()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keys()Lscala/collection/GenIterable;
    .locals 1

    .line 162
    invoke-virtual {p0}, Lscala/collection/immutable/IntMap;->keys()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public keysIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 193
    sget-object v0, Lscala/collection/immutable/IntMap$Nil$;->MODULE$:Lscala/collection/immutable/IntMap$Nil$;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {v0}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object v0

    goto :goto_0

    .line 195
    :cond_0
    new-instance v0, Lscala/collection/immutable/IntMapKeyIterator;

    invoke-direct {v0, p0}, Lscala/collection/immutable/IntMapKeyIterator;-><init>(Lscala/collection/immutable/IntMap;)V

    :goto_0
    return-object v0
.end method

.method public final lastKey()I
    .locals 2

    move-object v0, p0

    .line 444
    :goto_0
    instance-of v1, v0, Lscala/collection/immutable/IntMap$Bin;

    if-eqz v1, :cond_0

    check-cast v0, Lscala/collection/immutable/IntMap$Bin;

    .line 445
    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->right()Lscala/collection/immutable/IntMap;

    move-result-object v0

    goto :goto_0

    .line 446
    :cond_0
    instance-of v1, v0, Lscala/collection/immutable/IntMap$Tip;

    if-eqz v1, :cond_1

    check-cast v0, Lscala/collection/immutable/IntMap$Tip;

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Tip;->key()I

    move-result v0

    return v0

    .line 447
    :cond_1
    sget-object v1, Lscala/collection/immutable/IntMap$Nil$;->MODULE$:Lscala/collection/immutable/IntMap$Nil$;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lscala/sys/package$;->MODULE$:Lscala/sys/package$;

    const-string v1, "Empty set"

    invoke-virtual {v0, v1}, Lscala/sys/package$;->error(Ljava/lang/String;)Lscala/runtime/Nothing$;

    move-result-object v0

    throw v0

    .line 444
    :cond_2
    new-instance v1, Lscala/MatchError;

    invoke-direct {v1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public bridge synthetic mapValues(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 162
    invoke-virtual {p0, p1}, Lscala/collection/immutable/IntMap;->mapValues(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mapValues(Lscala/Function1;)Lscala/collection/Map;
    .locals 0

    .line 162
    invoke-virtual {p0, p1}, Lscala/collection/immutable/IntMap;->mapValues(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public modifyOrRemove(Lscala/Function2;)Lscala/collection/immutable/IntMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "Ljava/lang/Object;",
            "TT;",
            "Lscala/Option<",
            "TS;>;>;)",
            "Lscala/collection/immutable/IntMap<",
            "TS;>;"
        }
    .end annotation

    .line 335
    instance-of v0, p0, Lscala/collection/immutable/IntMap$Bin;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lscala/collection/immutable/IntMap$Bin;

    .line 337
    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->left()Lscala/collection/immutable/IntMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lscala/collection/immutable/IntMap;->modifyOrRemove(Lscala/Function2;)Lscala/collection/immutable/IntMap;

    move-result-object v1

    .line 338
    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->right()Lscala/collection/immutable/IntMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Lscala/collection/immutable/IntMap;->modifyOrRemove(Lscala/Function2;)Lscala/collection/immutable/IntMap;

    move-result-object p1

    .line 339
    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->left()Lscala/collection/immutable/IntMap;

    move-result-object v2

    if-ne v2, v1, :cond_0

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->right()Lscala/collection/immutable/IntMap;

    move-result-object v2

    if-ne v2, p1, :cond_0

    move-object p1, p0

    goto :goto_1

    .line 340
    :cond_0
    sget-object v2, Lscala/collection/immutable/IntMapUtils$;->MODULE$:Lscala/collection/immutable/IntMapUtils$;

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->prefix()I

    move-result v3

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->mask()I

    move-result v0

    invoke-virtual {v2, v3, v0, v1, p1}, Lscala/collection/immutable/IntMapUtils$;->bin(IILscala/collection/immutable/IntMap;Lscala/collection/immutable/IntMap;)Lscala/collection/immutable/IntMap;

    move-result-object p1

    goto :goto_1

    .line 341
    :cond_1
    instance-of v0, p0, Lscala/collection/immutable/IntMap$Tip;

    if-eqz v0, :cond_5

    move-object v0, p0

    check-cast v0, Lscala/collection/immutable/IntMap$Tip;

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Tip;->key()I

    move-result v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Tip;->value()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/Option;

    .line 342
    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 343
    sget-object p1, Lscala/collection/immutable/IntMap$Nil$;->MODULE$:Lscala/collection/immutable/IntMap$Nil$;

    goto :goto_1

    .line 344
    :cond_2
    instance-of v1, p1, Lscala/Some;

    if-eqz v1, :cond_4

    check-cast p1, Lscala/Some;

    .line 346
    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Tip;->value()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_3

    move-object v1, p0

    goto :goto_0

    .line 347
    :cond_3
    new-instance v1, Lscala/collection/immutable/IntMap$Tip;

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Tip;->key()I

    move-result v0

    invoke-virtual {p1}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lscala/collection/immutable/IntMap$Tip;-><init>(ILjava/lang/Object;)V

    :goto_0
    move-object p1, v1

    goto :goto_1

    .line 341
    :cond_4
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 349
    :cond_5
    sget-object p1, Lscala/collection/immutable/IntMap$Nil$;->MODULE$:Lscala/collection/immutable/IntMap$Nil$;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 350
    sget-object p1, Lscala/collection/immutable/IntMap$Nil$;->MODULE$:Lscala/collection/immutable/IntMap$Nil$;

    :goto_1
    return-object p1

    .line 335
    :cond_6
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, p0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public bridge synthetic repr()Lscala/collection/generic/Subtractable;
    .locals 1

    .line 162
    invoke-virtual {p0}, Lscala/collection/immutable/IntMap;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/generic/Subtractable;

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Map;
    .locals 1

    .line 162
    invoke-virtual {p0}, Lscala/collection/immutable/IntMap;->seq()Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 2

    .line 249
    sget-object v0, Lscala/collection/immutable/IntMap$Nil$;->MODULE$:Lscala/collection/immutable/IntMap$Nil$;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 251
    :cond_0
    instance-of v0, p0, Lscala/collection/immutable/IntMap$Tip;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 252
    :cond_1
    instance-of v0, p0, Lscala/collection/immutable/IntMap$Bin;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lscala/collection/immutable/IntMap$Bin;

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->left()Lscala/collection/immutable/IntMap;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/immutable/IntMap;->size()I

    move-result v1

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->right()Lscala/collection/immutable/IntMap;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap;->size()I

    move-result v0

    add-int/2addr v0, v1

    :goto_0
    return v0

    .line 249
    :cond_2
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public stringPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "IntMap"

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 162
    invoke-virtual {p0}, Lscala/collection/immutable/IntMap;->thisCollection()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 162
    invoke-virtual {p0, p1}, Lscala/collection/immutable/IntMap;->toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 162
    invoke-virtual {p0}, Lscala/collection/immutable/IntMap;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public toList()Lscala/collection/immutable/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "TT;>;>;"
        }
    .end annotation

    .line 169
    new-instance v0, Lscala/collection/mutable/ListBuffer;

    invoke-direct {v0}, Lscala/collection/mutable/ListBuffer;-><init>()V

    .line 170
    new-instance v1, Lscala/collection/immutable/IntMap$$anonfun$toList$1;

    invoke-direct {v1, p0, v0}, Lscala/collection/immutable/IntMap$$anonfun$toList$1;-><init>(Lscala/collection/immutable/IntMap;Lscala/collection/mutable/ListBuffer;)V

    invoke-virtual {p0, v1}, Lscala/collection/immutable/IntMap;->foreach(Lscala/Function1;)V

    .line 171
    invoke-virtual {v0}, Lscala/collection/mutable/ListBuffer;->toList()Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 162
    invoke-virtual {p0}, Lscala/collection/immutable/IntMap;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 162
    invoke-virtual {p0}, Lscala/collection/immutable/IntMap;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lscala/Function2;)Lscala/collection/immutable/IntMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "Ljava/lang/Object;",
            "TT;TS;>;)",
            "Lscala/collection/immutable/IntMap<",
            "TS;>;"
        }
    .end annotation

    .line 243
    instance-of v0, p0, Lscala/collection/immutable/IntMap$Bin;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lscala/collection/immutable/IntMap$Bin;

    .line 244
    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->left()Lscala/collection/immutable/IntMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lscala/collection/immutable/IntMap;->transform(Lscala/Function2;)Lscala/collection/immutable/IntMap;

    move-result-object v1

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->right()Lscala/collection/immutable/IntMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Lscala/collection/immutable/IntMap;->transform(Lscala/Function2;)Lscala/collection/immutable/IntMap;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lscala/collection/immutable/IntMap$Bin;->bin(Lscala/collection/immutable/IntMap;Lscala/collection/immutable/IntMap;)Lscala/collection/immutable/IntMap;

    move-result-object p1

    goto :goto_0

    .line 245
    :cond_0
    instance-of v0, p0, Lscala/collection/immutable/IntMap$Tip;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lscala/collection/immutable/IntMap$Tip;

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Tip;->key()I

    move-result v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Tip;->value()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/collection/immutable/IntMap$Tip;->withValue(Ljava/lang/Object;)Lscala/collection/immutable/IntMap$Tip;

    move-result-object p1

    goto :goto_0

    .line 246
    :cond_1
    sget-object p1, Lscala/collection/immutable/IntMap$Nil$;->MODULE$:Lscala/collection/immutable/IntMap$Nil$;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lscala/collection/immutable/IntMap$Nil$;->MODULE$:Lscala/collection/immutable/IntMap$Nil$;

    :goto_0
    return-object p1

    .line 243
    :cond_2
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, p0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public unionWith(Lscala/collection/immutable/IntMap;Lscala/Function3;)Lscala/collection/immutable/IntMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/IntMap<",
            "TS;>;",
            "Lscala/Function3<",
            "Ljava/lang/Object;",
            "TS;TS;TS;>;)",
            "Lscala/collection/immutable/IntMap<",
            "TS;>;"
        }
    .end annotation

    .line 361
    new-instance v0, Lscala/Tuple2;

    invoke-direct {v0, p0, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 362
    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lscala/collection/immutable/IntMap$Bin;

    if-eqz p1, :cond_7

    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/IntMap$Bin;

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lscala/collection/immutable/IntMap$Bin;

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/IntMap$Bin;

    .line 363
    sget-object v1, Lscala/collection/immutable/IntMapUtils$;->MODULE$:Lscala/collection/immutable/IntMapUtils$;

    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Bin;->mask()I

    move-result v2

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->mask()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lscala/collection/immutable/IntMapUtils$;->shorter(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 364
    sget-object v1, Lscala/collection/immutable/IntMapUtils$;->MODULE$:Lscala/collection/immutable/IntMapUtils$;

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->prefix()I

    move-result v2

    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Bin;->prefix()I

    move-result v3

    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Bin;->mask()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lscala/collection/immutable/IntMapUtils$;->hasMatch(III)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 365
    sget-object v1, Lscala/collection/immutable/IntMapUtils$;->MODULE$:Lscala/collection/immutable/IntMapUtils$;

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->prefix()I

    move-result v2

    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Bin;->mask()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lscala/collection/immutable/IntMapUtils$;->zero(II)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lscala/collection/immutable/IntMap$Bin;

    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Bin;->prefix()I

    move-result v2

    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Bin;->mask()I

    move-result v3

    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Bin;->left()Lscala/collection/immutable/IntMap;

    move-result-object v4

    invoke-virtual {v4, v0, p2}, Lscala/collection/immutable/IntMap;->unionWith(Lscala/collection/immutable/IntMap;Lscala/Function3;)Lscala/collection/immutable/IntMap;

    move-result-object p2

    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Bin;->right()Lscala/collection/immutable/IntMap;

    move-result-object p1

    invoke-direct {v1, v2, v3, p2, p1}, Lscala/collection/immutable/IntMap$Bin;-><init>(IILscala/collection/immutable/IntMap;Lscala/collection/immutable/IntMap;)V

    goto/16 :goto_0

    .line 366
    :cond_0
    new-instance v1, Lscala/collection/immutable/IntMap$Bin;

    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Bin;->prefix()I

    move-result v2

    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Bin;->mask()I

    move-result v3

    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Bin;->left()Lscala/collection/immutable/IntMap;

    move-result-object v4

    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Bin;->right()Lscala/collection/immutable/IntMap;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lscala/collection/immutable/IntMap;->unionWith(Lscala/collection/immutable/IntMap;Lscala/Function3;)Lscala/collection/immutable/IntMap;

    move-result-object p1

    invoke-direct {v1, v2, v3, v4, p1}, Lscala/collection/immutable/IntMap$Bin;-><init>(IILscala/collection/immutable/IntMap;Lscala/collection/immutable/IntMap;)V

    goto/16 :goto_0

    .line 364
    :cond_1
    sget-object p2, Lscala/collection/immutable/IntMapUtils$;->MODULE$:Lscala/collection/immutable/IntMapUtils$;

    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Bin;->prefix()I

    move-result p1

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->prefix()I

    move-result v1

    invoke-virtual {p2, p1, p0, v1, v0}, Lscala/collection/immutable/IntMapUtils$;->join(ILscala/collection/immutable/IntMap;ILscala/collection/immutable/IntMap;)Lscala/collection/immutable/IntMap;

    move-result-object v1

    goto/16 :goto_0

    .line 367
    :cond_2
    sget-object v1, Lscala/collection/immutable/IntMapUtils$;->MODULE$:Lscala/collection/immutable/IntMapUtils$;

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->mask()I

    move-result v2

    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Bin;->mask()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lscala/collection/immutable/IntMapUtils$;->shorter(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 368
    sget-object v1, Lscala/collection/immutable/IntMapUtils$;->MODULE$:Lscala/collection/immutable/IntMapUtils$;

    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Bin;->prefix()I

    move-result v2

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->prefix()I

    move-result v3

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->mask()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lscala/collection/immutable/IntMapUtils$;->hasMatch(III)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 369
    sget-object v1, Lscala/collection/immutable/IntMapUtils$;->MODULE$:Lscala/collection/immutable/IntMapUtils$;

    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Bin;->prefix()I

    move-result p1

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->mask()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lscala/collection/immutable/IntMapUtils$;->zero(II)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance v1, Lscala/collection/immutable/IntMap$Bin;

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->prefix()I

    move-result p1

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->mask()I

    move-result v2

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->left()Lscala/collection/immutable/IntMap;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lscala/collection/immutable/IntMap;->unionWith(Lscala/collection/immutable/IntMap;Lscala/Function3;)Lscala/collection/immutable/IntMap;

    move-result-object p2

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->right()Lscala/collection/immutable/IntMap;

    move-result-object v0

    invoke-direct {v1, p1, v2, p2, v0}, Lscala/collection/immutable/IntMap$Bin;-><init>(IILscala/collection/immutable/IntMap;Lscala/collection/immutable/IntMap;)V

    goto/16 :goto_0

    .line 370
    :cond_3
    new-instance v1, Lscala/collection/immutable/IntMap$Bin;

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->prefix()I

    move-result p1

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->mask()I

    move-result v2

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->left()Lscala/collection/immutable/IntMap;

    move-result-object v3

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->right()Lscala/collection/immutable/IntMap;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lscala/collection/immutable/IntMap;->unionWith(Lscala/collection/immutable/IntMap;Lscala/Function3;)Lscala/collection/immutable/IntMap;

    move-result-object p2

    invoke-direct {v1, p1, v2, v3, p2}, Lscala/collection/immutable/IntMap$Bin;-><init>(IILscala/collection/immutable/IntMap;Lscala/collection/immutable/IntMap;)V

    goto/16 :goto_0

    .line 368
    :cond_4
    sget-object p2, Lscala/collection/immutable/IntMapUtils$;->MODULE$:Lscala/collection/immutable/IntMapUtils$;

    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Bin;->prefix()I

    move-result p1

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->prefix()I

    move-result v1

    invoke-virtual {p2, p1, p0, v1, v0}, Lscala/collection/immutable/IntMapUtils$;->join(ILscala/collection/immutable/IntMap;ILscala/collection/immutable/IntMap;)Lscala/collection/immutable/IntMap;

    move-result-object v1

    goto/16 :goto_0

    .line 373
    :cond_5
    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Bin;->prefix()I

    move-result v1

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->prefix()I

    move-result v2

    if-ne v1, v2, :cond_6

    new-instance v1, Lscala/collection/immutable/IntMap$Bin;

    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Bin;->prefix()I

    move-result v2

    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Bin;->mask()I

    move-result v3

    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Bin;->left()Lscala/collection/immutable/IntMap;

    move-result-object v4

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->left()Lscala/collection/immutable/IntMap;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Lscala/collection/immutable/IntMap;->unionWith(Lscala/collection/immutable/IntMap;Lscala/Function3;)Lscala/collection/immutable/IntMap;

    move-result-object v4

    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Bin;->right()Lscala/collection/immutable/IntMap;

    move-result-object p1

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->right()Lscala/collection/immutable/IntMap;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1, v0, p2}, Lscala/collection/immutable/IntMap;->unionWith(Lscala/collection/immutable/IntMap;Lscala/Function3;)Lscala/collection/immutable/IntMap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {v1, v2, v3, v4, p1}, Lscala/collection/immutable/IntMap$Bin;-><init>(IILscala/collection/immutable/IntMap;Lscala/collection/immutable/IntMap;)V

    goto/16 :goto_0

    .line 374
    :cond_6
    sget-object p2, Lscala/collection/immutable/IntMapUtils$;->MODULE$:Lscala/collection/immutable/IntMapUtils$;

    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Bin;->prefix()I

    move-result p1

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->prefix()I

    move-result v1

    invoke-virtual {p2, p1, p0, v1, v0}, Lscala/collection/immutable/IntMapUtils$;->join(ILscala/collection/immutable/IntMap;ILscala/collection/immutable/IntMap;)Lscala/collection/immutable/IntMap;

    move-result-object v1

    goto/16 :goto_0

    .line 376
    :cond_7
    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lscala/collection/immutable/IntMap$Tip;

    if-eqz p1, :cond_8

    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/IntMap$Tip;

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/IntMap;

    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Tip;->key()I

    move-result v1

    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Tip;->value()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lscala/collection/immutable/IntMap$$anonfun$unionWith$1;

    invoke-direct {v3, p0, p2, p1}, Lscala/collection/immutable/IntMap$$anonfun$unionWith$1;-><init>(Lscala/collection/immutable/IntMap;Lscala/Function3;Lscala/collection/immutable/IntMap$Tip;)V

    invoke-virtual {v0, v1, v2, v3}, Lscala/collection/immutable/IntMap;->updateWith(ILjava/lang/Object;Lscala/Function2;)Lscala/collection/immutable/IntMap;

    move-result-object v1

    goto :goto_0

    .line 377
    :cond_8
    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lscala/collection/immutable/IntMap$Tip;

    if-eqz p1, :cond_9

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/IntMap$Tip;

    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/IntMap;

    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Tip;->key()I

    move-result v1

    invoke-virtual {p1}, Lscala/collection/immutable/IntMap$Tip;->value()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lscala/collection/immutable/IntMap$$anonfun$unionWith$2;

    invoke-direct {v3, p0, p2, p1}, Lscala/collection/immutable/IntMap$$anonfun$unionWith$2;-><init>(Lscala/collection/immutable/IntMap;Lscala/Function3;Lscala/collection/immutable/IntMap$Tip;)V

    invoke-virtual {v0, v1, v2, v3}, Lscala/collection/immutable/IntMap;->updateWith(ILjava/lang/Object;Lscala/Function2;)Lscala/collection/immutable/IntMap;

    move-result-object v1

    goto :goto_0

    .line 378
    :cond_9
    sget-object p1, Lscala/collection/immutable/IntMap$Nil$;->MODULE$:Lscala/collection/immutable/IntMap$Nil$;

    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lscala/collection/immutable/IntMap;

    goto :goto_0

    .line 379
    :cond_a
    sget-object p1, Lscala/collection/immutable/IntMap$Nil$;->MODULE$:Lscala/collection/immutable/IntMap$Nil$;

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lscala/collection/immutable/IntMap;

    :goto_0
    return-object v1

    .line 361
    :cond_b
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 373
    throw p1
.end method

.method public updateWith(ILjava/lang/Object;Lscala/Function2;)Lscala/collection/immutable/IntMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(ITS;",
            "Lscala/Function2<",
            "TT;TS;TS;>;)",
            "Lscala/collection/immutable/IntMap<",
            "TS;>;"
        }
    .end annotation

    .line 304
    instance-of v0, p0, Lscala/collection/immutable/IntMap$Bin;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lscala/collection/immutable/IntMap$Bin;

    .line 306
    sget-object v1, Lscala/collection/immutable/IntMapUtils$;->MODULE$:Lscala/collection/immutable/IntMapUtils$;

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->prefix()I

    move-result v2

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->mask()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Lscala/collection/immutable/IntMapUtils$;->hasMatch(III)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 307
    sget-object v1, Lscala/collection/immutable/IntMapUtils$;->MODULE$:Lscala/collection/immutable/IntMapUtils$;

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->mask()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lscala/collection/immutable/IntMapUtils$;->zero(II)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lscala/collection/immutable/IntMap$Bin;

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->prefix()I

    move-result v2

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->mask()I

    move-result v3

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->left()Lscala/collection/immutable/IntMap;

    move-result-object v4

    invoke-virtual {v4, p1, p2, p3}, Lscala/collection/immutable/IntMap;->updateWith(ILjava/lang/Object;Lscala/Function2;)Lscala/collection/immutable/IntMap;

    move-result-object p1

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->right()Lscala/collection/immutable/IntMap;

    move-result-object p2

    invoke-direct {v1, v2, v3, p1, p2}, Lscala/collection/immutable/IntMap$Bin;-><init>(IILscala/collection/immutable/IntMap;Lscala/collection/immutable/IntMap;)V

    goto :goto_0

    .line 308
    :cond_0
    new-instance v1, Lscala/collection/immutable/IntMap$Bin;

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->prefix()I

    move-result v2

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->mask()I

    move-result v3

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->left()Lscala/collection/immutable/IntMap;

    move-result-object v4

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->right()Lscala/collection/immutable/IntMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lscala/collection/immutable/IntMap;->updateWith(ILjava/lang/Object;Lscala/Function2;)Lscala/collection/immutable/IntMap;

    move-result-object p1

    invoke-direct {v1, v2, v3, v4, p1}, Lscala/collection/immutable/IntMap$Bin;-><init>(IILscala/collection/immutable/IntMap;Lscala/collection/immutable/IntMap;)V

    goto :goto_0

    .line 306
    :cond_1
    sget-object p3, Lscala/collection/immutable/IntMapUtils$;->MODULE$:Lscala/collection/immutable/IntMapUtils$;

    new-instance v1, Lscala/collection/immutable/IntMap$Tip;

    invoke-direct {v1, p1, p2}, Lscala/collection/immutable/IntMap$Tip;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->prefix()I

    move-result p2

    invoke-virtual {p3, p1, v1, p2, p0}, Lscala/collection/immutable/IntMapUtils$;->join(ILscala/collection/immutable/IntMap;ILscala/collection/immutable/IntMap;)Lscala/collection/immutable/IntMap;

    move-result-object v1

    goto :goto_0

    .line 309
    :cond_2
    instance-of v0, p0, Lscala/collection/immutable/IntMap$Tip;

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Lscala/collection/immutable/IntMap$Tip;

    .line 310
    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Tip;->key()I

    move-result v1

    if-ne p1, v1, :cond_3

    new-instance v1, Lscala/collection/immutable/IntMap$Tip;

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Tip;->value()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0, p2}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lscala/collection/immutable/IntMap$Tip;-><init>(ILjava/lang/Object;)V

    goto :goto_0

    .line 311
    :cond_3
    sget-object p3, Lscala/collection/immutable/IntMapUtils$;->MODULE$:Lscala/collection/immutable/IntMapUtils$;

    new-instance v1, Lscala/collection/immutable/IntMap$Tip;

    invoke-direct {v1, p1, p2}, Lscala/collection/immutable/IntMap$Tip;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Tip;->key()I

    move-result p2

    invoke-virtual {p3, p1, v1, p2, p0}, Lscala/collection/immutable/IntMapUtils$;->join(ILscala/collection/immutable/IntMap;ILscala/collection/immutable/IntMap;)Lscala/collection/immutable/IntMap;

    move-result-object p1

    move-object v1, p1

    goto :goto_0

    .line 312
    :cond_4
    sget-object p3, Lscala/collection/immutable/IntMap$Nil$;->MODULE$:Lscala/collection/immutable/IntMap$Nil$;

    invoke-virtual {p3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    new-instance v1, Lscala/collection/immutable/IntMap$Tip;

    invoke-direct {v1, p1, p2}, Lscala/collection/immutable/IntMap$Tip;-><init>(ILjava/lang/Object;)V

    :goto_0
    return-object v1

    .line 304
    :cond_5
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, p0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/GenMap;
    .locals 0

    .line 162
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/IntMap;->updated(ILjava/lang/Object;)Lscala/collection/immutable/IntMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/Map;
    .locals 0

    .line 162
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/IntMap;->updated(ILjava/lang/Object;)Lscala/collection/immutable/IntMap;

    move-result-object p1

    return-object p1
.end method

.method public updated(ILjava/lang/Object;)Lscala/collection/immutable/IntMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(ITS;)",
            "Lscala/collection/immutable/IntMap<",
            "TS;>;"
        }
    .end annotation

    .line 276
    instance-of v0, p0, Lscala/collection/immutable/IntMap$Bin;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lscala/collection/immutable/IntMap$Bin;

    .line 278
    sget-object v1, Lscala/collection/immutable/IntMapUtils$;->MODULE$:Lscala/collection/immutable/IntMapUtils$;

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->prefix()I

    move-result v2

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->mask()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Lscala/collection/immutable/IntMapUtils$;->hasMatch(III)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    sget-object v1, Lscala/collection/immutable/IntMapUtils$;->MODULE$:Lscala/collection/immutable/IntMapUtils$;

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->mask()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lscala/collection/immutable/IntMapUtils$;->zero(II)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lscala/collection/immutable/IntMap$Bin;

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->prefix()I

    move-result v2

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->mask()I

    move-result v3

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->left()Lscala/collection/immutable/IntMap;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lscala/collection/immutable/IntMap;->updated(ILjava/lang/Object;)Lscala/collection/immutable/IntMap;

    move-result-object p1

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->right()Lscala/collection/immutable/IntMap;

    move-result-object p2

    invoke-direct {v1, v2, v3, p1, p2}, Lscala/collection/immutable/IntMap$Bin;-><init>(IILscala/collection/immutable/IntMap;Lscala/collection/immutable/IntMap;)V

    goto :goto_0

    .line 280
    :cond_0
    new-instance v1, Lscala/collection/immutable/IntMap$Bin;

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->prefix()I

    move-result v2

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->mask()I

    move-result v3

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->left()Lscala/collection/immutable/IntMap;

    move-result-object v4

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->right()Lscala/collection/immutable/IntMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lscala/collection/immutable/IntMap;->updated(ILjava/lang/Object;)Lscala/collection/immutable/IntMap;

    move-result-object p1

    invoke-direct {v1, v2, v3, v4, p1}, Lscala/collection/immutable/IntMap$Bin;-><init>(IILscala/collection/immutable/IntMap;Lscala/collection/immutable/IntMap;)V

    goto :goto_0

    .line 278
    :cond_1
    sget-object v1, Lscala/collection/immutable/IntMapUtils$;->MODULE$:Lscala/collection/immutable/IntMapUtils$;

    new-instance v2, Lscala/collection/immutable/IntMap$Tip;

    invoke-direct {v2, p1, p2}, Lscala/collection/immutable/IntMap$Tip;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Bin;->prefix()I

    move-result p2

    invoke-virtual {v1, p1, v2, p2, p0}, Lscala/collection/immutable/IntMapUtils$;->join(ILscala/collection/immutable/IntMap;ILscala/collection/immutable/IntMap;)Lscala/collection/immutable/IntMap;

    move-result-object v1

    goto :goto_0

    .line 281
    :cond_2
    instance-of v0, p0, Lscala/collection/immutable/IntMap$Tip;

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Lscala/collection/immutable/IntMap$Tip;

    .line 282
    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Tip;->key()I

    move-result v1

    if-ne p1, v1, :cond_3

    new-instance v0, Lscala/collection/immutable/IntMap$Tip;

    invoke-direct {v0, p1, p2}, Lscala/collection/immutable/IntMap$Tip;-><init>(ILjava/lang/Object;)V

    move-object v1, v0

    goto :goto_0

    .line 283
    :cond_3
    sget-object v1, Lscala/collection/immutable/IntMapUtils$;->MODULE$:Lscala/collection/immutable/IntMapUtils$;

    new-instance v2, Lscala/collection/immutable/IntMap$Tip;

    invoke-direct {v2, p1, p2}, Lscala/collection/immutable/IntMap$Tip;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lscala/collection/immutable/IntMap$Tip;->key()I

    move-result p2

    invoke-virtual {v1, p1, v2, p2, p0}, Lscala/collection/immutable/IntMapUtils$;->join(ILscala/collection/immutable/IntMap;ILscala/collection/immutable/IntMap;)Lscala/collection/immutable/IntMap;

    move-result-object p1

    move-object v1, p1

    goto :goto_0

    .line 284
    :cond_4
    sget-object v0, Lscala/collection/immutable/IntMap$Nil$;->MODULE$:Lscala/collection/immutable/IntMap$Nil$;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v1, Lscala/collection/immutable/IntMap$Tip;

    invoke-direct {v1, p1, p2}, Lscala/collection/immutable/IntMap$Tip;-><init>(ILjava/lang/Object;)V

    :goto_0
    return-object v1

    .line 276
    :cond_5
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, p0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/Map;
    .locals 0

    .line 162
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/IntMap;->updated(ILjava/lang/Object;)Lscala/collection/immutable/IntMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic values()Lscala/collection/GenIterable;
    .locals 1

    .line 162
    invoke-virtual {p0}, Lscala/collection/immutable/IntMap;->values()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public valuesIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 210
    sget-object v0, Lscala/collection/immutable/IntMap$Nil$;->MODULE$:Lscala/collection/immutable/IntMap$Nil$;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {v0}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object v0

    goto :goto_0

    .line 212
    :cond_0
    new-instance v0, Lscala/collection/immutable/IntMapValueIterator;

    invoke-direct {v0, p0}, Lscala/collection/immutable/IntMapValueIterator;-><init>(Lscala/collection/immutable/IntMap;)V

    :goto_0
    return-object v0
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 162
    invoke-virtual {p0}, Lscala/collection/immutable/IntMap;->view()Lscala/collection/IterableView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 162
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/IntMap;->view(II)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method
