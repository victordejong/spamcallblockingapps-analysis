.class public interface abstract Lscala/concurrent/Future;
.super Ljava/lang/Object;
.source "Future.scala"

# interfaces
.implements Lscala/concurrent/Awaitable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/concurrent/Future$InternalCallbackExecutor$;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/concurrent/Awaitable<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u0011udaB\u0001\u0003!\u0003\r\ta\u0002\u0002\u0007\rV$XO]3\u000b\u0005\r!\u0011AC2p]\u000e,(O]3oi*\tQ!A\u0003tG\u0006d\u0017m\u0001\u0001\u0016\u0005!\u00192c\u0001\u0001\n\u001bA\u0011!bC\u0007\u0002\t%\u0011A\u0002\u0002\u0002\u0007\u0003:L(+\u001a4\u0011\u00079y\u0011#D\u0001\u0003\u0013\t\u0001\"AA\u0005Bo\u0006LG/\u00192mKB\u0011!c\u0005\u0007\u0001\t\u0019!\u0002\u0001\"b\u0001+\t\tA+\u0005\u0002\u00173A\u0011!bF\u0005\u00031\u0011\u0011qAT8uQ&tw\r\u0005\u0002\u000b5%\u00111\u0004\u0002\u0002\u0004\u0003:L\u0008\"B\u000f\u0001\t\u0003q\u0012A\u0002\u0013j]&$H\u0005F\u0001 !\tQ\u0001%\u0003\u0002\"\t\t!QK\\5u\u0011\u0015\u0019\u0003\u0001\"\u0003%\u0003AIg\u000e^3s]\u0006dW\t_3dkR|\'/F\u0001&\u001d\r1#q\u0014\u0008\u0003\u001d\u001d:Q\u0001\u000b\u0002\t\u0002%\naAR;ukJ,\u0007C\u0001\u0008+\r\u0015\t!\u0001#\u0001,\'\tQ\u0013\u0002C\u0003.U\u0011\u0005a&\u0001\u0004=S:LGO\u0010\u000b\u0002S!A\u0001G\u000bb\u0001\n\u0003\u0011\u0011\'A\u0004u_\n{\u00070\u001a3\u0016\u0003I\u0002Ba\r\u001d;\u00116\tAG\u0003\u00026m\u0005I\u0011.\\7vi\u0006\u0014G.\u001a\u0006\u0003o\u0011\t!bY8mY\u0016\u001cG/[8o\u0013\tIDGA\u0002NCB\u0004$a\u000f#\u0011\u0007q\n5)D\u0001>\u0015\tqt(\u0001\u0003mC:<\'\"\u0001!\u0002\t)\u000cg/Y\u0005\u0003\u0005v\u0012Qa\u00117bgN\u0004\"A\u0005#\u0005\u0013\u00153\u0015\u0011!A\u0001\u0006\u0003)\"aA0%c!1qI\u000bQ\u0001\nI\n\u0001\u0002^8C_b,G\r\t\u0019\u0003\u0013.\u00032\u0001P!K!\t\u00112\nB\u0005M\r\u0006\u0005\t\u0011!B\u0001+\t\u0019q\u000c\n\u001a\t\u000b9SC\u0011A(\u0002\r\u0019\u000c\u0017\u000e\\3e+\t\u00016\u000b\u0006\u0002R)B\u0019a\u0002\u0001*\u0011\u0005I\u0019F!\u0002\u000bN\u0005\u0004)\u0002\"B+N\u0001\u00041\u0016!C3yG\u0016\u0004H/[8o!\t9vL\u0004\u0002Y;:\u0011\u0011\u000cX\u0007\u00025*\u00111LB\u0001\u0007yI|w\u000e\u001e \n\u0003\u0015I!A\u0018\u0003\u0002\u000fA\u000c7m[1hK&\u0011\u0001-\u0019\u0002\n)\"\u0014xn^1cY\u0016T!A\u0018\u0003\t\u000b\rTC\u0011\u00013\u0002\u0015M,8mY3tg\u001a,H.\u0006\u0002fQR\u0011a-\u001b\t\u0004\u001d\u00019\u0007C\u0001\ni\t\u0015!\"M1\u0001\u0016\u0011\u0015Q\'\r1\u0001h\u0003\u0019\u0011Xm];mi\")AN\u000bC\u0001[\u00069aM]8n)JLXC\u00018r)\ty\'\u000fE\u0002\u000f\u0001A\u0004\"AE9\u0005\u000bQY\'\u0019A\u000b\t\u000b)\\\u0007\u0019A:\u0011\u0007Q<\u0008/D\u0001v\u0015\t1H!\u0001\u0003vi&d\u0017B\u0001=v\u0005\r!&/\u001f\u0005\u0006u*\"\ta_\u0001\u0006CB\u0004H._\u000b\u0004y\u0006\u0005AcA?\u0002JQ\u0019a0a\u0001\u0011\u00079\u0001q\u0010E\u0002\u0013\u0003\u0003!Q\u0001F=C\u0002UAq!!\u0002z\u0001\u0008\t9!\u0001\u0005fq\u0016\u001cW\u000f^8s!\rq\u0011\u0011B\u0005\u0004\u0003\u0017\u0011!\u0001E#yK\u000e,H/[8o\u0007>tG/\u001a=uQ\u0019\t\u0019!a\u0004\u0002\u0016A\u0019!\"!\u0005\n\u0007\u0005MAA\u0001\u0008eKB\u0014XmY1uK\u0012t\u0015-\\32\u000f}\t9\"!\u0008\u0002BA\u0019!\"!\u0007\n\u0007\u0005mAA\u0001\u0004Ts6\u0014w\u000e\\\u0019\tG\u0005}\u0011QEA\u001duR!\u0011qCA\u0011\u0011\u001d\t\u0019C\u0002a\u0001\u0003W\tAA\\1nK&\u0019!0a\n\u000b\u0007\u0005%B!\u0001\u0004Ts6\u0014w\u000e\u001c\t\u0005\u0003[\t\u0019DD\u0002\u000b\u0003_I1!!\r\u0005\u0003\u0019\u0001&/\u001a3fM&!\u0011QGA\u001c\u0005\u0019\u0019FO]5oO*\u0019\u0011\u0011\u0007\u00032\u0013\r\nY$!\u0010\u0002@\u0005%bb\u0001-\u0002>%\u0019\u0011\u0011\u0006\u00032\t\u0011BF,B\u0019\u0006K\u0005\r\u0013QI\u0008\u0003\u0003\u000b\n#!a\u0012\u0002\u000f\u0015DXmY2uq\"A\u00111J=\u0005\u0002\u0004\ti%\u0001\u0003c_\u0012L\u0008\u0003\u0002\u0006\u0002P}L1!!\u0015\u0005\u0005!a$-\u001f8b[\u0016t\u0004bBA+U\u0011\u0005\u0011qK\u0001\tg\u0016\u000cX/\u001a8dKV1\u0011\u0011LA<\u0003C\"B!a\u0017\u0002\u0012R1\u0011QLA>\u0003\u001f\u0003BA\u0004\u0001\u0002`A)!#!\u0019\u0002v\u0011A\u00111MA*\u0005\u0004\t)GA\u0001N+\u0011\t9\'!\u001d\u0012\u0007Y\tI\u0007E\u0003X\u0003W\ny\'C\u0002\u0002n\u0005\u0014q\u0002\u0016:bm\u0016\u00148/\u00192mK>s7-\u001a\t\u0004%\u0005EDaBA:\u0003C\u0012\r!\u0006\u0002\u00021B\u0019!#a\u001e\u0005\u000f\u0005e\u00141\u000bb\u0001+\t\t\u0011\t\u0003\u0005\u0002~\u0005M\u00039AA@\u0003\r\u0019\'M\u001a\t\u000b\u0003\u0003\u000b9)a#\u0002v\u0005}SBAAB\u0015\r\t)IN\u0001\u0008O\u0016tWM]5d\u0013\u0011\tI)a!\u0003\u0019\r\u000bgNQ;jY\u00124%o\\7\u0011\u000bI\t\t\'!$\u0011\t9\u0001\u0011Q\u000f\u0005\t\u0003\u000b\t\u0019\u0006q\u0001\u0002\u0008!A\u00111SA*\u0001\u0004\tY)\u0001\u0002j]\"9\u0011q\u0013\u0016\u0005\u0002\u0005e\u0015\u0001\u00054jeN$8i\\7qY\u0016$X\rZ(g+\u0011\tY*a)\u0015\t\u0005u\u0015q\u0015\u000b\u0005\u0003?\u000b)\u000b\u0005\u0003\u000f\u0001\u0005\u0005\u0006c\u0001\n\u0002$\u00121A#!&C\u0002UA\u0001\"!\u0002\u0002\u0016\u0002\u000f\u0011q\u0001\u0005\t\u0003S\u000b)\n1\u0001\u0002,\u00069a-\u001e;ve\u0016\u001c\u0008#B,\u0002l\u0005}\u0005bBAXU\u0011\u0005\u0011\u0011W\u0001\u0005M&tG-\u0006\u0003\u00024\u0006\rG\u0003BA[\u0003S$B!a.\u0002HR!\u0011\u0011XAc!\u0011q\u0001!a/\u0011\u000b)\ti,!1\n\u0007\u0005}FA\u0001\u0004PaRLwN\u001c\t\u0004%\u0005\rGA\u0002\u000b\u0002.\n\u0007Q\u0003\u0003\u0005\u0002\u0006\u00055\u00069AA\u0004\u0011!\tI-!,A\u0002\u0005-\u0017!\u00019\u0011\u000f)\ti-!1\u0002R&\u0019\u0011q\u001a\u0003\u0003\u0013\u0019+hn\u0019;j_:\u000c\u0004c\u0001\u0006\u0002T&\u0019\u0011Q\u001b\u0003\u0003\u000f\t{w\u000e\\3b]\"2\u0011qYA\u0008\u00033\u000ctaHA\u000c\u00037\u000c\t/\r\u0005$\u0003?\t)#!8{c%\u0019\u00131HA\u001f\u0003?\u000cI#\r\u0003%1r+\u0011\'B\u0013\u0002d\u0006\u0015xBAAsC\t\t9/A\u0005qe\u0016$\u0017nY1uK\"A\u0011\u0011VAW\u0001\u0004\tY\u000fE\u0003X\u0003W\ni\u000f\u0005\u0003\u000f\u0001\u0005\u0005\u0007FBAu\u0003\u001f\t\t0M\u0004 \u0003/\t\u00190!?2\u0011\r\ny\"!\n\u0002vj\u000c\u0014bIA\u001e\u0003{\t90!\u000b2\t\u0011BF,B\u0019\u0006K\u0005m\u0018Q`\u0008\u0003\u0003{\u000c#!a@\u0002\u001f\u0019,H/\u001e:fgR\u0014\u0018M^8oG\u0016DqAa\u0001+\t\u0003\u0011)!\u0001\u0003g_2$WC\u0002B\u0004\u0005K\u0011\u0019\u0002\u0006\u0003\u0003\n\tuB\u0003\u0002B\u0006\u0005s!BA!\u0004\u0003\u001aQ!!q\u0002B\u000c!\u0011q\u0001A!\u0005\u0011\u0007I\u0011\u0019\u0002B\u0004\u0003\u0016\t\u0005!\u0019A\u000b\u0003\u0003IC\u0001\"!\u0002\u0003\u0002\u0001\u000f\u0011q\u0001\u0005\t\u00057\u0011\t\u00011\u0001\u0003\u001e\u0005\u0011q\u000e\u001d\t\n\u0015\t}!\u0011\u0003B\u0012\u0005#I1A!\t\u0005\u0005%1UO\\2uS>t\'\u0007E\u0002\u0013\u0005K!a\u0001\u0006B\u0001\u0005\u0004)\u0002F\u0002B\r\u0003\u001f\u0011I#M\u0004 \u0003/\u0011YC!\r2\u0011\r\ny\"!\n\u0003.i\u000c\u0014bIA\u001e\u0003{\u0011y#!\u000b2\t\u0011BF,B\u0019\u0006K\tM\"QG\u0008\u0003\u0005k\t#Aa\u000e\u0002\u000f\u0019|G\u000e\u001a$v]\"A!1\u0008B\u0001\u0001\u0004\u0011\t\"\u0001\u0003{KJ|\u0007\u0002CAU\u0005\u0003\u0001\rAa\u0010\u0011\u000b]\u000bYG!\u0011\u0011\t9\u0001!1\u0005\u0005\u0008\u0005\u000bRC\u0011\u0001B$\u0003\u0019\u0011X\rZ;dKV1!\u0011\nB-\u0005\'\"BAa\u0013\u0003bQ!!Q\nB/)\u0011\u0011yEa\u0017\u0011\t9\u0001!\u0011\u000b\t\u0004%\tMC\u0001\u0003B\u000b\u0005\u0007\u0012\rA!\u0016\u0012\u0007\t]\u0013\u0004E\u0002\u0013\u00053\"a\u0001\u0006B\"\u0005\u0004)\u0002\u0002CA\u0003\u0005\u0007\u0002\u001d!a\u0002\t\u0011\tm!1\ta\u0001\u0005?\u0002\u0012B\u0003B\u0010\u0005#\u00129F!\u0015\t\u0011\u0005%&1\ta\u0001\u0005G\u0002RaVA6\u0005K\u0002BA\u0004\u0001\u0003X!9!\u0011\u000e\u0016\u0005\u0002\t-\u0014\u0001\u0003;sCZ,\'o]3\u0016\u0011\t5$\u0011\u0013BC\u0005o\"BAa\u001c\u0003\u001eR!!\u0011\u000fBK)\u0019\u0011\u0019H!#\u0003\u0014B!a\u0002\u0001B;!\u0015\u0011\"q\u000fBB\t!\t\u0019Ga\u001aC\u0002\teT\u0003\u0002B>\u0005\u0003\u000b2A\u0006B?!\u00159\u00161\u000eB@!\r\u0011\"\u0011\u0011\u0003\u0008\u0003g\u00129H1\u0001\u0016!\r\u0011\"Q\u0011\u0003\u0008\u0005\u000f\u00139G1\u0001\u0016\u0005\u0005\u0011\u0005\u0002CA?\u0005O\u0002\u001dAa#\u0011\u0015\u0005\u0005\u0015q\u0011BG\u0005\u0007\u0013)\u0008E\u0003\u0013\u0005o\u0012y\tE\u0002\u0013\u0005##q!!\u001f\u0003h\t\u0007Q\u0003\u0003\u0005\u0002\u0006\t\u001d\u00049AA\u0004\u0011!\u00119Ja\u001aA\u0002\te\u0015A\u00014o!\u001dQ\u0011Q\u001aBH\u00057\u0003BA\u0004\u0001\u0003\u0004\"A\u00111\u0013B4\u0001\u0004\u0011ii\u0002\u0005\u0003\"*B\tA\u0001BR\u0003aIe\u000e^3s]\u0006d7)\u00197mE\u0006\u001c7.\u0012=fGV$xN\u001d\t\u0005\u0005K\u00139+D\u0001+\r!\u0011IK\u000bE\u0001\u0005\t-&\u0001G%oi\u0016\u0014h.\u00197DC2d\'-Y2l\u000bb,7-\u001e;peN9!qU\u0005\u0002\u0008\t5\u0006c\u0001\u0008\u00030&\u0019!\u0011\u0017\u0002\u0003!\t\u000bGo\u00195j]\u001e,\u00050Z2vi>\u0014\u0008bB\u0017\u0003(\u0012\u0005!Q\u0017\u000b\u0003\u0005GC\u0001B!/\u0003(\u0012E#1X\u0001\u0011k:\u0014\u0017\r^2iK\u0012,\u00050Z2vi\u0016$2a\u0008B_\u0011!\u0011yLa.A\u0002\t\u0005\u0017!\u0001:\u0011\u0007q\u0012\u0019-C\u0002\u0003Fv\u0012\u0001BU;o]\u0006\u0014G.\u001a\u0005\t\u0005\u0013\u00149\u000b\"\u0011\u0003L\u0006i!/\u001a9peR4\u0015-\u001b7ve\u0016$2a\u0008Bg\u0011\u001d\u0011yMa2A\u0002Y\u000b\u0011\u0001\u001e\u0005\u0008\u0005\'\u0004A\u0011\u0001Bk\u0003%ygnU;dG\u0016\u001c8/\u0006\u0003\u0003X\n%H\u0003\u0002Bm\u0005;$2a\u0008Bn\u0011!\t)A!5A\u0004\u0005\u001d\u0001\u0002\u0003Bp\u0005#\u0004\rA!9\u0002\u0005A4\u0007C\u0002\u0006\u0003dF\u00119/C\u0002\u0003f\u0012\u0011q\u0002U1si&\u000cGNR;oGRLwN\u001c\t\u0004%\t%Ha\u0002Bv\u0005#\u0014\r!\u0006\u0002\u0002+\"9!q\u001e\u0001\u0005\u0002\tE\u0018!C8o\r\u0006LG.\u001e:f+\u0011\u0011\u0019Pa@\u0015\t\tU(\u0011 \u000b\u0004?\t]\u0008\u0002CA\u0003\u0005[\u0004\u001d!a\u0002\t\u0011\t}\'Q\u001ea\u0001\u0005w\u0004bA\u0003Br-\nu\u0008c\u0001\n\u0003\u0000\u00129!1\u001eBw\u0005\u0004)\u0002F\u0002B}\u0003\u001f\u0019\u0019!M\u0004 \u0003/\u0019)aa\u00032\u0011\r\ny\"!\n\u0004\u0008i\u000c\u0014bIA\u001e\u0003{\u0019I!!\u000b2\t\u0011BF,B\u0019\u0006K\r51qB\u0008\u0003\u0007\u001f\t#a!\u0005\u0002\u0011\r\u000cG\u000e\u001c2bG.Dqa!\u0006\u0001\r\u0003\u00199\"\u0001\u0006p]\u000e{W\u000e\u001d7fi\u0016,Ba!\u0007\u0004*Q!11DB\u0010)\ry2Q\u0004\u0005\t\u0003\u000b\u0019\u0019\u0002q\u0001\u0002\u0008!A1\u0011EB\n\u0001\u0004\u0019\u0019#A\u0001g!\u001dQ\u0011QZB\u0013\u0007O\u00012\u0001^<\u0012!\r\u00112\u0011\u0006\u0003\u0008\u0005W\u001c\u0019B1\u0001\u0016Q\u0019\u0019y\"a\u0004\u0004.E:q$a\u0006\u00040\rU\u0012\u0007C\u0012\u0002 \u0005\u00152\u0011\u0007>2\u0013\r\nY$!\u0010\u00044\u0005%\u0012\u0007\u0002\u0013Y9\u0016\tT!JB\u001c\u0007sy!a!\u000f\"\u0005\rm\u0012\u0001\u00024v]\u000eDqaa\u0010\u0001\r\u0003\u0019\t%A\u0006jg\u000e{W\u000e\u001d7fi\u0016$WCAAi\u0011\u001d\u0019)\u0005\u0001D\u0001\u0007\u000f\nQA^1mk\u0016,\"a!\u0013\u0011\u000b)\til!\n\t\r9\u0003A\u0011AB\'+\t\u0019y\u0005E\u0002\u000f\u0001YCqaa\u0015\u0001\t\u0003\u0019)&A\u0004g_J,\u0017m\u00195\u0016\t\r]31\r\u000b\u0005\u00073\u001ai\u0006F\u0002 \u00077B\u0001\"!\u0002\u0004R\u0001\u000f\u0011q\u0001\u0005\t\u0007C\u0019\t\u00061\u0001\u0004`A1!\"!4\u0012\u0007C\u00022AEB2\t\u001d\u0011Yo!\u0015C\u0002UAqaa\u001a\u0001\t\u0003\u0019I\'A\u0005ue\u0006t7OZ8s[V!11NB:)\u0019\u0019ig!\u001f\u0004\u0000Q!1qNB<!\u0011q\u0001a!\u001d\u0011\u0007I\u0019\u0019\u0008B\u0004\u0004v\r\u0015$\u0019A\u000b\u0003\u0003MC\u0001\"!\u0002\u0004f\u0001\u000f\u0011q\u0001\u0005\t\u0007w\u001a)\u00071\u0001\u0004~\u0005\t1\u000f\u0005\u0004\u000b\u0003\u001b\u000c2\u0011\u000f\u0005\t\u0007C\u0019)\u00071\u0001\u0004\u0002B)!\"!4W-\"91Q\u0011\u0001\u0005\u0002\r\u001d\u0015aA7baV!1\u0011RBI)\u0011\u0019Yi!&\u0015\t\r551\u0013\t\u0005\u001d\u0001\u0019y\tE\u0002\u0013\u0007##qa!\u001e\u0004\u0004\n\u0007Q\u0003\u0003\u0005\u0002\u0006\r\r\u00059AA\u0004\u0011!\u0019\tca!A\u0002\r]\u0005C\u0002\u0006\u0002NF\u0019y\tC\u0004\u0004\u001c\u0002!\ta!(\u0002\u000f\u0019d\u0017\r^\'baV!1qTBT)\u0011\u0019\tka+\u0015\t\r\r6\u0011\u0016\t\u0005\u001d\u0001\u0019)\u000bE\u0002\u0013\u0007O#qa!\u001e\u0004\u001a\n\u0007Q\u0003\u0003\u0005\u0002\u0006\re\u00059AA\u0004\u0011!\u0019\tc!\'A\u0002\r5\u0006C\u0002\u0006\u0002NF\u0019\u0019\u000bC\u0004\u00042\u0002!\taa-\u0002\r\u0019LG\u000e^3s)\u0011\u0019)la/\u0015\t\r]6\u0011\u0018\t\u0004\u001d\u0001\t\u0002\u0002CA\u0003\u0007_\u0003\u001d!a\u0002\t\u0011\u0005%7q\u0016a\u0001\u0007{\u0003bACAg#\u0005E\u0007FBB^\u0003\u001f\u0019\t-M\u0004 \u0003/\u0019\u0019m!32\u0011\r\ny\"!\n\u0004Fj\u000c\u0014bIA\u001e\u0003{\u00199-!\u000b2\t\u0011BF,B\u0019\u0006K\r-7QZ\u0008\u0003\u0007\u001b\u000c#aa4\u0002\tA\u0014X\r\u001a\u0005\u0008\u0007\'\u0004AQABk\u0003)9\u0018\u000e\u001e5GS2$XM\u001d\u000b\u0005\u0007/\u001cY\u000e\u0006\u0003\u00048\u000ee\u0007\u0002CA\u0003\u0007#\u0004\u001d!a\u0002\t\u0011\u0005%7\u0011\u001ba\u0001\u0007{Cqaa8\u0001\t\u0003\u0019\t/A\u0004d_2dWm\u0019;\u0016\t\r\r81\u001e\u000b\u0005\u0007K\u001cy\u000f\u0006\u0003\u0004h\u000e5\u0008\u0003\u0002\u0008\u0001\u0007S\u00042AEBv\t\u001d\u0019)h!8C\u0002UA\u0001\"!\u0002\u0004^\u0002\u000f\u0011q\u0001\u0005\t\u0005?\u001ci\u000e1\u0001\u0004rB1!Ba9\u0012\u0007SDqa!>\u0001\t\u0003\u001990A\u0004sK\u000e|g/\u001a:\u0016\t\reH\u0011\u0001\u000b\u0005\u0007w$9\u0001\u0006\u0003\u0004~\u0012\u0015\u0001\u0003\u0002\u0008\u0001\u0007\u007f\u00042A\u0005C\u0001\t!\u0011Yoa=C\u0002\u0011\r\u0011CA\t\u001a\u0011!\t)aa=A\u0004\u0005\u001d\u0001\u0002\u0003Bp\u0007g\u0004\r\u0001\"\u0003\u0011\r)\u0011\u0019OVB\u0000\u0011\u001d!i\u0001\u0001C\u0001\t\u001f\t1B]3d_Z,\'oV5uQV!A\u0011\u0003C\r)\u0011!\u0019\u0002\"\u0008\u0015\t\u0011UA1\u0004\t\u0005\u001d\u0001!9\u0002E\u0002\u0013\t3!\u0001Ba;\u0005\u000c\t\u0007A1\u0001\u0005\t\u0003\u000b!Y\u0001q\u0001\u0002\u0008!A!q\u001cC\u0006\u0001\u0004!y\u0002\u0005\u0004\u000b\u0005G4FQ\u0003\u0005\u0008\tG\u0001A\u0011\u0001C\u0013\u0003\rQ\u0018\u000e]\u000b\u0005\tO!\u0019\u0004\u0006\u0003\u0005*\u0011U\u0002\u0003\u0002\u0008\u0001\tW\u0001bA\u0003C\u0017#\u0011E\u0012b\u0001C\u0018\t\t1A+\u001e9mKJ\u00022A\u0005C\u001a\t\u001d\u0011Y\u000f\"\tC\u0002UA\u0001\u0002b\u000e\u0005\"\u0001\u0007A\u0011H\u0001\u0005i\"\u000cG\u000f\u0005\u0003\u000f\u0001\u0011E\u0002b\u0002C\u001f\u0001\u0011\u0005AqH\u0001\u000bM\u0006dGNY1dWR{W\u0003\u0002C!\t\u000f\"B\u0001b\u0011\u0005JA!a\u0002\u0001C#!\r\u0011Bq\t\u0003\t\u0005W$YD1\u0001\u0005\u0004!AAq\u0007C\u001e\u0001\u0004!\u0019\u0005C\u0004\u0005N\u0001!\t\u0001b\u0014\u0002\u000b5\u000c\u0007\u000fV8\u0016\t\u0011ECq\u000b\u000b\u0005\t\'\"I\u0006\u0005\u0003\u000f\u0001\u0011U\u0003c\u0001\n\u0005X\u001191Q\u000fC&\u0005\u0004)\u0002\u0002\u0003C.\t\u0017\u0002\u001d\u0001\"\u0018\u0002\u0007Q\u000cw\r\u0005\u0004\u0005`\u0011\u0015DQK\u0007\u0003\tCR1\u0001b\u0019\u0005\u0003\u001d\u0011XM\u001a7fGRLA\u0001b\u001a\u0005b\tA1\t\\1tgR\u000bw\rC\u0004\u0005l\u0001!\t\u0001\"\u001c\u0002\u000f\u0005tG\r\u00165f]V!Aq\u000eC>)\u0011!\t\u0008\"\u001e\u0015\t\r]F1\u000f\u0005\t\u0003\u000b!I\u0007q\u0001\u0002\u0008!A!q\u001cC5\u0001\u0004!9\u0008E\u0004\u000b\u0005G\u001c)\u0003\"\u001f\u0011\u0007I!Y\u0008B\u0004\u0003l\u0012%$\u0019A\u000b"
.end annotation


# virtual methods
.method public abstract andThen(Lscala/PartialFunction;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/PartialFunction<",
            "Lscala/util/Try<",
            "TT;>;TU;>;",
            "Lscala/concurrent/ExecutionContext;",
            ")",
            "Lscala/concurrent/Future<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract collect(Lscala/PartialFunction;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/PartialFunction<",
            "TT;TS;>;",
            "Lscala/concurrent/ExecutionContext;",
            ")",
            "Lscala/concurrent/Future<",
            "TS;>;"
        }
    .end annotation
.end method

.method public abstract failed()Lscala/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/concurrent/Future<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end method

.method public abstract fallbackTo(Lscala/concurrent/Future;)Lscala/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/concurrent/Future<",
            "TU;>;)",
            "Lscala/concurrent/Future<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract filter(Lscala/Function1;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/concurrent/ExecutionContext;",
            ")",
            "Lscala/concurrent/Future<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract flatMap(Lscala/Function1;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TT;",
            "Lscala/concurrent/Future<",
            "TS;>;>;",
            "Lscala/concurrent/ExecutionContext;",
            ")",
            "Lscala/concurrent/Future<",
            "TS;>;"
        }
    .end annotation
.end method

.method public abstract foreach(Lscala/Function1;Lscala/concurrent/ExecutionContext;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TT;TU;>;",
            "Lscala/concurrent/ExecutionContext;",
            ")V"
        }
    .end annotation
.end method

.method public abstract isCompleted()Z
.end method

.method public abstract map(Lscala/Function1;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TT;TS;>;",
            "Lscala/concurrent/ExecutionContext;",
            ")",
            "Lscala/concurrent/Future<",
            "TS;>;"
        }
    .end annotation
.end method

.method public abstract mapTo(Lscala/reflect/ClassTag;)Lscala/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/reflect/ClassTag<",
            "TS;>;)",
            "Lscala/concurrent/Future<",
            "TS;>;"
        }
    .end annotation
.end method

.method public abstract onComplete(Lscala/Function1;Lscala/concurrent/ExecutionContext;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/util/Try<",
            "TT;>;TU;>;",
            "Lscala/concurrent/ExecutionContext;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onFailure(Lscala/PartialFunction;Lscala/concurrent/ExecutionContext;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/PartialFunction<",
            "Ljava/lang/Throwable;",
            "TU;>;",
            "Lscala/concurrent/ExecutionContext;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onSuccess(Lscala/PartialFunction;Lscala/concurrent/ExecutionContext;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/PartialFunction<",
            "TT;TU;>;",
            "Lscala/concurrent/ExecutionContext;",
            ")V"
        }
    .end annotation
.end method

.method public abstract recover(Lscala/PartialFunction;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/PartialFunction<",
            "Ljava/lang/Throwable;",
            "TU;>;",
            "Lscala/concurrent/ExecutionContext;",
            ")",
            "Lscala/concurrent/Future<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract recoverWith(Lscala/PartialFunction;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/PartialFunction<",
            "Ljava/lang/Throwable;",
            "Lscala/concurrent/Future<",
            "TU;>;>;",
            "Lscala/concurrent/ExecutionContext;",
            ")",
            "Lscala/concurrent/Future<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract transform(Lscala/Function1;Lscala/Function1;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TT;TS;>;",
            "Lscala/Function1<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;",
            "Lscala/concurrent/ExecutionContext;",
            ")",
            "Lscala/concurrent/Future<",
            "TS;>;"
        }
    .end annotation
.end method

.method public abstract value()Lscala/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option<",
            "Lscala/util/Try<",
            "TT;>;>;"
        }
    .end annotation
.end method

.method public abstract withFilter(Lscala/Function1;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/concurrent/ExecutionContext;",
            ")",
            "Lscala/concurrent/Future<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract zip(Lscala/concurrent/Future;)Lscala/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/concurrent/Future<",
            "TU;>;)",
            "Lscala/concurrent/Future<",
            "Lscala/Tuple2<",
            "TT;TU;>;>;"
        }
    .end annotation
.end method
