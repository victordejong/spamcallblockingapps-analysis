.class public final Lscala/collection/mutable/LongMap;
.super Lscala/collection/mutable/AbstractMap;
.source "LongMap.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/mutable/LongMap$LongMapBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/mutable/AbstractMap<",
        "Ljava/lang/Object;",
        "TV;>;",
        "Lscala/Serializable;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\r\u0005d\u0001B\u0001\u0003\u0005%\u0011q\u0001T8oO6\u000b\u0007O\u0003\u0002\u0004\t\u00059Q.\u001e;bE2,\'BA\u0003\u0007\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000f\u0005)1oY1mC\u000e\u0001QC\u0001\u0006\u0016\'\u0015\u00011BH\u0011&!\u0011aQbD\n\u000e\u0003\tI!A\u0004\u0002\u0003\u0017\u0005\u00137\u000f\u001e:bGRl\u0015\r\u001d\t\u0003!Ei\u0011AB\u0005\u0003%\u0019\u0011A\u0001T8oOB\u0011A#\u0006\u0007\u0001\t\u00151\u0002A1\u0001\u0018\u0005\u00051\u0016C\u0001\r\u001c!\t\u0001\u0012$\u0003\u0002\u001b\r\t9aj\u001c;iS:<\u0007C\u0001\t\u001d\u0013\tibAA\u0002B]f\u0004B\u0001D\u0010\u0010\'%\u0011\u0001E\u0001\u0002\u0004\u001b\u0006\u0004\u0008#\u0002\u0007#\u001fM!\u0013BA\u0012\u0003\u0005\u001di\u0015\r\u001d\'jW\u0016\u00042\u0001\u0004\u0001\u0014!\t\u0001b%\u0003\u0002(\r\ta1+\u001a:jC2L\'0\u00192mK\"A\u0011\u0006\u0001B\u0001B\u0003%!&\u0001\u0007eK\u001a\u000cW\u000f\u001c;F]R\u0014\u0018\u0010\u0005\u0003\u0011W=\u0019\u0012B\u0001\u0017\u0007\u0005%1UO\\2uS>t\u0017\u0007\u0003\u0005/\u0001\t\u0005\t\u0015!\u00030\u0003EIg.\u001b;jC2\u0014UO\u001a4feNK\'0\u001a\t\u0003!AJ!!\r\u0004\u0003\u0007%sG\u000f\u0003\u00054\u0001\t\u0005\t\u0015!\u00035\u0003%Ig.\u001b;CY\u0006t7\u000e\u0005\u0002\u0011k%\u0011aG\u0002\u0002\u0008\u0005>|G.Z1o\u0011\u0019A\u0004\u0001\"\u0001\u0005s\u00051A(\u001b8jiz\"B\u0001\n\u001e<y!)\u0011f\u000ea\u0001U!)af\u000ea\u0001_!)1g\u000ea\u0001i!)\u0001\u0008\u0001C\u0001}Q\tA\u0005C\u00039\u0001\u0011\u0005\u0001\t\u0006\u0002%\u0003\")\u0011f\u0010a\u0001U!)\u0001\u0008\u0001C\u0001\u0007R\u0011A\u0005\u0012\u0005\u0006]\t\u0003\ra\u000c\u0005\u0006q\u0001!\tA\u0012\u000b\u0004I\u001dC\u0005\"B\u0015F\u0001\u0004Q\u0003\"\u0002\u0018F\u0001\u0004y\u0003B\u0002&\u0001A\u0003&q&\u0001\u0003nCN\\\u0007B\u0002\'\u0001A\u0003&q&A\u0005fqR\u0014\u0018mS3zg\"1a\n\u0001Q!\n=\u000b\u0011B_3s_Z\u000bG.^3\u0011\u0005A\u0001\u0016BA)\u0007\u0005\u0019\te.\u001f*fM\"11\u000b\u0001Q!\n=\u000b\u0001\"\\5o-\u0006dW/\u001a\u0005\u0007+\u0002\u0001\u000b\u0015B\u0018\u0002\u000b}\u001b\u0018N_3\t\r]\u0003\u0001\u0015)\u00030\u0003\u001dyf/Y2b]RDa!\u0017\u0001!B\u0013Q\u0016!B0lKf\u001c\u0008c\u0001\t\\\u001f%\u0011AL\u0002\u0002\u0006\u0003J\u0014\u0018-\u001f\u0005\u0007=\u0002\u0001\u000b\u0015B0\u0002\u000f}3\u0018\r\\;fgB\u0019\u0001cW(\t\r\u0005\u0004\u0001\u0015\"\u0003c\u0003E!WMZ1vYRLe.\u001b;jC2L\'0\u001a\u000b\u0003G\u001a\u0004\"\u0001\u00053\n\u0005\u00154!\u0001B+oSRDQa\u001a1A\u0002=\n\u0011A\u001c\u0005\u0007S\u0002!\t\u0001\u00026\u0002\u0019%t\u0017\u000e^5bY&TX\rV8\u0015\u0013\r\\Wn\\9tk^L\u0008\"\u00027i\u0001\u0004y\u0013!A7\t\u000b9D\u0007\u0019A\u0018\u0002\u0005\u0015\\\u0007\"\u00029i\u0001\u0004y\u0015A\u0001>w\u0011\u0015\u0011\u0008\u000e1\u0001P\u0003\tig\u000fC\u0003uQ\u0002\u0007q&\u0001\u0002tu\")a\u000f\u001ba\u0001_\u0005\u0011ao\u0019\u0005\u0006q\"\u0004\rAW\u0001\u0003WjDQA\u001f5A\u0002}\u000b!A\u001e>\t\u000bq\u0004A\u0011I?\u0002\tML\'0Z\u000b\u0002_!1q\u0010\u0001C!\u0003\u0003\tQ!Z7qif,\u0012\u0001\n\u0005\u0008\u0003\u000b\u0001A\u0011BA\u0004\u0003)IWNY1mC:\u001cW\rZ\u000b\u0002i!9\u00111\u0002\u0001\u0005\n\u00055\u0011a\u0002;p\u0013:$W\r\u001f\u000b\u0004_\u0005=\u0001bBA\t\u0003\u0013\u0001\raD\u0001\u0002W\"9\u0011Q\u0003\u0001\u0005\n\u0005]\u0011!C:fK.,U\u000e\u001d;z)\ry\u0013\u0011\u0004\u0005\u0008\u0003#\t\u0019\u00021\u0001\u0010\u0011\u001d\ti\u0002\u0001C\u0005\u0003?\t\u0011b]3fW\u0016sGO]=\u0015\u0007=\n\t\u0003C\u0004\u0002\u0012\u0005m\u0001\u0019A\u0008\t\u000f\u0005\u0015\u0002\u0001\"\u0003\u0002(\u0005y1/Z3l\u000b:$(/_(s\u001fB,g\u000eF\u00020\u0003SAq!!\u0005\u0002$\u0001\u0007q\u0002C\u0004\u0002.\u0001!\t%a\u000c\u0002\u0011\r|g\u000e^1j]N$2\u0001NA\u0019\u0011\u001d\t\u0019$a\u000bA\u0002=\t1a[3z\u0011\u001d\t9\u0004\u0001C!\u0003s\t1aZ3u)\u0011\tY$!\u0011\u0011\tA\tidE\u0005\u0004\u0003\u007f1!AB(qi&|g\u000eC\u0004\u00024\u0005U\u0002\u0019A\u0008\t\u000f\u0005\u0015\u0003\u0001\"\u0011\u0002H\u0005Iq-\u001a;Pe\u0016c7/Z\u000b\u0005\u0003\u0013\ni\u0005\u0006\u0004\u0002L\u0005M\u0013Q\u000b\t\u0004)\u00055C\u0001CA(\u0003\u0007\u0012\r!!\u0015\u0003\u0005Y\u000b\u0014CA\n\u001c\u0011\u001d\t\u0019$a\u0011A\u0002=A\u0011\"a\u0016\u0002D\u0011\u0005\r!!\u0017\u0002\u000f\u0011,g-Y;miB)\u0001#a\u0017\u0002L%\u0019\u0011Q\u000c\u0004\u0003\u0011q\u0012\u0017P\\1nKzBq!!\u0019\u0001\t\u0003\n\u0019\'A\u0008hKR|%/\u00127tKV\u0003H-\u0019;f)\u0015\u0019\u0012QMA4\u0011\u001d\t\u0019$a\u0018A\u0002=A\u0011\"!\u001b\u0002`\u0011\u0005\r!a\u001b\u0002\u0019\u0011,g-Y;miZ\u000bG.^3\u0011\tA\tYf\u0005\u0005\u0008\u0003_\u0002A\u0011AA9\u0003%9W\r^(s\u001dVdG\u000eF\u0002\u0014\u0003gBq!a\r\u0002n\u0001\u0007q\u0002C\u0004\u0002x\u0001!\t%!\u001f\u0002\u000b\u0005\u0004\u0008\u000f\\=\u0015\u0007M\tY\u0008C\u0004\u00024\u0005U\u0004\u0019A\u0008\t\u000f\u0005]\u0003\u0001\"\u0011\u0002\u0000Q\u00191#!!\t\u000f\u0005M\u0012Q\u0010a\u0001\u001f!9\u0011Q\u0011\u0001\u0005\n\u0005\u001d\u0015A\u0002:fa\u0006\u001c7\u000eF\u0002d\u0003\u0013Cq!a#\u0002\u0004\u0002\u0007q&A\u0004oK^l\u0015m]6\t\u000f\u0005\u0015\u0005\u0001\"\u0001\u0002\u0010R\t1\rC\u0004\u0002\u0014\u0002!\t%!&\u0002\u0007A,H\u000f\u0006\u0004\u0002<\u0005]\u0015\u0011\u0014\u0005\u0008\u0003g\t\t\n1\u0001\u0010\u0011\u001d\tY*!%A\u0002M\tQA^1mk\u0016Dq!a(\u0001\t\u0003\n\t+\u0001\u0004va\u0012\u000cG/\u001a\u000b\u0006G\u0006\r\u0016Q\u0015\u0005\u0008\u0003g\ti\n1\u0001\u0010\u0011\u001d\tY*!(A\u0002MAq!!+\u0001\t\u0003\tY+\u0001\u0005%a2,8\u000fJ3r)\u0019\ti+a,\u000226\t\u0001\u0001C\u0004\u00024\u0005\u001d\u0006\u0019A\u0008\t\u000f\u0005m\u0015q\u0015a\u0001\'!9\u0011\u0011\u0016\u0001\u0005\u0002\u0005UF\u0003BAW\u0003oC\u0001\"!/\u00024\u0002\u0007\u00111X\u0001\u0003WZ\u0004R\u0001EA_\u001fMI1!a0\u0007\u0005\u0019!V\u000f\u001d7fe!9\u00111\u0019\u0001\u0005\u0002\u0005\u0015\u0017!\u0003\u0013nS:,8\u000fJ3r)\u0011\ti+a2\t\u000f\u0005M\u0012\u0011\u0019a\u0001\u001f!9\u00111\u001a\u0001\u0005\u0002\u00055\u0017\u0001C5uKJ\u000cGo\u001c:\u0016\u0005\u0005=\u0007CBAi\u0003\'\u000cY,D\u0001\u0005\u0013\r\t)\u000e\u0002\u0002\t\u0013R,\'/\u0019;pe\"9\u0011\u0011\u001c\u0001\u0005B\u0005m\u0017a\u00024pe\u0016\u000c7\r[\u000b\u0005\u0003;\u000c9\u000fF\u0002d\u0003?D\u0001\"!9\u0002X\u0002\u0007\u00111]\u0001\u0002MB1\u0001cKA^\u0003K\u00042\u0001FAt\t\u001d\tI/a6C\u0002]\u0011\u0011!\u0011\u0005\u0007\u0003[\u0004A\u0011\t \u0002\u000b\rdwN\\3\t\u000f\u0005E\u0008\u0001\"\u0001\u0002t\u0006Qam\u001c:fC\u000eD7*Z=\u0016\t\u0005U\u0018Q \u000b\u0004G\u0006]\u0008\u0002CAq\u0003_\u0004\r!!?\u0011\u000bAYs\"a?\u0011\u0007Q\ti\u0010B\u0004\u0002j\u0006=(\u0019A\u000c\t\u000f\t\u0005\u0001\u0001\"\u0001\u0003\u0004\u0005aam\u001c:fC\u000eDg+\u00197vKV!!Q\u0001B\u0007)\r\u0019\'q\u0001\u0005\t\u0003C\u000cy\u00101\u0001\u0003\nA)\u0001cK\n\u0003\u000cA\u0019AC!\u0004\u0005\u000f\u0005%\u0018q b\u0001/!9!\u0011\u0003\u0001\u0005\u0002\tM\u0011\u0001D7baZ\u000bG.^3t\u001d><X\u0003\u0002B\u000b\u00057!BAa\u0006\u0003\u001eA!A\u0002\u0001B\r!\r!\"1\u0004\u0003\u0008\u0003\u001f\u0012yA1\u0001\u0018\u0011!\t\tOa\u0004A\u0002\t}\u0001#\u0002\t,\'\te\u0001b\u0002B\u0012\u0001\u0011\u0005!QE\u0001\u0010iJ\u000cgn\u001d4pe64\u0016\r\\;fgR!\u0011Q\u0016B\u0014\u0011!\t\tO!\tA\u0002\t%\u0002\u0003\u0002\t,\'M9qA!\u000c\u0003\u0011\u0003\u0011y#A\u0004M_:<W*\u00199\u0011\u00071\u0011\tD\u0002\u0004\u0002\u0005!\u0005!1G\n\u0005\u0005cyU\u0005C\u00049\u0005c!\tAa\u000e\u0015\u0005\t=\u0002B\u0003B\u001e\u0005c\u0011\r\u0011\"\u0004\u0003>\u0005I\u0011J\u001c3fq6\u000b7o[\u000b\u0003\u0005\u007fy!A!\u0011\u001e\t}z\u0000\u0000@\u0005\n\u0005\u000b\u0012\t\u0004)A\u0007\u0005\u007f\t!\"\u00138eKbl\u0015m]6!\u0011)\u0011IE!\rC\u0002\u00135!1J\u0001\u000b\u001b&\u001c8/\u001b8h\u0005&$XC\u0001B\'\u001f\t\u0011y%\u0008\u0003\u0001\u0002\u0001\u0001\u0001\"\u0003B*\u0005c\u0001\u000bQ\u0002B\'\u0003-i\u0015n]:j]\u001e\u0014\u0015\u000e\u001e\u0011\t\u0015\t]#\u0011\u0007b\u0001\n\u001b\u0011I&A\u0005WC\u000e\u000cg\u000e\u001e\"jiV\u0011!1L\u0008\u0003\u0005;jB\u0001\u0011\u0001\u0001\u0001!I!\u0011\rB\u0019A\u00035!1L\u0001\u000b-\u0006\u001c\u0017M\u001c;CSR\u0004\u0003B\u0003B3\u0005c\u0011\r\u0011\"\u0004\u0003h\u0005QQ*[:t-\u0006\u001c\u0017M\u001c;\u0016\u0005\t%tB\u0001B6;\u0011\u0001\r\u0001\u0001\u0001\t\u0013\t=$\u0011\u0007Q\u0001\u000e\t%\u0014aC\'jgN4\u0016mY1oi\u0002B!Ba\u001d\u00032\t\u0007I\u0011\u0002B;\u0003A)\u0007pY3qi&|g\u000eR3gCVdG/\u0006\u0002\u0003xA!\u0001cK\u0008\u0019\u0011%\u0011YH!\r!\u0002\u0013\u00119(A\tfq\u000e,\u0007\u000f^5p]\u0012+g-Y;mi\u0002B\u0001Ba \u00032\u0011\r!\u0011Q\u0001\rG\u0006t\')^5mI\u001a\u0013x.\\\u000b\u0007\u0005\u0007\u0013)Ja\'\u0016\u0005\t\u0015\u0005C\u0003BD\u0005\u001b\u0013\tJa&\u0003 6\u0011!\u0011\u0012\u0006\u0004\u0005\u0017#\u0011aB4f]\u0016\u0014\u0018nY\u0005\u0005\u0005\u001f\u0013II\u0001\u0007DC:\u0014U/\u001b7e\rJ|W\u000e\u0005\u0003\r\u0001\tM\u0005c\u0001\u000b\u0003\u0016\u00121aC! C\u0002]\u0001b\u0001EA_\u001f\te\u0005c\u0001\u000b\u0003\u001c\u00129!Q\u0014B?\u0005\u00049\"!A+\u0011\t1\u0001!\u0011\u0014\u0004\u0008\u0005G\u0013\tD\u0001BS\u00059auN\\4NCB\u0014U/\u001b7eKJ,BAa*\u00034N)!\u0011U(\u0003*B9ABa+\u00030\nU\u0016b\u0001BW\u0005\t9!)^5mI\u0016\u0014\u0008C\u0002\t\u0002>>\u0011\t\u000cE\u0002\u0015\u0005g#aA\u0006BQ\u0005\u00049\u0002\u0003\u0002\u0007\u0001\u0005cCq\u0001\u000fBQ\t\u0003\u0011I\u000c\u0006\u0002\u0003<B1!Q\u0018BQ\u0005ck!A!\r\t\u0017\t\u0005\'\u0011\u0015a\u0001\n\u0003!!1Y\u0001\u0006K2,Wn]\u000b\u0003\u0005kC1Ba2\u0003\"\u0002\u0007I\u0011\u0001\u0003\u0003J\u0006IQ\r\\3ng~#S-\u001d\u000b\u0004G\n-\u0007B\u0003Bg\u0005\u000b\u000c\t\u00111\u0001\u00036\u0006\u0019\u0001\u0010J\u0019\t\u0013\tE\'\u0011\u0015Q!\n\tU\u0016AB3mK6\u001c\u0008\u0005\u0003\u0005\u0002*\n\u0005F\u0011\u0001Bk)\u0011\u00119N!7\u000e\u0005\t\u0005\u0006\u0002\u0003Bn\u0005\'\u0004\rAa,\u0002\u000b\u0015tGO]=\t\u0011\t}\'\u0011\u0015C\u0001\u0003\u001f\u000bQa\u00197fCJD\u0001Ba9\u0003\"\u0012\u0005!Q]\u0001\u0007e\u0016\u001cX\u000f\u001c;\u0015\u0005\tU\u0006\u0002CA<\u0005c!\tA!;\u0016\t\t-(\u0011\u001f\u000b\u0005\u0005[\u0014\u0019\u0010\u0005\u0003\r\u0001\t=\u0008c\u0001\u000b\u0003r\u00121aCa:C\u0002]A\u0001B!1\u0003h\u0002\u0007!Q\u001f\t\u0006!\t](1`\u0005\u0004\u0005s4!A\u0003\u001fsKB,\u0017\r^3e}A1\u0001#!0\u0010\u0005_Dqa B\u0019\t\u0003\u0011y0\u0006\u0003\u0004\u0002\r\u001dQCAB\u0002!\u0011a\u0001a!\u0002\u0011\u0007Q\u00199\u0001\u0002\u0004\u0017\u0005{\u0014\ra\u0006\u0005\t\u0007\u0017\u0011\t\u0004\"\u0001\u0004\u000e\u0005Yq/\u001b;i\t\u00164\u0017-\u001e7u+\u0011\u0019ya!\u0006\u0015\t\rE1q\u0003\t\u0005\u0019\u0001\u0019\u0019\u0002E\u0002\u0015\u0007+!aAFB\u0005\u0005\u00049\u0002\u0002CA,\u0007\u0013\u0001\ra!\u0007\u0011\u000bAYsba\u0005\t\u0011\ru!\u0011\u0007C\u0001\u0007?\tqA\u001a:p[jK\u0007/\u0006\u0003\u0004\"\r\u001dBCBB\u0012\u0007S\u0019i\u0003\u0005\u0003\r\u0001\r\u0015\u0002c\u0001\u000b\u0004(\u00111aca\u0007C\u0002]Aqaa\u000b\u0004\u001c\u0001\u0007!,\u0001\u0003lKf\u001c\u0008\u0002CB\u0018\u00077\u0001\ra!\r\u0002\rY\u000cG.^3t!\u0011\u00012l!\n\t\u0011\ru!\u0011\u0007C\u0001\u0007k)Baa\u000e\u0004>Q11\u0011HB \u0007\u000f\u0002B\u0001\u0004\u0001\u0004<A\u0019Ac!\u0010\u0005\rY\u0019\u0019D1\u0001\u0018\u0011!\u0019Yca\rA\u0002\r\u0005\u0003\u0003\u0002\u0007\u0004D=I1a!\u0012\u0003\u0005!IE/\u001a:bE2,\u0007\u0002CB\u0018\u0007g\u0001\ra!\u0013\u0011\u000b1\u0019\u0019ea\u000f\t\u0015\r5#\u0011GA\u0001\n\u0013\u0019y%A\u0006sK\u0006$\'+Z:pYZ,GCAB)!\u0011\u0019\u0019f!\u0018\u000e\u0005\rU#\u0002BB,\u00073\nA\u0001\\1oO*\u001111L\u0001\u0005U\u00064\u0018-\u0003\u0003\u0004`\rU#AB(cU\u0016\u001cG\u000f"
.end annotation


# instance fields
.field private _size:I

.field private _vacant:I

.field private final defaultEntry:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "TV;>;"
        }
    .end annotation
.end field

.field private mask:I

.field public scala$collection$mutable$LongMap$$_keys:[J

.field public scala$collection$mutable$LongMap$$_values:[Ljava/lang/Object;

.field public scala$collection$mutable$LongMap$$extraKeys:I

.field public scala$collection$mutable$LongMap$$minValue:Ljava/lang/Object;

.field public scala$collection$mutable$LongMap$$zeroValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    sget-object v0, Lscala/collection/mutable/LongMap$;->MODULE$:Lscala/collection/mutable/LongMap$;

    invoke-virtual {v0}, Lscala/collection/mutable/LongMap$;->scala$collection$mutable$LongMap$$exceptionDefault()Lscala/Function1;

    move-result-object v0

    const/16 v1, 0x10

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lscala/collection/mutable/LongMap;-><init>(Lscala/Function1;IZ)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 45
    sget-object v0, Lscala/collection/mutable/LongMap$;->MODULE$:Lscala/collection/mutable/LongMap$;

    invoke-virtual {v0}, Lscala/collection/mutable/LongMap$;->scala$collection$mutable$LongMap$$exceptionDefault()Lscala/Function1;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lscala/collection/mutable/LongMap;-><init>(Lscala/Function1;IZ)V

    return-void
.end method

.method public constructor <init>(Lscala/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "TV;>;)V"
        }
    .end annotation

    const/16 v0, 0x10

    const/4 v1, 0x1

    .line 38
    invoke-direct {p0, p1, v0, v1}, Lscala/collection/mutable/LongMap;-><init>(Lscala/Function1;IZ)V

    return-void
.end method

.method public constructor <init>(Lscala/Function1;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "TV;>;I)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lscala/collection/mutable/LongMap;-><init>(Lscala/Function1;IZ)V

    return-void
.end method

.method public constructor <init>(Lscala/Function1;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "TV;>;IZ)V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lscala/collection/mutable/LongMap;->defaultEntry:Lscala/Function1;

    .line 28
    invoke-direct {p0}, Lscala/collection/mutable/AbstractMap;-><init>()V

    const/4 p1, 0x0

    .line 50
    iput p1, p0, Lscala/collection/mutable/LongMap;->mask:I

    .line 51
    iput p1, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$extraKeys:I

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$zeroValue:Ljava/lang/Object;

    .line 53
    iput-object v0, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$minValue:Ljava/lang/Object;

    .line 54
    iput p1, p0, Lscala/collection/mutable/LongMap;->_size:I

    .line 55
    iput p1, p0, Lscala/collection/mutable/LongMap;->_vacant:I

    .line 56
    iput-object v0, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$_keys:[J

    .line 57
    iput-object v0, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$_values:[Ljava/lang/Object;

    if-eqz p3, :cond_0

    .line 59
    invoke-direct {p0, p2}, Lscala/collection/mutable/LongMap;->defaultInitialize(I)V

    :cond_0
    return-void
.end method

.method public static canBuildFrom()Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/mutable/LongMap<",
            "TV;>;",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "TU;>;",
            "Lscala/collection/mutable/LongMap<",
            "TU;>;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/mutable/LongMap$;->MODULE$:Lscala/collection/mutable/LongMap$;

    invoke-virtual {v0}, Lscala/collection/mutable/LongMap$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    return-object v0
.end method

.method private defaultInitialize(I)V
    .locals 3

    const/4 v0, 0x7

    const/4 v1, 0x1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v1

    .line 64
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x20

    shl-int p1, v1, p1

    sub-int/2addr p1, v1

    const v2, 0x3fffffff    # 1.9999999f

    and-int/2addr p1, v2

    or-int/2addr v0, p1

    .line 62
    :goto_0
    iput v0, p0, Lscala/collection/mutable/LongMap;->mask:I

    add-int/lit8 p1, v0, 0x1

    .line 65
    new-array p1, p1, [J

    iput-object p1, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$_keys:[J

    add-int/2addr v0, v1

    .line 66
    new-array p1, v0, [Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$_values:[Ljava/lang/Object;

    return-void
.end method

.method public static fromZip(Lscala/collection/mutable/Iterable;Lscala/collection/mutable/Iterable;)Lscala/collection/mutable/LongMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/mutable/Iterable<",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/collection/mutable/Iterable<",
            "TV;>;)",
            "Lscala/collection/mutable/LongMap<",
            "TV;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/mutable/LongMap$;->MODULE$:Lscala/collection/mutable/LongMap$;

    invoke-virtual {v0, p0, p1}, Lscala/collection/mutable/LongMap$;->fromZip(Lscala/collection/mutable/Iterable;Lscala/collection/mutable/Iterable;)Lscala/collection/mutable/LongMap;

    move-result-object p0

    return-object p0
.end method

.method public static fromZip([JLjava/lang/Object;)Lscala/collection/mutable/LongMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([J",
            "Ljava/lang/Object;",
            ")",
            "Lscala/collection/mutable/LongMap<",
            "TV;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/mutable/LongMap$;->MODULE$:Lscala/collection/mutable/LongMap$;

    invoke-virtual {v0, p0, p1}, Lscala/collection/mutable/LongMap$;->fromZip([JLjava/lang/Object;)Lscala/collection/mutable/LongMap;

    move-result-object p0

    return-object p0
.end method

.method private imbalanced()Z
    .locals 8

    .line 79
    iget v0, p0, Lscala/collection/mutable/LongMap;->_size:I

    iget v1, p0, Lscala/collection/mutable/LongMap;->_vacant:I

    add-int v2, v0, v1

    int-to-double v2, v2

    iget v4, p0, Lscala/collection/mutable/LongMap;->mask:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double v4, v4, v6

    cmpl-double v6, v2, v4

    if-gtz v6, :cond_1

    if-le v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private repack(I)V
    .locals 7

    .line 230
    iget-object v0, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$_keys:[J

    .line 231
    iget-object v1, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$_values:[Ljava/lang/Object;

    .line 232
    iput p1, p0, Lscala/collection/mutable/LongMap;->mask:I

    add-int/lit8 v2, p1, 0x1

    .line 233
    new-array v2, v2, [J

    iput-object v2, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$_keys:[J

    add-int/lit8 p1, p1, 0x1

    .line 234
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$_values:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 235
    iput p1, p0, Lscala/collection/mutable/LongMap;->_vacant:I

    .line 237
    :goto_0
    array-length v2, v0

    if-ge p1, v2, :cond_1

    .line 238
    aget-wide v2, v0, p1

    neg-long v4, v2

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    .line 240
    invoke-direct {p0, v2, v3}, Lscala/collection/mutable/LongMap;->seekEmpty(J)I

    move-result v4

    .line 241
    iget-object v5, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$_keys:[J

    aput-wide v2, v5, v4

    .line 242
    iget-object v2, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$_values:[Ljava/lang/Object;

    aget-object v3, v1, p1

    aput-object v3, v2, v4

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private seekEmpty(J)I
    .locals 5

    .line 89
    invoke-direct {p0, p1, p2}, Lscala/collection/mutable/LongMap;->toIndex(J)I

    move-result p1

    const/4 p2, 0x0

    .line 91
    :goto_0
    iget-object v0, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$_keys:[J

    aget-wide v1, v0, p1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v0, p2, 0x1

    mul-int/lit8 v0, v0, 0x2

    mul-int v0, v0, p2

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x3

    iget v0, p0, Lscala/collection/mutable/LongMap;->mask:I

    and-int/2addr p1, v0

    goto :goto_0

    :cond_0
    return p1
.end method

.method private seekEntry(J)I
    .locals 9

    .line 96
    invoke-direct {p0, p1, p2}, Lscala/collection/mutable/LongMap;->toIndex(J)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 98
    :goto_0
    iget-object v3, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$_keys:[J

    aget-wide v4, v3, v0

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    return v0

    :cond_0
    const-wide/16 v6, 0x0

    const/4 v3, 0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    add-int/2addr v2, v3

    add-int/lit8 v3, v2, 0x1

    mul-int/lit8 v3, v3, 0x2

    mul-int v3, v3, v2

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x3

    iget v3, p0, Lscala/collection/mutable/LongMap;->mask:I

    and-int/2addr v0, v3

    goto :goto_0

    :cond_2
    const/high16 p1, -0x80000000

    or-int/2addr p1, v0

    return p1
.end method

.method private seekEntryOrOpen(J)I
    .locals 11

    .line 104
    invoke-direct {p0, p1, p2}, Lscala/collection/mutable/LongMap;->toIndex(J)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 106
    :goto_0
    iget-object v3, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$_keys:[J

    aget-wide v4, v3, v0

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    return v0

    :cond_0
    add-long v6, v4, v4

    const-wide/16 v8, 0x0

    const/4 v3, 0x1

    cmp-long v10, v6, v8

    if-eqz v10, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v2, 0x1

    mul-int/lit8 v3, v3, 0x2

    mul-int v3, v3, v2

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x3

    .line 109
    iget v3, p0, Lscala/collection/mutable/LongMap;->mask:I

    and-int/2addr v0, v3

    goto :goto_0

    :cond_2
    cmp-long v6, v4, v8

    if-nez v6, :cond_3

    const/high16 p1, -0x80000000

    or-int/2addr p1, v0

    return p1

    :cond_3
    const/high16 v4, -0x40000000    # -2.0f

    or-int/2addr v4, v0

    .line 113
    :goto_2
    iget-object v5, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$_keys:[J

    aget-wide v6, v5, v0

    cmp-long v5, v6, p1

    if-nez v5, :cond_4

    return v0

    :cond_4
    cmp-long v5, v6, v8

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_6

    add-int/2addr v2, v3

    add-int/lit8 v5, v2, 0x1

    mul-int/lit8 v5, v5, 0x2

    mul-int v5, v5, v2

    add-int/2addr v0, v5

    add-int/lit8 v0, v0, -0x3

    .line 115
    iget v5, p0, Lscala/collection/mutable/LongMap;->mask:I

    and-int/2addr v0, v5

    goto :goto_2

    :cond_6
    return v4
.end method

.method private toIndex(J)I
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    xor-long/2addr p1, v0

    const-wide v0, 0xffffffffL

    and-long/2addr p1, v0

    long-to-int p2, p1

    ushr-int/lit8 p1, p2, 0x10

    xor-int/2addr p1, p2

    const p2, -0x7a143595

    mul-int p1, p1, p2

    ushr-int/lit8 p2, p1, 0xd

    xor-int/2addr p1, p2

    .line 85
    iget p2, p0, Lscala/collection/mutable/LongMap;->mask:I

    and-int/2addr p1, p2

    return p1
.end method


# virtual methods
.method public bridge synthetic $minus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LongMap;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/Map;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LongMap;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LongMap;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/mutable/LongMap;->$minus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus$eq(Ljava/lang/Object;)Lscala/collection/generic/Shrinkable;
    .locals 2

    .line 27
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lscala/collection/mutable/LongMap;->$minus$eq(J)Lscala/collection/mutable/LongMap;

    move-result-object p1

    return-object p1
.end method

.method public $minus$eq(J)Lscala/collection/mutable/LongMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lscala/collection/mutable/LongMap<",
            "TV;>;"
        }
    .end annotation

    neg-long v0, p1

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-nez v3, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v3, p1, v0

    if-nez v3, :cond_0

    .line 338
    iget p1, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$extraKeys:I

    and-int/lit8 p1, p1, 0x2

    iput p1, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$extraKeys:I

    .line 339
    iput-object v2, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$zeroValue:Ljava/lang/Object;

    goto :goto_0

    .line 342
    :cond_0
    iget p1, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$extraKeys:I

    and-int/lit8 p1, p1, 0x1

    iput p1, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$extraKeys:I

    .line 343
    iput-object v2, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$minValue:Ljava/lang/Object;

    goto :goto_0

    .line 347
    :cond_1
    invoke-direct {p0, p1, p2}, Lscala/collection/mutable/LongMap;->seekEntry(J)I

    move-result p1

    if-ltz p1, :cond_2

    .line 349
    iget p2, p0, Lscala/collection/mutable/LongMap;->_size:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lscala/collection/mutable/LongMap;->_size:I

    .line 350
    iget p2, p0, Lscala/collection/mutable/LongMap;->_vacant:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lscala/collection/mutable/LongMap;->_vacant:I

    .line 351
    iget-object p2, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$_keys:[J

    const-wide/high16 v0, -0x8000000000000000L

    aput-wide v0, p2, p1

    .line 352
    iget-object p2, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$_values:[Ljava/lang/Object;

    aput-object v2, p2, p1

    :cond_2
    :goto_0
    return-object p0
.end method

.method public bridge synthetic $minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/MapLike;
    .locals 2

    .line 27
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lscala/collection/mutable/LongMap;->$minus$eq(J)Lscala/collection/mutable/LongMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus$minus(Lscala/collection/GenTraversableOnce;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LongMap;->$minus$minus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/GenMap;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LongMap;->$plus(Lscala/Tuple2;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/Map;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LongMap;->$plus(Lscala/Tuple2;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/Map;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/mutable/LongMap;->$plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 0

    .line 27
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/LongMap;->$plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/LongMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 27
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/LongMap;->$plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/LongMap;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(JLjava/lang/Object;)Lscala/collection/mutable/LongMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)",
            "Lscala/collection/mutable/LongMap<",
            "TV;>;"
        }
    .end annotation

    .line 331
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/mutable/LongMap;->update(JLjava/lang/Object;)V

    return-object p0
.end method

.method public $plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/LongMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "TV;>;)",
            "Lscala/collection/mutable/LongMap<",
            "TV;>;"
        }
    .end annotation

    .line 333
    invoke-virtual {p1}, Lscala/Tuple2;->_1$mcJ$sp()J

    move-result-wide v0

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lscala/collection/mutable/LongMap;->update(JLjava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic $plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/MapLike;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LongMap;->$plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/LongMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Map;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LongMap;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public apply(J)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    neg-long v0, p1

    cmp-long v2, p1, v0

    if-nez v2, :cond_2

    const/16 v0, 0x3f

    ushr-long v0, p1, v0

    long-to-int v1, v0

    add-int/lit8 v1, v1, 0x1

    .line 214
    iget v0, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$extraKeys:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lscala/collection/mutable/LongMap;->defaultEntry:Lscala/Function1;

    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    .line 215
    iget-object p1, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$zeroValue:Ljava/lang/Object;

    goto :goto_0

    .line 216
    :cond_1
    iget-object p1, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$minValue:Ljava/lang/Object;

    goto :goto_0

    .line 219
    :cond_2
    invoke-direct {p0, p1, p2}, Lscala/collection/mutable/LongMap;->seekEntry(J)I

    move-result v0

    if-gez v0, :cond_3

    .line 220
    iget-object v0, p0, Lscala/collection/mutable/LongMap;->defaultEntry:Lscala/Function1;

    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$_values:[Ljava/lang/Object;

    aget-object p1, p1, v0

    :goto_0
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 27
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lscala/collection/mutable/LongMap;->apply(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lscala/collection/mutable/LongMap;->clone()Lscala/collection/mutable/LongMap;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lscala/collection/mutable/LongMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/LongMap<",
            "TV;>;"
        }
    .end annotation

    .line 411
    iget-object v0, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$_keys:[J

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v9

    .line 412
    iget-object v0, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$_values:[Ljava/lang/Object;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    .line 413
    new-instance v0, Lscala/collection/mutable/LongMap;

    iget-object v1, p0, Lscala/collection/mutable/LongMap;->defaultEntry:Lscala/Function1;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lscala/collection/mutable/LongMap;-><init>(Lscala/Function1;IZ)V

    .line 414
    iget v3, p0, Lscala/collection/mutable/LongMap;->mask:I

    iget v4, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$extraKeys:I

    iget-object v5, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$zeroValue:Ljava/lang/Object;

    iget-object v6, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$minValue:Ljava/lang/Object;

    iget v7, p0, Lscala/collection/mutable/LongMap;->_size:I

    iget v8, p0, Lscala/collection/mutable/LongMap;->_vacant:I

    move-object v2, v0

    invoke-virtual/range {v2 .. v10}, Lscala/collection/mutable/LongMap;->initializeTo(IILjava/lang/Object;Ljava/lang/Object;II[J[Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic clone()Lscala/collection/mutable/Map;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lscala/collection/mutable/LongMap;->clone()Lscala/collection/mutable/LongMap;

    move-result-object v0

    return-object v0
.end method

.method public contains(J)Z
    .locals 5

    neg-long v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmp-long v4, p1, v0

    if-nez v4, :cond_0

    const/16 v0, 0x3f

    ushr-long/2addr p1, v0

    long-to-int p2, p1

    add-int/2addr p2, v3

    .line 121
    iget p1, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$extraKeys:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_1

    goto :goto_0

    .line 122
    :cond_0
    invoke-direct {p0, p1, p2}, Lscala/collection/mutable/LongMap;->seekEntry(J)I

    move-result p1

    if-ltz p1, :cond_1

    :goto_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 2

    .line 27
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lscala/collection/mutable/LongMap;->contains(J)Z

    move-result p1

    return p1
.end method

.method public default(J)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lscala/collection/mutable/LongMap;->defaultEntry:Lscala/Function1;

    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic default(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 27
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lscala/collection/mutable/LongMap;->default(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic empty()Lscala/collection/Map;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lscala/collection/mutable/LongMap;->empty()Lscala/collection/mutable/LongMap;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/mutable/LongMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/LongMap<",
            "TV;>;"
        }
    .end annotation

    .line 76
    new-instance v0, Lscala/collection/mutable/LongMap;

    invoke-direct {v0}, Lscala/collection/mutable/LongMap;-><init>()V

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/mutable/Map;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lscala/collection/mutable/LongMap;->empty()Lscala/collection/mutable/LongMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic filterKeys(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LongMap;->filterKeys(Lscala/Function1;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic filterNot(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LongMap;->filterNot(Lscala/Function1;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public foreach(Lscala/Function1;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "TV;>;TA;>;)V"
        }
    .end annotation

    .line 397
    iget v0, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$extraKeys:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    new-instance v0, Lscala/Tuple2;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$zeroValue:Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 398
    :goto_0
    iget v0, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$extraKeys:I

    const/4 v2, 0x2

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    new-instance v0, Lscala/Tuple2;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-static {v2, v3}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$minValue:Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :goto_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 400
    :goto_2
    iget-object v4, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$_keys:[J

    array-length v5, v4

    if-ge v2, v5, :cond_2

    const/4 v5, 0x1

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    :goto_3
    iget v6, p0, Lscala/collection/mutable/LongMap;->_size:I

    if-ge v3, v6, :cond_3

    const/4 v6, 0x1

    goto :goto_4

    :cond_3
    const/4 v6, 0x0

    :goto_4
    and-int/2addr v5, v6

    if-eqz v5, :cond_5

    .line 401
    aget-wide v5, v4, v2

    neg-long v7, v5

    cmp-long v4, v5, v7

    if-eqz v4, :cond_4

    add-int/lit8 v3, v3, 0x1

    .line 404
    new-instance v4, Lscala/Tuple2;

    invoke-static {v5, v6}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v6, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$_values:[Ljava/lang/Object;

    aget-object v6, v6, v2

    invoke-direct {v4, v5, v6}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v4}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 402
    :cond_4
    sget-object v4, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public foreachKey(Lscala/Function1;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "TA;>;)V"
        }
    .end annotation

    .line 420
    iget v0, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$extraKeys:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 421
    :goto_0
    iget v0, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$extraKeys:I

    const/4 v2, 0x2

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    const-wide/high16 v2, -0x8000000000000000L

    invoke-static {v2, v3}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :goto_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 423
    :goto_2
    iget-object v4, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$_keys:[J

    array-length v5, v4

    if-ge v2, v5, :cond_2

    const/4 v5, 0x1

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    :goto_3
    iget v6, p0, Lscala/collection/mutable/LongMap;->_size:I

    if-ge v3, v6, :cond_3

    const/4 v6, 0x1

    goto :goto_4

    :cond_3
    const/4 v6, 0x0

    :goto_4
    and-int/2addr v5, v6

    if-eqz v5, :cond_5

    .line 424
    aget-wide v5, v4, v2

    neg-long v7, v5

    cmp-long v4, v5, v7

    if-eqz v4, :cond_4

    add-int/lit8 v3, v3, 0x1

    .line 427
    invoke-static {v5, v6}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v4}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 425
    :cond_4
    sget-object v4, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public foreachValue(Lscala/Function1;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TV;TA;>;)V"
        }
    .end annotation

    .line 435
    iget v0, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$extraKeys:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$zeroValue:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 436
    :goto_0
    iget v0, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$extraKeys:I

    const/4 v2, 0x2

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$minValue:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :goto_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 438
    :goto_2
    iget-object v4, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$_keys:[J

    array-length v5, v4

    if-ge v2, v5, :cond_2

    const/4 v5, 0x1

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    :goto_3
    iget v6, p0, Lscala/collection/mutable/LongMap;->_size:I

    if-ge v3, v6, :cond_3

    const/4 v6, 0x1

    goto :goto_4

    :cond_3
    const/4 v6, 0x0

    :goto_4
    and-int/2addr v5, v6

    if-eqz v5, :cond_5

    .line 439
    aget-wide v5, v4, v2

    neg-long v7, v5

    cmp-long v4, v5, v7

    if-eqz v4, :cond_4

    add-int/lit8 v3, v3, 0x1

    .line 442
    iget-object v4, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$_values:[Ljava/lang/Object;

    aget-object v4, v4, v2

    invoke-interface {p1, v4}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 440
    :cond_4
    sget-object v4, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public get(J)Lscala/Option;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lscala/Option<",
            "TV;>;"
        }
    .end annotation

    neg-long v0, p1

    cmp-long v2, p1, v0

    if-nez v2, :cond_2

    const/16 v0, 0x3f

    ushr-long v0, p1, v0

    long-to-int v1, v0

    add-int/lit8 v1, v1, 0x1

    .line 127
    iget v0, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$extraKeys:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    .line 128
    new-instance p1, Lscala/Some;

    iget-object p2, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$zeroValue:Ljava/lang/Object;

    invoke-direct {p1, p2}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 129
    :cond_1
    new-instance p1, Lscala/Some;

    iget-object p2, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$minValue:Ljava/lang/Object;

    invoke-direct {p1, p2}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 132
    :cond_2
    invoke-direct {p0, p1, p2}, Lscala/collection/mutable/LongMap;->seekEntry(J)I

    move-result p1

    if-gez p1, :cond_3

    .line 133
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_3
    new-instance p2, Lscala/Some;

    iget-object v0, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$_values:[Ljava/lang/Object;

    aget-object p1, v0, p1

    invoke-direct {p2, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Lscala/Option;
    .locals 2

    .line 27
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lscala/collection/mutable/LongMap;->get(J)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public getOrElse(JLscala/Function0;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V1:",
            "Ljava/lang/Object;",
            ">(J",
            "Lscala/Function0<",
            "TV1;>;)TV1;"
        }
    .end annotation

    neg-long v0, p1

    cmp-long v2, p1, v0

    if-nez v2, :cond_2

    const/16 v0, 0x3f

    ushr-long v0, p1, v0

    long-to-int v1, v0

    add-int/lit8 v1, v1, 0x1

    .line 139
    iget v0, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$extraKeys:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    invoke-interface {p3}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-nez p3, :cond_1

    .line 140
    iget-object p1, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$zeroValue:Ljava/lang/Object;

    goto :goto_0

    .line 141
    :cond_1
    iget-object p1, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$minValue:Ljava/lang/Object;

    goto :goto_0

    .line 144
    :cond_2
    invoke-direct {p0, p1, p2}, Lscala/collection/mutable/LongMap;->seekEntry(J)I

    move-result p1

    if-gez p1, :cond_3

    .line 145
    invoke-interface {p3}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$_values:[Ljava/lang/Object;

    aget-object p1, p2, p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic getOrElse(Ljava/lang/Object;Lscala/Function0;)Ljava/lang/Object;
    .locals 2

    .line 27
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lscala/collection/mutable/LongMap;->getOrElse(JLscala/Function0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getOrElseUpdate(JLscala/Function0;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lscala/Function0<",
            "TV;>;)TV;"
        }
    .end annotation

    neg-long v0, p1

    cmp-long v2, p1, v0

    if-nez v2, :cond_3

    const/16 v0, 0x3f

    ushr-long v0, p1, v0

    long-to-int v1, v0

    add-int/lit8 v1, v1, 0x1

    .line 152
    iget v0, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$extraKeys:I

    and-int/2addr v0, v1

    const-wide/16 v2, 0x0

    if-nez v0, :cond_1

    .line 153
    invoke-interface {p3}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p3

    .line 154
    iget v0, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$extraKeys:I

    or-int/2addr v0, v1

    iput v0, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$extraKeys:I

    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    .line 155
    iput-object p3, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$zeroValue:Ljava/lang/Object;

    goto :goto_0

    .line 156
    :cond_0
    iput-object p3, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$minValue:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    cmp-long p3, p1, v2

    if-nez p3, :cond_2

    .line 159
    iget-object p3, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$zeroValue:Ljava/lang/Object;

    goto :goto_0

    .line 160
    :cond_2
    iget-object p3, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$minValue:Ljava/lang/Object;

    goto :goto_0

    .line 163
    :cond_3
    invoke-direct {p0, p1, p2}, Lscala/collection/mutable/LongMap;->seekEntryOrOpen(J)I

    move-result v0

    if-gez v0, :cond_6

    .line 169
    iget-object v1, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$_keys:[J

    .line 170
    invoke-interface {p3}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p3

    .line 171
    iget-object v2, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$_keys:[J

    if-eq v1, v2, :cond_4

    .line 172
    invoke-direct {p0, p1, p2}, Lscala/collection/mutable/LongMap;->seekEntryOrOpen(J)I

    move-result v0

    if-ltz v0, :cond_4

    .line 173
    iget v1, p0, Lscala/collection/mutable/LongMap;->_size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lscala/collection/mutable/LongMap;->_size:I

    .line 175
    :cond_4
    iget v1, p0, Lscala/collection/mutable/LongMap;->_size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lscala/collection/mutable/LongMap;->_size:I

    const v1, 0x3fffffff    # 1.9999999f

    and-int/2addr v1, v0

    .line 179
    iget-object v2, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$_keys:[J

    aput-wide p1, v2, v1

    .line 180
    iget-object p1, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$_values:[Ljava/lang/Object;

    aput-object p3, p1, v1

    const/high16 p1, 0x40000000    # 2.0f

    and-int/2addr p1, v0

    if-eqz p1, :cond_5

    .line 181
    iget p1, p0, Lscala/collection/mutable/LongMap;->_vacant:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lscala/collection/mutable/LongMap;->_vacant:I

    goto :goto_0

    .line 182
    :cond_5
    invoke-direct {p0}, Lscala/collection/mutable/LongMap;->imbalanced()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lscala/collection/mutable/LongMap;->repack()V

    goto :goto_0

    .line 185
    :cond_6
    iget-object p1, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$_values:[Ljava/lang/Object;

    aget-object p3, p1, v0

    :cond_7
    :goto_0
    return-object p3
.end method

.method public bridge synthetic getOrElseUpdate(Ljava/lang/Object;Lscala/Function0;)Ljava/lang/Object;
    .locals 2

    .line 27
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lscala/collection/mutable/LongMap;->getOrElseUpdate(JLscala/Function0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getOrNull(J)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    neg-long v0, p1

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-nez v3, :cond_2

    const/16 v0, 0x3f

    ushr-long v0, p1, v0

    long-to-int v1, v0

    add-int/lit8 v1, v1, 0x1

    .line 198
    iget v0, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$extraKeys:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    .line 199
    iget-object v2, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$zeroValue:Ljava/lang/Object;

    goto :goto_0

    .line 200
    :cond_1
    iget-object v2, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$minValue:Ljava/lang/Object;

    goto :goto_0

    .line 203
    :cond_2
    invoke-direct {p0, p1, p2}, Lscala/collection/mutable/LongMap;->seekEntry(J)I

    move-result p1

    if-gez p1, :cond_3

    goto :goto_0

    .line 204
    :cond_3
    iget-object p2, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$_values:[Ljava/lang/Object;

    aget-object v2, p2, p1

    :goto_0
    return-object v2
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LongMap;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public initializeTo(IILjava/lang/Object;Ljava/lang/Object;II[J[Ljava/lang/Object;)V
    .locals 0

    .line 72
    iput p1, p0, Lscala/collection/mutable/LongMap;->mask:I

    iput p2, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$extraKeys:I

    iput-object p3, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$zeroValue:Ljava/lang/Object;

    iput-object p4, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$minValue:Ljava/lang/Object;

    iput p5, p0, Lscala/collection/mutable/LongMap;->_size:I

    iput p6, p0, Lscala/collection/mutable/LongMap;->_vacant:I

    iput-object p7, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$_keys:[J

    iput-object p8, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$_values:[Ljava/lang/Object;

    return-void
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "TV;>;>;"
        }
    .end annotation

    .line 358
    new-instance v0, Lscala/collection/mutable/LongMap$$anon$1;

    invoke-direct {v0, p0}, Lscala/collection/mutable/LongMap$$anon$1;-><init>(Lscala/collection/mutable/LongMap;)V

    return-object v0
.end method

.method public bridge synthetic keySet()Lscala/collection/GenSet;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lscala/collection/mutable/LongMap;->keySet()Lscala/collection/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keys()Lscala/collection/GenIterable;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lscala/collection/mutable/LongMap;->keys()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mapValues(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LongMap;->mapValues(Lscala/Function1;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public mapValuesNow(Lscala/Function1;)Lscala/collection/mutable/LongMap;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TV;TV1;>;)",
            "Lscala/collection/mutable/LongMap<",
            "TV1;>;"
        }
    .end annotation

    .line 453
    iget v0, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$extraKeys:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$zeroValue:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object v6, v2

    .line 454
    :goto_0
    iget v0, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$extraKeys:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$minValue:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_1
    move-object v7, v2

    .line 455
    new-instance v0, Lscala/collection/mutable/LongMap;

    sget-object v2, Lscala/collection/mutable/LongMap$;->MODULE$:Lscala/collection/mutable/LongMap$;

    invoke-virtual {v2}, Lscala/collection/mutable/LongMap$;->scala$collection$mutable$LongMap$$exceptionDefault()Lscala/Function1;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lscala/collection/mutable/LongMap;-><init>(Lscala/Function1;IZ)V

    .line 456
    iget-object v2, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$_keys:[J

    array-length v4, v2

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v10

    .line 457
    iget-object v2, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$_values:[Ljava/lang/Object;

    array-length v2, v2

    new-array v11, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 459
    :goto_1
    iget-object v5, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$_keys:[J

    array-length v8, v5

    if-ge v2, v8, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    iget v9, p0, Lscala/collection/mutable/LongMap;->_size:I

    if-ge v4, v9, :cond_3

    const/4 v12, 0x1

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    :goto_3
    and-int/2addr v8, v12

    if-eqz v8, :cond_5

    .line 460
    aget-wide v8, v5, v2

    neg-long v12, v8

    cmp-long v5, v8, v12

    if-eqz v5, :cond_4

    add-int/lit8 v4, v4, 0x1

    .line 463
    iget-object v5, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$_values:[Ljava/lang/Object;

    aget-object v5, v5, v2

    invoke-interface {p1, v5}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v11, v2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 467
    :cond_5
    iget v4, p0, Lscala/collection/mutable/LongMap;->mask:I

    iget v5, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$extraKeys:I

    iget p1, p0, Lscala/collection/mutable/LongMap;->_vacant:I

    move-object v3, v0

    move v8, v9

    move v9, p1

    invoke-virtual/range {v3 .. v11}, Lscala/collection/mutable/LongMap;->initializeTo(IILjava/lang/Object;Ljava/lang/Object;II[J[Ljava/lang/Object;)V

    return-object v0
.end method

.method public put(JLjava/lang/Object;)Lscala/Option;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)",
            "Lscala/Option<",
            "TV;>;"
        }
    .end annotation

    neg-long v0, p1

    const/4 v2, 0x1

    cmp-long v3, p1, v0

    if-nez v3, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v3, p1, v0

    if-nez v3, :cond_1

    .line 266
    iget p1, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$extraKeys:I

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_0

    new-instance p1, Lscala/Some;

    iget-object p2, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$zeroValue:Ljava/lang/Object;

    invoke-direct {p1, p2}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    .line 267
    :goto_0
    iput-object p3, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$zeroValue:Ljava/lang/Object;

    .line 268
    iget p2, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$extraKeys:I

    or-int/2addr p2, v2

    iput p2, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$extraKeys:I

    goto :goto_3

    .line 272
    :cond_1
    iget p1, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$extraKeys:I

    and-int/lit8 p1, p1, 0x2

    if-ne p1, v2, :cond_2

    new-instance p1, Lscala/Some;

    iget-object p2, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$minValue:Ljava/lang/Object;

    invoke-direct {p1, p2}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    .line 273
    :goto_1
    iput-object p3, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$minValue:Ljava/lang/Object;

    .line 274
    iget p2, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$extraKeys:I

    or-int/lit8 p2, p2, 0x2

    iput p2, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$extraKeys:I

    goto :goto_3

    .line 279
    :cond_3
    invoke-direct {p0, p1, p2}, Lscala/collection/mutable/LongMap;->seekEntryOrOpen(J)I

    move-result v0

    if-gez v0, :cond_6

    const v1, 0x3fffffff    # 1.9999999f

    and-int/2addr v1, v0

    .line 282
    iget-object v3, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$_keys:[J

    aput-wide p1, v3, v1

    .line 283
    iget-object p1, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$_values:[Ljava/lang/Object;

    aput-object p3, p1, v1

    .line 284
    iget p1, p0, Lscala/collection/mutable/LongMap;->_size:I

    add-int/2addr p1, v2

    iput p1, p0, Lscala/collection/mutable/LongMap;->_size:I

    const/high16 p1, 0x40000000    # 2.0f

    and-int/2addr p1, v0

    if-eqz p1, :cond_4

    .line 285
    iget p1, p0, Lscala/collection/mutable/LongMap;->_vacant:I

    sub-int/2addr p1, v2

    iput p1, p0, Lscala/collection/mutable/LongMap;->_vacant:I

    goto :goto_2

    .line 286
    :cond_4
    invoke-direct {p0}, Lscala/collection/mutable/LongMap;->imbalanced()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lscala/collection/mutable/LongMap;->repack()V

    .line 287
    :cond_5
    :goto_2
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_3

    .line 290
    :cond_6
    new-instance v1, Lscala/Some;

    iget-object v2, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$_values:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-direct {v1, v2}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    .line 291
    iget-object v2, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$_keys:[J

    aput-wide p1, v2, v0

    .line 292
    iget-object p1, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$_values:[Ljava/lang/Object;

    aput-object p3, p1, v0

    move-object p1, v1

    :goto_3
    return-object p1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;
    .locals 2

    .line 27
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lscala/collection/mutable/LongMap;->put(JLjava/lang/Object;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public repack()V
    .locals 9

    .line 257
    iget v0, p0, Lscala/collection/mutable/LongMap;->mask:I

    .line 258
    iget v1, p0, Lscala/collection/mutable/LongMap;->_size:I

    iget v2, p0, Lscala/collection/mutable/LongMap;->_vacant:I

    add-int/2addr v1, v2

    int-to-double v3, v1

    int-to-double v5, v0

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    mul-double v5, v5, v7

    cmpl-double v1, v3, v5

    if-ltz v1, :cond_0

    int-to-double v1, v2

    const-wide v3, 0x3fc999999999999aL    # 0.2

    int-to-double v5, v0

    mul-double v5, v5, v3

    cmpl-double v3, v1, v5

    if-gtz v3, :cond_0

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    const v1, 0x3fffffff    # 1.9999999f

    and-int/2addr v0, v1

    :cond_0
    :goto_0
    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    .line 259
    iget v2, p0, Lscala/collection/mutable/LongMap;->_size:I

    mul-int/lit8 v2, v2, 0x8

    if-ge v2, v0, :cond_1

    ushr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    :cond_1
    invoke-direct {p0, v0}, Lscala/collection/mutable/LongMap;->repack(I)V

    return-void
.end method

.method public bridge synthetic repr()Lscala/collection/generic/Subtractable;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lscala/collection/mutable/LongMap;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/generic/Subtractable;

    return-object v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lscala/collection/mutable/LongMap;->result()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Map;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lscala/collection/mutable/LongMap;->seq()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 2

    .line 75
    iget v0, p0, Lscala/collection/mutable/LongMap;->_size:I

    iget v1, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$extraKeys:I

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lscala/collection/mutable/LongMap;->thisCollection()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LongMap;->toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lscala/collection/mutable/LongMap;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lscala/collection/mutable/LongMap;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lscala/collection/mutable/LongMap;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public transformValues(Lscala/Function1;)Lscala/collection/mutable/LongMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TV;TV;>;)",
            "Lscala/collection/mutable/LongMap<",
            "TV;>;"
        }
    .end annotation

    .line 475
    iget v0, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$extraKeys:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$zeroValue:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$zeroValue:Ljava/lang/Object;

    .line 476
    :cond_0
    iget v0, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$extraKeys:I

    const/4 v2, 0x2

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$minValue:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$minValue:Ljava/lang/Object;

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 478
    :goto_0
    iget-object v4, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$_keys:[J

    array-length v5, v4

    if-ge v2, v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    iget v6, p0, Lscala/collection/mutable/LongMap;->_size:I

    if-ge v3, v6, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    and-int/2addr v5, v6

    if-eqz v5, :cond_5

    .line 479
    aget-wide v5, v4, v2

    neg-long v7, v5

    cmp-long v4, v5, v7

    if-eqz v4, :cond_4

    add-int/lit8 v3, v3, 0x1

    .line 482
    iget-object v4, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$_values:[Ljava/lang/Object;

    aget-object v5, v4, v2

    invoke-interface {p1, v5}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object p0
.end method

.method public update(JLjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)V"
        }
    .end annotation

    neg-long v0, p1

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 305
    iput-object p3, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$zeroValue:Ljava/lang/Object;

    .line 306
    iget p1, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$extraKeys:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$extraKeys:I

    goto :goto_0

    .line 309
    :cond_0
    iput-object p3, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$minValue:Ljava/lang/Object;

    .line 310
    iget p1, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$extraKeys:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$extraKeys:I

    goto :goto_0

    .line 314
    :cond_1
    invoke-direct {p0, p1, p2}, Lscala/collection/mutable/LongMap;->seekEntryOrOpen(J)I

    move-result v0

    if-gez v0, :cond_3

    const v1, 0x3fffffff    # 1.9999999f

    and-int/2addr v1, v0

    .line 317
    iget-object v2, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$_keys:[J

    aput-wide p1, v2, v1

    .line 318
    iget-object p1, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$_values:[Ljava/lang/Object;

    aput-object p3, p1, v1

    .line 319
    iget p1, p0, Lscala/collection/mutable/LongMap;->_size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lscala/collection/mutable/LongMap;->_size:I

    const/high16 p1, 0x40000000    # 2.0f

    and-int/2addr p1, v0

    if-eqz p1, :cond_2

    .line 320
    iget p1, p0, Lscala/collection/mutable/LongMap;->_vacant:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lscala/collection/mutable/LongMap;->_vacant:I

    goto :goto_0

    .line 321
    :cond_2
    invoke-direct {p0}, Lscala/collection/mutable/LongMap;->imbalanced()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lscala/collection/mutable/LongMap;->repack()V

    goto :goto_0

    .line 324
    :cond_3
    iget-object v1, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$_keys:[J

    aput-wide p1, v1, v0

    .line 325
    iget-object p1, p0, Lscala/collection/mutable/LongMap;->scala$collection$mutable$LongMap$$_values:[Ljava/lang/Object;

    aput-object p3, p1, v0

    :cond_4
    :goto_0
    return-void
.end method

.method public bridge synthetic update(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 27
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lscala/collection/mutable/LongMap;->update(JLjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/GenMap;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/LongMap;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/Map;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/LongMap;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic values()Lscala/collection/GenIterable;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lscala/collection/mutable/LongMap;->values()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lscala/collection/mutable/LongMap;->view()Lscala/collection/IterableView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/LongMap;->view(II)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method
