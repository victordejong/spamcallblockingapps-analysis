.class public Lscala/collection/immutable/HashMap;
.super Lscala/collection/immutable/AbstractMap;
.source "HashMap.scala"

# interfaces
.implements Lscala/Serializable;
.implements Lscala/collection/CustomParallelizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/immutable/HashMap$Merger;,
        Lscala/collection/immutable/HashMap$HashMap1;,
        Lscala/collection/immutable/HashMap$HashTrieMap;,
        Lscala/collection/immutable/HashMap$EmptyHashMap$;,
        Lscala/collection/immutable/HashMap$HashMapCollision1;,
        Lscala/collection/immutable/HashMap$SerializationProxy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/immutable/AbstractMap<",
        "TA;TB;>;",
        "Lscala/Serializable;",
        "Lscala/collection/CustomParallelizable<",
        "Lscala/Tuple2<",
        "TA;TB;>;",
        "Lscala/collection/parallel/immutable/ParHashMap<",
        "TA;TB;>;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u0019}a\u0001B\u0001\u0003\u0001%\u0011q\u0001S1tQ6\u000b\u0007O\u0003\u0002\u0004\t\u0005I\u0011.\\7vi\u0006\u0014G.\u001a\u0006\u0003\u000b\u0019\t!bY8mY\u0016\u001cG/[8o\u0015\u00059\u0011!B:dC2\u000c7\u0001A\u000b\u0004\u0015Ea2C\u0002\u0001\u000c=\u0005*\u0003\u0006\u0005\u0003\r\u001b=YR\"\u0001\u0002\n\u00059\u0011!aC!cgR\u0014\u0018m\u0019;NCB\u0004\"\u0001E\t\r\u0001\u0011)!\u0003\u0001b\u0001\'\t\t\u0011)\u0005\u0002\u00151A\u0011QCF\u0007\u0002\r%\u0011qC\u0002\u0002\u0008\u001d>$\u0008.\u001b8h!\t)\u0012$\u0003\u0002\u001b\r\t\u0019\u0011I\\=\u0011\u0005AaBAB\u000f\u0001\t\u000b\u00071CA\u0001C!\u0011aqdD\u000e\n\u0005\u0001\u0012!aA\'baB)ABI\u0008\u001cI%\u00111E\u0001\u0002\u0008\u001b\u0006\u0004H*[6f!\u0011a\u0001aD\u000e\u0011\u0005U1\u0013BA\u0014\u0007\u00051\u0019VM]5bY&T\u0018M\u00197f!\u0011I#\u0006L\u0018\u000e\u0003\u0011I!a\u000b\u0003\u0003)\r+8\u000f^8n!\u0006\u0014\u0018\r\u001c7fY&T\u0018M\u00197f!\u0011)RfD\u000e\n\u000592!A\u0002+va2,\'\u0007\u0005\u00031i=YR\"A\u0019\u000b\u0005\r\u0011$BA\u001a\u0005\u0003!\u0001\u0018M]1mY\u0016d\u0017BA\u001b2\u0005)\u0001\u0016M\u001d%bg\"l\u0015\r\u001d\u0005\u0006o\u0001!\t\u0001O\u0001\u0007y%t\u0017\u000e\u001e \u0015\u0003\u0011BQA\u000f\u0001\u0005Bm\nAa]5{KV\tA\u0008\u0005\u0002\u0016{%\u0011aH\u0002\u0002\u0004\u0013:$\u0008\"\u0002!\u0001\t\u0003\n\u0015!B3naRLX#\u0001\u0013\t\u000b\r\u0003A\u0011\u0001#\u0002\u0011%$XM]1u_J,\u0012!\u0012\t\u0004S\u0019c\u0013BA$\u0005\u0005!IE/\u001a:bi>\u0014\u0008\"B%\u0001\t\u0003R\u0015a\u00024pe\u0016\u000c7\r[\u000b\u0003\u0017V#\"\u0001T(\u0011\u0005Ui\u0015B\u0001(\u0007\u0005\u0011)f.\u001b;\t\u000bAC\u0005\u0019A)\u0002\u0003\u0019\u0004B!\u0006*-)&\u00111K\u0002\u0002\n\rVt7\r^5p]F\u0002\"\u0001E+\u0005\u000bYC%\u0019A\n\u0003\u0003UCQ\u0001\u0017\u0001\u0005\u0002e\u000b1aZ3u)\tQV\u000cE\u0002\u00167nI!\u0001\u0018\u0004\u0003\r=\u0003H/[8o\u0011\u0015qv\u000b1\u0001\u0010\u0003\rYW-\u001f\u0005\u0006A\u0002!\t%Y\u0001\u0008kB$\u0017\r^3e+\t\u0011W\rF\u0002dQ&\u0004B\u0001\u0004\u0001\u0010IB\u0011\u0001#\u001a\u0003\u0006M~\u0013\ra\u001a\u0002\u0003\u0005F\n\"a\u0007\r\t\u000by{\u0006\u0019A\u0008\t\u000b)|\u0006\u0019\u00013\u0002\u000bY\u000cG.^3\t\u000b1\u0004A\u0011I7\u0002\u000b\u0011\u0002H.^:\u0016\u00059\u000cHCA8s!\u0011a\u0001a\u00049\u0011\u0005A\tH!\u00024l\u0005\u00049\u0007\"B:l\u0001\u0004!\u0018AA6w!\u0011)Rf\u00049\t\u000b1\u0004A\u0011\t<\u0016\u0005]TH#\u0002=|}\u0006\u0005\u0001\u0003\u0002\u0007\u0001\u001fe\u0004\"\u0001\u0005>\u0005\u000b\u0019,(\u0019A4\t\u000bq,\u0008\u0019A?\u0002\u000b\u0015dW-\\\u0019\u0011\tUis\"\u001f\u0005\u0006\u007fV\u0004\r!`\u0001\u0006K2,WN\r\u0005\u0008\u0003\u0007)\u0008\u0019AA\u0003\u0003\u0015)G.Z7t!\u0011)\u0012qA?\n\u0007\u0005%aA\u0001\u0006=e\u0016\u0004X-\u0019;fIzBq!!\u0004\u0001\t\u0003\ty!\u0001\u0004%[&tWo\u001d\u000b\u0004I\u0005E\u0001B\u00020\u0002\u000c\u0001\u0007q\u0002C\u0004\u0002\u0016\u0001!\t%a\u0006\u0002\r\u0019LG\u000e^3s)\r!\u0013\u0011\u0004\u0005\t\u00037\t\u0019\u00021\u0001\u0002\u001e\u0005\t\u0001\u000fE\u0003\u0016%2\ny\u0002E\u0002\u0016\u0003CI1!a\t\u0007\u0005\u001d\u0011un\u001c7fC:Dq!a\n\u0001\t\u0003\nI#A\u0005gS2$XM\u001d(piR\u0019A%a\u000b\t\u0011\u0005m\u0011Q\u0005a\u0001\u0003;Aq!a\u000c\u0001\t#\t\t$A\u0004gS2$XM\u001d\u0019\u0015\u0017\u0011\n\u0019$!\u000e\u0002:\u0005u\u0012Q\u000c\u0005\t\u00037\ti\u00031\u0001\u0002\u001e!A\u0011qGA\u0017\u0001\u0004\ty\"\u0001\u0004oK\u001e\u000cG/\u001a\u0005\u0008\u0003w\ti\u00031\u0001=\u0003\u0015aWM^3m\u0011!\ty$!\u000cA\u0002\u0005\u0005\u0013A\u00022vM\u001a,\'\u000fE\u0003\u0016\u0003\u0007\n9%C\u0002\u0002F\u0019\u0011Q!\u0011:sCf\u0004R\u0001\u0004\u0001\u0010\u0003\u0013R3aGA&W\t\ti\u0005\u0005\u0003\u0002P\u0005eSBAA)\u0015\u0011\t\u0019&!\u0016\u0002\u0013Ut7\r[3dW\u0016$\'bAA,\r\u0005Q\u0011M\u001c8pi\u0006$\u0018n\u001c8\n\t\u0005m\u0013\u0011\u000b\u0002\u0012k:\u001c\u0007.Z2lK\u00124\u0016M]5b]\u000e,\u0007bBA0\u0003[\u0001\r\u0001P\u0001\u0008_\u001a47/\u001a;1\u0011\u001d\t\u0019\u0007\u0001C\t\u0003K\nA\"\u001a7f[\"\u000b7\u000f[\"pI\u0016$2\u0001PA4\u0011\u0019q\u0016\u0011\ra\u0001\u001f!9\u00111\u000e\u0001\u0005\u0016\u00055\u0014aB5naJ|g/\u001a\u000b\u0004y\u0005=\u0004bBA9\u0003S\u0002\r\u0001P\u0001\u0006Q\u000e|G-\u001a\u0005\t\u0003k\u0002A\u0011\u0001\u0003\u0002x\u0005Y1m\\7qkR,\u0007*Y:i)\ra\u0014\u0011\u0010\u0005\u0007=\u0006M\u0004\u0019A\u0008\t\u0011\u0005u\u0004\u0001\"\u0001\u0005\u0003\u007f\nAaZ3uaQ9!,!!\u0002\u0004\u0006\u001d\u0005B\u00020\u0002|\u0001\u0007q\u0002C\u0004\u0002\u0006\u0006m\u0004\u0019\u0001\u001f\u0002\t!\u000c7\u000f\u001b\u0005\u0008\u0003w\tY\u00081\u0001=\u0011!\tY\t\u0001C\u0001\t\u00055\u0015\u0001C;qI\u0006$X\r\u001a\u0019\u0016\t\u0005=\u0015Q\u0013\u000b\u000f\u0003#\u000b9*!\'\u0002\u001c\u0006u\u0015qTAR!\u0015a\u0001aDAJ!\r\u0001\u0012Q\u0013\u0003\u0007M\u0006%%\u0019A4\t\ry\u000bI\t1\u0001\u0010\u0011\u001d\t))!#A\u0002qBq!a\u000f\u0002\n\u0002\u0007A\u0008C\u0004k\u0003\u0013\u0003\r!a%\t\u000fM\u000cI\t1\u0001\u0002\"B)Q#L\u0008\u0002\u0014\"A\u0011QUAE\u0001\u0004\t9+\u0001\u0004nKJ<WM\u001d\t\u0008\u0003S\u000b\u0019nDAJ\u001d\ra\u00111V\u0004\u0008\u0003[\u0013\u0001\u0012AAX\u0003\u001dA\u0015m\u001d5NCB\u00042\u0001DAY\r\u0019\t!\u0001#\u0001\u00024N9\u0011\u0011WA[\u0003\u0007,\u0003CBA\\\u0003{\u000b\t-\u0004\u0002\u0002:*\u0019\u00111\u0018\u0003\u0002\u000f\u001d,g.\u001a:jG&!\u0011qXA]\u0005MIU.\\;uC\ndW-T1q\r\u0006\u001cGo\u001c:z!\ta\u0001\u0001\u0005\u0003\u0002F\u0006-g\u0002BA\\\u0003\u000fLA!!3\u0002:\u0006i!)\u001b;Pa\u0016\u0014\u0018\r^5p]NL1APAg\u0015\u0011\tI-!/\t\u000f]\n\t\u000c\"\u0001\u0002RR\u0011\u0011q\u0016\u0004\n\u0003+\u000c\t,!\u0001\u0005\u0003/\u0014a!T3sO\u0016\u0014XCBAm\u0003W\u000cyo\u0005\u0003\u0002T\u0006m\u0007cA\u000b\u0002^&\u0019\u0011q\u001c\u0004\u0003\r\u0005s\u0017PU3g\u0011\u001d9\u00141\u001bC\u0001\u0003G$\"!!:\u0011\u0011\u0005\u001d\u00181[Au\u0003[l!!!-\u0011\u0007A\tY\u000f\u0002\u0004\u0013\u0003\'\u0014\ra\u0005\t\u0004!\u0005=HAB\u000f\u0002T\n\u00071\u0003\u0003\u0005\u0002t\u0006Mg\u0011AA{\u0003\u0015\t\u0007\u000f\u001d7z)\u0019\t90!?\u0002~B1Q#LAu\u0003[D\u0001\"a?\u0002r\u0002\u0007\u0011q_\u0001\u0004WZ\u000c\u0004\u0002CA\u0000\u0003c\u0004\r!a>\u0002\u0007-4(\u0007\u0003\u0005\u0003\u0004\u0005Mg\u0011\u0001B\u0003\u0003\u0019IgN^3siV\u0011\u0011Q]\u0003\u0008\u0005\u0013\t\t\u000c\u0002B\u0006\u00055iUM]4f\rVt7\r^5p]V1!Q\u0002B\u000c\u0005;\u0001\u0012\"\u0006B\u0008\u0005\'\u0011\u0019Ba\u0005\n\u0007\tEaAA\u0005Gk:\u001cG/[8oeA1Q#\u000cB\u000b\u00057\u00012\u0001\u0005B\u000c\t\u001d\u0011IBa\u0002C\u0002M\u0011!!Q\u0019\u0011\u0007A\u0011i\u0002\u0002\u0004g\u0005\u000f\u0011\ra\u0005\u0005\t\u0005C\t\t\u000c\"\u0003\u0003$\u0005QA.\u001b4u\u001b\u0016\u0014x-\u001a:\u0016\r\t\u0015\"1\u0006B\u0018)\u0011\u00119C!\r\u0011\u0011\u0005\u001d\u00181\u001bB\u0015\u0005[\u00012\u0001\u0005B\u0016\t\u001d\u0011IBa\u0008C\u0002M\u00012\u0001\u0005B\u0018\t\u00191\'q\u0004b\u0001\'!A!1\u0007B\u0010\u0001\u0004\u0011)$\u0001\u0004nKJ<WM\u001a\t\t\u0003O\u00149A!\u000b\u0003.!I!\u0011HAYA\u0003%!1H\u0001\u000eI\u00164\u0017-\u001e7u\u001b\u0016\u0014x-\u001a:\u0011\r\u0005\u001d\u00181\u001b\r\u0019\u0011%\u0011y$!-!\n\u0013\u0011\t%A\u0006mS\u001a$X*\u001a:hKJ\u0004TC\u0002B\"\u0005\u0013\u0012i\u0005\u0006\u0003\u0003F\t=\u0003\u0003CAt\u0003\'\u00149Ea\u0013\u0011\u0007A\u0011I\u0005B\u0004\u0003\u001a\tu\"\u0019A\n\u0011\u0007A\u0011i\u0005\u0002\u0004g\u0005{\u0011\ra\u0005\u0005\t\u0005g\u0011i\u00041\u0001\u0003RAA\u0011q\u001dB\u0004\u0005\u000f\u0012Y\u0005\u0003\u0005\u0003V\u0005EF1\u0001B,\u00031\u0019\u0017M\u001c\"vS2$gI]8n+\u0019\u0011IFa\u001c\u0003tU\u0011!1\u000c\t\u000b\u0003o\u0013iF!\u0019\u0003l\tU\u0014\u0002\u0002B0\u0003s\u0013AbQ1o\u0005VLG\u000e\u001a$s_6\u0004B!a:\u0003d%!!Q\rB4\u0005\u0011\u0019u\u000e\u001c7\n\t\t%\u0014\u0011\u0018\u0002\u000e\u000f\u0016tW*\u00199GC\u000e$xN]=\u0011\rUi#Q\u000eB9!\r\u0001\"q\u000e\u0003\u0007%\tM#\u0019A\n\u0011\u0007A\u0011\u0019\u0008\u0002\u0004\u001e\u0005\'\u0012\ra\u0005\t\u0007\u0019\u0001\u0011iG!\u001d\t\u000f\u0001\u000b\t\u000c\"\u0001\u0003zU1!1\u0010BA\u0005\u000b+\"A! \u0011\r1\u0001!q\u0010BB!\r\u0001\"\u0011\u0011\u0003\u0007%\t]$\u0019A\n\u0011\u0007A\u0011)\t\u0002\u0004\u001e\u0005o\u0012\raE\u0004\t\u0005\u0013\u000b\t\u000c#\u0003\u0003\u000c\u0006aQ)\u001c9us\"\u000b7\u000f[\'baB!\u0011q\u001dBG\r!\u0011y)!-\t\n\tE%\u0001D#naRL\u0008*Y:i\u001b\u0006\u00048\u0003\u0002BG\u0005\'\u0003B\u0001\u0004\u0001\u0019)!9qG!$\u0005\u0002\t]EC\u0001BF\u0011)\u0011YJ!$\u0002\u0002\u0013%!QT\u0001\u000ce\u0016\u000cGMU3t_24X\r\u0006\u0002\u0003 B!!\u0011\u0015BV\u001b\t\u0011\u0019K\u0003\u0003\u0003&\n\u001d\u0016\u0001\u00027b]\u001eT!A!+\u0002\t)\u000cg/Y\u0005\u0005\u0005[\u0013\u0019K\u0001\u0004PE*,7\r\u001e\u0005\t\u0005c\u000b\t\u000c\"\u0003\u00034\u0006yQ.Y6f\u0011\u0006\u001c\u0008\u000e\u0016:jK6\u000b\u0007/\u0006\u0004\u00036\u000e55\u0011\u0013\u000b\u000f\u0005o\u001b\u0019ja&\u0004\u001e\u000e\u000561UBS!!\t9O!/\u0004\u000c\u000e=ea\u0002B^\u0003c\u0003!Q\u0018\u0002\u000c\u0011\u0006\u001c\u0008\u000e\u0016:jK6\u000b\u0007/\u0006\u0004\u0003@\n\u0015\'1Z\n\u0005\u0005s\u0013\t\r\u0005\u0004\r\u0001\t\r\'q\u0019\t\u0004!\t\u0015GA\u0002\n\u0003:\n\u00071C\u000b\u0003\u0003J\u0006-\u0003c\u0001\t\u0003L\u00129QD!/\u0005\u0006\u0004\u0019\u0002\u0002\u0004Bh\u0005s\u0013)\u0019!C\u0001\t\tE\u0017A\u00022ji6\u000c\u0007/\u0006\u0002\u0003TB!\u0011q\u001dBk\u0013\rq\u00141\u001a\u0005\u000c\u00053\u0014IL!A!\u0002\u0013\u0011\u0019.A\u0004cSRl\u0017\r\u001d\u0011\t\u0019\u0005\r!\u0011\u0018BC\u0002\u0013\u0005AA!8\u0016\u0005\t}\u0007#B\u000b\u0002D\t\u0005\u0007b\u0003Br\u0005s\u0013\t\u0011)A\u0005\u0005?\u000ca!\u001a7f[N\u0004\u0003\u0002\u0004Bt\u0005s\u0013)\u0019!C\u0001\t\tE\u0017!B:ju\u0016\u0004\u0004b\u0003Bv\u0005s\u0013\t\u0011)A\u0005\u0005\'\u000caa]5{KB\u0002\u0003bB\u001c\u0003:\u0012\u0005!q\u001e\u000b\t\u0005c\u0014\u0019P!>\u0003xBA\u0011q\u001dB]\u0005\u0007\u0014I\r\u0003\u0005\u0003P\n5\u0008\u0019\u0001Bj\u0011!\t\u0019A!<A\u0002\t}\u0007\u0002\u0003Bt\u0005[\u0004\rAa5\t\u000fi\u0012I\u000c\"\u0011\u0003R\"A\u0011Q\u0010B]\t\u0003\u0012i\u0010\u0006\u0005\u0003\u0000\u000e\u000511AB\u0003!\u0011)2L!3\t\u000fy\u0013Y\u00101\u0001\u0003D\"A\u0011Q\u0011B~\u0001\u0004\u0011\u0019\u000e\u0003\u0005\u0002<\tm\u0008\u0019\u0001Bj\u0011%\tYI!/\u0005B\u0011\u0019I!\u0006\u0003\u0004\u000c\rEACDB\u0007\u0007+\u00199b!\u0007\u0004\u001c\ru1\u0011\u0005\t\u0007\u0019\u0001\u0011\u0019ma\u0004\u0011\u0007A\u0019\t\u0002B\u0004g\u0007\u000f\u0011\raa\u0005\u0012\u0007\t%\u0007\u0004C\u0004_\u0007\u000f\u0001\rAa1\t\u0011\u0005\u00155q\u0001a\u0001\u0005\'D\u0001\"a\u000f\u0004\u0008\u0001\u0007!1\u001b\u0005\u0008U\u000e\u001d\u0001\u0019AB\u0008\u0011\u001d\u00198q\u0001a\u0001\u0007?\u0001b!F\u0017\u0003D\u000e=\u0001\u0002CAS\u0007\u000f\u0001\raa\t\u0011\u0011\u0005\u001d\u00181\u001bBb\u0007\u001fA\u0001ba\n\u0003:\u0012\u00053\u0011F\u0001\te\u0016lwN^3eaQA11FB\u0017\u0007_\u0019\t\u0004\u0005\u0004\r\u0001\t\r\'\u0011\u001a\u0005\u0008=\u000e\u0015\u0002\u0019\u0001Bb\u0011!\t)i!\nA\u0002\tM\u0007\u0002CA\u001e\u0007K\u0001\rAa5\t\u0011\u0005=\"\u0011\u0018C)\u0007k!Bba\u000b\u00048\ru2qHB!\u0007\u0007B\u0001\"a\u0007\u00044\u0001\u00071\u0011\u0008\t\u0007+I\u001bY$a\u0008\u0011\rUi#1\u0019Be\u0011!\t9da\rA\u0002\u0005}\u0001\u0002CA\u001e\u0007g\u0001\rAa5\t\u0011\u0005}21\u0007a\u0001\u0005?D\u0001\"a\u0018\u00044\u0001\u0007!1\u001b\u0005\u0008\u0007\neF\u0011IB$+\t\u0019I\u0005\u0005\u0003*\r\u000em\u0002bB%\u0003:\u0012\u00053QJ\u000b\u0005\u0007\u001f\u001a9\u0006F\u0002M\u0007#Bq\u0001UB&\u0001\u0004\u0019\u0019\u0006\u0005\u0004\u0016%\u000em2Q\u000b\t\u0004!\r]CA\u0002,\u0004L\t\u00071\u0003\u0003\u0005\u0004\\\teF\u0011BB/\u0003\u0015\u0001xn](g)\u0015a4qLB2\u0011!\u0019\tg!\u0017A\u0002\tM\u0017!\u00018\t\u0011\r\u00154\u0011\u000ca\u0001\u0005\'\u000c!AY7\t\u0011\r%$\u0011\u0018C!\u0007W\nQa\u001d9mSR,\"a!\u001c\u0011\u000b1\u0019yga\u000b\n\u0007\rE$AA\u0002TKFD\u0001b!\u001e\u0003:\u0012E3qO\u0001\u0007[\u0016\u0014x-\u001a\u0019\u0016\t\re4q\u0010\u000b\t\u0007w\u001a\ti!\"\u0004\u0008B1A\u0002\u0001Bb\u0007{\u00022\u0001EB@\t\u001d171\u000fb\u0001\u0007\'A\u0001ba!\u0004t\u0001\u000711P\u0001\u0005i\"\u000cG\u000f\u0003\u0005\u0002<\rM\u0004\u0019\u0001Bj\u0011!\t)ka\u001dA\u0002\r%\u0005\u0003CAt\u0003\'\u0014\u0019m! \u0011\u0007A\u0019i\t\u0002\u0004\u0013\u0005_\u0013\ra\u0005\t\u0004!\rEEAB\u000f\u00030\n\u00071\u0003\u0003\u0005\u0004\u0016\n=\u0006\u0019\u0001Bj\u0003\u0015A\u0017m\u001d51\u0011!\u0019IJa,A\u0002\rm\u0015!B3mK6\u0004\u0004C\u0002\u0007\u0001\u0007\u0017\u001by\t\u0003\u0005\u0004 \n=\u0006\u0019\u0001Bj\u0003\u0015A\u0017m\u001d52\u0011\u001da(q\u0016a\u0001\u00077C\u0001\"a\u000f\u00030\u0002\u0007!1\u001b\u0005\u0008u\t=\u0006\u0019\u0001Bj\r\u001d\u0019I+!-\u0001\u0007W\u0013\u0001\u0002S1tQ6\u000b\u0007/M\u000b\u0007\u0007[\u001b\u0019la.\u0014\t\r\u001d6q\u0016\t\u0007\u0019\u0001\u0019\tl!.\u0011\u0007A\u0019\u0019\u000c\u0002\u0004\u0013\u0007O\u0013\ra\u0005\t\u0004!\r]FaB\u000f\u0004(\u0012\u0015\ra\u0005\u0005\u000c=\u000e\u001d&Q1A\u0005\u0002\u0011\u0019Y,\u0006\u0002\u00042\"Y1qXBT\u0005\u0003\u0005\u000b\u0011BBY\u0003\u0011YW-\u001f\u0011\t\u0019\u0005\u00155q\u0015BC\u0002\u0013\u0005AA!5\t\u0017\r\u00157q\u0015B\u0001B\u0003%!1[\u0001\u0006Q\u0006\u001c\u0008\u000e\t\u0005\u000cU\u000e\u001d&Q1A\u0005\u0002\u0011\u0019I-\u0006\u0002\u0004L*\"1QWA&\u0011-\u0019yma*\u0003\u0002\u0003\u0006Iaa3\u0002\rY\u000cG.^3!\u0011-\u00198q\u0015BA\u0002\u0013\u0005Aaa5\u0016\u0005\rU\u0007CB\u000b.\u0007c\u001bY\r\u0003\u0007\u0004Z\u000e\u001d&\u00111A\u0005\u0002\u0011\u0019Y.\u0001\u0004lm~#S-\u001d\u000b\u0004\u0019\u000eu\u0007BCBp\u0007/\u000c\t\u00111\u0001\u0004V\u0006\u0019\u0001\u0010J\u0019\t\u0017\r\r8q\u0015B\u0001B\u0003&1Q[\u0001\u0004WZ\u0004\u0003bB\u001c\u0004(\u0012\u00051q\u001d\u000b\u000b\u0007S\u001cYo!<\u0004p\u000eE\u0008\u0003CAt\u0007O\u001b\tl!.\t\u000fy\u001b)\u000f1\u0001\u00042\"A\u0011QQBs\u0001\u0004\u0011\u0019\u000eC\u0004k\u0007K\u0004\raa3\t\u000fM\u001c)\u000f1\u0001\u0004V\"1!ha*\u0005BmB\u0011ba>\u0004(\u0012\u0005Aaa/\u0002\r\u001d,GoS3z\u0011%\u0019Ypa*\u0005\u0002\u0011\u0011\t.A\u0004hKRD\u0015m\u001d5\t\u0013\r}8q\u0015C\u0001\t\u0011\u0005\u0011AD2p[B,H/\u001a%bg\"4uN\u001d\u000b\u0004y\u0011\r\u0001\u0002\u0003C\u0003\u0007{\u0004\ra!-\u0002\u0003-D\u0001\"! \u0004(\u0012\u0005C\u0011\u0002\u000b\t\t\u0017!i\u0001b\u0004\u0005\u0012A!QcWB[\u0011\u001dqFq\u0001a\u0001\u0007cC\u0001\"!\"\u0005\u0008\u0001\u0007!1\u001b\u0005\t\u0003w!9\u00011\u0001\u0003T\"I\u00111RBT\t\u0003\"AQC\u000b\u0005\t/!i\u0002\u0006\u0008\u0005\u001a\u0011\u0005B1\u0005C\u0013\tO!I\u0003\"\u000c\u0011\r1\u00011\u0011\u0017C\u000e!\r\u0001BQ\u0004\u0003\u0008M\u0012M!\u0019\u0001C\u0010#\r\u0019)\u000c\u0007\u0005\u0008=\u0012M\u0001\u0019ABY\u0011!\t)\tb\u0005A\u0002\tM\u0007\u0002CA\u001e\t\'\u0001\rAa5\t\u000f)$\u0019\u00021\u0001\u0005\u001c!91\u000fb\u0005A\u0002\u0011-\u0002CB\u000b.\u0007c#Y\u0002\u0003\u0005\u0002&\u0012M\u0001\u0019\u0001C\u0018!!\t9/a5\u00042\u0012m\u0001\u0002CB\u0014\u0007O#\t\u0005b\r\u0015\u0011\r=FQ\u0007C\u001c\tsAqA\u0018C\u0019\u0001\u0004\u0019\t\u000c\u0003\u0005\u0002\u0006\u0012E\u0002\u0019\u0001Bj\u0011!\tY\u0004\"\rA\u0002\tM\u0007\u0002CA\u0018\u0007O#\t\u0006\"\u0010\u0015\u0019\r=Fq\u0008C#\t\u000f\"I\u0005b\u0014\t\u0011\u0005mA1\u0008a\u0001\t\u0003\u0002b!\u0006*\u0005D\u0005}\u0001CB\u000b.\u0007c\u001b)\u000c\u0003\u0005\u00028\u0011m\u0002\u0019AA\u0010\u0011!\tY\u0004b\u000fA\u0002\tM\u0007\u0002CA \tw\u0001\r\u0001b\u0013\u0011\u000bU\t\u0019\u0005\"\u0014\u0011\r1\u00011\u0011WBf\u0011!\ty\u0006b\u000fA\u0002\tM\u0007bB\"\u0004(\u0012\u0005C1K\u000b\u0003\t+\u0002B!\u000b$\u0005D!9\u0011ja*\u0005B\u0011eS\u0003\u0002C.\tG\"2\u0001\u0014C/\u0011\u001d\u0001Fq\u000ba\u0001\t?\u0002b!\u0006*\u0005D\u0011\u0005\u0004c\u0001\t\u0005d\u00111a\u000bb\u0016C\u0002MA!\u0002b\u001a\u0004(\u0012\u0005\u0011\u0011\u0017C5\u0003))gn];sKB\u000b\u0017N]\u000b\u0003\t\u0007B\u0001b!\u001e\u0004(\u0012ECQN\u000b\u0005\t_\")\u0008\u0006\u0005\u0005r\u0011]D\u0011\u0010C>!\u0019a\u0001a!-\u0005tA\u0019\u0001\u0003\"\u001e\u0005\u000f\u0019$YG1\u0001\u0005 !A11\u0011C6\u0001\u0004!\t\u0008\u0003\u0005\u0002<\u0011-\u0004\u0019\u0001Bj\u0011!\t)\u000bb\u001bA\u0002\u0011u\u0004\u0003CAt\u0003\'\u001c\t\u000cb\u001d\u0007\u0011\u0011\u0005\u0015\u0011\u0017\u0001\u0005\t\u0007\u0013\u0011\u0003S1tQ6\u000b\u0007oQ8mY&\u001c\u0018n\u001c82+\u0019!)\tb#\u0005\u0012N!Aq\u0010CD!\u0019a\u0001\u0001\"#\u0005\u000eB\u0019\u0001\u0003b#\u0005\rI!yH1\u0001\u0014U\u0011!y)a\u0013\u0011\u0007A!\t\nB\u0004\u001e\t\u007f\")\u0019A\n\t\u0019\u0005\u0015Eq\u0010BC\u0002\u0013\u0005AA!5\t\u0017\r\u0015Gq\u0010B\u0001B\u0003%!1\u001b\u0005\u000c\t3#yH!b\u0001\n\u0003!Y*A\u0002lmN,\"\u0001\"(\u0011\u000f1!y\n\"#\u0005\u000e&\u0019A\u0011\u0015\u0002\u0003\u000f1K7\u000f^\'ba\"YAQ\u0015C@\u0005\u0003\u0005\u000b\u0011\u0002CO\u0003\u0011Ygo\u001d\u0011\t\u000f]\"y\u0008\"\u0001\u0005*R1A1\u0016CW\t_\u0003\u0002\"a:\u0005\u0000\u0011%Eq\u0012\u0005\t\u0003\u000b#9\u000b1\u0001\u0003T\"AA\u0011\u0014CT\u0001\u0004!i\n\u0003\u0004;\t\u007f\"\te\u000f\u0005\t\u0003{\"y\u0008\"\u0011\u00056RAAq\u0017C]\tw#i\u000c\u0005\u0003\u00167\u0012=\u0005b\u00020\u00054\u0002\u0007A\u0011\u0012\u0005\t\u0003\u000b#\u0019\u000c1\u0001\u0003T\"A\u00111\u0008CZ\u0001\u0004\u0011\u0019\u000eC\u0005\u0002\u000c\u0012}D\u0011\t\u0003\u0005BV!A1\u0019Ce)9!)\r\"4\u0005P\u0012EG1\u001bCk\t3\u0004b\u0001\u0004\u0001\u0005\n\u0012\u001d\u0007c\u0001\t\u0005J\u00129a\rb0C\u0002\u0011-\u0017c\u0001CH1!9a\u000cb0A\u0002\u0011%\u0005\u0002CAC\t\u007f\u0003\rAa5\t\u0011\u0005mBq\u0018a\u0001\u0005\'DqA\u001bC`\u0001\u0004!9\rC\u0004t\t\u007f\u0003\r\u0001b6\u0011\rUiC\u0011\u0012Cd\u0011!\t)\u000bb0A\u0002\u0011m\u0007\u0003CAt\u0003\'$I\tb2\t\u0011\r\u001dBq\u0010C!\t?$\u0002\u0002\"9\u0005d\u0012\u0015Hq\u001d\t\u0007\u0019\u0001!I\tb$\t\u000fy#i\u000e1\u0001\u0005\n\"A\u0011Q\u0011Co\u0001\u0004\u0011\u0019\u000e\u0003\u0005\u0002<\u0011u\u0007\u0019\u0001Bj\u0011!\ty\u0003b \u0005R\u0011-H\u0003\u0004Cq\t[$\u0019\u0010\">\u0005x\u0012m\u0008\u0002CA\u000e\tS\u0004\r\u0001b<\u0011\rU\u0011F\u0011_A\u0010!\u0019)R\u0006\"#\u0005\u0010\"A\u0011q\u0007Cu\u0001\u0004\ty\u0002\u0003\u0005\u0002<\u0011%\u0008\u0019\u0001Bj\u0011!\ty\u0004\";A\u0002\u0011e\u0008#B\u000b\u0002D\u0011\u001d\u0005\u0002CA0\tS\u0004\rAa5\t\u000f\r#y\u0008\"\u0011\u0005\u0000V\u0011Q\u0011\u0001\t\u0005S\u0019#\t\u0010C\u0004J\t\u007f\"\t%\"\u0002\u0016\t\u0015\u001dQq\u0002\u000b\u0004\u0019\u0016%\u0001b\u0002)\u0006\u0004\u0001\u0007Q1\u0002\t\u0007+I#\t0\"\u0004\u0011\u0007A)y\u0001\u0002\u0004W\u000b\u0007\u0011\ra\u0005\u0005\t\u0007S\"y\u0008\"\u0011\u0006\u0014U\u0011QQ\u0003\t\u0006\u0019\r=D\u0011\u001d\u0005\t\u0007k\"y\u0008\"\u0015\u0006\u001aU!Q1DC\u0011)!)i\"b\t\u0006&\u0015\u001d\u0002C\u0002\u0007\u0001\t\u0013+y\u0002E\u0002\u0011\u000bC!qAZC\u000c\u0005\u0004!Y\r\u0003\u0005\u0004\u0004\u0016]\u0001\u0019AC\u000f\u0011!\tY$b\u0006A\u0002\tM\u0007\u0002CAS\u000b/\u0001\r!\"\u000b\u0011\u0011\u0005\u001d\u00181\u001bCE\u000b?A\u0001\"\"\u000c\u00022\u0012%QqF\u0001\u000bEV4g-\u001a:TSj,G\u0003\u0002Bj\u000bcAqAOC\u0016\u0001\u0004\u0011\u0019\u000e\u000b\u0003\u0006,\u0015U\u0002cA\u000b\u00068%\u0019Q\u0011\u0008\u0004\u0003\r%tG.\u001b8f\u0011!)i$!-\u0005\n\u0015}\u0012a\u00038vY2$v.R7qif,b!\"\u0011\u0006H\u0015-C\u0003BC\"\u000b\u001b\u0002b\u0001\u0004\u0001\u0006F\u0015%\u0003c\u0001\t\u0006H\u00111!#b\u000fC\u0002M\u00012\u0001EC&\t\u0019iR1\u0008b\u0001\'!AQqJC\u001e\u0001\u0004)\u0019%A\u0001nQ\u0011)Y$\"\u000e\t\u0011\u0015U\u0013\u0011\u0017C\u0005\u000b/\n\u0001b[3fa\nKGo\u001d\u000b\u0007\u0005\',I&b\u0017\t\u0011\t=W1\u000ba\u0001\u0005\'D\u0001\"\"\u0018\u0006T\u0001\u0007!1[\u0001\u0005W\u0016,\u0007OB\u0004\u0006b\u0005EF!b\u0019\u0003%M+\'/[1mSj\u000cG/[8o!J|\u00070_\u000b\u0007\u000bK*\t(\"\u001e\u0014\u000b\u0015}\u00131\\\u0013\t\u0017\u0015%Tq\u000cBA\u0002\u0013%Q1N\u0001\u0005_JLw-\u0006\u0002\u0006nA1A\u0002AC8\u000bg\u00022\u0001EC9\t\u0019\u0011Rq\u000cb\u0001\'A\u0019\u0001#\"\u001e\u0005\ru)yF1\u0001\u0014\u0011-)I(b\u0018\u0003\u0002\u0004%I!b\u001f\u0002\u0011=\u0014\u0018nZ0%KF$2\u0001TC?\u0011)\u0019y.b\u001e\u0002\u0002\u0003\u0007QQ\u000e\u0005\u000c\u000b\u0003+yF!A!B\u0013)i\'A\u0003pe&<\u0007\u0005\u000b\u0003\u0006\u0000\u0015\u0015\u0005cA\u000b\u0006\u0008&\u0019Q\u0011\u0012\u0004\u0003\u0013Q\u0014\u0018M\\:jK:$\u0008bB\u001c\u0006`\u0011\u0005QQ\u0012\u000b\u0005\u000b\u001f+\t\n\u0005\u0005\u0002h\u0016}SqNC:\u0011!)I\'b#A\u0002\u00155\u0004\u0002CCK\u000b?\"I!b&\u0002\u0017]\u0014\u0018\u000e^3PE*,7\r\u001e\u000b\u0004\u0019\u0016e\u0005\u0002CCN\u000b\'\u0003\r!\"(\u0002\u0007=,H\u000f\u0005\u0003\u0006 \u0016\u0015VBACQ\u0015\u0011)\u0019Ka*\u0002\u0005%|\u0017\u0002BCT\u000bC\u0013!c\u00142kK\u000e$x*\u001e;qkR\u001cFO]3b[\"AQ1VC0\t\u0013)i+\u0001\u0006sK\u0006$wJ\u00196fGR$2\u0001TCX\u0011!)\t,\"+A\u0002\u0015M\u0016AA5o!\u0011)y*\".\n\t\u0015]V\u0011\u0015\u0002\u0012\u001f\nTWm\u0019;J]B,Ho\u0015;sK\u0006l\u0007\u0002\u0003BN\u000b?\"I!b/\u0015\u0005\u0005m\u0007fBC0\u000b\u007fSWQ\u0019\t\u0004+\u0015\u0005\u0017bACb\r\t\u00012+\u001a:jC24VM]:j_:,\u0016\n\u0012\u0010\u0002\u0005!Q!1TAY\u0003\u0003%IA!(\t\u000f\r\u001d\u0002\u0001\"\u0005\u0006LR9A%\"4\u0006P\u0016E\u0007B\u00020\u0006J\u0002\u0007q\u0002C\u0004\u0002\u0006\u0016%\u0007\u0019\u0001\u001f\t\u000f\u0005mR\u0011\u001aa\u0001y!9QQ\u001b\u0001\u0005\u0012\u0015m\u0016\u0001D<sSR,\'+\u001a9mC\u000e,\u0007bBB5\u0001\u0011\u0005Q\u0011\\\u000b\u0003\u000b7\u0004B\u0001DB8I!9Qq\u001c\u0001\u0005\u0002\u0015\u0005\u0018AB7fe\u001e,G-\u0006\u0003\u0006d\u0016-H\u0003BCs\u000bc$B!b:\u0006nB)A\u0002A\u0008\u0006jB\u0019\u0001#b;\u0005\r\u0019,iN1\u0001h\u0011!\u0011\u0019$\"8A\u0002\u0015=\u0008cBAU\u0005\u000fyQ\u0011\u001e\u0005\t\u0007\u0007+i\u000e1\u0001\u0006h\"91Q\u000f\u0001\u0005\u0012\u0015UX\u0003BC|\u000b{$\u0002\"\"?\u0006\u0000\u001a\u0005a1\u0001\t\u0006\u0019\u0001yQ1 \t\u0004!\u0015uHA\u00024\u0006t\n\u0007q\r\u0003\u0005\u0004\u0004\u0016M\u0008\u0019AC}\u0011\u001d\tY$b=A\u0002qB\u0001\"!*\u0006t\u0002\u0007aQ\u0001\t\u0008\u0003S\u000b\u0019nDC~\u0011\u001d1I\u0001\u0001C!\r\u0017\t1\u0001]1s+\u0005y\u0003f\u0002\u0001\u0007\u0010\u0019Ua\u0011\u0004\t\u0004+\u0019E\u0011b\u0001D\n\r\t)B-\u001a9sK\u000e\u000cG/\u001a3J]\",\'/\u001b;b]\u000e,\u0017E\u0001D\u000c\u0003M#\u0006.\u001a\u0011j[BdW-\\3oi\u0006$\u0018n\u001c8!I\u0016$\u0018-\u001b7tA=4\u0007%[7nkR\u000c\'\r\\3!Q\u0006\u001c\u0008\u000eI7baN\u0004S.Y6fA%t\u0007.\u001a:ji&tw\r\t4s_6\u0004C\u000f[3nAUtw/[:f]\u0005\u0012a1D\u0001\u0007e9\n\u0014G\u000c\u0019)\r\u0001)yL[Cc\u0001"
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x2L


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lscala/collection/immutable/AbstractMap;-><init>()V

    invoke-static {p0}, Lscala/collection/CustomParallelizable$class;->$init$(Lscala/collection/CustomParallelizable;)V

    return-void
.end method

.method public static bitString(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/collection/immutable/HashMap$;->MODULE$:Lscala/collection/immutable/HashMap$;

    invoke-virtual {v0, p0, p1}, Lscala/collection/immutable/HashMap$;->bitString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bitString$default$2()Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/collection/immutable/HashMap$;->MODULE$:Lscala/collection/immutable/HashMap$;

    invoke-virtual {v0}, Lscala/collection/immutable/HashMap$;->bitString$default$2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bits(I)Lscala/collection/immutable/IndexedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/immutable/IndexedSeq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lscala/collection/immutable/HashMap$;->MODULE$:Lscala/collection/immutable/HashMap$;

    invoke-virtual {v0, p0}, Lscala/collection/immutable/HashMap$;->bits(I)Lscala/collection/immutable/IndexedSeq;

    move-result-object p0

    return-object p0
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
            "Lscala/collection/immutable/HashMap<",
            "**>;",
            "Lscala/Tuple2<",
            "TA;TB;>;",
            "Lscala/collection/immutable/HashMap<",
            "TA;TB;>;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/immutable/HashMap$;->MODULE$:Lscala/collection/immutable/HashMap$;

    invoke-virtual {v0}, Lscala/collection/immutable/HashMap$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    return-object v0
.end method

.method public static complement(I)I
    .locals 1

    sget-object v0, Lscala/collection/immutable/HashMap$;->MODULE$:Lscala/collection/immutable/HashMap$;

    invoke-virtual {v0, p0}, Lscala/collection/immutable/HashMap$;->complement(I)I

    move-result p0

    return p0
.end method

.method public static hasMatch(III)Z
    .locals 1

    sget-object v0, Lscala/collection/immutable/HashMap$;->MODULE$:Lscala/collection/immutable/HashMap$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/collection/immutable/HashMap$;->hasMatch(III)Z

    move-result p0

    return p0
.end method

.method public static highestOneBit(I)I
    .locals 1

    sget-object v0, Lscala/collection/immutable/HashMap$;->MODULE$:Lscala/collection/immutable/HashMap$;

    invoke-virtual {v0, p0}, Lscala/collection/immutable/HashMap$;->highestOneBit(I)I

    move-result p0

    return p0
.end method

.method public static mask(II)I
    .locals 1

    sget-object v0, Lscala/collection/immutable/HashMap$;->MODULE$:Lscala/collection/immutable/HashMap$;

    invoke-virtual {v0, p0, p1}, Lscala/collection/immutable/HashMap$;->mask(II)I

    move-result p0

    return p0
.end method

.method public static shorter(II)Z
    .locals 1

    sget-object v0, Lscala/collection/immutable/HashMap$;->MODULE$:Lscala/collection/immutable/HashMap$;

    invoke-virtual {v0, p0, p1}, Lscala/collection/immutable/HashMap$;->shorter(II)Z

    move-result p0

    return p0
.end method

.method public static unsignedCompare(II)Z
    .locals 1

    sget-object v0, Lscala/collection/immutable/HashMap$;->MODULE$:Lscala/collection/immutable/HashMap$;

    invoke-virtual {v0, p0, p1}, Lscala/collection/immutable/HashMap$;->unsignedCompare(II)Z

    move-result p0

    return p0
.end method

.method public static zero(II)Z
    .locals 1

    sget-object v0, Lscala/collection/immutable/HashMap$;->MODULE$:Lscala/collection/immutable/HashMap$;

    invoke-virtual {v0, p0, p1}, Lscala/collection/immutable/HashMap$;->zero(II)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public bridge synthetic $minus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashMap;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/Map;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashMap;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashMap;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public $minus(Ljava/lang/Object;)Lscala/collection/immutable/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/immutable/HashMap<",
            "TA;TB;>;"
        }
    .end annotation

    .line 66
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashMap;->computeHash(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lscala/collection/immutable/HashMap;->removed0(Ljava/lang/Object;II)Lscala/collection/immutable/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/GenMap;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashMap;->$plus(Lscala/Tuple2;)Lscala/collection/immutable/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/Map;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashMap;->$plus(Lscala/Tuple2;)Lscala/collection/immutable/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/Map;
    .locals 0

    .line 37
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/immutable/HashMap;->$plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/immutable/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public $plus(Lscala/Tuple2;)Lscala/collection/immutable/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Tuple2<",
            "TA;TB1;>;)",
            "Lscala/collection/immutable/HashMap<",
            "TA;TB1;>;"
        }
    .end annotation

    .line 60
    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/HashMap;->computeHash(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lscala/collection/immutable/HashMap;->updated0(Ljava/lang/Object;IILjava/lang/Object;Lscala/Tuple2;Lscala/collection/immutable/HashMap$Merger;)Lscala/collection/immutable/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public $plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/immutable/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Tuple2<",
            "TA;TB1;>;",
            "Lscala/Tuple2<",
            "TA;TB1;>;",
            "Lscala/collection/Seq<",
            "Lscala/Tuple2<",
            "TA;TB1;>;>;)",
            "Lscala/collection/immutable/HashMap<",
            "TA;TB1;>;"
        }
    .end annotation

    .line 63
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashMap;->$plus(Lscala/Tuple2;)Lscala/collection/immutable/HashMap;

    move-result-object p1

    invoke-virtual {p1, p2}, Lscala/collection/immutable/HashMap;->$plus(Lscala/Tuple2;)Lscala/collection/immutable/HashMap;

    move-result-object p1

    sget-object p2, Lscala/collection/immutable/HashMap$;->MODULE$:Lscala/collection/immutable/HashMap$;

    invoke-virtual {p2}, Lscala/collection/immutable/HashMap$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lscala/collection/immutable/HashMap;->$plus$plus(Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/HashMap;

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/immutable/Map;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashMap;->$plus(Lscala/Tuple2;)Lscala/collection/immutable/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/immutable/Map;
    .locals 0

    .line 37
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/immutable/HashMap;->$plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/immutable/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Map;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashMap;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public computeHash(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)I"
        }
    .end annotation

    .line 89
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashMap;->elemHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashMap;->improve(I)I

    move-result p1

    return p1
.end method

.method public elemHashCode(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)I"
        }
    .end annotation

    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    .line 80
    invoke-virtual {v0, p1}, Lscala/runtime/ScalaRunTime$;->hash(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic empty()Lscala/collection/Map;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap;->empty()Lscala/collection/immutable/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/immutable/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/HashMap<",
            "TA;TB;>;"
        }
    .end annotation

    .line 47
    sget-object v0, Lscala/collection/immutable/HashMap$;->MODULE$:Lscala/collection/immutable/HashMap$;

    invoke-virtual {v0}, Lscala/collection/immutable/HashMap$;->empty()Lscala/collection/immutable/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/immutable/Map;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap;->empty()Lscala/collection/immutable/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic filter(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashMap;->filter(Lscala/Function1;)Lscala/collection/immutable/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public filter(Lscala/Function1;)Lscala/collection/immutable/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TA;TB;>;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/immutable/HashMap<",
            "TA;TB;>;"
        }
    .end annotation

    .line 69
    sget-object v0, Lscala/collection/immutable/HashMap$;->MODULE$:Lscala/collection/immutable/HashMap$;

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap;->size()I

    move-result v0

    sget-object v1, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    add-int/lit8 v0, v0, 0x6

    const/16 v2, 0xe0

    invoke-virtual {v1, v0, v2}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result v0

    new-array v5, v0, [Lscala/collection/immutable/HashMap;

    .line 70
    sget-object v0, Lscala/collection/immutable/HashMap$;->MODULE$:Lscala/collection/immutable/HashMap$;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lscala/collection/immutable/HashMap;->filter0(Lscala/Function1;ZI[Lscala/collection/immutable/HashMap;I)Lscala/collection/immutable/HashMap;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lscala/collection/immutable/HashMap$;->empty()Lscala/collection/immutable/HashMap;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public filter0(Lscala/Function1;ZI[Lscala/collection/immutable/HashMap;I)Lscala/collection/immutable/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TA;TB;>;",
            "Ljava/lang/Object;",
            ">;ZI[",
            "Lscala/collection/immutable/HashMap<",
            "TA;TB;>;I)",
            "Lscala/collection/immutable/HashMap<",
            "TA;TB;>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic filterKeys(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashMap;->filterKeys(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic filterKeys(Lscala/Function1;)Lscala/collection/Map;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashMap;->filterKeys(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic filterNot(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashMap;->filterNot(Lscala/Function1;)Lscala/collection/immutable/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic filterNot(Lscala/Function1;)Lscala/collection/Map;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashMap;->filterNot(Lscala/Function1;)Lscala/collection/immutable/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public filterNot(Lscala/Function1;)Lscala/collection/immutable/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TA;TB;>;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/immutable/HashMap<",
            "TA;TB;>;"
        }
    .end annotation

    .line 74
    sget-object v0, Lscala/collection/immutable/HashMap$;->MODULE$:Lscala/collection/immutable/HashMap$;

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap;->size()I

    move-result v0

    sget-object v1, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    add-int/lit8 v0, v0, 0x6

    const/16 v2, 0xe0

    invoke-virtual {v1, v0, v2}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result v0

    new-array v5, v0, [Lscala/collection/immutable/HashMap;

    .line 75
    sget-object v0, Lscala/collection/immutable/HashMap$;->MODULE$:Lscala/collection/immutable/HashMap$;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lscala/collection/immutable/HashMap;->filter0(Lscala/Function1;ZI[Lscala/collection/immutable/HashMap;I)Lscala/collection/immutable/HashMap;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lscala/collection/immutable/HashMap$;->empty()Lscala/collection/immutable/HashMap;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public foreach(Lscala/Function1;)V
    .locals 0
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

    return-void
.end method

.method public get(Ljava/lang/Object;)Lscala/Option;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashMap;->computeHash(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lscala/collection/immutable/HashMap;->get0(Ljava/lang/Object;II)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public get0(Ljava/lang/Object;II)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 93
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    return-object p1
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashMap;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public final improve(I)I
    .locals 1

    shl-int/lit8 v0, p1, 0x9

    not-int v0, v0

    add-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0xe

    xor-int/2addr p1, v0

    shl-int/lit8 v0, p1, 0x4

    add-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0xa

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
            "TA;TB;>;>;"
        }
    .end annotation

    .line 49
    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {v0}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Lscala/collection/GenSet;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap;->keySet()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Lscala/collection/Set;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap;->keySet()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keys()Lscala/collection/GenIterable;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap;->keys()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mapValues(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashMap;->mapValues(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mapValues(Lscala/Function1;)Lscala/collection/Map;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashMap;->mapValues(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public merge0(Lscala/collection/immutable/HashMap;ILscala/collection/immutable/HashMap$Merger;)Lscala/collection/immutable/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/HashMap<",
            "TA;TB1;>;I",
            "Lscala/collection/immutable/HashMap$Merger<",
            "TA;TB1;>;)",
            "Lscala/collection/immutable/HashMap<",
            "TA;TB1;>;"
        }
    .end annotation

    return-object p1
.end method

.method public merged(Lscala/collection/immutable/HashMap;Lscala/Function2;)Lscala/collection/immutable/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/HashMap<",
            "TA;TB1;>;",
            "Lscala/Function2<",
            "Lscala/Tuple2<",
            "TA;TB1;>;",
            "Lscala/Tuple2<",
            "TA;TB1;>;",
            "Lscala/Tuple2<",
            "TA;TB1;>;>;)",
            "Lscala/collection/immutable/HashMap<",
            "TA;TB1;>;"
        }
    .end annotation

    .line 117
    sget-object v0, Lscala/collection/immutable/HashMap$;->MODULE$:Lscala/collection/immutable/HashMap$;

    invoke-virtual {v0, p2}, Lscala/collection/immutable/HashMap$;->scala$collection$immutable$HashMap$$liftMerger(Lscala/Function2;)Lscala/collection/immutable/HashMap$Merger;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lscala/collection/immutable/HashMap;->merge0(Lscala/collection/immutable/HashMap;ILscala/collection/immutable/HashMap$Merger;)Lscala/collection/immutable/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic par()Lscala/collection/Parallel;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap;->par()Lscala/collection/parallel/immutable/ParHashMap;

    move-result-object v0

    return-object v0
.end method

.method public par()Lscala/collection/parallel/immutable/ParHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/immutable/ParHashMap<",
            "TA;TB;>;"
        }
    .end annotation

    .line 121
    sget-object v0, Lscala/collection/parallel/immutable/ParHashMap$;->MODULE$:Lscala/collection/parallel/immutable/ParHashMap$;

    invoke-virtual {v0, p0}, Lscala/collection/parallel/immutable/ParHashMap$;->fromTrie(Lscala/collection/immutable/HashMap;)Lscala/collection/parallel/immutable/ParHashMap;

    move-result-object v0

    return-object v0
.end method

.method public parCombiner()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "Lscala/Tuple2<",
            "TA;TB;>;",
            "Lscala/collection/parallel/immutable/ParHashMap<",
            "TA;TB;>;>;"
        }
    .end annotation

    .line 37
    invoke-static {p0}, Lscala/collection/CustomParallelizable$class;->parCombiner(Lscala/collection/CustomParallelizable;)Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public removed0(Ljava/lang/Object;II)Lscala/collection/immutable/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)",
            "Lscala/collection/immutable/HashMap<",
            "TA;TB;>;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic repr()Lscala/collection/generic/Subtractable;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/generic/Subtractable;

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Map;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap;->seq()Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap;->seq()Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public split()Lscala/collection/immutable/Seq;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Seq<",
            "Lscala/collection/immutable/HashMap<",
            "TA;TB;>;>;"
        }
    .end annotation

    .line 102
    sget-object v0, Lscala/collection/immutable/Seq$;->MODULE$:Lscala/collection/immutable/Seq$;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x1

    new-array v2, v2, [Lscala/collection/immutable/HashMap;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/immutable/Seq$;->apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Seq;

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap;->thisCollection()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashMap;->toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/GenMap;
    .locals 0

    .line 37
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/HashMap;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/Map;
    .locals 0

    .line 37
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/HashMap;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(TA;TB1;)",
            "Lscala/collection/immutable/HashMap<",
            "TA;TB1;>;"
        }
    .end annotation

    .line 57
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashMap;->computeHash(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lscala/collection/immutable/HashMap;->updated0(Ljava/lang/Object;IILjava/lang/Object;Lscala/Tuple2;Lscala/collection/immutable/HashMap$Merger;)Lscala/collection/immutable/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/Map;
    .locals 0

    .line 37
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/HashMap;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public updated0(Ljava/lang/Object;IILjava/lang/Object;Lscala/Tuple2;Lscala/collection/immutable/HashMap$Merger;)Lscala/collection/immutable/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(TA;IITB1;",
            "Lscala/Tuple2<",
            "TA;TB1;>;",
            "Lscala/collection/immutable/HashMap$Merger<",
            "TA;TB1;>;)",
            "Lscala/collection/immutable/HashMap<",
            "TA;TB1;>;"
        }
    .end annotation

    .line 96
    new-instance p3, Lscala/collection/immutable/HashMap$HashMap1;

    invoke-direct {p3, p1, p2, p4, p5}, Lscala/collection/immutable/HashMap$HashMap1;-><init>(Ljava/lang/Object;ILjava/lang/Object;Lscala/Tuple2;)V

    return-object p3
.end method

.method public bridge synthetic values()Lscala/collection/GenIterable;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap;->values()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap;->view()Lscala/collection/IterableView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 37
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/HashMap;->view(II)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 1

    .line 100
    new-instance v0, Lscala/collection/immutable/HashMap$SerializationProxy;

    invoke-direct {v0, p0}, Lscala/collection/immutable/HashMap$SerializationProxy;-><init>(Lscala/collection/immutable/HashMap;)V

    return-object v0
.end method
