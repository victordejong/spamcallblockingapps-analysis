.class public interface abstract Lscala/collection/SeqProxyLike;
.super Ljava/lang/Object;
.source "SeqProxyLike.scala"

# interfaces
.implements Lscala/collection/SeqLike;
.implements Lscala/collection/IterableProxyLike;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "Repr::",
        "Lscala/collection/SeqLike<",
        "TA;TRepr;>;:",
        "Lscala/collection/Seq<",
        "TA;>;>",
        "Ljava/lang/Object;",
        "Lscala/collection/SeqLike<",
        "TA;TRepr;>;",
        "Lscala/collection/IterableProxyLike<",
        "TA;TRepr;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\r}baB\u0001\u0003!\u0003\r\ta\u0002\u0002\r\'\u0016\u000c\u0008K]8ys2K7.\u001a\u0006\u0003\u0007\u0011\t!bY8mY\u0016\u001cG/[8o\u0015\u0005)\u0011!B:dC2\u000c7\u0001A\u000b\u0004\u0011Mi2\u0003\u0002\u0001\n\u001b\u0019\u0002\"AC\u0006\u000e\u0003\u0011I!\u0001\u0004\u0003\u0003\r\u0005s\u0017PU3g!\u0011qq\"\u0005\u000f\u000e\u0003\tI!\u0001\u0005\u0002\u0003\u000fM+\u0017\u000fT5lKB\u0011!c\u0005\u0007\u0001\t\u0019!\u0002\u0001\"b\u0001+\t\t\u0011)\u0005\u0002\u00173A\u0011!bF\u0005\u00031\u0011\u0011qAT8uQ&tw\r\u0005\u0002\u000b5%\u00111\u0004\u0002\u0002\u0004\u0003:L\u0008C\u0001\n\u001e\t\u0019q\u0002\u0001\"b\u0001?\t!!+\u001a9s#\t1\u0002EE\u0002\"\u001b\r2AA\t\u0001\u0001A\taAH]3gS:,W.\u001a8u}A\u0019a\u0002J\t\n\u0005\u0015\u0012!aA*fcB!abJ\t\u001d\u0013\tA#AA\tJi\u0016\u0014\u0018M\u00197f!J|\u00070\u001f\'jW\u0016DQA\u000b\u0001\u0005\u0002-\na\u0001J5oSR$C#\u0001\u0017\u0011\u0005)i\u0013B\u0001\u0018\u0005\u0005\u0011)f.\u001b;\t\u000bA\u0002A\u0011I\u0019\u0002\tML\'0Z\u000b\u0002eA\u0011!bM\u0005\u0003i\u0011\u00111!\u00138u\u0011\u00151\u0004\u0001\"\u00118\u0003\u0015!xnU3r+\u0005\u0019\u0003\"B\u001d\u0001\t\u0003\n\u0014A\u00027f]\u001e$\u0008\u000eC\u0003<\u0001\u0011\u0005C(A\u0003baBd\u0017\u0010\u0006\u0002\u0012{!)aH\u000fa\u0001e\u0005\u0019\u0011\u000e\u001a=\t\u000b\u0001\u0003A\u0011I!\u0002\u001b1,gn\u001a;i\u0007>l\u0007/\u0019:f)\t\u0011$\tC\u0003D\u007f\u0001\u0007!\'A\u0002mK:DQ!\u0012\u0001\u0005B\u0019\u000b1\"[:EK\u001aLg.\u001a3BiR\u0011qI\u0013\t\u0003\u0015!K!!\u0013\u0003\u0003\u000f\t{w\u000e\\3b]\")1\n\u0012a\u0001e\u0005\t\u0001\u0010C\u0003N\u0001\u0011\u0005c*A\u0007tK\u001elWM\u001c;MK:<G\u000f\u001b\u000b\u0004e=#\u0006\"\u0002)M\u0001\u0004\t\u0016!\u00019\u0011\t)\u0011\u0016cR\u0005\u0003\'\u0012\u0011\u0011BR;oGRLwN\\\u0019\t\u000bUc\u0005\u0019\u0001\u001a\u0002\t\u0019\u0014x.\u001c\u0005\u0006/\u0002!\t\u0005W\u0001\raJ,g-\u001b=MK:<G\u000f\u001b\u000b\u0003eeCQ\u0001\u0015,A\u0002ECQa\u0017\u0001\u0005Bq\u000b!\"\u001b8eKb<\u0006.\u001a:f)\t\u0011T\u000cC\u0003Q5\u0002\u0007\u0011\u000bC\u0003\\\u0001\u0011\u0005s\u000cF\u00023A\u0006DQ\u0001\u00150A\u0002ECQ!\u00160A\u0002IBQa\u0019\u0001\u0005B\u0011\u000cq!\u001b8eKb|e-\u0006\u0002fSR\u0011!G\u001a\u0005\u0006O\n\u0004\r\u0001[\u0001\u0005K2,W\u000e\u0005\u0002\u0013S\u0012)!N\u0019b\u0001W\n\t!)\u0005\u0002\u00123!)1\r\u0001C![V\u0011a.\u001d\u000b\u0004e=\u0014\u0008\"B4m\u0001\u0004\u0001\u0008C\u0001\nr\t\u0015QGN1\u0001l\u0011\u0015)F\u000e1\u00013\u0011\u0015!\u0008\u0001\"\u0011v\u0003-a\u0017m\u001d;J]\u0012,\u0007p\u00144\u0016\u0005YLHC\u0001\u001ax\u0011\u001597\u000f1\u0001y!\t\u0011\u0012\u0010B\u0003kg\n\u00071\u000eC\u0003u\u0001\u0011\u000530\u0006\u0002}\u007fR!!\'`A\u0001\u0011\u00159\'\u00101\u0001\u007f!\t\u0011r\u0010B\u0003ku\n\u00071\u000e\u0003\u0004\u0002\u0004i\u0004\rAM\u0001\u0004K:$\u0007bBA\u0004\u0001\u0011\u0005\u0013\u0011B\u0001\u000fY\u0006\u001cH/\u00138eKb<\u0006.\u001a:f)\r\u0011\u00141\u0002\u0005\u0007!\u0006\u0015\u0001\u0019A)\t\u000f\u0005\u001d\u0001\u0001\"\u0011\u0002\u0010Q)!\'!\u0005\u0002\u0014!1\u0001+!\u0004A\u0002ECq!a\u0001\u0002\u000e\u0001\u0007!\u0007C\u0004\u0002\u0018\u0001!\t%!\u0007\u0002\u000fI,g/\u001a:tKV\tA\u0004C\u0004\u0002\u001e\u0001!\t%a\u0008\u0002\u0015I,g/\u001a:tK6\u000b\u0007/\u0006\u0004\u0002\"\u0005u\u0012q\u0005\u000b\u0005\u0003G\ty\u0004\u0006\u0003\u0002&\u0005-\u0002c\u0001\n\u0002(\u00119\u0011\u0011FA\u000e\u0005\u0004)\"\u0001\u0002+iCRD\u0001\"!\u000c\u0002\u001c\u0001\u000f\u0011qF\u0001\u0003E\u001a\u0004\u0012\"!\r\u00028q\tY$!\n\u000e\u0005\u0005M\"bAA\u001b\u0005\u00059q-\u001a8fe&\u001c\u0017\u0002BA\u001d\u0003g\u0011AbQ1o\u0005VLG\u000e\u001a$s_6\u00042AEA\u001f\t\u0019Q\u00171\u0004b\u0001+!A\u0011\u0011IA\u000e\u0001\u0004\t\u0019%A\u0001g!\u0015Q!+EA\u001e\u0011\u001d\t9\u0005\u0001C!\u0003\u0013\nqB]3wKJ\u001cX-\u0013;fe\u0006$xN]\u000b\u0003\u0003\u0017\u0002BADA\'#%\u0019\u0011q\n\u0002\u0003\u0011%#XM]1u_JDq!a\u0015\u0001\t\u0003\n)&\u0001\u0006ti\u0006\u0014Ho],ji\",B!a\u0016\u0002fQ)q)!\u0017\u0002h!A\u00111LA)\u0001\u0004\ti&\u0001\u0003uQ\u0006$\u0008#\u0002\u0008\u0002`\u0005\r\u0014bAA1\u0005\t1q)\u001a8TKF\u00042AEA3\t\u0019Q\u0017\u0011\u000bb\u0001+!9\u0011\u0011NA)\u0001\u0004\u0011\u0014AB8gMN,G\u000fC\u0004\u0002T\u0001!\t%!\u001c\u0016\t\u0005=\u0014q\u000f\u000b\u0004\u000f\u0006E\u0004\u0002CA.\u0003W\u0002\r!a\u001d\u0011\u000b9\ty&!\u001e\u0011\u0007I\t9\u0008\u0002\u0004k\u0003W\u0012\r!\u0006\u0005\u0008\u0003w\u0002A\u0011IA?\u0003!)g\u000eZ:XSRDW\u0003BA@\u0003\u000f#2aRAA\u0011!\tY&!\u001fA\u0002\u0005\r\u0005#\u0002\u0008\u0002`\u0005\u0015\u0005c\u0001\n\u0002\u0008\u00121!.!\u001fC\u0002UAq!a#\u0001\t\u0003\ni)\u0001\u0007j]\u0012,\u0007p\u00144TY&\u001cW-\u0006\u0003\u0002\u0010\u0006]Ec\u0001\u001a\u0002\u0012\"A\u00111LAE\u0001\u0004\t\u0019\nE\u0003\u000f\u0003?\n)\nE\u0002\u0013\u0003/#aA[AE\u0005\u0004Y\u0007bBAF\u0001\u0011\u0005\u00131T\u000b\u0005\u0003;\u000b)\u000bF\u00033\u0003?\u000b9\u000b\u0003\u0005\u0002\\\u0005e\u0005\u0019AAQ!\u0015q\u0011qLAR!\r\u0011\u0012Q\u0015\u0003\u0007U\u0006e%\u0019A6\t\rU\u000bI\n1\u00013\u0011\u001d\tY\u000b\u0001C!\u0003[\u000b\u0001\u0003\\1ti&sG-\u001a=PMNc\u0017nY3\u0016\t\u0005=\u0016q\u0017\u000b\u0004e\u0005E\u0006\u0002CA.\u0003S\u0003\r!a-\u0011\u000b9\ty&!.\u0011\u0007I\t9\u000c\u0002\u0004k\u0003S\u0013\ra\u001b\u0005\u0008\u0003W\u0003A\u0011IA^+\u0011\ti,!2\u0015\u000bI\ny,a2\t\u0011\u0005m\u0013\u0011\u0018a\u0001\u0003\u0003\u0004RADA0\u0003\u0007\u00042AEAc\t\u0019Q\u0017\u0011\u0018b\u0001W\"9\u00111AA]\u0001\u0004\u0011\u0004bBAf\u0001\u0011\u0005\u0013QZ\u0001\u000eG>tG/Y5ogNc\u0017nY3\u0016\t\u0005=\u0017q\u001b\u000b\u0004\u000f\u0006E\u0007\u0002CA.\u0003\u0013\u0004\r!a5\u0011\u000b9\ty&!6\u0011\u0007I\t9\u000e\u0002\u0004k\u0003\u0013\u0014\r!\u0006\u0005\u0008\u00037\u0004A\u0011IAo\u0003!\u0019wN\u001c;bS:\u001cX\u0003BAp\u0003K$2aRAq\u0011\u001d9\u0017\u0011\u001ca\u0001\u0003G\u00042AEAs\t\u001d\t9/!7C\u0002-\u0014!!Q\u0019\t\u000f\u0005-\u0008\u0001\"\u0011\u0002n\u0006)QO\\5p]V1\u0011q^A\u007f\u0003k$B!!=\u0002\u0000R!\u00111_A|!\r\u0011\u0012Q\u001f\u0003\u0008\u0003S\tIO1\u0001\u0016\u0011!\ti#!;A\u0004\u0005e\u0008#CA\u0019\u0003oa\u00121`Az!\r\u0011\u0012Q \u0003\u0007U\u0006%(\u0019A6\t\u0011\u0005m\u0013\u0011\u001ea\u0001\u0005\u0003\u0001RADA0\u0003wDqA!\u0002\u0001\t\u0003\u00129!\u0001\u0003eS\u001a4W\u0003\u0002B\u0005\u0005#!2\u0001\u0008B\u0006\u0011!\tYFa\u0001A\u0002\t5\u0001#\u0002\u0008\u0002`\t=\u0001c\u0001\n\u0003\u0012\u00111!Na\u0001C\u0002-DqA!\u0006\u0001\t\u0003\u00129\"A\u0005j]R,\'o]3diV!!\u0011\u0004B\u0011)\ra\"1\u0004\u0005\t\u00037\u0012\u0019\u00021\u0001\u0003\u001eA)a\"a\u0018\u0003 A\u0019!C!\t\u0005\r)\u0014\u0019B1\u0001l\u0011\u001d\u0011)\u0003\u0001C!\u00033\t\u0001\u0002Z5ti&t7\r\u001e\u0005\u0008\u0005S\u0001A\u0011\tB\u0016\u0003\u0015\u0001\u0018\r^2i+\u0019\u0011iCa\u000f\u00034QA!q\u0006B\u001f\u0005\u007f\u0011\u0019\u0005\u0006\u0003\u00032\tU\u0002c\u0001\n\u00034\u00119\u0011\u0011\u0006B\u0014\u0005\u0004)\u0002\u0002CA\u0017\u0005O\u0001\u001dAa\u000e\u0011\u0013\u0005E\u0012q\u0007\u000f\u0003:\tE\u0002c\u0001\n\u0003<\u00111!Na\nC\u0002-Da!\u0016B\u0014\u0001\u0004\u0011\u0004\u0002\u0003B\u0015\u0005O\u0001\rA!\u0011\u0011\u000b9\tyF!\u000f\t\u000f\t\u0015#q\u0005a\u0001e\u0005A!/\u001a9mC\u000e,G\rC\u0004\u0003J\u0001!\tEa\u0013\u0002\u000fU\u0004H-\u0019;fIV1!Q\nB.\u0005\'\"bAa\u0014\u0003^\t\u0005D\u0003\u0002B)\u0005+\u00022A\u0005B*\t\u001d\tICa\u0012C\u0002UA\u0001\"!\u000c\u0003H\u0001\u000f!q\u000b\t\n\u0003c\t9\u0004\u0008B-\u0005#\u00022A\u0005B.\t\u0019Q\'q\tb\u0001W\"9!q\u000cB$\u0001\u0004\u0011\u0014!B5oI\u0016D\u0008bB4\u0003H\u0001\u0007!\u0011\u000c\u0005\u0008\u0005K\u0002A\u0011\tB4\u0003-!\u0003\u000f\\;tI\r|Gn\u001c8\u0016\r\t%$q\u000fB8)\u0011\u0011YG!\u001f\u0015\t\t5$\u0011\u000f\t\u0004%\t=DaBA\u0015\u0005G\u0012\r!\u0006\u0005\t\u0003[\u0011\u0019\u0007q\u0001\u0003tAI\u0011\u0011GA\u001c9\tU$Q\u000e\t\u0004%\t]DA\u00026\u0003d\t\u00071\u000eC\u0004h\u0005G\u0002\rA!\u001e\t\u000f\tu\u0004\u0001\"\u0011\u0003\u0000\u0005YAeY8m_:$\u0003\u000f\\;t+\u0019\u0011\tIa$\u0003\u0008R!!1\u0011BI)\u0011\u0011)I!#\u0011\u0007I\u00119\tB\u0004\u0002*\tm$\u0019A\u000b\t\u0011\u00055\"1\u0010a\u0002\u0005\u0017\u0003\u0012\"!\r\u00028q\u0011iI!\"\u0011\u0007I\u0011y\t\u0002\u0004k\u0005w\u0012\ra\u001b\u0005\u0008O\nm\u0004\u0019\u0001BG\u0011\u001d\u0011)\n\u0001C!\u0005/\u000bQ\u0001]1e)>,bA!\'\u0003(\n}EC\u0002BN\u0005S\u0013Y\u000b\u0006\u0003\u0003\u001e\n\u0005\u0006c\u0001\n\u0003 \u00129\u0011\u0011\u0006BJ\u0005\u0004)\u0002\u0002CA\u0017\u0005\'\u0003\u001dAa)\u0011\u0013\u0005E\u0012q\u0007\u000f\u0003&\nu\u0005c\u0001\n\u0003(\u00121!Na%C\u0002-Daa\u0011BJ\u0001\u0004\u0011\u0004bB4\u0003\u0014\u0002\u0007!Q\u0015\u0005\u0008\u0005_\u0003A\u0011\tBY\u0003-\u0019wN\u001d:fgB|g\u000eZ:\u0016\t\tM&\u0011\u0019\u000b\u0005\u0005k\u0013\u0019\rF\u0002H\u0005oCq\u0001\u0015BW\u0001\u0004\u0011I\u000cE\u0004\u000b\u0005w\u000b\"qX$\n\u0007\tuFAA\u0005Gk:\u001cG/[8oeA\u0019!C!1\u0005\r)\u0014iK1\u0001\u0016\u0011!\tYF!,A\u0002\t\u0015\u0007#\u0002\u0008\u0002`\t}\u0006b\u0002Be\u0001\u0011\u0005#1Z\u0001\tg>\u0014HoV5uQR\u0019AD!4\t\u0011\t=\'q\u0019a\u0001\u0005#\u000c!\u0001\u001c;\u0011\r)\u0011Y,E\tH\u0011\u001d\u0011)\u000e\u0001C!\u0005/\u000caa]8si\nKX\u0003\u0002Bm\u0005c$BAa7\u0003tR\u0019AD!8\t\u0011\t}\'1\u001ba\u0002\u0005C\u000c1a\u001c:e!\u0019\u0011\u0019O!;\u0003p:\u0019!B!:\n\u0007\t\u001dH!A\u0004qC\u000e\\\u0017mZ3\n\t\t-(Q\u001e\u0002\t\u001fJ$WM]5oO*\u0019!q\u001d\u0003\u0011\u0007I\u0011\t\u0010\u0002\u0004k\u0005\'\u0014\r!\u0006\u0005\t\u0003\u0003\u0012\u0019\u000e1\u0001\u0003vB)!BU\t\u0003p\"9!\u0011 \u0001\u0005B\tm\u0018AB:peR,G-\u0006\u0003\u0003~\u000e\u0015Ac\u0001\u000f\u0003\u0000\"A!q\u001cB|\u0001\u0008\u0019\t\u0001\u0005\u0004\u0003d\n%81\u0001\t\u0004%\r\u0015AA\u00026\u0003x\n\u00071\u000eC\u0004\u0004\n\u0001!\tea\u0003\u0002\u000f%tG-[2fgV\u00111Q\u0002\t\u0005\u0005G\u001cy!\u0003\u0003\u0004\u0012\t5(!\u0002*b]\u001e,\u0007bBB\u000b\u0001\u0011\u00053qC\u0001\u0005m&,w/\u0006\u0002\u0004\u001aI)11D\u0005\u0004 \u0019)!\u0005\u0001\u0001\u0004\u001a%\u00191QC\u0008\u0011\u000b9\u0019\t#\u0005\u000f\n\u0007\r\r\"AA\u0004TKF4\u0016.Z<\t\u000f\rU\u0001\u0001\"\u0011\u0004(Q11qDB\u0015\u0007WAa!VB\u0013\u0001\u0004\u0011\u0004bBB\u0017\u0007K\u0001\rAM\u0001\u0006k:$\u0018\u000e\u001c\u0015\u0008\u0001\rE2qGB\u001e!\rQ11G\u0005\u0004\u0007k!!A\u00033faJ,7-\u0019;fI\u0006\u00121\u0011H\u0001F!J|\u00070_5oO\u0002J7\u000f\t3faJ,7-\u0019;fI\u0002\"W/\u001a\u0011u_\u0002b\u0017mY6!_\u001a\u0004So]3!C:$\u0007eY8na&dWM]\u0017mKZ,G\u000eI:vaB|\'\u000f\u001e\u0018\"\u0005\ru\u0012A\u0002\u001a/cEr\u0003\u0007"
.end annotation


# virtual methods
.method public abstract $colon$plus(Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/collection/generic/CanBuildFrom<",
            "TRepr;TB;TThat;>;)TThat;"
        }
    .end annotation
.end method

.method public abstract $plus$colon(Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/collection/generic/CanBuildFrom<",
            "TRepr;TB;TThat;>;)TThat;"
        }
    .end annotation
.end method

.method public abstract apply(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TA;"
        }
    .end annotation
.end method

.method public abstract contains(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            ">(TA1;)Z"
        }
    .end annotation
.end method

.method public abstract containsSlice(Lscala/collection/GenSeq;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;)Z"
        }
    .end annotation
.end method

.method public abstract corresponds(Lscala/collection/GenSeq;Lscala/Function2;)Z
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
.end method

.method public abstract diff(Lscala/collection/GenSeq;)Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;)TRepr;"
        }
    .end annotation
.end method

.method public abstract distinct()Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRepr;"
        }
    .end annotation
.end method

.method public abstract endsWith(Lscala/collection/GenSeq;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;)Z"
        }
    .end annotation
.end method

.method public abstract indexOf(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;)I"
        }
    .end annotation
.end method

.method public abstract indexOf(Ljava/lang/Object;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;I)I"
        }
    .end annotation
.end method

.method public abstract indexOfSlice(Lscala/collection/GenSeq;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;)I"
        }
    .end annotation
.end method

.method public abstract indexOfSlice(Lscala/collection/GenSeq;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;I)I"
        }
    .end annotation
.end method

.method public abstract indexWhere(Lscala/Function1;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract indexWhere(Lscala/Function1;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation
.end method

.method public abstract indices()Lscala/collection/immutable/Range;
.end method

.method public abstract intersect(Lscala/collection/GenSeq;)Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;)TRepr;"
        }
    .end annotation
.end method

.method public abstract isDefinedAt(I)Z
.end method

.method public abstract lastIndexOf(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;)I"
        }
    .end annotation
.end method

.method public abstract lastIndexOf(Ljava/lang/Object;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;I)I"
        }
    .end annotation
.end method

.method public abstract lastIndexOfSlice(Lscala/collection/GenSeq;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;)I"
        }
    .end annotation
.end method

.method public abstract lastIndexOfSlice(Lscala/collection/GenSeq;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;I)I"
        }
    .end annotation
.end method

.method public abstract lastIndexWhere(Lscala/Function1;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract lastIndexWhere(Lscala/Function1;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation
.end method

.method public abstract length()I
.end method

.method public abstract lengthCompare(I)I
.end method

.method public abstract padTo(ILjava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(ITB;",
            "Lscala/collection/generic/CanBuildFrom<",
            "TRepr;TB;TThat;>;)TThat;"
        }
    .end annotation
.end method

.method public abstract patch(ILscala/collection/GenSeq;ILscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(I",
            "Lscala/collection/GenSeq<",
            "TB;>;I",
            "Lscala/collection/generic/CanBuildFrom<",
            "TRepr;TB;TThat;>;)TThat;"
        }
    .end annotation
.end method

.method public abstract prefixLength(Lscala/Function1;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract reverse()Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRepr;"
        }
    .end annotation
.end method

.method public abstract reverseIterator()Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract reverseMap(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
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
            "TRepr;TB;TThat;>;)TThat;"
        }
    .end annotation
.end method

.method public abstract segmentLength(Lscala/Function1;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation
.end method

.method public abstract size()I
.end method

.method public abstract sortBy(Lscala/Function1;Lscala/math/Ordering;)Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;TB;>;",
            "Lscala/math/Ordering<",
            "TB;>;)TRepr;"
        }
    .end annotation
.end method

.method public abstract sortWith(Lscala/Function2;)Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function2<",
            "TA;TA;",
            "Ljava/lang/Object;",
            ">;)TRepr;"
        }
    .end annotation
.end method

.method public abstract sorted(Lscala/math/Ordering;)Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TB;>;)TRepr;"
        }
    .end annotation
.end method

.method public abstract startsWith(Lscala/collection/GenSeq;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;)Z"
        }
    .end annotation
.end method

.method public abstract startsWith(Lscala/collection/GenSeq;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;I)Z"
        }
    .end annotation
.end method

.method public abstract toSeq()Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract union(Lscala/collection/GenSeq;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "TRepr;TB;TThat;>;)TThat;"
        }
    .end annotation
.end method

.method public abstract updated(ILjava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(ITB;",
            "Lscala/collection/generic/CanBuildFrom<",
            "TRepr;TB;TThat;>;)TThat;"
        }
    .end annotation
.end method

.method public abstract view()Lscala/collection/SeqView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract view(II)Lscala/collection/SeqView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lscala/collection/SeqView<",
            "TA;TRepr;>;"
        }
    .end annotation
.end method
