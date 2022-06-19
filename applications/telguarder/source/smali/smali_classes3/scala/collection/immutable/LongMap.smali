.class public abstract Lscala/collection/immutable/LongMap;
.super Lscala/collection/immutable/AbstractMap;
.source "LongMap.scala"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/immutable/LongMap$Nil$;,
        Lscala/collection/immutable/LongMap$Bin;,
        Lscala/collection/immutable/LongMap$Tip;,
        Lscala/collection/immutable/LongMap$Tip$;,
        Lscala/collection/immutable/LongMap$Bin$;
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
    bytes = "\u0006\u0001\u0011\rt!B\u0001\u0003\u0011\u0003I\u0011a\u0002\'p]\u001el\u0015\r\u001d\u0006\u0003\u0007\u0011\t\u0011\"[7nkR\u000c\'\r\\3\u000b\u0005\u00151\u0011AC2pY2,7\r^5p]*\tq!A\u0003tG\u0006d\u0017m\u0001\u0001\u0011\u0005)YQ\"\u0001\u0002\u0007\u000b1\u0011\u0001\u0012A\u0007\u0003\u000f1{gnZ\'baN\u00111B\u0004\t\u0003\u001fAi\u0011AB\u0005\u0003#\u0019\u0011a!\u00118z%\u00164\u0007\"B\n\u000c\t\u0003!\u0012A\u0002\u001fj]&$h\u0008F\u0001\n\u0011\u001512\u0002b\u0001\u0018\u00031\u0019\u0017M\u001c\"vS2$gI]8n+\u0015A2qTBT+\u0005I\"c\u0001\u000e\u000f9\u0019!1$\u0006\u0001\u001a\u00051a$/\u001a4j]\u0016lWM\u001c;?!\u001di\u0002EIBR\u0007Wk\u0011A\u0008\u0006\u0003?\u0011\tqaZ3oKJL7-\u0003\u0002\"=\ta1)\u00198Ck&dGM\u0012:p[B!!bIBO\r\u0015a!!!\t%+\t)Cg\u0005\u0003$Mu\u0002\u0005\u0003\u0002\u0006(SIJ!\u0001\u000b\u0002\u0003\u0017\u0005\u00137\u000f\u001e:bGRl\u0015\r\u001d\t\u0003U5r!AC\u0016\n\u00051\u0012\u0011\u0001\u0004\'p]\u001el\u0015\r]+uS2\u001c\u0018B\u0001\u00180\u0005\u0011auN\\4\n\u00059\u0002$BA\u0019\u001f\u00035\u0011\u0015\u000e^(qKJ\u000cG/[8ogB\u00111\u0007\u000e\u0007\u0001\t\u0019)4\u0005\"b\u0001m\t\tA+\u0005\u00028uA\u0011q\u0002O\u0005\u0003s\u0019\u0011qAT8uQ&tw\r\u0005\u0002\u0010w%\u0011AH\u0002\u0002\u0004\u0003:L\u0008\u0003\u0002\u0006?SIJ!a\u0010\u0002\u0003\u00075\u000b\u0007\u000fE\u0003\u000b\u0003&\u00124)\u0003\u0002C\u0005\t9Q*\u00199MS.,\u0007c\u0001\u0006$e!)1c\tC\u0001\u000bR\t1\tC\u0003HG\u0011\u0005\u0003*A\u0003f[B$\u00180F\u0001D\u0011\u0015Q5\u0005\"\u0011L\u0003\u0019!x\u000eT5tiV\tA\nE\u0002\u000b\u001b>K!A\u0014\u0002\u0003\t1K7\u000f\u001e\t\u0005\u001fAK#\'\u0003\u0002R\r\t1A+\u001e9mKJBQaU\u0012\u0005\u0002Q\u000b\u0001\"\u001b;fe\u0006$xN]\u000b\u0002+B\u0019akV(\u000e\u0003\u0011I!\u0001\u0017\u0003\u0003\u0011%#XM]1u_JDQAW\u0012\u0005Fm\u000bqAZ8sK\u0006\u001c\u0007.\u0006\u0002]MR\u0011Q\u000c\u0019\t\u0003\u001fyK!a\u0018\u0004\u0003\tUs\u0017\u000e\u001e\u0005\u0006Cf\u0003\rAY\u0001\u0002MB!qbY(f\u0013\t!gAA\u0005Gk:\u001cG/[8ocA\u00111G\u001a\u0003\u0006Of\u0013\rA\u000e\u0002\u0002+\")\u0011n\tC!U\u0006a1.Z=t\u0013R,\'/\u0019;peV\t1\u000eE\u0002W/&BQ!\\\u0012\u0005\u00069\u000c!BZ8sK\u0006\u001c\u0007nS3z)\tiv\u000eC\u0003bY\u0002\u0007\u0001\u000f\u0005\u0003\u0010G&j\u0006\"\u0002:$\t\u0003\u001a\u0018A\u0004<bYV,7/\u0013;fe\u0006$xN]\u000b\u0002iB\u0019ak\u0016\u001a\t\u000bY\u001cCQA<\u0002\u0019\u0019|\'/Z1dQZ\u000bG.^3\u0015\u0005uC\u0008\"B1v\u0001\u0004I\u0008\u0003B\u0008deuCQa_\u0012\u0005Bq\u000cAb\u001d;sS:<\u0007K]3gSb,\u0012! \t\u0004}\u0006\u001dQ\"A@\u000b\t\u0005\u0005\u00111A\u0001\u0005Y\u0006twM\u0003\u0002\u0002\u0006\u0005!!.\u0019<b\u0013\r\tIa \u0002\u0007\'R\u0014\u0018N\\4\t\u000f\u000551\u0005\"\u0011\u0002\u0010\u00059\u0011n]#naRLXCAA\t!\ry\u00111C\u0005\u0004\u0003+1!a\u0002\"p_2,\u0017M\u001c\u0005\u0008\u00033\u0019C\u0011IA\u000e\u0003\u00191\u0017\u000e\u001c;feR\u00191)!\u0008\t\u000f\u0005\u000c9\u00021\u0001\u0002 A)qbY(\u0002\u0012!9\u00111E\u0012\u0005\u0002\u0005\u0015\u0012!\u0003;sC:\u001chm\u001c:n+\u0011\t9#!\u000c\u0015\t\u0005%\u0012\u0011\u0007\t\u0005\u0015\r\nY\u0003E\u00024\u0003[!q!a\u000c\u0002\"\t\u0007aGA\u0001T\u0011\u001d\t\u0017\u0011\u0005a\u0001\u0003g\u0001raDA\u001bSI\nY#C\u0002\u00028\u0019\u0011\u0011BR;oGRLwN\u001c\u001a\t\u000f\u0005m2\u0005\"\u0012\u0002>\u0005!1/\u001b>f+\t\ty\u0004E\u0002\u0010\u0003\u0003J1!a\u0011\u0007\u0005\rIe\u000e\u001e\u0005\u0008\u0003\u000f\u001aCQAA%\u0003\r9W\r\u001e\u000b\u0005\u0003\u0017\n\t\u0006\u0005\u0003\u0010\u0003\u001b\u0012\u0014bAA(\r\t1q\n\u001d;j_:Dq!a\u0015\u0002F\u0001\u0007\u0011&A\u0002lKfDq!a\u0016$\t\u000b\nI&A\u0005hKR|%/\u00127tKV!\u00111LA0)\u0019\ti&a\u0019\u0002fA\u00191\'a\u0018\u0005\u0011\u0005=\u0012Q\u000bb\u0001\u0003C\n\"A\r\u001e\t\u000f\u0005M\u0013Q\u000ba\u0001S!I\u0011qMA+\t\u0003\u0007\u0011\u0011N\u0001\u0008I\u00164\u0017-\u001e7u!\u0015y\u00111NA/\u0013\r\tiG\u0002\u0002\ty\tLh.Y7f}!9\u0011\u0011O\u0012\u0005F\u0005M\u0014!B1qa2LHc\u0001\u001a\u0002v!9\u00111KA8\u0001\u0004I\u0003bBA=G\u0011\u0005\u00111P\u0001\u0006IAdWo]\u000b\u0005\u0003{\n\u0019\t\u0006\u0003\u0002\u0000\u0005\u0015\u0005\u0003\u0002\u0006$\u0003\u0003\u00032aMAB\t!\ty#a\u001eC\u0002\u0005\u0005\u0004\u0002CAD\u0003o\u0002\r!!#\u0002\u0005-4\u0008#B\u0008QS\u0005\u0005\u0005bBAGG\u0011\u0005\u0013qR\u0001\u0008kB$\u0017\r^3e+\u0011\t\t*a&\u0015\r\u0005M\u0015\u0011TAN!\u0011Q1%!&\u0011\u0007M\n9\n\u0002\u0005\u00020\u0005-%\u0019AA1\u0011\u001d\t\u0019&a#A\u0002%B\u0001\"!(\u0002\u000c\u0002\u0007\u0011QS\u0001\u0006m\u0006dW/\u001a\u0005\u0008\u0003C\u001bC\u0011AAR\u0003))\u0008\u000fZ1uK^KG\u000f[\u000b\u0005\u0003K\u000bY\u000b\u0006\u0005\u0002(\u00065\u0016qVAY!\u0011Q1%!+\u0011\u0007M\nY\u000b\u0002\u0005\u00020\u0005}%\u0019AA1\u0011\u001d\t\u0019&a(A\u0002%B\u0001\"!(\u0002 \u0002\u0007\u0011\u0011\u0016\u0005\u0008C\u0006}\u0005\u0019AAZ!!y\u0011Q\u0007\u001a\u0002*\u0006%\u0006bBA\\G\u0011\u0005\u0011\u0011X\u0001\u0007I5Lg.^:\u0015\u0007\r\u000bY\u000cC\u0004\u0002T\u0005U\u0006\u0019A\u0015\t\u000f\u0005}6\u0005\"\u0001\u0002B\u0006qQn\u001c3jMf|%OU3n_Z,W\u0003BAb\u0003\u0013$B!!2\u0002LB!!bIAd!\r\u0019\u0014\u0011\u001a\u0003\u0008\u0003_\tiL1\u00017\u0011\u001d\t\u0017Q\u0018a\u0001\u0003\u001b\u0004raDA\u001bSI\ny\rE\u0003\u0010\u0003\u001b\n9\rC\u0004\u0002T\u000e\"\t!!6\u0002\u0013Ut\u0017n\u001c8XSRDW\u0003BAl\u0003;$b!!7\u0002`\u0006\r\u0008\u0003\u0002\u0006$\u00037\u00042aMAo\t!\ty#!5C\u0002\u0005\u0005\u0004\u0002CAq\u0003#\u0004\r!!7\u0002\tQD\u0017\r\u001e\u0005\u0008C\u0006E\u0007\u0019AAs!)y\u0011q]\u0015\u0002\\\u0006m\u00171\\\u0005\u0004\u0003S4!!\u0003$v]\u000e$\u0018n\u001c84\u0011\u001d\tio\tC\u0001\u0003_\u000c\u0001#\u001b8uKJ\u001cXm\u0019;j_:<\u0016\u000e\u001e5\u0016\r\u0005E(\u0011AA|)\u0019\t\u00190a?\u0003\u0004A!!bIA{!\r\u0019\u0014q\u001f\u0003\u0008\u0003s\u000cYO1\u00017\u0005\u0005\u0011\u0006\u0002CAq\u0003W\u0004\r!!@\u0011\t)\u0019\u0013q \t\u0004g\t\u0005AaBA\u0018\u0003W\u0014\rA\u000e\u0005\u0008C\u0006-\u0008\u0019\u0001B\u0003!%y\u0011q]\u00153\u0003\u007f\u000c)\u0010C\u0004\u0003\n\r\"\tAa\u0003\u0002\u0019%tG/\u001a:tK\u000e$\u0018n\u001c8\u0016\t\t5!Q\u0003\u000b\u0004\u0007\n=\u0001\u0002CAq\u0005\u000f\u0001\rA!\u0005\u0011\t)\u0019#1\u0003\t\u0004g\tUAaBA}\u0005\u000f\u0011\rA\u000e\u0005\u0008\u00053\u0019C\u0011\u0001B\u000e\u0003)!\u0003\u000f\\;tIAdWo]\u000b\u0005\u0005;\u0011\u0019\u0003\u0006\u0003\u0003 \t\u0015\u0002\u0003\u0002\u0006$\u0005C\u00012a\rB\u0012\t!\tyCa\u0006C\u0002\u0005\u0005\u0004\u0002CAq\u0005/\u0001\rAa\u0008\t\u000f\t%2\u0005\"\u0002\u0003,\u0005Aa-\u001b:ti.+\u00170F\u0001*Q\u0011\u00119Ca\u000c\u0011\t\tE\"qG\u0007\u0003\u0005gQ1A!\u000e\u0007\u0003)\tgN\\8uCRLwN\\\u0005\u0005\u0005s\u0011\u0019DA\u0004uC&d\'/Z2\t\u000f\tu2\u0005\"\u0002\u0003,\u00059A.Y:u\u0017\u0016L\u0008\u0006\u0002B\u001e\u0005_Isa\tB\"\u0007\u0013\u00199DB\u0004\u0003F-\u0001%Aa\u0012\u0003\u0007\tKg.\u0006\u0003\u0003J\t=3\u0003\u0003B\"\u0005\u0017\u0012\tFa\u0016\u0011\t)\u0019#Q\n\t\u0004g\t=CaB\u001b\u0003D\u0011\u0015\rA\u000e\t\u0004\u001f\tM\u0013b\u0001B+\r\t9\u0001K]8ek\u000e$\u0008cA\u0008\u0003Z%\u0019!1\u000c\u0004\u0003\u0019M+\'/[1mSj\u000c\'\r\\3\t\u0017\t}#1\tBK\u0002\u0013\u0005!1F\u0001\u0007aJ,g-\u001b=\t\u0015\t\r$1\tB\tB\u0003%\u0011&A\u0004qe\u00164\u0017\u000e\u001f\u0011\t\u0017\t\u001d$1\tBK\u0002\u0013\u0005!1F\u0001\u0005[\u0006\u001c8\u000e\u0003\u0006\u0003l\t\r#\u0011#Q\u0001\n%\nQ!\\1tW\u0002B1Ba\u001c\u0003D\tU\r\u0011\"\u0001\u0003r\u0005!A.\u001a4u+\t\u0011Y\u0005C\u0006\u0003v\t\r#\u0011#Q\u0001\n\t-\u0013!\u00027fMR\u0004\u0003b\u0003B=\u0005\u0007\u0012)\u001a!C\u0001\u0005c\nQA]5hQRD1B! \u0003D\tE\t\u0015!\u0003\u0003L\u00051!/[4ii\u0002Bqa\u0005B\"\t\u0003\u0011\t\t\u0006\u0006\u0003\u0004\n\u001d%\u0011\u0012BF\u0005\u001b\u0003bA!\"\u0003D\t5S\"A\u0006\t\u000f\t}#q\u0010a\u0001S!9!q\rB@\u0001\u0004I\u0003\u0002\u0003B8\u0005\u007f\u0002\rAa\u0013\t\u0011\te$q\u0010a\u0001\u0005\u0017B\u0001B!%\u0003D\u0011\u0005!1S\u0001\u0004E&tW\u0003\u0002BK\u00057#bAa&\u0003\u001e\n}\u0005\u0003\u0002\u0006$\u00053\u00032a\rBN\t\u001d\tyCa$C\u0002YB\u0001Ba\u001c\u0003\u0010\u0002\u0007!q\u0013\u0005\t\u0005s\u0012y\t1\u0001\u0003\u0018\"Q!1\u0015B\"\u0003\u0003%\tA!*\u0002\t\r|\u0007/_\u000b\u0005\u0005O\u0013i\u000b\u0006\u0006\u0003*\n=&\u0011\u0017BZ\u0005o\u0003bA!\"\u0003D\t-\u0006cA\u001a\u0003.\u00121QG!)C\u0002YB\u0011Ba\u0018\u0003\"B\u0005\t\u0019A\u0015\t\u0013\t\u001d$\u0011\u0015I\u0001\u0002\u0004I\u0003B\u0003B8\u0005C\u0003\n\u00111\u0001\u00036B!!b\tBV\u0011)\u0011IH!)\u0011\u0002\u0003\u0007!Q\u0017\u0005\u000b\u0005w\u0013\u0019%%A\u0005\u0002\tu\u0016AD2paf$C-\u001a4bk2$H%M\u000b\u0005\u0005\u007f\u0013\t.\u0006\u0002\u0003B*\u001a\u0011Fa1,\u0005\t\u0015\u0007\u0003\u0002Bd\u0005\u001bl!A!3\u000b\t\t-\'1G\u0001\nk:\u001c\u0007.Z2lK\u0012LAAa4\u0003J\n\tRO\\2iK\u000e\\W\r\u001a,be&\u000cgnY3\u0005\rU\u0012IL1\u00017\u0011)\u0011)Na\u0011\u0012\u0002\u0013\u0005!q[\u0001\u000fG>\u0004\u0018\u0010\n3fM\u0006,H\u000e\u001e\u00133+\u0011\u0011yL!7\u0005\rU\u0012\u0019N1\u00017\u0011)\u0011iNa\u0011\u0012\u0002\u0013\u0005!q\\\u0001\u000fG>\u0004\u0018\u0010\n3fM\u0006,H\u000e\u001e\u00134+\u0011\u0011\tO!:\u0016\u0005\t\r(\u0006\u0002B&\u0005\u0007$a!\u000eBn\u0005\u00041\u0004B\u0003Bu\u0005\u0007\n\n\u0011\"\u0001\u0003l\u0006q1m\u001c9zI\u0011,g-Y;mi\u0012\"T\u0003\u0002Bq\u0005[$a!\u000eBt\u0005\u00041\u0004\"\u0003By\u0005\u0007\n\t\u0011\"\u0011}\u00035\u0001(o\u001c3vGR\u0004&/\u001a4jq\"Q!Q\u001fB\"\u0003\u0003%\t!!\u0010\u0002\u0019A\u0014x\u000eZ;di\u0006\u0013\u0018\u000e^=\t\u0015\te(1IA\u0001\n\u0003\u0011Y0\u0001\u0008qe>$Wo\u0019;FY\u0016lWM\u001c;\u0015\u0007i\u0012i\u0010\u0003\u0006\u0003\u0000\n]\u0018\u0011!a\u0001\u0003\u007f\t1\u0001\u001f\u00132\u0011)\u0019\u0019Aa\u0011\u0002\u0002\u0013\u00053QA\u0001\u0010aJ|G-^2u\u0013R,\'/\u0019;peV\u00111q\u0001\t\u0004-^Sd\u0001CB\u0006\u0017!\u0005%a!\u0004\u0003\u00079KGn\u0005\u0005\u0004\n\r=!\u0011\u000bB,!\rQ1e\u000e\u0005\u0008\'\r%A\u0011AB\n)\t\u0019)\u0002\u0005\u0003\u0003\u0006\u000e%\u0001\u0002CB\r\u0007\u0013!\tea\u0007\u0002\r\u0015\u000cX/\u00197t)\u0011\t\tb!\u0008\t\u000f\u0005\u00058q\u0003a\u0001u!I!\u0011_B\u0005\u0003\u0003%\t\u0005 \u0005\u000b\u0005k\u001cI!!A\u0005\u0002\u0005u\u0002B\u0003B}\u0007\u0013\t\t\u0011\"\u0001\u0004&Q\u0019!ha\n\t\u0015\t}81EA\u0001\u0002\u0004\ty\u0004\u0003\u0006\u0004\u0004\r%\u0011\u0011!C!\u0007\u000bA!b!\u000c\u0004\n\u0005\u0005I\u0011BB\u0018\u0003-\u0011X-\u00193SKN|GN^3\u0015\u0005\rE\u0002c\u0001@\u00044%\u00191QG@\u0003\r=\u0013\'.Z2u\r\u001d\u0019Id\u0003!\u0003\u0007w\u00111\u0001V5q+\u0011\u0019ida\u0011\u0014\u0011\r]2q\u0008B)\u0005/\u0002BAC\u0012\u0004BA\u00191ga\u0011\u0005\u000fU\u001a9\u0004\"b\u0001m!Y\u00111KB\u001c\u0005+\u0007I\u0011\u0001B\u0016\u0011)\u0019Iea\u000e\u0003\u0012\u0003\u0006I!K\u0001\u0005W\u0016L\u0008\u0005C\u0006\u0002\u001e\u000e]\"Q3A\u0005\u0002\r5SCAB!\u0011-\u0019\tfa\u000e\u0003\u0012\u0003\u0006Ia!\u0011\u0002\rY\u000cG.^3!\u0011\u001d\u00192q\u0007C\u0001\u0007+\"baa\u0016\u0004Z\rm\u0003C\u0002BC\u0007o\u0019\t\u0005C\u0004\u0002T\rM\u0003\u0019A\u0015\t\u0011\u0005u51\u000ba\u0001\u0007\u0003B\u0001ba\u0018\u00048\u0011\u00051\u0011M\u0001\no&$\u0008NV1mk\u0016,Baa\u0019\u0004lQ!1QMB7!\u0019\u00199ga\u000e\u0004j9\u0011!\u0002\u0001\t\u0004g\r-DaBA\u0018\u0007;\u0012\rA\u000e\u0005\t\u0007_\u001ai\u00061\u0001\u0004j\u0005\t1\u000f\u0003\u0006\u0003$\u000e]\u0012\u0011!C\u0001\u0007g*Ba!\u001e\u0004|Q11qOB?\u0007\u007f\u0002bA!\"\u00048\re\u0004cA\u001a\u0004|\u00111Qg!\u001dC\u0002YB\u0011\"a\u0015\u0004rA\u0005\t\u0019A\u0015\t\u0015\u0005u5\u0011\u000fI\u0001\u0002\u0004\u0019I\u0008\u0003\u0006\u0003<\u000e]\u0012\u0013!C\u0001\u0007\u0007+BAa0\u0004\u0006\u00121Qg!!C\u0002YB!B!6\u00048E\u0005I\u0011ABE+\u0011\u0019Yia$\u0016\u0005\r5%\u0006BB!\u0005\u0007$a!NBD\u0005\u00041\u0004\"\u0003By\u0007o\t\t\u0011\"\u0011}\u0011)\u0011)pa\u000e\u0002\u0002\u0013\u0005\u0011Q\u0008\u0005\u000b\u0005s\u001c9$!A\u0005\u0002\r]Ec\u0001\u001e\u0004\u001a\"Q!q`BK\u0003\u0003\u0005\r!a\u0010\t\u0015\r\r1qGA\u0001\n\u0003\u001a)\u0001E\u00024\u0007?#aa!)\u0016\u0005\u00041$!A!\u0011\u000b=\u0001\u0016f!*\u0011\u0007M\u001a9\u000b\u0002\u0004\u0004*V\u0011\rA\u000e\u0002\u0002\u0005B!!bIBS\u0011\u001995\u0002\"\u0001\u00040V!1\u0011WB\\+\t\u0019\u0019\u000c\u0005\u0003\u000bG\rU\u0006cA\u001a\u00048\u00121Qg!,C\u0002YBqaa/\u000c\t\u0003\u0019i,A\u0005tS:<G.\u001a;p]V!1qXBc)\u0019\u0019\tma2\u0004JB!!bIBb!\r\u00194Q\u0019\u0003\u0007k\re&\u0019\u0001\u001c\t\u000f\u0005M3\u0011\u0018a\u0001S!A\u0011QTB]\u0001\u0004\u0019\u0019\rC\u0004\u0002r-!\ta!4\u0016\t\r=7Q\u001b\u000b\u0005\u0007#\u001c9\u000e\u0005\u0003\u000bG\rM\u0007cA\u001a\u0004V\u00121Qga3C\u0002YB\u0001b!7\u0004L\u0002\u000711\\\u0001\u0006K2,Wn\u001d\t\u0006\u001f\ru7\u0011]\u0005\u0004\u0007?4!A\u0003\u001fsKB,\u0017\r^3e}A)q\u0002U\u0015\u0004T\u001eA1Q]\u0006\t\u0002\n\u0019)\"A\u0002OS2<!b!;\u000c\u0003\u0003E\tAABv\u0003\r!\u0016\u000e\u001d\t\u0005\u0005\u000b\u001biO\u0002\u0006\u0004:-\t\t\u0011#\u0001\u0003\u0007_\u001cRa!<\u000f\u0005/BqaEBw\t\u0003\u0019\u0019\u0010\u0006\u0002\u0004l\"Q1q_Bw\u0003\u0003%)e!?\u0002\u0011Q|7\u000b\u001e:j]\u001e$\u0012! \u0005\u000b\u0003c\u001ai/!A\u0005\u0002\u000euX\u0003BB\u0000\t\u000b!b\u0001\"\u0001\u0005\u0008\u0011%\u0001C\u0002BC\u0007o!\u0019\u0001E\u00024\t\u000b!a!NB~\u0005\u00041\u0004bBA*\u0007w\u0004\r!\u000b\u0005\t\u0003;\u001bY\u00101\u0001\u0005\u0004!QAQBBw\u0003\u0003%\t\tb\u0004\u0002\u000fUt\u0017\r\u001d9msV!A\u0011\u0003C\r)\u0011!\u0019\u0002b\u0007\u0011\u000b=\ti\u0005\"\u0006\u0011\u000b=\u0001\u0016\u0006b\u0006\u0011\u0007M\"I\u0002\u0002\u00046\t\u0017\u0011\rA\u000e\u0005\u000b\t;!Y!!AA\u0002\u0011}\u0011a\u0001=%aA1!QQB\u001c\t/A!b!\u000c\u0004n\u0006\u0005I\u0011BB\u0018\u000f)!)cCA\u0001\u0012\u0003\u0011AqE\u0001\u0004\u0005&t\u0007\u0003\u0002BC\tS1!B!\u0012\u000c\u0003\u0003E\tA\u0001C\u0016\'\u0015!IC\u0004B,\u0011\u001d\u0019B\u0011\u0006C\u0001\t_!\"\u0001b\n\t\u0015\r]H\u0011FA\u0001\n\u000b\u001aI\u0010\u0003\u0006\u0002r\u0011%\u0012\u0011!CA\tk)B\u0001b\u000e\u0005>QQA\u0011\u0008C \t\u0003\"\u0019\u0005b\u0012\u0011\r\t\u0015%1\tC\u001e!\r\u0019DQ\u0008\u0003\u0007k\u0011M\"\u0019\u0001\u001c\t\u000f\t}C1\u0007a\u0001S!9!q\rC\u001a\u0001\u0004I\u0003\u0002\u0003B8\tg\u0001\r\u0001\"\u0012\u0011\t)\u0019C1\u0008\u0005\t\u0005s\"\u0019\u00041\u0001\u0005F!QAQ\u0002C\u0015\u0003\u0003%\t\tb\u0013\u0016\t\u00115C1\u000c\u000b\u0005\t\u001f\"i\u0006E\u0003\u0010\u0003\u001b\"\t\u0006E\u0005\u0010\t\'J\u0013\u0006b\u0016\u0005X%\u0019AQ\u000b\u0004\u0003\rQ+\u0008\u000f\\35!\u0011Q1\u0005\"\u0017\u0011\u0007M\"Y\u0006\u0002\u00046\t\u0013\u0012\rA\u000e\u0005\u000b\t;!I%!AA\u0002\u0011}\u0003C\u0002BC\u0005\u0007\"I\u0006\u0003\u0006\u0004.\u0011%\u0012\u0011!C\u0005\u0007_\u0001"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 154
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

    sget-object v0, Lscala/collection/immutable/LongMap$;->MODULE$:Lscala/collection/immutable/LongMap$;

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    return-object v0
.end method

.method public static singleton(JLjava/lang/Object;)Lscala/collection/immutable/LongMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(JTT;)",
            "Lscala/collection/immutable/LongMap<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/immutable/LongMap$;->MODULE$:Lscala/collection/immutable/LongMap$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/collection/immutable/LongMap$;->singleton(JLjava/lang/Object;)Lscala/collection/immutable/LongMap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic $minus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 153
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lscala/collection/immutable/LongMap;->$minus(J)Lscala/collection/immutable/LongMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/Map;
    .locals 2

    .line 153
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lscala/collection/immutable/LongMap;->$minus(J)Lscala/collection/immutable/LongMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/generic/Subtractable;
    .locals 2

    .line 153
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lscala/collection/immutable/LongMap;->$minus(J)Lscala/collection/immutable/LongMap;

    move-result-object p1

    return-object p1
.end method

.method public $minus(J)Lscala/collection/immutable/LongMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lscala/collection/immutable/LongMap<",
            "TT;>;"
        }
    .end annotation

    .line 307
    instance-of v0, p0, Lscala/collection/immutable/LongMap$Bin;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lscala/collection/immutable/LongMap$Bin;

    .line 309
    sget-object v1, Lscala/collection/immutable/LongMapUtils$;->MODULE$:Lscala/collection/immutable/LongMapUtils$;

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->prefix()J

    move-result-wide v4

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->mask()J

    move-result-wide v6

    move-wide v2, p1

    invoke-virtual/range {v1 .. v7}, Lscala/collection/immutable/LongMapUtils$;->hasMatch(JJJ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 310
    sget-object v1, Lscala/collection/immutable/LongMapUtils$;->MODULE$:Lscala/collection/immutable/LongMapUtils$;

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->mask()J

    move-result-wide v2

    invoke-virtual {v1, p1, p2, v2, v3}, Lscala/collection/immutable/LongMapUtils$;->zero(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v2, Lscala/collection/immutable/LongMapUtils$;->MODULE$:Lscala/collection/immutable/LongMapUtils$;

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->prefix()J

    move-result-wide v3

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->mask()J

    move-result-wide v5

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->left()Lscala/collection/immutable/LongMap;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lscala/collection/immutable/LongMap;->$minus(J)Lscala/collection/immutable/LongMap;

    move-result-object v7

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->right()Lscala/collection/immutable/LongMap;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Lscala/collection/immutable/LongMapUtils$;->bin(JJLscala/collection/immutable/LongMap;Lscala/collection/immutable/LongMap;)Lscala/collection/immutable/LongMap;

    move-result-object p1

    goto :goto_0

    .line 311
    :cond_0
    sget-object v1, Lscala/collection/immutable/LongMapUtils$;->MODULE$:Lscala/collection/immutable/LongMapUtils$;

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->prefix()J

    move-result-wide v2

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->mask()J

    move-result-wide v4

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->left()Lscala/collection/immutable/LongMap;

    move-result-object v6

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->right()Lscala/collection/immutable/LongMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lscala/collection/immutable/LongMap;->$minus(J)Lscala/collection/immutable/LongMap;

    move-result-object p1

    move-object v0, v1

    move-wide v1, v2

    move-wide v3, v4

    move-object v5, v6

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lscala/collection/immutable/LongMapUtils$;->bin(JJLscala/collection/immutable/LongMap;Lscala/collection/immutable/LongMap;)Lscala/collection/immutable/LongMap;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, p0

    goto :goto_0

    .line 312
    :cond_2
    instance-of v0, p0, Lscala/collection/immutable/LongMap$Tip;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Lscala/collection/immutable/LongMap$Tip;

    .line 313
    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Tip;->key()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    sget-object p1, Lscala/collection/immutable/LongMap$Nil$;->MODULE$:Lscala/collection/immutable/LongMap$Nil$;

    goto :goto_0

    .line 315
    :cond_3
    sget-object p1, Lscala/collection/immutable/LongMap$Nil$;->MODULE$:Lscala/collection/immutable/LongMap$Nil$;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lscala/collection/immutable/LongMap$Nil$;->MODULE$:Lscala/collection/immutable/LongMap$Nil$;

    :goto_0
    return-object p1

    .line 307
    :cond_4
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, p0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/GenMap;
    .locals 0

    .line 153
    invoke-virtual {p0, p1}, Lscala/collection/immutable/LongMap;->$plus(Lscala/Tuple2;)Lscala/collection/immutable/LongMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/Map;
    .locals 0

    .line 153
    invoke-virtual {p0, p1}, Lscala/collection/immutable/LongMap;->$plus(Lscala/Tuple2;)Lscala/collection/immutable/LongMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/Map;
    .locals 0

    .line 153
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/immutable/LongMap;->$plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public $plus(Lscala/Tuple2;)Lscala/collection/immutable/LongMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "TS;>;)",
            "Lscala/collection/immutable/LongMap<",
            "TS;>;"
        }
    .end annotation

    .line 266
    invoke-virtual {p1}, Lscala/Tuple2;->_1$mcJ$sp()J

    move-result-wide v0

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lscala/collection/immutable/LongMap;->updated(JLjava/lang/Object;)Lscala/collection/immutable/LongMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/immutable/Map;
    .locals 0

    .line 153
    invoke-virtual {p0, p1}, Lscala/collection/immutable/LongMap;->$plus(Lscala/Tuple2;)Lscala/collection/immutable/LongMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Map;
    .locals 0

    .line 153
    invoke-virtual {p0, p1}, Lscala/collection/immutable/LongMap;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public $plus$plus(Lscala/collection/immutable/LongMap;)Lscala/collection/immutable/LongMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/LongMap<",
            "TS;>;)",
            "Lscala/collection/immutable/LongMap<",
            "TS;>;"
        }
    .end annotation

    .line 419
    new-instance v0, Lscala/collection/immutable/LongMap$$anonfun$$plus$plus$1;

    invoke-direct {v0, p0}, Lscala/collection/immutable/LongMap$$anonfun$$plus$plus$1;-><init>(Lscala/collection/immutable/LongMap;)V

    invoke-virtual {p0, p1, v0}, Lscala/collection/immutable/LongMap;->unionWith(Lscala/collection/immutable/LongMap;Lscala/Function3;)Lscala/collection/immutable/LongMap;

    move-result-object p1

    return-object p1
.end method

.method public final apply(J)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    move-object v0, p0

    .line 260
    :goto_0
    instance-of v1, v0, Lscala/collection/immutable/LongMap$Bin;

    if-eqz v1, :cond_1

    check-cast v0, Lscala/collection/immutable/LongMap$Bin;

    sget-object v1, Lscala/collection/immutable/LongMapUtils$;->MODULE$:Lscala/collection/immutable/LongMapUtils$;

    .line 261
    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->mask()J

    move-result-wide v2

    invoke-virtual {v1, p1, p2, v2, v3}, Lscala/collection/immutable/LongMapUtils$;->zero(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->left()Lscala/collection/immutable/LongMap;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->right()Lscala/collection/immutable/LongMap;

    move-result-object v0

    goto :goto_0

    .line 262
    :cond_1
    instance-of v1, v0, Lscala/collection/immutable/LongMap$Tip;

    if-eqz v1, :cond_3

    check-cast v0, Lscala/collection/immutable/LongMap$Tip;

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Tip;->key()J

    move-result-wide v1

    cmp-long v3, p1, v1

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Tip;->value()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    sget-object p1, Lscala/sys/package$;->MODULE$:Lscala/sys/package$;

    const-string p2, "Key not found"

    invoke-virtual {p1, p2}, Lscala/sys/package$;->error(Ljava/lang/String;)Lscala/runtime/Nothing$;

    move-result-object p1

    throw p1

    .line 263
    :cond_3
    sget-object p1, Lscala/collection/immutable/LongMap$Nil$;->MODULE$:Lscala/collection/immutable/LongMap$Nil$;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lscala/sys/package$;->MODULE$:Lscala/sys/package$;

    const-string p2, "key not found"

    invoke-virtual {p1, p2}, Lscala/sys/package$;->error(Ljava/lang/String;)Lscala/runtime/Nothing$;

    move-result-object p1

    throw p1

    .line 260
    :cond_4
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 153
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lscala/collection/immutable/LongMap;->apply(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic empty()Lscala/collection/Map;
    .locals 1

    .line 153
    invoke-virtual {p0}, Lscala/collection/immutable/LongMap;->empty()Lscala/collection/immutable/LongMap;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/immutable/LongMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/LongMap<",
            "TT;>;"
        }
    .end annotation

    .line 158
    sget-object v0, Lscala/collection/immutable/LongMap$Nil$;->MODULE$:Lscala/collection/immutable/LongMap$Nil$;

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/immutable/Map;
    .locals 1

    .line 153
    invoke-virtual {p0}, Lscala/collection/immutable/LongMap;->empty()Lscala/collection/immutable/LongMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic filter(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 153
    invoke-virtual {p0, p1}, Lscala/collection/immutable/LongMap;->filter(Lscala/Function1;)Lscala/collection/immutable/LongMap;

    move-result-object p1

    return-object p1
.end method

.method public filter(Lscala/Function1;)Lscala/collection/immutable/LongMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "TT;>;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/immutable/LongMap<",
            "TT;>;"
        }
    .end annotation

    .line 223
    instance-of v0, p0, Lscala/collection/immutable/LongMap$Bin;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lscala/collection/immutable/LongMap$Bin;

    .line 225
    new-instance v1, Lscala/Tuple2;

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->left()Lscala/collection/immutable/LongMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Lscala/collection/immutable/LongMap;->filter(Lscala/Function1;)Lscala/collection/immutable/LongMap;

    move-result-object v2

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->right()Lscala/collection/immutable/LongMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Lscala/collection/immutable/LongMap;->filter(Lscala/Function1;)Lscala/collection/immutable/LongMap;

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

    move-object v7, v1

    check-cast v7, Lscala/collection/immutable/LongMap;

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Lscala/collection/immutable/LongMap;

    .line 226
    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->left()Lscala/collection/immutable/LongMap;

    move-result-object p1

    if-ne p1, v7, :cond_0

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->right()Lscala/collection/immutable/LongMap;

    move-result-object p1

    if-ne p1, v8, :cond_0

    :goto_0
    move-object p1, p0

    goto :goto_1

    .line 227
    :cond_0
    sget-object v2, Lscala/collection/immutable/LongMapUtils$;->MODULE$:Lscala/collection/immutable/LongMapUtils$;

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->prefix()J

    move-result-wide v3

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->mask()J

    move-result-wide v5

    invoke-virtual/range {v2 .. v8}, Lscala/collection/immutable/LongMapUtils$;->bin(JJLscala/collection/immutable/LongMap;Lscala/collection/immutable/LongMap;)Lscala/collection/immutable/LongMap;

    move-result-object p1

    goto :goto_1

    .line 229
    :cond_1
    instance-of v0, p0, Lscala/collection/immutable/LongMap$Tip;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Lscala/collection/immutable/LongMap$Tip;

    .line 230
    new-instance v1, Lscala/Tuple2;

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Tip;->key()J

    move-result-wide v2

    invoke-static {v2, v3}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Tip;->value()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 231
    :cond_2
    sget-object p1, Lscala/collection/immutable/LongMap$Nil$;->MODULE$:Lscala/collection/immutable/LongMap$Nil$;

    goto :goto_1

    .line 232
    :cond_3
    sget-object p1, Lscala/collection/immutable/LongMap$Nil$;->MODULE$:Lscala/collection/immutable/LongMap$Nil$;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lscala/collection/immutable/LongMap$Nil$;->MODULE$:Lscala/collection/immutable/LongMap$Nil$;

    :goto_1
    return-object p1

    .line 223
    :cond_4
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, p0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public bridge synthetic filterKeys(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 153
    invoke-virtual {p0, p1}, Lscala/collection/immutable/LongMap;->filterKeys(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic filterKeys(Lscala/Function1;)Lscala/collection/Map;
    .locals 0

    .line 153
    invoke-virtual {p0, p1}, Lscala/collection/immutable/LongMap;->filterKeys(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic filterNot(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 153
    invoke-virtual {p0, p1}, Lscala/collection/immutable/LongMap;->filterNot(Lscala/Function1;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public final firstKey()J
    .locals 2

    move-object v0, p0

    .line 422
    :goto_0
    instance-of v1, v0, Lscala/collection/immutable/LongMap$Bin;

    if-eqz v1, :cond_0

    check-cast v0, Lscala/collection/immutable/LongMap$Bin;

    .line 423
    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->left()Lscala/collection/immutable/LongMap;

    move-result-object v0

    goto :goto_0

    .line 424
    :cond_0
    instance-of v1, v0, Lscala/collection/immutable/LongMap$Tip;

    if-eqz v1, :cond_1

    check-cast v0, Lscala/collection/immutable/LongMap$Tip;

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Tip;->key()J

    move-result-wide v0

    return-wide v0

    .line 425
    :cond_1
    sget-object v1, Lscala/collection/immutable/LongMap$Nil$;->MODULE$:Lscala/collection/immutable/LongMap$Nil$;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lscala/sys/package$;->MODULE$:Lscala/sys/package$;

    const-string v1, "Empty set"

    invoke-virtual {v0, v1}, Lscala/sys/package$;->error(Ljava/lang/String;)Lscala/runtime/Nothing$;

    move-result-object v0

    throw v0

    .line 422
    :cond_2
    new-instance v1, Lscala/MatchError;

    invoke-direct {v1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final foreach(Lscala/Function1;)V
    .locals 4
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

    .line 179
    :goto_0
    instance-of v1, v0, Lscala/collection/immutable/LongMap$Bin;

    if-eqz v1, :cond_0

    check-cast v0, Lscala/collection/immutable/LongMap$Bin;

    .line 180
    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->left()Lscala/collection/immutable/LongMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lscala/collection/immutable/LongMap;->foreach(Lscala/Function1;)V

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->right()Lscala/collection/immutable/LongMap;

    move-result-object v0

    goto :goto_0

    .line 181
    :cond_0
    instance-of v1, v0, Lscala/collection/immutable/LongMap$Tip;

    if-eqz v1, :cond_1

    check-cast v0, Lscala/collection/immutable/LongMap$Tip;

    new-instance v1, Lscala/Tuple2;

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Tip;->key()J

    move-result-wide v2

    invoke-static {v2, v3}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Tip;->value()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_1

    .line 182
    :cond_1
    sget-object p1, Lscala/collection/immutable/LongMap$Nil$;->MODULE$:Lscala/collection/immutable/LongMap$Nil$;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 179
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

    .line 196
    :goto_0
    instance-of v1, v0, Lscala/collection/immutable/LongMap$Bin;

    if-eqz v1, :cond_0

    check-cast v0, Lscala/collection/immutable/LongMap$Bin;

    .line 197
    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->left()Lscala/collection/immutable/LongMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lscala/collection/immutable/LongMap;->foreachKey(Lscala/Function1;)V

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->right()Lscala/collection/immutable/LongMap;

    move-result-object v0

    goto :goto_0

    .line 198
    :cond_0
    instance-of v1, v0, Lscala/collection/immutable/LongMap$Tip;

    if-eqz v1, :cond_1

    check-cast v0, Lscala/collection/immutable/LongMap$Tip;

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Tip;->key()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lscala/Function1;->apply$mcVJ$sp(J)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_1

    .line 199
    :cond_1
    sget-object p1, Lscala/collection/immutable/LongMap$Nil$;->MODULE$:Lscala/collection/immutable/LongMap$Nil$;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 196
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

    .line 213
    :goto_0
    instance-of v1, v0, Lscala/collection/immutable/LongMap$Bin;

    if-eqz v1, :cond_0

    check-cast v0, Lscala/collection/immutable/LongMap$Bin;

    .line 214
    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->left()Lscala/collection/immutable/LongMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lscala/collection/immutable/LongMap;->foreachValue(Lscala/Function1;)V

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->right()Lscala/collection/immutable/LongMap;

    move-result-object v0

    goto :goto_0

    .line 215
    :cond_0
    instance-of v1, v0, Lscala/collection/immutable/LongMap$Tip;

    if-eqz v1, :cond_1

    check-cast v0, Lscala/collection/immutable/LongMap$Tip;

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Tip;->value()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/runtime/BoxedUnit;

    goto :goto_1

    .line 216
    :cond_1
    sget-object p1, Lscala/collection/immutable/LongMap$Nil$;->MODULE$:Lscala/collection/immutable/LongMap$Nil$;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 213
    :goto_1
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-void

    :cond_2
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public final get(J)Lscala/Option;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lscala/Option<",
            "TT;>;"
        }
    .end annotation

    move-object v0, p0

    .line 247
    :goto_0
    instance-of v1, v0, Lscala/collection/immutable/LongMap$Bin;

    if-eqz v1, :cond_1

    check-cast v0, Lscala/collection/immutable/LongMap$Bin;

    sget-object v1, Lscala/collection/immutable/LongMapUtils$;->MODULE$:Lscala/collection/immutable/LongMapUtils$;

    .line 248
    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->mask()J

    move-result-wide v2

    invoke-virtual {v1, p1, p2, v2, v3}, Lscala/collection/immutable/LongMapUtils$;->zero(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->left()Lscala/collection/immutable/LongMap;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->right()Lscala/collection/immutable/LongMap;

    move-result-object v0

    goto :goto_0

    .line 249
    :cond_1
    instance-of v1, v0, Lscala/collection/immutable/LongMap$Tip;

    if-eqz v1, :cond_3

    check-cast v0, Lscala/collection/immutable/LongMap$Tip;

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Tip;->key()J

    move-result-wide v1

    cmp-long v3, p1, v1

    if-nez v3, :cond_2

    new-instance p1, Lscala/Some;

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Tip;->value()Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p1, p2}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_1

    .line 250
    :cond_3
    sget-object p1, Lscala/collection/immutable/LongMap$Nil$;->MODULE$:Lscala/collection/immutable/LongMap$Nil$;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    :goto_1
    return-object p1

    .line 247
    :cond_4
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public final bridge synthetic get(Ljava/lang/Object;)Lscala/Option;
    .locals 2

    .line 153
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lscala/collection/immutable/LongMap;->get(J)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public final getOrElse(JLscala/Function0;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(J",
            "Lscala/Function0<",
            "TS;>;)TS;"
        }
    .end annotation

    move-object v0, p0

    .line 253
    :goto_0
    sget-object v1, Lscala/collection/immutable/LongMap$Nil$;->MODULE$:Lscala/collection/immutable/LongMap$Nil$;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    .line 255
    :cond_0
    instance-of v1, v0, Lscala/collection/immutable/LongMap$Tip;

    if-eqz v1, :cond_2

    check-cast v0, Lscala/collection/immutable/LongMap$Tip;

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Tip;->key()J

    move-result-wide v1

    cmp-long v3, p1, v1

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Tip;->value()Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-interface {p3}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p1

    :goto_1
    return-object p1

    .line 256
    :cond_2
    instance-of v1, v0, Lscala/collection/immutable/LongMap$Bin;

    if-eqz v1, :cond_4

    check-cast v0, Lscala/collection/immutable/LongMap$Bin;

    .line 257
    sget-object v1, Lscala/collection/immutable/LongMapUtils$;->MODULE$:Lscala/collection/immutable/LongMapUtils$;

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->mask()J

    move-result-wide v2

    invoke-virtual {v1, p1, p2, v2, v3}, Lscala/collection/immutable/LongMapUtils$;->zero(JJ)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->left()Lscala/collection/immutable/LongMap;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->right()Lscala/collection/immutable/LongMap;

    move-result-object v0

    goto :goto_0

    .line 253
    :cond_4
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public final bridge synthetic getOrElse(Ljava/lang/Object;Lscala/Function0;)Ljava/lang/Object;
    .locals 2

    .line 153
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lscala/collection/immutable/LongMap;->getOrElse(JLscala/Function0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 153
    invoke-virtual {p0, p1}, Lscala/collection/immutable/LongMap;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public intersection(Lscala/collection/immutable/LongMap;)Lscala/collection/immutable/LongMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/LongMap<",
            "TR;>;)",
            "Lscala/collection/immutable/LongMap<",
            "TT;>;"
        }
    .end annotation

    .line 416
    new-instance v0, Lscala/collection/immutable/LongMap$$anonfun$intersection$1;

    invoke-direct {v0, p0}, Lscala/collection/immutable/LongMap$$anonfun$intersection$1;-><init>(Lscala/collection/immutable/LongMap;)V

    invoke-virtual {p0, p1, v0}, Lscala/collection/immutable/LongMap;->intersectionWith(Lscala/collection/immutable/LongMap;Lscala/Function3;)Lscala/collection/immutable/LongMap;

    move-result-object p1

    return-object p1
.end method

.method public intersectionWith(Lscala/collection/immutable/LongMap;Lscala/Function3;)Lscala/collection/immutable/LongMap;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/LongMap<",
            "TS;>;",
            "Lscala/Function3<",
            "Ljava/lang/Object;",
            "TT;TS;TR;>;)",
            "Lscala/collection/immutable/LongMap<",
            "TR;>;"
        }
    .end annotation

    .line 384
    new-instance v0, Lscala/Tuple2;

    invoke-direct {v0, p0, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 385
    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lscala/collection/immutable/LongMap$Bin;

    if-eqz p1, :cond_6

    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/LongMap$Bin;

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lscala/collection/immutable/LongMap$Bin;

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/LongMap$Bin;

    .line 386
    sget-object v1, Lscala/collection/immutable/LongMapUtils$;->MODULE$:Lscala/collection/immutable/LongMapUtils$;

    invoke-virtual {p1}, Lscala/collection/immutable/LongMap$Bin;->mask()J

    move-result-wide v2

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->mask()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lscala/collection/immutable/LongMapUtils$;->shorter(JJ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 387
    sget-object v2, Lscala/collection/immutable/LongMapUtils$;->MODULE$:Lscala/collection/immutable/LongMapUtils$;

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->prefix()J

    move-result-wide v3

    invoke-virtual {p1}, Lscala/collection/immutable/LongMap$Bin;->prefix()J

    move-result-wide v5

    invoke-virtual {p1}, Lscala/collection/immutable/LongMap$Bin;->mask()J

    move-result-wide v7

    invoke-virtual/range {v2 .. v8}, Lscala/collection/immutable/LongMapUtils$;->hasMatch(JJJ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 388
    sget-object v1, Lscala/collection/immutable/LongMapUtils$;->MODULE$:Lscala/collection/immutable/LongMapUtils$;

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->prefix()J

    move-result-wide v2

    invoke-virtual {p1}, Lscala/collection/immutable/LongMap$Bin;->mask()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lscala/collection/immutable/LongMapUtils$;->zero(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lscala/collection/immutable/LongMap$Bin;->left()Lscala/collection/immutable/LongMap;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lscala/collection/immutable/LongMap;->intersectionWith(Lscala/collection/immutable/LongMap;Lscala/Function3;)Lscala/collection/immutable/LongMap;

    move-result-object p1

    goto/16 :goto_1

    .line 389
    :cond_0
    invoke-virtual {p1}, Lscala/collection/immutable/LongMap$Bin;->right()Lscala/collection/immutable/LongMap;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lscala/collection/immutable/LongMap;->intersectionWith(Lscala/collection/immutable/LongMap;Lscala/Function3;)Lscala/collection/immutable/LongMap;

    move-result-object p1

    goto/16 :goto_1

    .line 387
    :cond_1
    sget-object p1, Lscala/collection/immutable/LongMap$Nil$;->MODULE$:Lscala/collection/immutable/LongMap$Nil$;

    goto/16 :goto_1

    .line 390
    :cond_2
    invoke-virtual {p1}, Lscala/collection/immutable/LongMap$Bin;->mask()J

    move-result-wide v1

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->mask()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_3

    sget-object v6, Lscala/collection/immutable/LongMapUtils$;->MODULE$:Lscala/collection/immutable/LongMapUtils$;

    invoke-virtual {p1}, Lscala/collection/immutable/LongMap$Bin;->prefix()J

    move-result-wide v7

    invoke-virtual {p1}, Lscala/collection/immutable/LongMap$Bin;->mask()J

    move-result-wide v9

    invoke-virtual {p1}, Lscala/collection/immutable/LongMap$Bin;->left()Lscala/collection/immutable/LongMap;

    move-result-object v1

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->left()Lscala/collection/immutable/LongMap;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lscala/collection/immutable/LongMap;->intersectionWith(Lscala/collection/immutable/LongMap;Lscala/Function3;)Lscala/collection/immutable/LongMap;

    move-result-object v11

    invoke-virtual {p1}, Lscala/collection/immutable/LongMap$Bin;->right()Lscala/collection/immutable/LongMap;

    move-result-object p1

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->right()Lscala/collection/immutable/LongMap;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lscala/collection/immutable/LongMap;->intersectionWith(Lscala/collection/immutable/LongMap;Lscala/Function3;)Lscala/collection/immutable/LongMap;

    move-result-object v12

    invoke-virtual/range {v6 .. v12}, Lscala/collection/immutable/LongMapUtils$;->bin(JJLscala/collection/immutable/LongMap;Lscala/collection/immutable/LongMap;)Lscala/collection/immutable/LongMap;

    move-result-object p1

    goto/16 :goto_1

    .line 392
    :cond_3
    sget-object v1, Lscala/collection/immutable/LongMapUtils$;->MODULE$:Lscala/collection/immutable/LongMapUtils$;

    invoke-virtual {p1}, Lscala/collection/immutable/LongMap$Bin;->prefix()J

    move-result-wide v2

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->prefix()J

    move-result-wide v4

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->mask()J

    move-result-wide v6

    invoke-virtual/range {v1 .. v7}, Lscala/collection/immutable/LongMapUtils$;->hasMatch(JJJ)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 393
    sget-object v1, Lscala/collection/immutable/LongMapUtils$;->MODULE$:Lscala/collection/immutable/LongMapUtils$;

    invoke-virtual {p1}, Lscala/collection/immutable/LongMap$Bin;->prefix()J

    move-result-wide v2

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->mask()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lscala/collection/immutable/LongMapUtils$;->zero(JJ)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->left()Lscala/collection/immutable/LongMap;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/LongMap;->intersectionWith(Lscala/collection/immutable/LongMap;Lscala/Function3;)Lscala/collection/immutable/LongMap;

    move-result-object p1

    goto/16 :goto_1

    .line 394
    :cond_4
    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->right()Lscala/collection/immutable/LongMap;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/LongMap;->intersectionWith(Lscala/collection/immutable/LongMap;Lscala/Function3;)Lscala/collection/immutable/LongMap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 392
    :cond_5
    sget-object p1, Lscala/collection/immutable/LongMap$Nil$;->MODULE$:Lscala/collection/immutable/LongMap$Nil$;

    goto/16 :goto_1

    .line 396
    :cond_6
    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lscala/collection/immutable/LongMap$Tip;

    if-eqz p1, :cond_9

    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/LongMap$Tip;

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/LongMap;

    invoke-virtual {p1}, Lscala/collection/immutable/LongMap$Tip;->key()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lscala/collection/immutable/LongMap;->get(J)Lscala/Option;

    move-result-object v0

    .line 397
    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object p1, Lscala/collection/immutable/LongMap$Nil$;->MODULE$:Lscala/collection/immutable/LongMap$Nil$;

    goto/16 :goto_1

    .line 398
    :cond_7
    instance-of v1, v0, Lscala/Some;

    if-eqz v1, :cond_8

    check-cast v0, Lscala/Some;

    new-instance v1, Lscala/collection/immutable/LongMap$Tip;

    invoke-virtual {p1}, Lscala/collection/immutable/LongMap$Tip;->key()J

    move-result-wide v2

    invoke-virtual {p1}, Lscala/collection/immutable/LongMap$Tip;->key()J

    move-result-wide v4

    invoke-static {v4, v5}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1}, Lscala/collection/immutable/LongMap$Tip;->value()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v4, p1, v0}, Lscala/Function3;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Lscala/collection/immutable/LongMap$Tip;-><init>(JLjava/lang/Object;)V

    :goto_0
    move-object p1, v1

    goto :goto_1

    .line 396
    :cond_8
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 400
    :cond_9
    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lscala/collection/immutable/LongMap$Tip;

    if-eqz p1, :cond_c

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/LongMap$Tip;

    invoke-virtual {p1}, Lscala/collection/immutable/LongMap$Tip;->key()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lscala/collection/immutable/LongMap;->get(J)Lscala/Option;

    move-result-object v0

    .line 401
    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object p1, Lscala/collection/immutable/LongMap$Nil$;->MODULE$:Lscala/collection/immutable/LongMap$Nil$;

    goto :goto_1

    .line 402
    :cond_a
    instance-of v1, v0, Lscala/Some;

    if-eqz v1, :cond_b

    check-cast v0, Lscala/Some;

    new-instance v1, Lscala/collection/immutable/LongMap$Tip;

    invoke-virtual {p1}, Lscala/collection/immutable/LongMap$Tip;->key()J

    move-result-wide v2

    invoke-virtual {p1}, Lscala/collection/immutable/LongMap$Tip;->key()J

    move-result-wide v4

    invoke-static {v4, v5}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lscala/collection/immutable/LongMap$Tip;->value()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, v4, v0, p1}, Lscala/Function3;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Lscala/collection/immutable/LongMap$Tip;-><init>(JLjava/lang/Object;)V

    goto :goto_0

    .line 400
    :cond_b
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 404
    :cond_c
    sget-object p1, Lscala/collection/immutable/LongMap$Nil$;->MODULE$:Lscala/collection/immutable/LongMap$Nil$;

    :goto_1
    return-object p1

    :catchall_0
    move-exception p1

    .line 394
    throw p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 221
    sget-object v0, Lscala/collection/immutable/LongMap$Nil$;->MODULE$:Lscala/collection/immutable/LongMap$Nil$;

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

    .line 171
    sget-object v0, Lscala/collection/immutable/LongMap$Nil$;->MODULE$:Lscala/collection/immutable/LongMap$Nil$;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {v0}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object v0

    goto :goto_0

    .line 173
    :cond_0
    new-instance v0, Lscala/collection/immutable/LongMapEntryIterator;

    invoke-direct {v0, p0}, Lscala/collection/immutable/LongMapEntryIterator;-><init>(Lscala/collection/immutable/LongMap;)V

    :goto_0
    return-object v0
.end method

.method public bridge synthetic keySet()Lscala/collection/GenSet;
    .locals 1

    .line 153
    invoke-virtual {p0}, Lscala/collection/immutable/LongMap;->keySet()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Lscala/collection/Set;
    .locals 1

    .line 153
    invoke-virtual {p0}, Lscala/collection/immutable/LongMap;->keySet()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keys()Lscala/collection/GenIterable;
    .locals 1

    .line 153
    invoke-virtual {p0}, Lscala/collection/immutable/LongMap;->keys()Lscala/collection/Iterable;

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

    .line 185
    sget-object v0, Lscala/collection/immutable/LongMap$Nil$;->MODULE$:Lscala/collection/immutable/LongMap$Nil$;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {v0}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object v0

    goto :goto_0

    .line 187
    :cond_0
    new-instance v0, Lscala/collection/immutable/LongMapKeyIterator;

    invoke-direct {v0, p0}, Lscala/collection/immutable/LongMapKeyIterator;-><init>(Lscala/collection/immutable/LongMap;)V

    :goto_0
    return-object v0
.end method

.method public final lastKey()J
    .locals 2

    move-object v0, p0

    .line 429
    :goto_0
    instance-of v1, v0, Lscala/collection/immutable/LongMap$Bin;

    if-eqz v1, :cond_0

    check-cast v0, Lscala/collection/immutable/LongMap$Bin;

    .line 430
    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->right()Lscala/collection/immutable/LongMap;

    move-result-object v0

    goto :goto_0

    .line 431
    :cond_0
    instance-of v1, v0, Lscala/collection/immutable/LongMap$Tip;

    if-eqz v1, :cond_1

    check-cast v0, Lscala/collection/immutable/LongMap$Tip;

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Tip;->key()J

    move-result-wide v0

    return-wide v0

    .line 432
    :cond_1
    sget-object v1, Lscala/collection/immutable/LongMap$Nil$;->MODULE$:Lscala/collection/immutable/LongMap$Nil$;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lscala/sys/package$;->MODULE$:Lscala/sys/package$;

    const-string v1, "Empty set"

    invoke-virtual {v0, v1}, Lscala/sys/package$;->error(Ljava/lang/String;)Lscala/runtime/Nothing$;

    move-result-object v0

    throw v0

    .line 429
    :cond_2
    new-instance v1, Lscala/MatchError;

    invoke-direct {v1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public bridge synthetic mapValues(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 153
    invoke-virtual {p0, p1}, Lscala/collection/immutable/LongMap;->mapValues(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mapValues(Lscala/Function1;)Lscala/collection/Map;
    .locals 0

    .line 153
    invoke-virtual {p0, p1}, Lscala/collection/immutable/LongMap;->mapValues(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public modifyOrRemove(Lscala/Function2;)Lscala/collection/immutable/LongMap;
    .locals 9
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
            "Lscala/collection/immutable/LongMap<",
            "TS;>;"
        }
    .end annotation

    .line 327
    instance-of v0, p0, Lscala/collection/immutable/LongMap$Bin;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lscala/collection/immutable/LongMap$Bin;

    .line 329
    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->left()Lscala/collection/immutable/LongMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lscala/collection/immutable/LongMap;->modifyOrRemove(Lscala/Function2;)Lscala/collection/immutable/LongMap;

    move-result-object v7

    .line 330
    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->right()Lscala/collection/immutable/LongMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lscala/collection/immutable/LongMap;->modifyOrRemove(Lscala/Function2;)Lscala/collection/immutable/LongMap;

    move-result-object v8

    .line 331
    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->left()Lscala/collection/immutable/LongMap;

    move-result-object p1

    if-ne p1, v7, :cond_0

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->right()Lscala/collection/immutable/LongMap;

    move-result-object p1

    if-ne p1, v8, :cond_0

    move-object p1, p0

    goto :goto_1

    .line 332
    :cond_0
    sget-object v2, Lscala/collection/immutable/LongMapUtils$;->MODULE$:Lscala/collection/immutable/LongMapUtils$;

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->prefix()J

    move-result-wide v3

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->mask()J

    move-result-wide v5

    invoke-virtual/range {v2 .. v8}, Lscala/collection/immutable/LongMapUtils$;->bin(JJLscala/collection/immutable/LongMap;Lscala/collection/immutable/LongMap;)Lscala/collection/immutable/LongMap;

    move-result-object p1

    goto :goto_1

    .line 334
    :cond_1
    instance-of v0, p0, Lscala/collection/immutable/LongMap$Tip;

    if-eqz v0, :cond_5

    move-object v0, p0

    check-cast v0, Lscala/collection/immutable/LongMap$Tip;

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Tip;->key()J

    move-result-wide v1

    invoke-static {v1, v2}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Tip;->value()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/Option;

    .line 335
    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p1, Lscala/collection/immutable/LongMap$Nil$;->MODULE$:Lscala/collection/immutable/LongMap$Nil$;

    goto :goto_1

    .line 336
    :cond_2
    instance-of v1, p1, Lscala/Some;

    if-eqz v1, :cond_4

    check-cast p1, Lscala/Some;

    .line 338
    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Tip;->value()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_3

    move-object v1, p0

    goto :goto_0

    .line 339
    :cond_3
    new-instance v1, Lscala/collection/immutable/LongMap$Tip;

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Tip;->key()J

    move-result-wide v2

    invoke-virtual {p1}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Lscala/collection/immutable/LongMap$Tip;-><init>(JLjava/lang/Object;)V

    :goto_0
    move-object p1, v1

    goto :goto_1

    .line 334
    :cond_4
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 341
    :cond_5
    sget-object p1, Lscala/collection/immutable/LongMap$Nil$;->MODULE$:Lscala/collection/immutable/LongMap$Nil$;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lscala/collection/immutable/LongMap$Nil$;->MODULE$:Lscala/collection/immutable/LongMap$Nil$;

    :goto_1
    return-object p1

    .line 327
    :cond_6
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, p0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public bridge synthetic repr()Lscala/collection/generic/Subtractable;
    .locals 1

    .line 153
    invoke-virtual {p0}, Lscala/collection/immutable/LongMap;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/generic/Subtractable;

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Map;
    .locals 1

    .line 153
    invoke-virtual {p0}, Lscala/collection/immutable/LongMap;->seq()Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 2

    .line 241
    sget-object v0, Lscala/collection/immutable/LongMap$Nil$;->MODULE$:Lscala/collection/immutable/LongMap$Nil$;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 243
    :cond_0
    instance-of v0, p0, Lscala/collection/immutable/LongMap$Tip;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 244
    :cond_1
    instance-of v0, p0, Lscala/collection/immutable/LongMap$Bin;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lscala/collection/immutable/LongMap$Bin;

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->left()Lscala/collection/immutable/LongMap;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/immutable/LongMap;->size()I

    move-result v1

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->right()Lscala/collection/immutable/LongMap;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap;->size()I

    move-result v0

    add-int/2addr v0, v1

    :goto_0
    return v0

    .line 241
    :cond_2
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public stringPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "LongMap"

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 153
    invoke-virtual {p0}, Lscala/collection/immutable/LongMap;->thisCollection()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 153
    invoke-virtual {p0, p1}, Lscala/collection/immutable/LongMap;->toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 153
    invoke-virtual {p0}, Lscala/collection/immutable/LongMap;->toIterable()Lscala/collection/Iterable;

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

    .line 161
    new-instance v0, Lscala/collection/mutable/ListBuffer;

    invoke-direct {v0}, Lscala/collection/mutable/ListBuffer;-><init>()V

    .line 162
    new-instance v1, Lscala/collection/immutable/LongMap$$anonfun$toList$1;

    invoke-direct {v1, p0, v0}, Lscala/collection/immutable/LongMap$$anonfun$toList$1;-><init>(Lscala/collection/immutable/LongMap;Lscala/collection/mutable/ListBuffer;)V

    invoke-virtual {p0, v1}, Lscala/collection/immutable/LongMap;->foreach(Lscala/Function1;)V

    .line 163
    invoke-virtual {v0}, Lscala/collection/mutable/ListBuffer;->toList()Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 153
    invoke-virtual {p0}, Lscala/collection/immutable/LongMap;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 153
    invoke-virtual {p0}, Lscala/collection/immutable/LongMap;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lscala/Function2;)Lscala/collection/immutable/LongMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "Ljava/lang/Object;",
            "TT;TS;>;)",
            "Lscala/collection/immutable/LongMap<",
            "TS;>;"
        }
    .end annotation

    .line 235
    instance-of v0, p0, Lscala/collection/immutable/LongMap$Bin;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lscala/collection/immutable/LongMap$Bin;

    .line 236
    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->left()Lscala/collection/immutable/LongMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lscala/collection/immutable/LongMap;->transform(Lscala/Function2;)Lscala/collection/immutable/LongMap;

    move-result-object v1

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Bin;->right()Lscala/collection/immutable/LongMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Lscala/collection/immutable/LongMap;->transform(Lscala/Function2;)Lscala/collection/immutable/LongMap;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lscala/collection/immutable/LongMap$Bin;->bin(Lscala/collection/immutable/LongMap;Lscala/collection/immutable/LongMap;)Lscala/collection/immutable/LongMap;

    move-result-object p1

    goto :goto_0

    .line 237
    :cond_0
    instance-of v0, p0, Lscala/collection/immutable/LongMap$Tip;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lscala/collection/immutable/LongMap$Tip;

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Tip;->key()J

    move-result-wide v1

    invoke-static {v1, v2}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Tip;->value()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/collection/immutable/LongMap$Tip;->withValue(Ljava/lang/Object;)Lscala/collection/immutable/LongMap$Tip;

    move-result-object p1

    goto :goto_0

    .line 238
    :cond_1
    sget-object p1, Lscala/collection/immutable/LongMap$Nil$;->MODULE$:Lscala/collection/immutable/LongMap$Nil$;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lscala/collection/immutable/LongMap$Nil$;->MODULE$:Lscala/collection/immutable/LongMap$Nil$;

    :goto_0
    return-object p1

    .line 235
    :cond_2
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, p0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public unionWith(Lscala/collection/immutable/LongMap;Lscala/Function3;)Lscala/collection/immutable/LongMap;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/LongMap<",
            "TS;>;",
            "Lscala/Function3<",
            "Ljava/lang/Object;",
            "TS;TS;TS;>;)",
            "Lscala/collection/immutable/LongMap<",
            "TS;>;"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p2

    .line 352
    new-instance v1, Lscala/Tuple2;

    move-object/from16 v2, p1

    invoke-direct {v1, v8, v2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 353
    invoke-virtual {v1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lscala/collection/immutable/LongMap$Bin;

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/collection/immutable/LongMap$Bin;

    invoke-virtual {v1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lscala/collection/immutable/LongMap$Bin;

    if-eqz v3, :cond_7

    invoke-virtual {v1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lscala/collection/immutable/LongMap$Bin;

    .line 354
    sget-object v1, Lscala/collection/immutable/LongMapUtils$;->MODULE$:Lscala/collection/immutable/LongMapUtils$;

    invoke-virtual {v2}, Lscala/collection/immutable/LongMap$Bin;->mask()J

    move-result-wide v3

    invoke-virtual {v7}, Lscala/collection/immutable/LongMap$Bin;->mask()J

    move-result-wide v5

    invoke-virtual {v1, v3, v4, v5, v6}, Lscala/collection/immutable/LongMapUtils$;->shorter(JJ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 355
    sget-object v9, Lscala/collection/immutable/LongMapUtils$;->MODULE$:Lscala/collection/immutable/LongMapUtils$;

    invoke-virtual {v7}, Lscala/collection/immutable/LongMap$Bin;->prefix()J

    move-result-wide v10

    invoke-virtual {v2}, Lscala/collection/immutable/LongMap$Bin;->prefix()J

    move-result-wide v12

    invoke-virtual {v2}, Lscala/collection/immutable/LongMap$Bin;->mask()J

    move-result-wide v14

    invoke-virtual/range {v9 .. v15}, Lscala/collection/immutable/LongMapUtils$;->hasMatch(JJJ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 356
    sget-object v1, Lscala/collection/immutable/LongMapUtils$;->MODULE$:Lscala/collection/immutable/LongMapUtils$;

    invoke-virtual {v7}, Lscala/collection/immutable/LongMap$Bin;->prefix()J

    move-result-wide v3

    invoke-virtual {v2}, Lscala/collection/immutable/LongMap$Bin;->mask()J

    move-result-wide v5

    invoke-virtual {v1, v3, v4, v5, v6}, Lscala/collection/immutable/LongMapUtils$;->zero(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lscala/collection/immutable/LongMap$Bin;

    invoke-virtual {v2}, Lscala/collection/immutable/LongMap$Bin;->prefix()J

    move-result-wide v10

    invoke-virtual {v2}, Lscala/collection/immutable/LongMap$Bin;->mask()J

    move-result-wide v12

    invoke-virtual {v2}, Lscala/collection/immutable/LongMap$Bin;->left()Lscala/collection/immutable/LongMap;

    move-result-object v3

    invoke-virtual {v3, v7, v0}, Lscala/collection/immutable/LongMap;->unionWith(Lscala/collection/immutable/LongMap;Lscala/Function3;)Lscala/collection/immutable/LongMap;

    move-result-object v14

    invoke-virtual {v2}, Lscala/collection/immutable/LongMap$Bin;->right()Lscala/collection/immutable/LongMap;

    move-result-object v15

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lscala/collection/immutable/LongMap$Bin;-><init>(JJLscala/collection/immutable/LongMap;Lscala/collection/immutable/LongMap;)V

    goto/16 :goto_0

    .line 357
    :cond_0
    new-instance v1, Lscala/collection/immutable/LongMap$Bin;

    invoke-virtual {v2}, Lscala/collection/immutable/LongMap$Bin;->prefix()J

    move-result-wide v17

    invoke-virtual {v2}, Lscala/collection/immutable/LongMap$Bin;->mask()J

    move-result-wide v19

    invoke-virtual {v2}, Lscala/collection/immutable/LongMap$Bin;->left()Lscala/collection/immutable/LongMap;

    move-result-object v21

    invoke-virtual {v2}, Lscala/collection/immutable/LongMap$Bin;->right()Lscala/collection/immutable/LongMap;

    move-result-object v2

    invoke-virtual {v2, v7, v0}, Lscala/collection/immutable/LongMap;->unionWith(Lscala/collection/immutable/LongMap;Lscala/Function3;)Lscala/collection/immutable/LongMap;

    move-result-object v22

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v22}, Lscala/collection/immutable/LongMap$Bin;-><init>(JJLscala/collection/immutable/LongMap;Lscala/collection/immutable/LongMap;)V

    goto/16 :goto_0

    .line 355
    :cond_1
    sget-object v1, Lscala/collection/immutable/LongMapUtils$;->MODULE$:Lscala/collection/immutable/LongMapUtils$;

    invoke-virtual {v2}, Lscala/collection/immutable/LongMap$Bin;->prefix()J

    move-result-wide v2

    invoke-virtual {v7}, Lscala/collection/immutable/LongMap$Bin;->prefix()J

    move-result-wide v5

    move-object/from16 v4, p0

    invoke-virtual/range {v1 .. v7}, Lscala/collection/immutable/LongMapUtils$;->join(JLscala/collection/immutable/LongMap;JLscala/collection/immutable/LongMap;)Lscala/collection/immutable/LongMap;

    move-result-object v1

    goto/16 :goto_0

    .line 358
    :cond_2
    sget-object v1, Lscala/collection/immutable/LongMapUtils$;->MODULE$:Lscala/collection/immutable/LongMapUtils$;

    invoke-virtual {v7}, Lscala/collection/immutable/LongMap$Bin;->mask()J

    move-result-wide v3

    invoke-virtual {v2}, Lscala/collection/immutable/LongMap$Bin;->mask()J

    move-result-wide v5

    invoke-virtual {v1, v3, v4, v5, v6}, Lscala/collection/immutable/LongMapUtils$;->shorter(JJ)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 359
    sget-object v9, Lscala/collection/immutable/LongMapUtils$;->MODULE$:Lscala/collection/immutable/LongMapUtils$;

    invoke-virtual {v2}, Lscala/collection/immutable/LongMap$Bin;->prefix()J

    move-result-wide v10

    invoke-virtual {v7}, Lscala/collection/immutable/LongMap$Bin;->prefix()J

    move-result-wide v12

    invoke-virtual {v7}, Lscala/collection/immutable/LongMap$Bin;->mask()J

    move-result-wide v14

    invoke-virtual/range {v9 .. v15}, Lscala/collection/immutable/LongMapUtils$;->hasMatch(JJJ)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 360
    sget-object v1, Lscala/collection/immutable/LongMapUtils$;->MODULE$:Lscala/collection/immutable/LongMapUtils$;

    invoke-virtual {v2}, Lscala/collection/immutable/LongMap$Bin;->prefix()J

    move-result-wide v2

    invoke-virtual {v7}, Lscala/collection/immutable/LongMap$Bin;->mask()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lscala/collection/immutable/LongMapUtils$;->zero(JJ)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lscala/collection/immutable/LongMap$Bin;

    invoke-virtual {v7}, Lscala/collection/immutable/LongMap$Bin;->prefix()J

    move-result-wide v10

    invoke-virtual {v7}, Lscala/collection/immutable/LongMap$Bin;->mask()J

    move-result-wide v12

    invoke-virtual {v7}, Lscala/collection/immutable/LongMap$Bin;->left()Lscala/collection/immutable/LongMap;

    move-result-object v2

    invoke-virtual {v8, v2, v0}, Lscala/collection/immutable/LongMap;->unionWith(Lscala/collection/immutable/LongMap;Lscala/Function3;)Lscala/collection/immutable/LongMap;

    move-result-object v14

    invoke-virtual {v7}, Lscala/collection/immutable/LongMap$Bin;->right()Lscala/collection/immutable/LongMap;

    move-result-object v15

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lscala/collection/immutable/LongMap$Bin;-><init>(JJLscala/collection/immutable/LongMap;Lscala/collection/immutable/LongMap;)V

    goto/16 :goto_0

    .line 361
    :cond_3
    new-instance v1, Lscala/collection/immutable/LongMap$Bin;

    invoke-virtual {v7}, Lscala/collection/immutable/LongMap$Bin;->prefix()J

    move-result-wide v17

    invoke-virtual {v7}, Lscala/collection/immutable/LongMap$Bin;->mask()J

    move-result-wide v19

    invoke-virtual {v7}, Lscala/collection/immutable/LongMap$Bin;->left()Lscala/collection/immutable/LongMap;

    move-result-object v21

    invoke-virtual {v7}, Lscala/collection/immutable/LongMap$Bin;->right()Lscala/collection/immutable/LongMap;

    move-result-object v2

    invoke-virtual {v8, v2, v0}, Lscala/collection/immutable/LongMap;->unionWith(Lscala/collection/immutable/LongMap;Lscala/Function3;)Lscala/collection/immutable/LongMap;

    move-result-object v22

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v22}, Lscala/collection/immutable/LongMap$Bin;-><init>(JJLscala/collection/immutable/LongMap;Lscala/collection/immutable/LongMap;)V

    goto/16 :goto_0

    .line 359
    :cond_4
    sget-object v1, Lscala/collection/immutable/LongMapUtils$;->MODULE$:Lscala/collection/immutable/LongMapUtils$;

    invoke-virtual {v2}, Lscala/collection/immutable/LongMap$Bin;->prefix()J

    move-result-wide v2

    invoke-virtual {v7}, Lscala/collection/immutable/LongMap$Bin;->prefix()J

    move-result-wide v5

    move-object/from16 v4, p0

    invoke-virtual/range {v1 .. v7}, Lscala/collection/immutable/LongMapUtils$;->join(JLscala/collection/immutable/LongMap;JLscala/collection/immutable/LongMap;)Lscala/collection/immutable/LongMap;

    move-result-object v1

    goto/16 :goto_0

    .line 364
    :cond_5
    invoke-virtual {v2}, Lscala/collection/immutable/LongMap$Bin;->prefix()J

    move-result-wide v3

    invoke-virtual {v7}, Lscala/collection/immutable/LongMap$Bin;->prefix()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_6

    new-instance v1, Lscala/collection/immutable/LongMap$Bin;

    invoke-virtual {v2}, Lscala/collection/immutable/LongMap$Bin;->prefix()J

    move-result-wide v10

    invoke-virtual {v2}, Lscala/collection/immutable/LongMap$Bin;->mask()J

    move-result-wide v12

    invoke-virtual {v2}, Lscala/collection/immutable/LongMap$Bin;->left()Lscala/collection/immutable/LongMap;

    move-result-object v3

    invoke-virtual {v7}, Lscala/collection/immutable/LongMap$Bin;->left()Lscala/collection/immutable/LongMap;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lscala/collection/immutable/LongMap;->unionWith(Lscala/collection/immutable/LongMap;Lscala/Function3;)Lscala/collection/immutable/LongMap;

    move-result-object v14

    invoke-virtual {v2}, Lscala/collection/immutable/LongMap$Bin;->right()Lscala/collection/immutable/LongMap;

    move-result-object v2

    invoke-virtual {v7}, Lscala/collection/immutable/LongMap$Bin;->right()Lscala/collection/immutable/LongMap;

    move-result-object v3

    :try_start_0
    invoke-virtual {v2, v3, v0}, Lscala/collection/immutable/LongMap;->unionWith(Lscala/collection/immutable/LongMap;Lscala/Function3;)Lscala/collection/immutable/LongMap;

    move-result-object v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lscala/collection/immutable/LongMap$Bin;-><init>(JJLscala/collection/immutable/LongMap;Lscala/collection/immutable/LongMap;)V

    goto/16 :goto_0

    .line 365
    :cond_6
    sget-object v1, Lscala/collection/immutable/LongMapUtils$;->MODULE$:Lscala/collection/immutable/LongMapUtils$;

    invoke-virtual {v2}, Lscala/collection/immutable/LongMap$Bin;->prefix()J

    move-result-wide v2

    invoke-virtual {v7}, Lscala/collection/immutable/LongMap$Bin;->prefix()J

    move-result-wide v5

    move-object/from16 v4, p0

    invoke-virtual/range {v1 .. v7}, Lscala/collection/immutable/LongMapUtils$;->join(JLscala/collection/immutable/LongMap;JLscala/collection/immutable/LongMap;)Lscala/collection/immutable/LongMap;

    move-result-object v1

    goto/16 :goto_0

    .line 367
    :cond_7
    invoke-virtual {v1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lscala/collection/immutable/LongMap$Tip;

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/collection/immutable/LongMap$Tip;

    invoke-virtual {v1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/immutable/LongMap;

    invoke-virtual {v2}, Lscala/collection/immutable/LongMap$Tip;->key()J

    move-result-wide v3

    invoke-virtual {v2}, Lscala/collection/immutable/LongMap$Tip;->value()Ljava/lang/Object;

    move-result-object v5

    new-instance v6, Lscala/collection/immutable/LongMap$$anonfun$unionWith$1;

    invoke-direct {v6, v8, v0, v2}, Lscala/collection/immutable/LongMap$$anonfun$unionWith$1;-><init>(Lscala/collection/immutable/LongMap;Lscala/Function3;Lscala/collection/immutable/LongMap$Tip;)V

    invoke-virtual {v1, v3, v4, v5, v6}, Lscala/collection/immutable/LongMap;->updateWith(JLjava/lang/Object;Lscala/Function2;)Lscala/collection/immutable/LongMap;

    move-result-object v1

    goto :goto_0

    .line 368
    :cond_8
    invoke-virtual {v1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lscala/collection/immutable/LongMap$Tip;

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/collection/immutable/LongMap$Tip;

    invoke-virtual {v1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/immutable/LongMap;

    invoke-virtual {v2}, Lscala/collection/immutable/LongMap$Tip;->key()J

    move-result-wide v3

    invoke-virtual {v2}, Lscala/collection/immutable/LongMap$Tip;->value()Ljava/lang/Object;

    move-result-object v5

    new-instance v6, Lscala/collection/immutable/LongMap$$anonfun$unionWith$2;

    invoke-direct {v6, v8, v0, v2}, Lscala/collection/immutable/LongMap$$anonfun$unionWith$2;-><init>(Lscala/collection/immutable/LongMap;Lscala/Function3;Lscala/collection/immutable/LongMap$Tip;)V

    invoke-virtual {v1, v3, v4, v5, v6}, Lscala/collection/immutable/LongMap;->updateWith(JLjava/lang/Object;Lscala/Function2;)Lscala/collection/immutable/LongMap;

    move-result-object v1

    goto :goto_0

    .line 369
    :cond_9
    sget-object v0, Lscala/collection/immutable/LongMap$Nil$;->MODULE$:Lscala/collection/immutable/LongMap$Nil$;

    invoke-virtual {v1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lscala/collection/immutable/LongMap;

    goto :goto_0

    .line 370
    :cond_a
    sget-object v0, Lscala/collection/immutable/LongMap$Nil$;->MODULE$:Lscala/collection/immutable/LongMap$Nil$;

    invoke-virtual {v1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lscala/collection/immutable/LongMap;

    :goto_0
    return-object v1

    .line 352
    :cond_b
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, v1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 364
    throw v1
.end method

.method public updateWith(JLjava/lang/Object;Lscala/Function2;)Lscala/collection/immutable/LongMap;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(JTS;",
            "Lscala/Function2<",
            "TT;TS;TS;>;)",
            "Lscala/collection/immutable/LongMap<",
            "TS;>;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    .line 296
    instance-of v0, v7, Lscala/collection/immutable/LongMap$Bin;

    if-eqz v0, :cond_2

    move-object v12, v7

    check-cast v12, Lscala/collection/immutable/LongMap$Bin;

    .line 298
    sget-object v0, Lscala/collection/immutable/LongMapUtils$;->MODULE$:Lscala/collection/immutable/LongMapUtils$;

    invoke-virtual {v12}, Lscala/collection/immutable/LongMap$Bin;->prefix()J

    move-result-wide v3

    invoke-virtual {v12}, Lscala/collection/immutable/LongMap$Bin;->mask()J

    move-result-wide v5

    move-wide/from16 v1, p1

    invoke-virtual/range {v0 .. v6}, Lscala/collection/immutable/LongMapUtils$;->hasMatch(JJJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    sget-object v0, Lscala/collection/immutable/LongMapUtils$;->MODULE$:Lscala/collection/immutable/LongMapUtils$;

    invoke-virtual {v12}, Lscala/collection/immutable/LongMap$Bin;->mask()J

    move-result-wide v1

    invoke-virtual {v0, v8, v9, v1, v2}, Lscala/collection/immutable/LongMapUtils$;->zero(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lscala/collection/immutable/LongMap$Bin;

    invoke-virtual {v12}, Lscala/collection/immutable/LongMap$Bin;->prefix()J

    move-result-wide v14

    invoke-virtual {v12}, Lscala/collection/immutable/LongMap$Bin;->mask()J

    move-result-wide v16

    invoke-virtual {v12}, Lscala/collection/immutable/LongMap$Bin;->left()Lscala/collection/immutable/LongMap;

    move-result-object v1

    invoke-virtual {v1, v8, v9, v10, v11}, Lscala/collection/immutable/LongMap;->updateWith(JLjava/lang/Object;Lscala/Function2;)Lscala/collection/immutable/LongMap;

    move-result-object v18

    invoke-virtual {v12}, Lscala/collection/immutable/LongMap$Bin;->right()Lscala/collection/immutable/LongMap;

    move-result-object v19

    move-object v13, v0

    invoke-direct/range {v13 .. v19}, Lscala/collection/immutable/LongMap$Bin;-><init>(JJLscala/collection/immutable/LongMap;Lscala/collection/immutable/LongMap;)V

    goto/16 :goto_0

    .line 300
    :cond_0
    new-instance v0, Lscala/collection/immutable/LongMap$Bin;

    invoke-virtual {v12}, Lscala/collection/immutable/LongMap$Bin;->prefix()J

    move-result-wide v21

    invoke-virtual {v12}, Lscala/collection/immutable/LongMap$Bin;->mask()J

    move-result-wide v23

    invoke-virtual {v12}, Lscala/collection/immutable/LongMap$Bin;->left()Lscala/collection/immutable/LongMap;

    move-result-object v25

    invoke-virtual {v12}, Lscala/collection/immutable/LongMap$Bin;->right()Lscala/collection/immutable/LongMap;

    move-result-object v1

    invoke-virtual {v1, v8, v9, v10, v11}, Lscala/collection/immutable/LongMap;->updateWith(JLjava/lang/Object;Lscala/Function2;)Lscala/collection/immutable/LongMap;

    move-result-object v26

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v26}, Lscala/collection/immutable/LongMap$Bin;-><init>(JJLscala/collection/immutable/LongMap;Lscala/collection/immutable/LongMap;)V

    goto :goto_0

    .line 298
    :cond_1
    sget-object v0, Lscala/collection/immutable/LongMapUtils$;->MODULE$:Lscala/collection/immutable/LongMapUtils$;

    new-instance v3, Lscala/collection/immutable/LongMap$Tip;

    invoke-direct {v3, v8, v9, v10}, Lscala/collection/immutable/LongMap$Tip;-><init>(JLjava/lang/Object;)V

    invoke-virtual {v12}, Lscala/collection/immutable/LongMap$Bin;->prefix()J

    move-result-wide v4

    move-wide/from16 v1, p1

    move-object/from16 v6, p0

    invoke-virtual/range {v0 .. v6}, Lscala/collection/immutable/LongMapUtils$;->join(JLscala/collection/immutable/LongMap;JLscala/collection/immutable/LongMap;)Lscala/collection/immutable/LongMap;

    move-result-object v0

    goto :goto_0

    .line 301
    :cond_2
    instance-of v0, v7, Lscala/collection/immutable/LongMap$Tip;

    if-eqz v0, :cond_4

    move-object v0, v7

    check-cast v0, Lscala/collection/immutable/LongMap$Tip;

    .line 302
    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Tip;->key()J

    move-result-wide v1

    cmp-long v3, v8, v1

    if-nez v3, :cond_3

    new-instance v1, Lscala/collection/immutable/LongMap$Tip;

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Tip;->value()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v11, v0, v10}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v8, v9, v0}, Lscala/collection/immutable/LongMap$Tip;-><init>(JLjava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    .line 303
    :cond_3
    sget-object v1, Lscala/collection/immutable/LongMapUtils$;->MODULE$:Lscala/collection/immutable/LongMapUtils$;

    new-instance v3, Lscala/collection/immutable/LongMap$Tip;

    invoke-direct {v3, v8, v9, v10}, Lscala/collection/immutable/LongMap$Tip;-><init>(JLjava/lang/Object;)V

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Tip;->key()J

    move-result-wide v4

    move-object v0, v1

    move-wide/from16 v1, p1

    move-object/from16 v6, p0

    invoke-virtual/range {v0 .. v6}, Lscala/collection/immutable/LongMapUtils$;->join(JLscala/collection/immutable/LongMap;JLscala/collection/immutable/LongMap;)Lscala/collection/immutable/LongMap;

    move-result-object v0

    goto :goto_0

    .line 304
    :cond_4
    sget-object v0, Lscala/collection/immutable/LongMap$Nil$;->MODULE$:Lscala/collection/immutable/LongMap$Nil$;

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lscala/collection/immutable/LongMap$Tip;

    invoke-direct {v0, v8, v9, v10}, Lscala/collection/immutable/LongMap$Tip;-><init>(JLjava/lang/Object;)V

    :goto_0
    return-object v0

    .line 296
    :cond_5
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, v7}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/GenMap;
    .locals 2

    .line 153
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lscala/collection/immutable/LongMap;->updated(JLjava/lang/Object;)Lscala/collection/immutable/LongMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/Map;
    .locals 2

    .line 153
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lscala/collection/immutable/LongMap;->updated(JLjava/lang/Object;)Lscala/collection/immutable/LongMap;

    move-result-object p1

    return-object p1
.end method

.method public updated(JLjava/lang/Object;)Lscala/collection/immutable/LongMap;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(JTS;)",
            "Lscala/collection/immutable/LongMap<",
            "TS;>;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    move-object/from16 v10, p3

    .line 268
    instance-of v0, v7, Lscala/collection/immutable/LongMap$Bin;

    if-eqz v0, :cond_2

    move-object v11, v7

    check-cast v11, Lscala/collection/immutable/LongMap$Bin;

    .line 270
    sget-object v0, Lscala/collection/immutable/LongMapUtils$;->MODULE$:Lscala/collection/immutable/LongMapUtils$;

    invoke-virtual {v11}, Lscala/collection/immutable/LongMap$Bin;->prefix()J

    move-result-wide v3

    invoke-virtual {v11}, Lscala/collection/immutable/LongMap$Bin;->mask()J

    move-result-wide v5

    move-wide/from16 v1, p1

    invoke-virtual/range {v0 .. v6}, Lscala/collection/immutable/LongMapUtils$;->hasMatch(JJJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    sget-object v0, Lscala/collection/immutable/LongMapUtils$;->MODULE$:Lscala/collection/immutable/LongMapUtils$;

    invoke-virtual {v11}, Lscala/collection/immutable/LongMap$Bin;->mask()J

    move-result-wide v1

    invoke-virtual {v0, v8, v9, v1, v2}, Lscala/collection/immutable/LongMapUtils$;->zero(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lscala/collection/immutable/LongMap$Bin;

    invoke-virtual {v11}, Lscala/collection/immutable/LongMap$Bin;->prefix()J

    move-result-wide v13

    invoke-virtual {v11}, Lscala/collection/immutable/LongMap$Bin;->mask()J

    move-result-wide v15

    invoke-virtual {v11}, Lscala/collection/immutable/LongMap$Bin;->left()Lscala/collection/immutable/LongMap;

    move-result-object v1

    invoke-virtual {v1, v8, v9, v10}, Lscala/collection/immutable/LongMap;->updated(JLjava/lang/Object;)Lscala/collection/immutable/LongMap;

    move-result-object v17

    invoke-virtual {v11}, Lscala/collection/immutable/LongMap$Bin;->right()Lscala/collection/immutable/LongMap;

    move-result-object v18

    move-object v12, v0

    invoke-direct/range {v12 .. v18}, Lscala/collection/immutable/LongMap$Bin;-><init>(JJLscala/collection/immutable/LongMap;Lscala/collection/immutable/LongMap;)V

    goto :goto_0

    .line 272
    :cond_0
    new-instance v0, Lscala/collection/immutable/LongMap$Bin;

    invoke-virtual {v11}, Lscala/collection/immutable/LongMap$Bin;->prefix()J

    move-result-wide v20

    invoke-virtual {v11}, Lscala/collection/immutable/LongMap$Bin;->mask()J

    move-result-wide v22

    invoke-virtual {v11}, Lscala/collection/immutable/LongMap$Bin;->left()Lscala/collection/immutable/LongMap;

    move-result-object v24

    invoke-virtual {v11}, Lscala/collection/immutable/LongMap$Bin;->right()Lscala/collection/immutable/LongMap;

    move-result-object v1

    invoke-virtual {v1, v8, v9, v10}, Lscala/collection/immutable/LongMap;->updated(JLjava/lang/Object;)Lscala/collection/immutable/LongMap;

    move-result-object v25

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v25}, Lscala/collection/immutable/LongMap$Bin;-><init>(JJLscala/collection/immutable/LongMap;Lscala/collection/immutable/LongMap;)V

    goto :goto_0

    .line 270
    :cond_1
    sget-object v0, Lscala/collection/immutable/LongMapUtils$;->MODULE$:Lscala/collection/immutable/LongMapUtils$;

    new-instance v3, Lscala/collection/immutable/LongMap$Tip;

    invoke-direct {v3, v8, v9, v10}, Lscala/collection/immutable/LongMap$Tip;-><init>(JLjava/lang/Object;)V

    invoke-virtual {v11}, Lscala/collection/immutable/LongMap$Bin;->prefix()J

    move-result-wide v4

    move-wide/from16 v1, p1

    move-object/from16 v6, p0

    invoke-virtual/range {v0 .. v6}, Lscala/collection/immutable/LongMapUtils$;->join(JLscala/collection/immutable/LongMap;JLscala/collection/immutable/LongMap;)Lscala/collection/immutable/LongMap;

    move-result-object v0

    goto :goto_0

    .line 273
    :cond_2
    instance-of v0, v7, Lscala/collection/immutable/LongMap$Tip;

    if-eqz v0, :cond_4

    move-object v0, v7

    check-cast v0, Lscala/collection/immutable/LongMap$Tip;

    .line 274
    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Tip;->key()J

    move-result-wide v1

    cmp-long v3, v8, v1

    if-nez v3, :cond_3

    new-instance v0, Lscala/collection/immutable/LongMap$Tip;

    invoke-direct {v0, v8, v9, v10}, Lscala/collection/immutable/LongMap$Tip;-><init>(JLjava/lang/Object;)V

    goto :goto_0

    .line 275
    :cond_3
    sget-object v1, Lscala/collection/immutable/LongMapUtils$;->MODULE$:Lscala/collection/immutable/LongMapUtils$;

    new-instance v3, Lscala/collection/immutable/LongMap$Tip;

    invoke-direct {v3, v8, v9, v10}, Lscala/collection/immutable/LongMap$Tip;-><init>(JLjava/lang/Object;)V

    invoke-virtual {v0}, Lscala/collection/immutable/LongMap$Tip;->key()J

    move-result-wide v4

    move-object v0, v1

    move-wide/from16 v1, p1

    move-object/from16 v6, p0

    invoke-virtual/range {v0 .. v6}, Lscala/collection/immutable/LongMapUtils$;->join(JLscala/collection/immutable/LongMap;JLscala/collection/immutable/LongMap;)Lscala/collection/immutable/LongMap;

    move-result-object v0

    goto :goto_0

    .line 276
    :cond_4
    sget-object v0, Lscala/collection/immutable/LongMap$Nil$;->MODULE$:Lscala/collection/immutable/LongMap$Nil$;

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lscala/collection/immutable/LongMap$Tip;

    invoke-direct {v0, v8, v9, v10}, Lscala/collection/immutable/LongMap$Tip;-><init>(JLjava/lang/Object;)V

    :goto_0
    return-object v0

    .line 268
    :cond_5
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, v7}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/Map;
    .locals 2

    .line 153
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lscala/collection/immutable/LongMap;->updated(JLjava/lang/Object;)Lscala/collection/immutable/LongMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic values()Lscala/collection/GenIterable;
    .locals 1

    .line 153
    invoke-virtual {p0}, Lscala/collection/immutable/LongMap;->values()Lscala/collection/Iterable;

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

    .line 202
    sget-object v0, Lscala/collection/immutable/LongMap$Nil$;->MODULE$:Lscala/collection/immutable/LongMap$Nil$;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {v0}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object v0

    goto :goto_0

    .line 204
    :cond_0
    new-instance v0, Lscala/collection/immutable/LongMapValueIterator;

    invoke-direct {v0, p0}, Lscala/collection/immutable/LongMapValueIterator;-><init>(Lscala/collection/immutable/LongMap;)V

    :goto_0
    return-object v0
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 153
    invoke-virtual {p0}, Lscala/collection/immutable/LongMap;->view()Lscala/collection/IterableView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 153
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/LongMap;->view(II)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method
