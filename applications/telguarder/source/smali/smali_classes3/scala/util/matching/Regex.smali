.class public Lscala/util/matching/Regex;
.super Ljava/lang/Object;
.source "Regex.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/util/matching/Regex$Match;,
        Lscala/util/matching/Regex$Match$;,
        Lscala/util/matching/Regex$Groups$;,
        Lscala/util/matching/Regex$MatchData;,
        Lscala/util/matching/Regex$Replacement;,
        Lscala/util/matching/Regex$MatchIterator;
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\r\u001de\u0001B\u0001\u0003\u0001%\u0011QAU3hKbT!a\u0001\u0003\u0002\u00115\u000cGo\u00195j]\u001eT!!\u0002\u0004\u0002\tU$\u0018\u000e\u001c\u0006\u0002\u000f\u0005)1oY1mC\u000e\u00011c\u0001\u0001\u000b\u001dA\u00111\u0002D\u0007\u0002\r%\u0011QB\u0002\u0002\u0007\u0003:L(+\u001a4\u0011\u0005-y\u0011B\u0001\t\u0007\u00051\u0019VM]5bY&T\u0018M\u00197f\u0011!\u0011\u0002A!b\u0001\n\u0003\u0019\u0012a\u00029biR,\'O\\\u000b\u0002)A\u0011QcG\u0007\u0002-)\u0011q\u0003G\u0001\u0006e\u0016<W\r\u001f\u0006\u0003\u000beQ\u0011AG\u0001\u0005U\u00064\u0018-\u0003\u0002\u001d-\t9\u0001+\u0019;uKJt\u0007\u0002\u0003\u0010\u0001\u0005\u0003\u0005\u000b\u0011\u0002\u000b\u0002\u0011A\u000cG\u000f^3s]\u0002B\u0001\u0002\t\u0001\u0003\u0002\u0003\u0006I!I\u0001\u000bOJ|W\u000f\u001d(b[\u0016\u001c\u0008cA\u0006#I%\u00111E\u0002\u0002\u000byI,\u0007/Z1uK\u0012t\u0004CA\u0013)\u001d\tYa%\u0003\u0002(\r\u00051\u0001K]3eK\u001aL!!\u000b\u0016\u0003\rM#(/\u001b8h\u0015\t9c\u0001\u0003\u0004-\u0001\u0011\u0005!!L\u0001\u0007y%t\u0017\u000e\u001e \u0015\u00079\u0002\u0014\u0007\u0005\u00020\u00015\t!\u0001C\u0003\u0013W\u0001\u0007A\u0003C\u0003!W\u0001\u0007\u0011\u0005C\u0003-\u0001\u0011\u00051\u0007F\u0002/iUBQa\u0006\u001aA\u0002\u0011BQ\u0001\t\u001aA\u0002\u0005BQa\u000e\u0001\u0005\u0002a\n!\"\u001e8baBd\u0017pU3r)\tI\u0004\nE\u0002\u000cuqJ!a\u000f\u0004\u0003\r=\u0003H/[8o!\riT\t\n\u0008\u0003}\rs!a\u0010\"\u000e\u0003\u0001S!!\u0011\u0005\u0002\rq\u0012xn\u001c;?\u0013\u00059\u0011B\u0001#\u0007\u0003\u001d\u0001\u0018mY6bO\u0016L!AR$\u0003\t1K7\u000f\u001e\u0006\u0003\t\u001aAQ!\u0013\u001cA\u0002)\u000b\u0011a\u001d\t\u0003\u0017:k\u0011\u0001\u0014\u0006\u0003\u001bf\tA\u0001\\1oO&\u0011q\n\u0014\u0002\r\u0007\"\u000c\'oU3rk\u0016t7-\u001a\u0005\u0006o\u0001!\t!\u0015\u000b\u0003%^\u00032a\u0003\u001eT!\riT\t\u0016\t\u0003\u0017UK!A\u0016\u0004\u0003\t\rC\u0017M\u001d\u0005\u00061B\u0003\r\u0001V\u0001\u0002G\")q\u0007\u0001C\u00015R\u0011\u0011h\u0017\u0005\u00069f\u0003\r!X\u0001\u0002[B\u0019a,a\u0016\u000f\u0005=zv!\u00021\u0003\u0011\u0003\t\u0017!\u0002*fO\u0016D\u0008CA\u0018c\r\u0015\t!\u0001#\u0001d\'\r\u0011\'B\u0004\u0005\u0006Y\t$\t!\u001a\u000b\u0002C\u001a9qM\u0019I\u0001\u0004\u0003A\'!C\'bi\u000eDG)\u0019;b\'\t1\'\u0002C\u0003kM\u0012\u00051.\u0001\u0004%S:LG\u000f\n\u000b\u0002YB\u00111\"\\\u0005\u0003]\u001a\u0011A!\u00168ji\"9\u0001O\u001ab\u0001\u000e\u0003\t\u0018AB:pkJ\u001cW-F\u0001K\u0011\u001d\u0001cM1A\u0007\u0002M,\u0012\u0001\u001e\t\u0004{U$\u0013B\u0001<H\u0005\r\u0019V-\u001d\u0005\u0006q\u001a4\t!_\u0001\u000bOJ|W\u000f]\"pk:$X#\u0001>\u0011\u0005-Y\u0018B\u0001?\u0007\u0005\rIe\u000e\u001e\u0005\u0006}\u001a4\t!_\u0001\u0006gR\u000c\'\u000f\u001e\u0005\u0007}\u001a4\t!!\u0001\u0015\u0007i\u000c\u0019\u0001\u0003\u0004\u0002\u0006}\u0004\rA_\u0001\u0002S\"1\u0011\u0011\u00024\u0007\u0002e\u000c1!\u001a8e\u0011\u001d\tIA\u001aD\u0001\u0003\u001b!2A_A\u0008\u0011\u001d\t)!a\u0003A\u0002iDq!a\u0005g\t\u0003\t)\"A\u0004nCR\u001c\u0007.\u001a3\u0016\u0003\u0011Bq!!\u0007g\t\u0003\tY\"A\u0003he>,\u0008\u000fF\u0002%\u0003;Aq!!\u0002\u0002\u0018\u0001\u0007!\u0010C\u0004\u0002\"\u0019$\t!a\t\u0002\u0013M,(m\u001a:pkB\u001cX#\u0001\u001f\t\r\u0005\u001db\r\"\u0001r\u0003\u0019\u0011WMZ8sK\"9\u0011q\u00054\u0005\u0002\u0005-Bc\u0001&\u0002.!9\u0011QAA\u0015\u0001\u0004Q\u0008BBA\u0019M\u0012\u0005\u0011/A\u0003bMR,\'\u000fC\u0004\u00022\u0019$\t!!\u000e\u0015\u0007)\u000b9\u0004C\u0004\u0002\u0006\u0005M\u0002\u0019\u0001>\t\u0015\u0005mb\r#b\u0001\n\u0013\ti$A\u0006oC6,Gk\\%oI\u0016DXCAA !\u0015)\u0013\u0011\t\u0013{\u0013\r\t\u0019E\u000b\u0002\u0004\u001b\u0006\u0004\u0008BCA$M\"\u0005\t\u0015)\u0003\u0002@\u0005aa.Y7f)>Le\u000eZ3yA!9\u0011\u0011\u00044\u0005\u0002\u0005-Cc\u0001\u0013\u0002N!9\u0011qJA%\u0001\u0004!\u0013AA5e\u0011\u001d\t\u0019F\u001aC!\u0003+\n\u0001\u0002^8TiJLgn\u001a\u000b\u0002I\u00191\u0011\u0011\u000c2\u0001\u00037\u0012Q!T1uG\"\u001cR!a\u0016\u000b\u0003;\u00022!a\u0018g\u001b\u0005\u0011\u0007\"\u00039\u0002X\t\u0015\r\u0011\"\u0001r\u0011)\t)\'a\u0016\u0003\u0002\u0003\u0006IAS\u0001\u0008g>,(oY3!\u00111\tI\'a\u0016\u0003\u0006\u0004%\tAAA6\u0003\u001di\u0017\r^2iKJ,\"!!\u001c\u0011\u0007U\ty\'C\u0002\u0002rY\u0011q!T1uG\",\'\u000fC\u0006\u0002v\u0005]#\u0011!Q\u0001\n\u00055\u0014\u0001C7bi\u000eDWM\u001d\u0011\t\u0013\u0001\n9F!b\u0001\n\u0003\u0019\u0008BCA>\u0003/\u0012\t\u0011)A\u0005i\u0006YqM]8va:\u000bW.Z:!\u0011\u001da\u0013q\u000bC\u0001\u0003\u007f\"\u0002\"!!\u0002\u0004\u0006\u0015\u0015q\u0011\t\u0005\u0003?\n9\u0006\u0003\u0004q\u0003{\u0002\rA\u0013\u0005\t\u0003S\ni\u00081\u0001\u0002n!1\u0001%! A\u0002QD\u0001B`A,\u0005\u0004%\t!\u001f\u0005\t\u0003\u001b\u000b9\u0006)A\u0005u\u000611\u000f^1si\u0002B\u0011\"!\u0003\u0002X\t\u0007I\u0011A=\t\u0011\u0005M\u0015q\u000bQ\u0001\ni\u000cA!\u001a8eA!1\u00010a\u0016\u0005\u0002eD1\"!\'\u0002X!\u0015\r\u0011\"\u0003\u0002\u001c\u000611\u000f^1siN,\"!!(\u0011\t-\tyJ_\u0005\u0004\u0003C3!!B!se\u0006L\u0008bCAS\u0003/B\t\u0011)Q\u0005\u0003;\u000bqa\u001d;beR\u001c\u0008\u0005C\u0006\u0002*\u0006]\u0003R1A\u0005\n\u0005m\u0015\u0001B3oIND1\"!,\u0002X!\u0005\t\u0015)\u0003\u0002\u001e\u0006)QM\u001c3tA!9a0a\u0016\u0005\u0002\u0005EFc\u0001>\u00024\"9\u0011QAAX\u0001\u0004Q\u0008\u0002CA\u0005\u0003/\"\t!a.\u0015\u0007i\u000cI\u000cC\u0004\u0002\u0006\u0005U\u0006\u0019\u0001>\t\u0011\u0005u\u0016q\u000bC\u0001\u0003\u007f\u000bQAZ8sG\u0016,\"!!1\u000e\u0005\u0005]saBAcE\"\u0005\u0011qY\u0001\u0006\u001b\u0006$8\r\u001b\t\u0005\u0003?\nIMB\u0004\u0002Z\tD\t!a3\u0014\u0007\u0005%\'\u0002C\u0004-\u0003\u0013$\t!a4\u0015\u0005\u0005\u001d\u0007\u0002CAj\u0003\u0013$\t!!6\u0002\u000fUt\u0017\r\u001d9msR!\u0011q[Ao!\u0011Y\u0011\u0011\u001c\u0013\n\u0007\u0005mgA\u0001\u0003T_6,\u0007b\u0002/\u0002R\u0002\u0007\u0011\u0011Q\u0004\u0008\u0003C\u0014\u0007\u0012AAr\u0003\u00199%o\\;qgB!\u0011qLAs\r\u001d\t9O\u0019E\u0001\u0003S\u0014aa\u0012:pkB\u001c8cAAs\u0015!9A&!:\u0005\u0002\u00055HCAAr\u0011\u001d9\u0014Q\u001dC\u0001\u0003c$B!a=\u0002vB\u00191B\u000f;\t\u000fq\u000by\u000f1\u0001\u0002\u0002\u001a1\u0011\u0011 2\u0001\u0003w\u0014Q\"T1uG\"LE/\u001a:bi>\u00148\u0003CA|\u0003{\u0014I!!\u0018\u0011\u000b\u0005}(Q\u0001\u0013\u000e\u0005\t\u0005!b\u0001B\u0002\r\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\n\t\t\u001d!\u0011\u0001\u0002\u0011\u0003\n\u001cHO]1di&#XM]1u_J\u0004B!\u0010B\u0006I%\u0019!QB$\u0003\u0011%#XM]1u_JD\u0011\u0002]A|\u0005\u000b\u0007I\u0011A9\t\u0015\u0005\u0015\u0014q\u001fB\u0001B\u0003%!\n\u0003\u0006\u0018\u0003o\u0014)\u0019!C\u0001\u0005+)\u0012A\u000c\u0005\u000b\u00053\t9P!A!\u0002\u0013q\u0013A\u0002:fO\u0016D\u0008\u0005C\u0005!\u0003o\u0014)\u0019!C\u0001g\"Q\u00111PA|\u0005\u0003\u0005\u000b\u0011\u0002;\t\u000f1\n9\u0010\"\u0001\u0003\"QA!1\u0005B\u0013\u0005O\u0011I\u0003\u0005\u0003\u0002`\u0005]\u0008B\u00029\u0003 \u0001\u0007!\n\u0003\u0004\u0018\u0005?\u0001\rA\u000c\u0005\u0007A\t}\u0001\u0019\u0001;\t\u0017\u0005%\u0014q\u001fb\u0001\n#\u0011\u00171\u000e\u0005\n\u0003k\n9\u0010)A\u0005\u0003[B!B!\r\u0002x\u0002\u0007I\u0011\u0002B\u001a\u0003!qW\r\u001f;TK\u0016tWC\u0001B\u001b!\rY!qG\u0005\u0004\u0005s1!a\u0002\"p_2,\u0017M\u001c\u0005\u000b\u0005{\t9\u00101A\u0005\n\t}\u0012\u0001\u00048fqR\u001cV-\u001a8`I\u0015\u000cHc\u00017\u0003B!Q!1\tB\u001e\u0003\u0003\u0005\rA!\u000e\u0002\u0007a$\u0013\u0007C\u0005\u0003H\u0005]\u0008\u0015)\u0003\u00036\u0005Ia.\u001a=u\'\u0016,g\u000e\t\u0005\t\u0005\u0017\n9\u0010\"\u0001\u00034\u00059\u0001.Y:OKb$\u0008\u0002\u0003B(\u0003o$\t!!\u0016\u0002\t9,\u0007\u0010\u001e\u0005\t\u0003\'\n9\u0010\"\u0011\u0003TQ\u0011!Q\u000b\t\u0004\u0017\n]\u0013BA\u0015M\u0011\u0019q\u0018q\u001fC\u0001s\"9a0a>\u0005\u0002\tuCc\u0001>\u0003`!9\u0011Q\u0001B.\u0001\u0004Q\u0008bBA\u0005\u0003o$\t!\u001f\u0005\t\u0003\u0013\t9\u0010\"\u0001\u0003fQ\u0019!Pa\u001a\t\u000f\u0005\u0015!1\ra\u0001u\"1\u00010a>\u0005\u0002eD\u0001B!\u001c\u0002x\u0012\u0005!qN\u0001\n[\u0006$8\r\u001b#bi\u0006,\"A!\u001d\u0011\u000bu\u0012Y!!!\t\u0013\tU\u0014q\u001fC\u0001\u0005\t]\u0014a\u0004:fa2\u000c7-Z7f]R$\u0015\r^1\u0016\u0005\te$C\u0002B>\u0005\u007f\u0012\tIB\u0004\u0003~\tM\u0004A!\u001f\u0003\u0019q\u0012XMZ5oK6,g\u000e\u001e \u0011\r\u0005}(QAAA!\u0011\tyFa!\u0007\u0015\t\u0015%\r%A\u0002\u0002\t\u00119IA\u0006SKBd\u0017mY3nK:$8c\u0001BB\u0015!1!Na!\u0005\u0002-D\u0001\"!\u001b\u0003\u0004\u001aE\u00111\u000e\u0005\u000b\u0005\u001f\u0013\u0019I1A\u0005\n\tE\u0015AA:c+\t\u0011\u0019\nE\u0002L\u0005+K1Aa&M\u00051\u0019FO]5oO\n+hMZ3s\u0011%\u0011YJa!!\u0002\u0013\u0011\u0019*A\u0002tE\u0002B\u0001Ba(\u0003\u0004\u0012\u0005!\u0011U\u0001\te\u0016\u0004H.Y2fIV\u0011!Q\u000b\u0005\t\u0005K\u0013\u0019\t\"\u0001\u0003(\u00069!/\u001a9mC\u000e,G\u0003BA7\u0005SCqAa+\u0003$\u0002\u0007A%\u0001\u0002sg\"9!q\u00162\u0005\u0002\tE\u0016!B9v_R,Gc\u0001\u0013\u00034\"9!Q\u0017BW\u0001\u0004!\u0013\u0001\u0002;fqRDqA!/c\t\u0003\u0011Y,\u0001\trk>$XMU3qY\u0006\u001cW-\\3oiR\u0019AE!0\t\u000f\tU&q\u0017a\u0001I!I!\u0011\u00192\u0002\u0002\u0013%!1Y\u0001\u000ce\u0016\u000cGMU3t_24X\r\u0006\u0002\u0003FB\u00191Ja2\n\u0007\t%GJ\u0001\u0004PE*,7\r\u001e\u0005\u0007o\u0001!\tA!4\u0015\u0007e\u0012y\r\u0003\u0005\u0003R\n-\u0007\u0019\u0001Bj\u0003\u0019!\u0018M]4fiB\u00191B!6\n\u0007\t]gAA\u0002B]fD\u0003Ba3\u0003\\\n\u0005(Q\u001d\t\u0004\u0017\tu\u0017b\u0001Bp\r\tQA-\u001a9sK\u000e\u000cG/\u001a3\"\u0005\t\r\u0018!U#yiJ\u000c7\r^5oO\u0002\n\u0007%\\1uG\"\u0004#/Z:vYR\u0004cM]8nA\u0005t\u0017\u0010\u001e5j]\u001e\u0004#-\u001e;!C\u0002\u001a\u0005.\u0019:TKF,XM\\2fA=\u0014\u0008%T1uG\"\u0004\u0013n\u001d\u0011eKB\u0014XmY1uK\u0012\u000c#Aa:\u0002\rIr\u0013\'\r\u00181\u0011\u001d\u0011Y\u000f\u0001C\t\u0005[\u000c!B];o\u001b\u0006$8\r[3s)\u0011\u0011)Da<\t\u000fq\u0013I\u000f1\u0001\u0002n!9!1\u001f\u0001\u0005\u0002\tU\u0018!\u00034j]\u0012\u000cE\u000e\\%o)\u0011\u00119P!?\u0011\u0007y\u000b9\u0010\u0003\u0004q\u0005c\u0004\rA\u0013\u0005\u0008\u0005{\u0004A\u0011\u0001B\u0000\u000391\u0017N\u001c3BY2l\u0015\r^2i\u0013:$Ba!\u0001\u0004\u0004A!QHa\u0003^\u0011\u0019\u0001(1 a\u0001\u0015\"91q\u0001\u0001\u0005\u0002\r%\u0011a\u00034j]\u00124\u0015N]:u\u0013:$Baa\u0003\u0004\u000eA\u00191B\u000f\u0013\t\rA\u001c)\u00011\u0001K\u0011\u001d\u0019\t\u0002\u0001C\u0001\u0007\'\t\u0001CZ5oI\u001aK\'o\u001d;NCR\u001c\u0007.\u00138\u0015\t\rU1q\u0003\t\u0004\u0017ij\u0006B\u00029\u0004\u0010\u0001\u0007!\nC\u0004\u0004\u001c\u0001!\ta!\u0008\u0002\u0019\u0019Lg\u000e\u001a)sK\u001aL\u0007p\u00144\u0015\t\r-1q\u0004\u0005\u0007a\u000ee\u0001\u0019\u0001&\t\u000f\r\r\u0002\u0001\"\u0001\u0004&\u0005\tb-\u001b8e!J,g-\u001b=NCR\u001c\u0007n\u00144\u0015\t\rU1q\u0005\u0005\u0007a\u000e\u0005\u0002\u0019\u0001&\t\u000f\r-\u0002\u0001\"\u0001\u0004.\u0005a!/\u001a9mC\u000e,\u0017\t\u001c7J]R)Aea\u000c\u00042!9!\u0011[B\u0015\u0001\u0004Q\u0005bBB\u001a\u0007S\u0001\r\u0001J\u0001\u000ce\u0016\u0004H.Y2f[\u0016tG\u000fC\u0004\u0004,\u0001!\taa\u000e\u0015\u000b\u0011\u001aIda\u000f\t\u000f\tE7Q\u0007a\u0001\u0015\"A1QHB\u001b\u0001\u0004\u0019y$\u0001\u0005sKBd\u0017mY3s!\u0015Y1\u0011I/%\u0013\r\u0019\u0019E\u0002\u0002\n\rVt7\r^5p]FBqaa\u0012\u0001\t\u0003\u0019I%A\u0007sKBd\u0017mY3T_6,\u0017J\u001c\u000b\u0006I\r-3Q\n\u0005\u0008\u0005#\u001c)\u00051\u0001K\u0011!\u0019id!\u0012A\u0002\r=\u0003CB\u0006\u0004Bu\u001bY\u0001C\u0004\u0004T\u0001!\ta!\u0016\u0002\u001dI,\u0007\u000f\\1dK\u001aK\'o\u001d;J]R)Aea\u0016\u0004Z!9!\u0011[B)\u0001\u0004Q\u0005bBB\u001a\u0007#\u0002\r\u0001\n\u0005\u0008\u0007;\u0002A\u0011AB0\u0003\u0015\u0019\u0008\u000f\\5u)\u0011\u0019\tga\u0019\u0011\t-\ty\n\n\u0005\u0008\u0007K\u001aY\u00061\u0001K\u0003\u001d!xn\u00159mSRDqa!\u001b\u0001\t\u0003\u0019Y\'\u0001\u0006v]\u0006t7\r[8sK\u0012,\"a!\u001c\u0011\u0007=\u001ay\'C\u0002\u0004r\t\u0011q\"\u00168b]\u000eDwN]3e%\u0016<W\r\u001f\u0005\u0008\u0007k\u0002A\u0011\u0001B\u000b\u0003!\tgn\u00195pe\u0016$\u0007BB\u000c\u0001\t\u0003\t)\u0002C\u0004\u0002T\u0001!\t%!\u0016)\u000f\u0001\u0019iha!\u0004\u0006B\u00191ba \n\u0007\r\u0005eA\u0001\tTKJL\u0017\r\u001c,feNLwN\\+J\t\u0006)a/\u00197vKzA!=|kk=C\u0010s\u0018"
.end annotation


# static fields
.field public static final serialVersionUID:J = -0x1d122a95610fde41L


# instance fields
.field private final pattern:Ljava/util/regex/Pattern;

.field public final scala$util$matching$Regex$$groupNames:Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/Seq<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lscala/collection/Seq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lscala/collection/Seq<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 191
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lscala/util/matching/Regex;-><init>(Ljava/util/regex/Pattern;Lscala/collection/Seq;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/regex/Pattern;Lscala/collection/Seq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Pattern;",
            "Lscala/collection/Seq<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lscala/util/matching/Regex;->pattern:Ljava/util/regex/Pattern;

    iput-object p2, p0, Lscala/util/matching/Regex;->scala$util$matching$Regex$$groupNames:Lscala/collection/Seq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/util/matching/Regex$;->MODULE$:Lscala/util/matching/Regex$;

    invoke-virtual {v0, p0}, Lscala/util/matching/Regex$;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static quoteReplacement(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/util/matching/Regex$;->MODULE$:Lscala/util/matching/Regex$;

    invoke-virtual {v0, p0}, Lscala/util/matching/Regex$;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public anchored()Lscala/util/matching/Regex;
    .locals 0

    return-object p0
.end method

.method public findAllIn(Ljava/lang/CharSequence;)Lscala/util/matching/Regex$MatchIterator;
    .locals 2

    .line 360
    new-instance v0, Lscala/util/matching/Regex$MatchIterator;

    iget-object v1, p0, Lscala/util/matching/Regex;->scala$util$matching$Regex$$groupNames:Lscala/collection/Seq;

    invoke-direct {v0, p1, p0, v1}, Lscala/util/matching/Regex$MatchIterator;-><init>(Ljava/lang/CharSequence;Lscala/util/matching/Regex;Lscala/collection/Seq;)V

    return-object v0
.end method

.method public findAllMatchIn(Ljava/lang/CharSequence;)Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lscala/collection/Iterator<",
            "Lscala/util/matching/Regex$Match;",
            ">;"
        }
    .end annotation

    .line 370
    invoke-virtual {p0, p1}, Lscala/util/matching/Regex;->findAllIn(Ljava/lang/CharSequence;)Lscala/util/matching/Regex$MatchIterator;

    move-result-object p1

    .line 371
    new-instance v0, Lscala/util/matching/Regex$$anon$4;

    invoke-direct {v0, p0, p1}, Lscala/util/matching/Regex$$anon$4;-><init>(Lscala/util/matching/Regex;Lscala/util/matching/Regex$MatchIterator;)V

    return-object v0
.end method

.method public findFirstIn(Ljava/lang/CharSequence;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lscala/Option<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 388
    invoke-virtual {p0}, Lscala/util/matching/Regex;->pattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 389
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lscala/Some;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    :goto_0
    return-object v0
.end method

.method public findFirstMatchIn(Ljava/lang/CharSequence;)Lscala/Option;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lscala/Option<",
            "Lscala/util/matching/Regex$Match;",
            ">;"
        }
    .end annotation

    .line 403
    invoke-virtual {p0}, Lscala/util/matching/Regex;->pattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 404
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lscala/Some;

    new-instance v2, Lscala/util/matching/Regex$Match;

    iget-object v3, p0, Lscala/util/matching/Regex;->scala$util$matching$Regex$$groupNames:Lscala/collection/Seq;

    invoke-direct {v2, p1, v0, v3}, Lscala/util/matching/Regex$Match;-><init>(Ljava/lang/CharSequence;Ljava/util/regex/Matcher;Lscala/collection/Seq;)V

    invoke-direct {v1, v2}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    :goto_0
    return-object v1
.end method

.method public findPrefixMatchOf(Ljava/lang/CharSequence;)Lscala/Option;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lscala/Option<",
            "Lscala/util/matching/Regex$Match;",
            ">;"
        }
    .end annotation

    .line 435
    invoke-virtual {p0}, Lscala/util/matching/Regex;->pattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 436
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lscala/Some;

    new-instance v2, Lscala/util/matching/Regex$Match;

    iget-object v3, p0, Lscala/util/matching/Regex;->scala$util$matching$Regex$$groupNames:Lscala/collection/Seq;

    invoke-direct {v2, p1, v0, v3}, Lscala/util/matching/Regex$Match;-><init>(Ljava/lang/CharSequence;Ljava/util/regex/Matcher;Lscala/collection/Seq;)V

    invoke-direct {v1, v2}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    :goto_0
    return-object v1
.end method

.method public findPrefixOf(Ljava/lang/CharSequence;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lscala/Option<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 419
    invoke-virtual {p0}, Lscala/util/matching/Regex;->pattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 420
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lscala/Some;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    :goto_0
    return-object v0
.end method

.method public pattern()Ljava/util/regex/Pattern;
    .locals 1

    .line 170
    iget-object v0, p0, Lscala/util/matching/Regex;->pattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public regex()Ljava/lang/String;
    .locals 1

    .line 556
    invoke-virtual {p0}, Lscala/util/matching/Regex;->pattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public replaceAllIn(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 449
    invoke-virtual {p0}, Lscala/util/matching/Regex;->pattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 450
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public replaceAllIn(Ljava/lang/CharSequence;Lscala/Function1;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lscala/Function1<",
            "Lscala/util/matching/Regex$Match;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 472
    new-instance v0, Lscala/util/matching/Regex$MatchIterator;

    iget-object v1, p0, Lscala/util/matching/Regex;->scala$util$matching$Regex$$groupNames:Lscala/collection/Seq;

    invoke-direct {v0, p1, p0, v1}, Lscala/util/matching/Regex$MatchIterator;-><init>(Ljava/lang/CharSequence;Lscala/util/matching/Regex;Lscala/collection/Seq;)V

    invoke-virtual {v0}, Lscala/util/matching/Regex$MatchIterator;->replacementData()Lscala/collection/AbstractIterator;

    move-result-object p1

    .line 473
    new-instance v0, Lscala/util/matching/Regex$$anonfun$replaceAllIn$1;

    invoke-direct {v0, p0, p2, p1}, Lscala/util/matching/Regex$$anonfun$replaceAllIn$1;-><init>(Lscala/util/matching/Regex;Lscala/Function1;Lscala/collection/AbstractIterator;)V

    invoke-virtual {p1, v0}, Lscala/collection/AbstractIterator;->foreach(Lscala/Function1;)V

    .line 474
    check-cast p1, Lscala/util/matching/Regex$Replacement;

    invoke-interface {p1}, Lscala/util/matching/Regex$Replacement;->replaced()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public replaceFirstIn(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 515
    invoke-virtual {p0}, Lscala/util/matching/Regex;->pattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 516
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public replaceSomeIn(Ljava/lang/CharSequence;Lscala/Function1;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lscala/Function1<",
            "Lscala/util/matching/Regex$Match;",
            "Lscala/Option<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 499
    new-instance v0, Lscala/util/matching/Regex$MatchIterator;

    iget-object v1, p0, Lscala/util/matching/Regex;->scala$util$matching$Regex$$groupNames:Lscala/collection/Seq;

    invoke-direct {v0, p1, p0, v1}, Lscala/util/matching/Regex$MatchIterator;-><init>(Ljava/lang/CharSequence;Lscala/util/matching/Regex;Lscala/collection/Seq;)V

    invoke-virtual {v0}, Lscala/util/matching/Regex$MatchIterator;->replacementData()Lscala/collection/AbstractIterator;

    move-result-object p1

    .line 500
    new-instance v0, Lscala/util/matching/Regex$$anonfun$replaceSomeIn$1;

    invoke-direct {v0, p0, p2, p1}, Lscala/util/matching/Regex$$anonfun$replaceSomeIn$1;-><init>(Lscala/util/matching/Regex;Lscala/Function1;Lscala/collection/AbstractIterator;)V

    invoke-virtual {p1, v0}, Lscala/collection/AbstractIterator;->foreach(Lscala/Function1;)V

    .line 503
    check-cast p1, Lscala/util/matching/Regex$Replacement;

    invoke-interface {p1}, Lscala/util/matching/Regex$Replacement;->replaced()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public runMatcher(Ljava/util/regex/Matcher;)Z
    .locals 0

    .line 319
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method

.method public split(Ljava/lang/CharSequence;)[Ljava/lang/String;
    .locals 1

    .line 526
    invoke-virtual {p0}, Lscala/util/matching/Regex;->pattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 559
    invoke-virtual {p0}, Lscala/util/matching/Regex;->regex()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unanchored()Lscala/util/matching/UnanchoredRegex;
    .locals 1

    .line 553
    new-instance v0, Lscala/util/matching/Regex$$anon$2;

    invoke-direct {v0, p0}, Lscala/util/matching/Regex$$anon$2;-><init>(Lscala/util/matching/Regex;)V

    return-object v0
.end method

.method public unapplySeq(C)Lscala/Option;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Lscala/Option<",
            "Lscala/collection/immutable/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 284
    invoke-virtual {p0}, Lscala/util/matching/Regex;->pattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 285
    invoke-virtual {p0, p1}, Lscala/util/matching/Regex;->runMatcher(Ljava/util/regex/Matcher;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lscala/Some;

    new-instance v1, Lscala/collection/immutable/StringOps;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lscala/collection/immutable/StringOps;->toList()Lscala/collection/immutable/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    sget-object p1, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 287
    :cond_1
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    :goto_0
    return-object v0
.end method

.method public unapplySeq(Ljava/lang/CharSequence;)Lscala/Option;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lscala/Option<",
            "Lscala/collection/immutable/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 243
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    .line 246
    :cond_0
    invoke-virtual {p0}, Lscala/util/matching/Regex;->pattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 247
    invoke-virtual {p0, p1}, Lscala/util/matching/Regex;->runMatcher(Ljava/util/regex/Matcher;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lscala/Some;

    sget-object v1, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lscala/runtime/RichInt$;->to$extension0(II)Lscala/collection/immutable/Range$Inclusive;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/immutable/Range$Inclusive;->toList()Lscala/collection/immutable/List;

    move-result-object v1

    new-instance v2, Lscala/util/matching/Regex$$anonfun$unapplySeq$1;

    invoke-direct {v2, p0, p1}, Lscala/util/matching/Regex$$anonfun$unapplySeq$1;-><init>(Lscala/util/matching/Regex;Ljava/util/regex/Matcher;)V

    sget-object p1, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    invoke-virtual {p1}, Lscala/collection/immutable/List$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lscala/collection/immutable/List;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    goto :goto_0

    .line 248
    :cond_1
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    :goto_0
    return-object p1
.end method

.method public unapplySeq(Ljava/lang/Object;)Lscala/Option;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lscala/Option<",
            "Lscala/collection/immutable/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 309
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/CharSequence;

    .line 311
    invoke-virtual {p0}, Lscala/util/matching/Regex;->pattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 312
    invoke-virtual {p0, p1}, Lscala/util/matching/Regex;->runMatcher(Ljava/util/regex/Matcher;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lscala/Some;

    sget-object v1, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lscala/runtime/RichInt$;->to$extension0(II)Lscala/collection/immutable/Range$Inclusive;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/immutable/Range$Inclusive;->toList()Lscala/collection/immutable/List;

    move-result-object v1

    new-instance v2, Lscala/util/matching/Regex$$anonfun$unapplySeq$3;

    invoke-direct {v2, p0, p1}, Lscala/util/matching/Regex$$anonfun$unapplySeq$3;-><init>(Lscala/util/matching/Regex;Ljava/util/regex/Matcher;)V

    sget-object p1, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    invoke-virtual {p1}, Lscala/collection/immutable/List$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lscala/collection/immutable/List;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 313
    :cond_0
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    .line 314
    :cond_1
    instance-of v0, p1, Lscala/util/matching/Regex$Match;

    if-eqz v0, :cond_2

    check-cast p1, Lscala/util/matching/Regex$Match;

    invoke-virtual {p1}, Lscala/util/matching/Regex$Match;->matched()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/util/matching/Regex;->unapplySeq(Ljava/lang/CharSequence;)Lscala/Option;

    move-result-object v0

    goto :goto_0

    .line 315
    :cond_2
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    :goto_0
    return-object v0
.end method

.method public unapplySeq(Lscala/util/matching/Regex$Match;)Lscala/Option;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/util/matching/Regex$Match;",
            ")",
            "Lscala/Option<",
            "Lscala/collection/immutable/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 300
    invoke-virtual {p1}, Lscala/util/matching/Regex$Match;->matched()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 301
    :cond_0
    invoke-virtual {p1}, Lscala/util/matching/Regex$Match;->matcher()Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->pattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0}, Lscala/util/matching/Regex;->pattern()Ljava/util/regex/Pattern;

    move-result-object v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    new-instance v0, Lscala/Some;

    sget-object v1, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x1

    invoke-virtual {p1}, Lscala/util/matching/Regex$Match;->groupCount()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lscala/runtime/RichInt$;->to$extension0(II)Lscala/collection/immutable/Range$Inclusive;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/immutable/Range$Inclusive;->toList()Lscala/collection/immutable/List;

    move-result-object v1

    new-instance v2, Lscala/util/matching/Regex$$anonfun$unapplySeq$2;

    invoke-direct {v2, p0, p1}, Lscala/util/matching/Regex$$anonfun$unapplySeq$2;-><init>(Lscala/util/matching/Regex;Lscala/util/matching/Regex$Match;)V

    sget-object p1, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    invoke-virtual {p1}, Lscala/collection/immutable/List$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lscala/collection/immutable/List;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    .line 302
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lscala/util/matching/Regex$Match;->matched()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/util/matching/Regex;->unapplySeq(Ljava/lang/CharSequence;)Lscala/Option;

    move-result-object v0

    goto :goto_2

    .line 300
    :cond_4
    :goto_1
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    :goto_2
    return-object v0
.end method
