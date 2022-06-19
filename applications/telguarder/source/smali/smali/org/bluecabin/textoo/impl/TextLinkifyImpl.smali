.class public interface abstract Lorg/bluecabin/textoo/impl/TextLinkifyImpl;
.super Ljava/lang/Object;
.source "TextLinkifyImpl.scala"

# interfaces
.implements Lorg/bluecabin/textoo/impl/ConfiguratorImpl;
.implements Lorg/bluecabin/textoo/TextLinkify;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink$;,
        Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C:",
        "Lorg/bluecabin/textoo/Configurator<",
        "TT;>;:",
        "Lorg/bluecabin/textoo/TextLinkify<",
        "TT;TC;>;>",
        "Ljava/lang/Object;",
        "Lorg/bluecabin/textoo/impl/ConfiguratorImpl<",
        "TT;TC;>;",
        "Lorg/bluecabin/textoo/TextLinkify<",
        "TT;TC;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\t=eaB\u0001\u0003!\u0003\rIa\u0003\u0002\u0010)\u0016DH\u000fT5oW&4\u00170S7qY*\u00111\u0001B\u0001\u0005S6\u0004HN\u0003\u0002\u0006\r\u00051A/\u001a=u_>T!a\u0002\u0005\u0002\u0013\tdW/Z2bE&t\'\"A\u0005\u0002\u0007=\u0014xm\u0001\u0001\u0016\u00071\u0019Be\u0005\u0003\u0001\u001b}Q\u0003c\u0001\u0008\u0010#5\tA!\u0003\u0002\u0011\t\ta1i\u001c8gS\u001e,(/\u0019;peB\u0011!c\u0005\u0007\u0001\t\u0015!\u0002A1\u0001\u0016\u0005\u0005!\u0016C\u0001\u000c\u001d!\t9\"$D\u0001\u0019\u0015\u0005I\u0012!B:dC2\u000c\u0017BA\u000e\u0019\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"aF\u000f\n\u0005yA\"aA!osB!\u0001%I\t$\u001b\u0005\u0011\u0011B\u0001\u0012\u0003\u0005A\u0019uN\u001c4jOV\u0014\u0018\r^8s\u00136\u0004H\u000e\u0005\u0002\u0013I\u0011)Q\u0005\u0001b\u0001M\t\t1)\u0005\u0002\u0017OI\u0019\u0001&\u0004\u0016\u0007\t%\u0002\u0001a\n\u0002\ryI,g-\u001b8f[\u0016tGO\u0010\t\u0005\u001d-\n2%\u0003\u0002-\t\tYA+\u001a=u\u0019&t7.\u001b4z\u0011\u0015q\u0003\u0001\"\u00010\u0003\u0019!\u0013N\\5uIQ\t\u0001\u0007\u0005\u0002\u0018c%\u0011!\u0007\u0007\u0002\u0005+:LG\u000fC\u00035\u0001\u0011\u0015S\'A\nmS:\\\u0017NZ=QQ>tWMT;nE\u0016\u00148\u000fF\u0001$\u0011\u00159\u0004\u0001\"\u00126\u0003Ua\u0017N\\6jMf,U.Y5m\u0003\u0012$\'/Z:tKNDQ!\u000f\u0001\u0005FU\n!\u0002\\5oW&4\u00170\u00117m\u0011\u0015Y\u0004\u0001\"\u00126\u0003Ma\u0017N\\6jMfl\u0015\r]!eIJ,7o]3t\u0011\u0015i\u0004\u0001\"\u00126\u00039a\u0017N\\6jMf<VMY+sYNDQa\u0010\u0001\u0005F\u0001\u000bq\u0001\\5oW&4\u0017\u0010F\u0002$\u00036CQA\u0011 A\u0002\r\u000bq\u0001]1ui\u0016\u0014h\u000e\u0005\u0002E\u00176\tQI\u0003\u0002G\u000f\u0006)!/Z4fq*\u0011\u0001*S\u0001\u0005kRLGNC\u0001K\u0003\u0011Q\u0017M^1\n\u00051+%a\u0002)biR,\'O\u001c\u0005\u0006\u001dz\u0002\raT\u0001\u0007g\u000eDW-\\3\u0011\u0005A\u001bfBA\u000cR\u0013\t\u0011\u0006$\u0001\u0004Qe\u0016$WMZ\u0005\u0003)V\u0013aa\u0015;sS:<\'B\u0001*\u0019\u0011\u0015y\u0004\u0001\"\u0012X)\u0015\u0019\u0003LW.s\u0011\u0015If\u000b1\u0001D\u0003\u0005\u0001\u0008\"\u0002(W\u0001\u0004y\u0005\"\u0002/W\u0001\u0004i\u0016aC7bi\u000eDg)\u001b7uKJ\u0004\"AX8\u000f\u0005}cgB\u00011k\u001d\t\twM\u0004\u0002cK6\t1M\u0003\u0002e\u0015\u00051AH]8pizJ\u0011AZ\u0001\u0008C:$\'o\\5e\u0013\tA\u0017.\u0001\u0003uKb$(\"\u00014\n\u0005![\'B\u00015j\u0013\tig.A\u0004MS:\\\u0017NZ=\u000b\u0005![\u0017B\u00019r\u0005-i\u0015\r^2i\r&dG/\u001a:\u000b\u00055t\u0007\"B:W\u0001\u0004!\u0018a\u0004;sC:\u001chm\u001c:n\r&dG/\u001a:\u0011\u0005y+\u0018B\u0001<r\u0005=!&/\u00198tM>\u0014XNR5mi\u0016\u0014h\u0001\u0002=\u0001\tf\u0014\u0001\"Q;u_2Kgn[\n\u0008ojl\u0018\u0011AA\u0004!\t920\u0003\u0002}1\t1\u0011I\\=SK\u001a\u00042\u0001\t@\u0012\u0013\ty(A\u0001\u0004DQ\u0006tw-\u001a\t\u0004/\u0005\r\u0011bAA\u00031\t9\u0001K]8ek\u000e$\u0008cA\u000c\u0002\n%\u0019\u00111\u0002\r\u0003\u0019M+\'/[1mSj\u000c\'\r\\3\t\u0015\u0005=qO!f\u0001\n\u0003\t\t\"\u0001\u0003nCN\\WCAA\n!\r9\u0012QC\u0005\u0004\u0003/A\"aA%oi\"Q\u00111D<\u0003\u0012\u0003\u0006I!a\u0005\u0002\u000b5\u000c7o\u001b\u0011\t\u000f\u0005}q\u000f\"\u0001\u0002\"\u00051A(\u001b8jiz\"B!a\t\u0002(A\u0019\u0011QE<\u000e\u0003\u0001A\u0001\"a\u0004\u0002\u001e\u0001\u0007\u00111\u0003\u0005\u0008\u0003W9H\u0011BA\u0017\u0003\u0015iWM]4f)!\ty#!\u0014\u0002d\u0005\u001d\u0004#BA\u0019\u0003\u000f\nb\u0002BA\u001a\u0003\u0007rA!!\u000e\u0002B9!\u0011qGA \u001d\u0011\tI$!\u0010\u000f\u0007\t\u000cY$C\u0001\n\u0013\t9\u0001\"\u0003\u0002\u0006\r%\u00111\u0001B\u0005\u0004\u0003\u000b\u0012\u0011AB\"iC:<W-\u0003\u0003\u0002J\u0005-#aC\"iC:<W-U;fk\u0016T1!!\u0012\u0003\u0011!\ty%!\u000bA\u0002\u0005E\u0013a\u00029f]\u0012Lgn\u001a\t\u0006\u0003\'\ni& \u0008\u0005\u0003+\nIFD\u0002c\u0003/J\u0011!G\u0005\u0004\u00037B\u0012a\u00029bG.\u000cw-Z\u0005\u0005\u0003?\n\tGA\u0002TKFT1!a\u0017\u0019\u0011!\t)\'!\u000bA\u0002\u0005M\u0011a\u00028fo6\u000b7o\u001b\u0005\t\u0003S\nI\u00031\u0001\u00020\u0005!Am\u001c8f\u0011\u001d\tig\u001eC!\u0003_\nQ!\u00193e)>$B!a\u000c\u0002r!A\u00111OA6\u0001\u0004\ty#A\u0004dQ\u0006tw-Z:\t\u000f\u0005]t\u000f\"\u0011\u0002z\u0005)\u0011\r\u001d9msR\u0019\u0011#a\u001f\t\r!\u000c)\u00081\u0001\u0012\u0011%\tyh^A\u0001\n\u0003\t\t)\u0001\u0003d_BLH\u0003BA\u0012\u0003\u0007C!\"a\u0004\u0002~A\u0005\t\u0019AA\n\u0011%\t9i^I\u0001\n\u0003\tI)\u0001\u0008d_BLH\u0005Z3gCVdG\u000fJ\u0019\u0016\u0005\u0005-%\u0006BA\n\u0003\u001b[#!a$\u0011\t\u0005E\u00151T\u0007\u0003\u0003\'SA!!&\u0002\u0018\u0006IQO\\2iK\u000e\\W\r\u001a\u0006\u0004\u00033C\u0012AC1o]>$\u0018\r^5p]&!\u0011QTAJ\u0005E)hn\u00195fG.,GMV1sS\u0006t7-\u001a\u0005\n\u0003C;\u0018\u0011!C!\u0003G\u000bQ\u0002\u001d:pIV\u001cG\u000f\u0015:fM&DXCAAS!\u0011\t9+!,\u000e\u0005\u0005%&bAAV\u0013\u0006!A.\u00198h\u0013\r!\u0016\u0011\u0016\u0005\n\u0003c;\u0018\u0011!C\u0001\u0003#\tA\u0002\u001d:pIV\u001cG/\u0011:jifD\u0011\"!.x\u0003\u0003%\t!a.\u0002\u001dA\u0014x\u000eZ;di\u0016cW-\\3oiR\u0019A$!/\t\u0015\u0005m\u00161WA\u0001\u0002\u0004\t\u0019\"A\u0002yIEB\u0011\"a0x\u0003\u0003%\t%!1\u0002\u001fA\u0014x\u000eZ;di&#XM]1u_J,\"!a1\u0011\u000b\u0005\u0015\u00171\u001a\u000f\u000e\u0005\u0005\u001d\'bAAe1\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\n\t\u00055\u0017q\u0019\u0002\t\u0013R,\'/\u0019;pe\"I\u0011\u0011[<\u0002\u0002\u0013\u0005\u00111[\u0001\tG\u0006tW)];bYR!\u0011Q[An!\r9\u0012q[\u0005\u0004\u00033D\"a\u0002\"p_2,\u0017M\u001c\u0005\n\u0003w\u000by-!AA\u0002qA\u0011\"a8x\u0003\u0003%\t%!9\u0002\u0011!\u000c7\u000f[\"pI\u0016$\"!a\u0005\t\u0013\u0005\u0015x/!A\u0005B\u0005\u001d\u0018\u0001\u0003;p\'R\u0014\u0018N\\4\u0015\u0005\u0005\u0015\u0006\"CAvo\u0006\u0005I\u0011IAw\u0003\u0019)\u0017/^1mgR!\u0011Q[Ax\u0011%\tY,!;\u0002\u0002\u0003\u0007AdB\u0005\u0002t\u0002\t\t\u0011#\u0003\u0002v\u0006A\u0011)\u001e;p\u0019&t7\u000e\u0005\u0003\u0002&\u0005]h\u0001\u0003=\u0001\u0003\u0003EI!!?\u0014\r\u0005]\u00181`A\u0004!!\tiPa\u0001\u0002\u0014\u0005\rRBAA\u0000\u0015\r\u0011\t\u0001G\u0001\u0008eVtG/[7f\u0013\u0011\u0011)!a@\u0003#\u0005\u00137\u000f\u001e:bGR4UO\\2uS>t\u0017\u0007\u0003\u0005\u0002 \u0005]H\u0011\u0001B\u0005)\t\t)\u0010\u0003\u0006\u0002f\u0006]\u0018\u0011!C#\u0003OD!\"a\u001e\u0002x\u0006\u0005I\u0011\u0011B\u0008)\u0011\t\u0019C!\u0005\t\u0011\u0005=!Q\u0002a\u0001\u0003\'A!B!\u0006\u0002x\u0006\u0005I\u0011\u0011B\u000c\u0003\u001d)h.\u00199qYf$BA!\u0007\u0003 A)qCa\u0007\u0002\u0014%\u0019!Q\u0004\r\u0003\r=\u0003H/[8o\u0011)\u0011\tCa\u0005\u0002\u0002\u0003\u0007\u00111E\u0001\u0004q\u0012\u0002\u0004B\u0003B\u0013\u0003o\u000c\t\u0011\"\u0003\u0003(\u0005Y!/Z1e%\u0016\u001cx\u000e\u001c<f)\t\u0011I\u0003\u0005\u0003\u0002(\n-\u0012\u0002\u0002B\u0017\u0003S\u0013aa\u00142kK\u000e$\u0008b\u0002B\u0019\u0001\u0011%!1G\u0001\u0010C\u0012$\u0017)\u001e;p\u0019&t7.T1tWR\u00191E!\u000e\t\u0011\u0005=!q\u0006a\u0001\u0003\'AqA!\u000f\u0001\t\u0013\u0011Y$A\u000bqe\u0016\u001cXM\u001d<f\u000bbL7\u000f^5oO2Kgn[:\u0015\t\tu\"q\t\u000b\u0004#\t}\u0002bB \u00038\u0001\u0007!\u0011\t\t\u0006/\t\r\u0013#E\u0005\u0004\u0005\u000bB\"!\u0003$v]\u000e$\u0018n\u001c82\u0011\u0019A\'q\u0007a\u0001#!9!1\n\u0001\u0007\u0012\t5\u0013a\u00037j].Lg-\u001f+fqR$R!\u0005B(\u0005#Ba\u0001\u001bB%\u0001\u0004\t\u0002\u0002CA\u0008\u0005\u0013\u0002\r!a\u0005\t\u000f\t-\u0003A\"\u0005\u0003VQ9\u0011Ca\u0016\u0003Z\tm\u0003B\u00025\u0003T\u0001\u0007\u0011\u0003\u0003\u0004C\u0005\'\u0002\ra\u0011\u0005\u0007\u001d\nM\u0003\u0019A(\t\u000f\t-\u0003A\"\u0005\u0003`QY\u0011C!\u0019\u0003d\t\u0015$q\rB8\u0011\u0019A\'Q\u000ca\u0001#!1!I!\u0018A\u0002\rCaA\u0014B/\u0001\u0004y\u0005b\u0002/\u0003^\u0001\u0007!\u0011\u000e\t\u0004\u0005Wzgb\u0001B7Y6\ta\u000eC\u0004t\u0005;\u0002\rA!\u001d\u0011\u0007\t-T\u000fC\u0004\u0003v\u00011\tBa\u001e\u0002\u0015\u001d,Go\u00159b]:,G\r\u0006\u0003\u0003z\t\u0005\u0005\u0003\u0002B>\u0005{j\u0011a[\u0005\u0004\u0005\u007fZ\'aB*qC:tW\r\u001a\u0005\u0007Q\nM\u0004\u0019A\t\t\u000f\t\u0015\u0005A\"\u0005\u0003\u0008\u0006Q1/\u001a;Ta\u0006tg.\u001a3\u0015\u000bE\u0011IIa#\t\r!\u0014\u0019\t1\u0001\u0012\u0011!\u0011iIa!A\u0002\te\u0014aB:qC:tW\r\u001a"
.end annotation


# virtual methods
.method public abstract getSpanned(Ljava/lang/Object;)Landroid/text/Spanned;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/text/Spanned;"
        }
    .end annotation
.end method

.method public abstract linkify(Ljava/util/regex/Pattern;Ljava/lang/String;)Lorg/bluecabin/textoo/Configurator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/String;",
            ")TC;"
        }
    .end annotation
.end method

.method public abstract linkify(Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Lorg/bluecabin/textoo/Configurator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/String;",
            "Landroid/text/util/Linkify$MatchFilter;",
            "Landroid/text/util/Linkify$TransformFilter;",
            ")TC;"
        }
    .end annotation
.end method

.method public abstract linkifyAll()Lorg/bluecabin/textoo/Configurator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation
.end method

.method public abstract linkifyEmailAddresses()Lorg/bluecabin/textoo/Configurator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation
.end method

.method public abstract linkifyMapAddresses()Lorg/bluecabin/textoo/Configurator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation
.end method

.method public abstract linkifyPhoneNumbers()Lorg/bluecabin/textoo/Configurator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation
.end method

.method public abstract linkifyText(Ljava/lang/Object;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)TT;"
        }
    .end annotation
.end method

.method public abstract linkifyText(Ljava/lang/Object;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract linkifyText(Ljava/lang/Object;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/String;",
            "Landroid/text/util/Linkify$MatchFilter;",
            "Landroid/text/util/Linkify$TransformFilter;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract linkifyWebUrls()Lorg/bluecabin/textoo/Configurator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation
.end method

.method public abstract org$bluecabin$textoo$impl$TextLinkifyImpl$$AutoLink()Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink$;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bluecabin/textoo/impl/TextLinkifyImpl<",
            "TT;TC;>.Auto",
            "Link$;"
        }
    .end annotation
.end method

.method public abstract setSpanned(Ljava/lang/Object;Landroid/text/Spanned;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/text/Spanned;",
            ")TT;"
        }
    .end annotation
.end method
