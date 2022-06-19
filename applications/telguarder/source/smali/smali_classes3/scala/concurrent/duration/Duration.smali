.class public abstract Lscala/concurrent/duration/Duration;
.super Ljava/lang/Object;
.source "Duration.scala"

# interfaces
.implements Lscala/Serializable;
.implements Lscala/math/Ordered;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/concurrent/duration/Duration$Infinite;,
        Lscala/concurrent/duration/Duration$DurationIsOrdered$;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/Serializable;",
        "Lscala/math/Ordered<",
        "Lscala/concurrent/duration/Duration;",
        ">;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\r=q!B\u0001\u0003\u0011\u0003I\u0011\u0001\u0003#ve\u0006$\u0018n\u001c8\u000b\u0005\r!\u0011\u0001\u00033ve\u0006$\u0018n\u001c8\u000b\u0005\u00151\u0011AC2p]\u000e,(O]3oi*\tq!A\u0003tG\u0006d\u0017m\u0001\u0001\u0011\u0005)YQ\"\u0001\u0002\u0007\u000b1\u0011\u0001\u0012A\u0007\u0003\u0011\u0011+(/\u0019;j_:\u001c2a\u0003\u0008\u0013!\ty\u0001#D\u0001\u0007\u0013\t\tbA\u0001\u0004B]f\u0014VM\u001a\t\u0003\u001fMI!\u0001\u0006\u0004\u0003\u0019M+\'/[1mSj\u000c\'\r\\3\t\u000bYYA\u0011A\u000c\u0002\rqJg.\u001b;?)\u0005I\u0001\"B\r\u000c\t\u0003Q\u0012!B1qa2LH#B\u000e\u0002,\u00065\u0006C\u0001\u0006\u001d\r\u0015a!!!\t\u001e\'\u0011abB\u0005\u0010\u0011\u0007}93D\u0004\u0002!K9\u0011\u0011\u0005J\u0007\u0002E)\u00111\u0005C\u0001\u0007yI|w\u000e\u001e \n\u0003\u001dI!A\n\u0004\u0002\u000fA\u000c7m[1hK&\u0011\u0001&\u000b\u0002\u0008\u001fJ$WM]3e\u0015\t1c\u0001C\u0003\u00179\u0011\u00051\u0006F\u0001\u001c\u0011\u0015iCD\"\u0001/\u0003\u0019aWM\\4uQV\tq\u0006\u0005\u0002\u0010a%\u0011\u0011G\u0002\u0002\u0005\u0019>tw\rC\u000349\u0019\u0005A\'\u0001\u0003v]&$X#A\u001b\u0011\u0005YBdB\u0001\u00068\u0013\t1#!\u0003\u0002:u\tAA+[7f+:LGO\u0003\u0002\'\u0005!)A\u0008\u0008D\u0001]\u00059Ao\u001c(b]>\u001c\u0008\"\u0002 \u001d\r\u0003q\u0013\u0001\u0003;p\u001b&\u001c\'o\\:\t\u000b\u0001cb\u0011\u0001\u0018\u0002\u0011Q|W*\u001b7mSNDQA\u0011\u000f\u0007\u00029\n\u0011\u0002^8TK\u000e|g\u000eZ:\t\u000b\u0011cb\u0011\u0001\u0018\u0002\u0013Q|W*\u001b8vi\u0016\u001c\u0008\"\u0002$\u001d\r\u0003q\u0013a\u0002;p\u0011>,(o\u001d\u0005\u0006\u0011r1\tAL\u0001\u0007i>$\u0015-_:\t\u000b)cb\u0011A&\u0002\rQ|WK\\5u)\tau\n\u0005\u0002\u0010\u001b&\u0011aJ\u0002\u0002\u0007\t>,(\r\\3\t\u000bMJ\u0005\u0019A\u001b\t\u000bEcb\u0011\u0001*\u0002\u000b\u0011\u0002H.^:\u0015\u0005m\u0019\u0006\"\u0002+Q\u0001\u0004Y\u0012!B8uQ\u0016\u0014\u0008\"\u0002,\u001d\r\u00039\u0016A\u0002\u0013nS:,8\u000f\u0006\u0002\u001c1\")A+\u0016a\u00017!)!\u000c\u0008D\u00017\u00061A\u0005^5nKN$\"a\u0007/\t\u000buK\u0006\u0019\u0001\'\u0002\r\u0019\u000c7\r^8s\u0011\u0015yFD\"\u0001a\u0003\u0011!C-\u001b<\u0015\u0005m\t\u0007\"\u00022_\u0001\u0004a\u0015a\u00023jm&\u001cxN\u001d\u0005\u0006?r1\t\u0001\u001a\u000b\u0003\u0019\u0016DQAY2A\u0002mAQa\u001a\u000f\u0007\u0002!\u000cA\"\u001e8bef|F%\\5okN,\u0012a\u0007\u0005\u0006Ur1\ta[\u0001\tSN4\u0015N\\5uKR\tA\u000e\u0005\u0002\u0010[&\u0011aN\u0002\u0002\u0008\u0005>|G.Z1o\u0011\u0015\u0001H\u0004\"\u0001r\u0003\ri\u0017N\u001c\u000b\u00037IDQ\u0001V8A\u0002mAQ\u0001\u001e\u000f\u0005\u0002U\u000c1!\\1y)\tYb\u000fC\u0003Ug\u0002\u00071\u0004C\u0003y9\u0011\u0005\u00110A\u0002eSZ$\"a\u0007>\t\u000b\t<\u0008\u0019\u0001\'\t\u000badB\u0011\u0001?\u0015\u00051k\u0008\"\u0002+|\u0001\u0004Y\u0002BB@\u001d\t\u0003\t\t!\u0001\u0002hiR\u0019A.a\u0001\t\u000bQs\u0008\u0019A\u000e\t\u000f\u0005\u001dA\u0004\"\u0001\u0002\n\u0005!q\r^3r)\ra\u00171\u0002\u0005\u0007)\u0006\u0015\u0001\u0019A\u000e\t\u000f\u0005=A\u0004\"\u0001\u0002\u0012\u0005\u0011A\u000e\u001e\u000b\u0004Y\u0006M\u0001B\u0002+\u0002\u000e\u0001\u00071\u0004C\u0004\u0002\u0018q!\t!!\u0007\u0002\t1$X-\u001d\u000b\u0004Y\u0006m\u0001B\u0002+\u0002\u0016\u0001\u00071\u0004C\u0004\u0002 q!\t!!\t\u0002\u000b5Lg.^:\u0015\u0007m\t\u0019\u0003\u0003\u0004U\u0003;\u0001\ra\u0007\u0005\u0008\u0003OaB\u0011AA\u0015\u0003\riW\u000f\u001c\u000b\u00047\u0005-\u0002BB/\u0002&\u0001\u0007A\n\u0003\u0004\u00020q!\taK\u0001\u0004]\u0016<\u0007bBA\u001a9\u0011\u0005\u0011QG\u0001\u0005a2,8\u000fF\u0002\u001c\u0003oAa\u0001VA\u0019\u0001\u0004Y\u0002BBA\u001e9\u0019\u0005\u0001.\u0001\u0006u_\u000e{\u0017M]:fgRLS\u0001HA \u0003\u0007J1!!\u0011\u0003\u000591\u0015N\\5uK\u0012+(/\u0019;j_:4q!!\u0012\u000c\u0003C\t9E\u0001\u0005J]\u001aLg.\u001b;f\'\r\t\u0019e\u0007\u0005\u0008-\u0005\rC\u0011AA&)\t\ti\u0005\u0005\u0003\u0002P\u0005\rS\"A\u0006\t\u000fE\u000b\u0019\u0005\"\u0001\u0002TQ\u00191$!\u0016\t\rQ\u000b\t\u00061\u0001\u001c\u0011\u001d1\u00161\tC\u0001\u00033\"2aGA.\u0011\u0019!\u0016q\u000ba\u00017!9!,a\u0011\u0005\u0002\u0005}CcA\u000e\u0002b!1Q,!\u0018A\u00021CqaXA\"\t\u0003\t)\u0007F\u0002\u001c\u0003OBaAYA2\u0001\u0004a\u0005bB0\u0002D\u0011\u0005\u00111\u000e\u000b\u0004\u0019\u00065\u0004B\u00022\u0002j\u0001\u00071\u0004\u0003\u0004k\u0003\u0007\")a\u001b\u0005\n\u0003g\n\u0019\u0005)C\u0005\u0003k\nAAZ1jYR!\u0011qOA?!\ry\u0011\u0011P\u0005\u0004\u0003w2!a\u0002(pi\"Lgn\u001a\u0005\t\u0003\u007f\n\t\u00081\u0001\u0002\u0002\u0006!q\u000f[1u!\u0011\t\u0019)!#\u000f\u0007=\t))C\u0002\u0002\u0008\u001a\ta\u0001\u0015:fI\u00164\u0017\u0002BAF\u0003\u001b\u0013aa\u0015;sS:<\'bAAD\r!1Q&a\u0011\u0005\u00069BaaMA\"\t\u000b!\u0004B\u0002\u001f\u0002D\u0011\u0015a\u0006\u0003\u0004?\u0003\u0007\")A\u000c\u0005\u0007\u0001\u0006\rCQ\u0001\u0018\t\r\t\u000b\u0019\u0005\"\u0002/\u0011\u0019!\u00151\tC\u0003]!1a)a\u0011\u0005\u00069Ba\u0001SA\"\t\u000bq\u0003bBA\u001e\u0003\u0007\")\u0001[\u0015\u0005\u0003\u0007\n)KB\u0004\u0002(\u0006\r\u0003!!+\u0003\u001bqbwnY1mA\rD\u0017\u000e\u001c3?\'\u0011\t)+!\u0014\t\u000b5B\u0002\u0019\u0001\'\t\u000bMB\u0002\u0019A\u001b\t\reYA\u0011AAY)\u0019\t\u0019,!.\u00028B\u0019!\"a\u0010\t\r5\ny\u000b1\u00010\u0011\u0019\u0019\u0014q\u0016a\u0001k!1\u0011d\u0003C\u0001\u0003w#b!a-\u0002>\u0006}\u0006BB\u0017\u0002:\u0002\u0007q\u0006C\u00044\u0003s\u0003\r!!!\t\u0011\u0005\r7\u0002)A\u0007\u0003\u000b\u000c\u0001#\\1y!J,7-[:f\t>,(\r\\3\u0010\u0005\u0005\u001d\u0007\u0005C\"A\u0001\u0001\u0001\u0001\u0001\u0001\u0001\t\reYA\u0011AAf)\rY\u0012Q\u001a\u0005\t\u0003\u001f\u000cI\r1\u0001\u0002\u0002\u0006\t1\u000f\u0003\u0005\u0002T.\u0001K\u0011BAk\u0003\u00159xN\u001d3t)\u0011\t9.!<\u0011\r\u0005e\u00171\\Ap\u001d\tyQ%C\u0002\u0002^&\u0012A\u0001T5tiB!\u0011\u0011]Av\u001b\t\t\u0019O\u0003\u0003\u0002f\u0006\u001d\u0018\u0001\u00027b]\u001eT!!!;\u0002\t)\u000cg/Y\u0005\u0005\u0003\u0017\u000b\u0019\u000f\u0003\u0005\u0002P\u0006E\u0007\u0019AAA\u0011!\t\tp\u0003Q\u0005\n\u0005M\u0018\u0001D3ya\u0006tG\rT1cK2\u001cH\u0003BA{\u0003o\u0004RaHAn\u0003\u0003C\u0001\"!?\u0002p\u0002\u0007\u0011\u0011Q\u0001\u0007Y\u0006\u0014W\r\\:\t\u0011\u0005u8\u0002)A\u0005\u0003\u007f\u000ca\u0002^5nKVs\u0017\u000e\u001e\'bE\u0016d7\u000f\u0005\u0004\u0003\u0002\t-!QB\u0007\u0003\u0005\u0007QAA!\u0002\u0003\u0008\u0005I\u0011.\\7vi\u0006\u0014G.\u001a\u0006\u0004\u0005\u00131\u0011AC2pY2,7\r^5p]&!\u0011Q\u001cB\u0002!\u001dy!q\u0002B\n\u0003?L1A!\u0005\u0007\u0005\u0019!V\u000f\u001d7feA!!Q\u0003B\u000f\u001b\t\u00119BC\u0002\u0006\u00053QAAa\u0007\u0002h\u0006!Q\u000f^5m\u0013\rI$q\u0003\u0005\u000b\u0005CY!\u0019!C\t\u0005\t\r\u0012\u0001\u0004;j[\u0016,f.\u001b;OC6,WC\u0001B\u0013!\u001d\t\u0019Ia\n6\u0003\u0003KAA!\u000b\u0002\u000e\n\u0019Q*\u00199\t\u0011\t52\u0002)A\u0005\u0005K\tQ\u0002^5nKVs\u0017\u000e\u001e(b[\u0016\u0004\u0003B\u0003B\u0019\u0017\t\u0007I\u0011\u0003\u0002\u00034\u0005AA/[7f+:LG/\u0006\u0002\u00036A9\u00111\u0011B\u0014\u0003\u0003+\u0004\u0002\u0003B\u001d\u0017\u0001\u0006IA!\u000e\u0002\u0013QLW.Z+oSR\u0004\u0003b\u0002B\u001f\u0017\u0011\u0005!qH\u0001\u0008k:\u000c\u0007\u000f\u001d7z)\u0011\u0011\tE!\u0013\u0011\u000b=\u0011\u0019Ea\u0012\n\u0007\t\u0015cA\u0001\u0004PaRLwN\u001c\t\u0006\u001f\t=q&\u000e\u0005\t\u0003\u001f\u0014Y\u00041\u0001\u0002\u0002\"9!QH\u0006\u0005\u0002\t5C\u0003\u0002B!\u0005\u001fBqA!\u0015\u0003L\u0001\u00071$A\u0001e\u0011\u001d\u0011)f\u0003C\u0001\u0005/\n\u0011B\u001a:p[:\u000bgn\\:\u0015\u0007m\u0011I\u0006C\u0004\u0003\\\tM\u0003\u0019\u0001\'\u0002\u000b9\u000cgn\\:\t\u0011\t}3\u0002)A\u0007\u0005C\n!Bq[t?B,\'o\u00188t\u001f\t\u0011\u0019G\u0008\u0002\u0004Q$A!qM\u0006!\u0002\u001b\u0011I\'A\u0005ng~\u0003XM]0og>\u0011!1\u000e\u0010\u0004\u001f\t\u0003\u0005\u0002\u0003B8\u0017\u0001\u0006iA!\u001d\u0002\u0011M|\u0006/\u001a:`]N|!Aa\u001d\u001f\tmR*\u001a\u0001\u0005\t\u0005oZ\u0001\u0015!\u0004\u0003z\u0005QQ.\u001b8`a\u0016\u0014xL\\:\u0010\u0005\tmd$B\u0007y\u0010b\u0003\u0001\u0002\u0003B@\u0017\u0001\u0006iA!!\u0002\u0011!|\u0006/\u001a:`]N|!Aa!\u001f\r\r1\u0005\u0007/Q\u0001\u0011!\u00119i\u0003Q\u0001\u000e\t%\u0015\u0001\u00033`a\u0016\u0014xL\\:\u0010\u0005\t-eD\u0002(\u0015$?\u0003\u0001\u0001C\u0004\u0003V-!\tAa$\u0015\t\u0005M&\u0011\u0013\u0005\u0008\u00057\u0012i\t1\u00010\u0011%\u0011)j\u0003b\u0001\n\u0003\u00119*\u0001\u0003[KJ|WCAAZ\u0011!\u0011Yj\u0003Q\u0001\n\u0005M\u0016!\u0002.fe>\u0004\u0003\"\u0003BP\u0017\t\u0007I\u0011\u0001BQ\u0003%)f\u000eZ3gS:,G-\u0006\u0002\u0002N!A!QU\u0006!\u0002\u0013\ti%\u0001\u0006V]\u0012,g-\u001b8fI\u0002B\u0011B!+\u000c\u0005\u0004%\tA!)\u0002\u0007%sg\r\u0003\u0005\u0003..\u0001\u000b\u0011BA\'\u0003\u0011IeN\u001a\u0011\t\u0013\tE6B1A\u0005\u0002\t\u0005\u0016\u0001C\'j]V\u001c\u0018J\u001c4\t\u0011\tU6\u0002)A\u0005\u0003\u001b\n\u0011\"T5okNLeN\u001a\u0011\t\u000f\te6\u0002\"\u0001\u0003<\u000611M]3bi\u0016$b!a-\u0003>\n}\u0006BB\u0017\u00038\u0002\u0007q\u0006\u0003\u00044\u0005o\u0003\r!\u000e\u0005\u0008\u0005s[A\u0011\u0001Bb)\u0015Y\"Q\u0019Bd\u0011\u0019i#\u0011\u0019a\u0001\u0019\"11G!1A\u0002UBqA!/\u000c\t\u0003\u0011Y\r\u0006\u0004\u00024\n5\'q\u001a\u0005\u0007[\t%\u0007\u0019A\u0018\t\u000fM\u0012I\r1\u0001\u0002\u0002\"9!\u0011X\u0006\u0005\u0002\tMGcA\u000e\u0003V\"A\u0011q\u001aBi\u0001\u0004\t\tiB\u0004\u0003Z.A\u0019Aa7\u0002#\u0011+(/\u0019;j_:L5o\u0014:eKJ,G\r\u0005\u0003\u0002P\tuga\u0002Bp\u0017!\u0005!\u0011\u001d\u0002\u0012\tV\u0014\u0018\r^5p]&\u001bxJ\u001d3fe\u0016$7C\u0002Bo\u0005G\u0014I\u000f\u0005\u0003\u0002b\n\u0015\u0018\u0002\u0002Bt\u0003G\u0014aa\u00142kK\u000e$\u0008\u0003B\u0010\u0003lnI1A!<*\u0005!y%\u000fZ3sS:<\u0007b\u0002\u000c\u0003^\u0012\u0005!\u0011\u001f\u000b\u0003\u00057D\u0001B!>\u0003^\u0012\u0005!q_\u0001\u0008G>l\u0007/\u0019:f)\u0019\u0011IPa@\u0004\u0004A\u0019qBa?\n\u0007\tuhAA\u0002J]RDqa!\u0001\u0003t\u0002\u00071$A\u0001b\u0011\u001d\u0019)Aa=A\u0002m\t\u0011A\u0019\u0005\u000b\u0007\u0013\u0011i.!A\u0005\n\r-\u0011a\u0003:fC\u0012\u0014Vm]8mm\u0016$\"Aa9\t\u0013\r%1\"!A\u0005\n\r-\u0001"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/math/Ordered$class;->$init$(Lscala/math/Ordered;)V

    return-void
.end method

.method public static Inf()Lscala/concurrent/duration/Duration$Infinite;
    .locals 1

    sget-object v0, Lscala/concurrent/duration/Duration$;->MODULE$:Lscala/concurrent/duration/Duration$;

    invoke-virtual {v0}, Lscala/concurrent/duration/Duration$;->Inf()Lscala/concurrent/duration/Duration$Infinite;

    move-result-object v0

    return-object v0
.end method

.method public static MinusInf()Lscala/concurrent/duration/Duration$Infinite;
    .locals 1

    sget-object v0, Lscala/concurrent/duration/Duration$;->MODULE$:Lscala/concurrent/duration/Duration$;

    invoke-virtual {v0}, Lscala/concurrent/duration/Duration$;->MinusInf()Lscala/concurrent/duration/Duration$Infinite;

    move-result-object v0

    return-object v0
.end method

.method public static Undefined()Lscala/concurrent/duration/Duration$Infinite;
    .locals 1

    sget-object v0, Lscala/concurrent/duration/Duration$;->MODULE$:Lscala/concurrent/duration/Duration$;

    invoke-virtual {v0}, Lscala/concurrent/duration/Duration$;->Undefined()Lscala/concurrent/duration/Duration$Infinite;

    move-result-object v0

    return-object v0
.end method

.method public static Zero()Lscala/concurrent/duration/FiniteDuration;
    .locals 1

    sget-object v0, Lscala/concurrent/duration/Duration$;->MODULE$:Lscala/concurrent/duration/Duration$;

    invoke-virtual {v0}, Lscala/concurrent/duration/Duration$;->Zero()Lscala/concurrent/duration/FiniteDuration;

    move-result-object v0

    return-object v0
.end method

.method public static apply(DLjava/util/concurrent/TimeUnit;)Lscala/concurrent/duration/Duration;
    .locals 1

    sget-object v0, Lscala/concurrent/duration/Duration$;->MODULE$:Lscala/concurrent/duration/Duration$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/concurrent/duration/Duration$;->apply(DLjava/util/concurrent/TimeUnit;)Lscala/concurrent/duration/Duration;

    move-result-object p0

    return-object p0
.end method

.method public static apply(Ljava/lang/String;)Lscala/concurrent/duration/Duration;
    .locals 1

    sget-object v0, Lscala/concurrent/duration/Duration$;->MODULE$:Lscala/concurrent/duration/Duration$;

    invoke-virtual {v0, p0}, Lscala/concurrent/duration/Duration$;->apply(Ljava/lang/String;)Lscala/concurrent/duration/Duration;

    move-result-object p0

    return-object p0
.end method

.method public static apply(JLjava/lang/String;)Lscala/concurrent/duration/FiniteDuration;
    .locals 1

    sget-object v0, Lscala/concurrent/duration/Duration$;->MODULE$:Lscala/concurrent/duration/Duration$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/concurrent/duration/Duration$;->apply(JLjava/lang/String;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object p0

    return-object p0
.end method

.method public static apply(JLjava/util/concurrent/TimeUnit;)Lscala/concurrent/duration/FiniteDuration;
    .locals 1

    sget-object v0, Lscala/concurrent/duration/Duration$;->MODULE$:Lscala/concurrent/duration/Duration$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/concurrent/duration/Duration$;->apply(JLjava/util/concurrent/TimeUnit;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object p0

    return-object p0
.end method

.method public static create(DLjava/util/concurrent/TimeUnit;)Lscala/concurrent/duration/Duration;
    .locals 1

    sget-object v0, Lscala/concurrent/duration/Duration$;->MODULE$:Lscala/concurrent/duration/Duration$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/concurrent/duration/Duration$;->create(DLjava/util/concurrent/TimeUnit;)Lscala/concurrent/duration/Duration;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;)Lscala/concurrent/duration/Duration;
    .locals 1

    sget-object v0, Lscala/concurrent/duration/Duration$;->MODULE$:Lscala/concurrent/duration/Duration$;

    invoke-virtual {v0, p0}, Lscala/concurrent/duration/Duration$;->create(Ljava/lang/String;)Lscala/concurrent/duration/Duration;

    move-result-object p0

    return-object p0
.end method

.method public static create(JLjava/lang/String;)Lscala/concurrent/duration/FiniteDuration;
    .locals 1

    sget-object v0, Lscala/concurrent/duration/Duration$;->MODULE$:Lscala/concurrent/duration/Duration$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/concurrent/duration/Duration$;->create(JLjava/lang/String;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object p0

    return-object p0
.end method

.method public static create(JLjava/util/concurrent/TimeUnit;)Lscala/concurrent/duration/FiniteDuration;
    .locals 1

    sget-object v0, Lscala/concurrent/duration/Duration$;->MODULE$:Lscala/concurrent/duration/Duration$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/concurrent/duration/Duration$;->create(JLjava/util/concurrent/TimeUnit;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object p0

    return-object p0
.end method

.method public static fromNanos(D)Lscala/concurrent/duration/Duration;
    .locals 1

    sget-object v0, Lscala/concurrent/duration/Duration$;->MODULE$:Lscala/concurrent/duration/Duration$;

    invoke-virtual {v0, p0, p1}, Lscala/concurrent/duration/Duration$;->fromNanos(D)Lscala/concurrent/duration/Duration;

    move-result-object p0

    return-object p0
.end method

.method public static fromNanos(J)Lscala/concurrent/duration/FiniteDuration;
    .locals 1

    sget-object v0, Lscala/concurrent/duration/Duration$;->MODULE$:Lscala/concurrent/duration/Duration$;

    invoke-virtual {v0, p0, p1}, Lscala/concurrent/duration/Duration$;->fromNanos(J)Lscala/concurrent/duration/FiniteDuration;

    move-result-object p0

    return-object p0
.end method

.method public static unapply(Ljava/lang/String;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lscala/Option<",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/TimeUnit;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lscala/concurrent/duration/Duration$;->MODULE$:Lscala/concurrent/duration/Duration$;

    invoke-virtual {v0, p0}, Lscala/concurrent/duration/Duration$;->unapply(Ljava/lang/String;)Lscala/Option;

    move-result-object p0

    return-object p0
.end method

.method public static unapply(Lscala/concurrent/duration/Duration;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/duration/Duration;",
            ")",
            "Lscala/Option<",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/TimeUnit;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lscala/concurrent/duration/Duration$;->MODULE$:Lscala/concurrent/duration/Duration$;

    invoke-virtual {v0, p0}, Lscala/concurrent/duration/Duration$;->unapply(Lscala/concurrent/duration/Duration;)Lscala/Option;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract $div(Lscala/concurrent/duration/Duration;)D
.end method

.method public abstract $div(D)Lscala/concurrent/duration/Duration;
.end method

.method public $greater(Ljava/lang/Object;)Z
    .locals 0

    .line 369
    invoke-static {p0, p1}, Lscala/math/Ordered$class;->$greater(Lscala/math/Ordered;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public $greater$eq(Ljava/lang/Object;)Z
    .locals 0

    .line 369
    invoke-static {p0, p1}, Lscala/math/Ordered$class;->$greater$eq(Lscala/math/Ordered;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public $less(Ljava/lang/Object;)Z
    .locals 0

    .line 369
    invoke-static {p0, p1}, Lscala/math/Ordered$class;->$less(Lscala/math/Ordered;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public $less$eq(Ljava/lang/Object;)Z
    .locals 0

    .line 369
    invoke-static {p0, p1}, Lscala/math/Ordered$class;->$less$eq(Lscala/math/Ordered;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public abstract $minus(Lscala/concurrent/duration/Duration;)Lscala/concurrent/duration/Duration;
.end method

.method public abstract $plus(Lscala/concurrent/duration/Duration;)Lscala/concurrent/duration/Duration;
.end method

.method public abstract $times(D)Lscala/concurrent/duration/Duration;
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 369
    invoke-static {p0, p1}, Lscala/math/Ordered$class;->compareTo(Lscala/math/Ordered;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public div(Lscala/concurrent/duration/Duration;)D
    .locals 2

    .line 498
    invoke-virtual {p0, p1}, Lscala/concurrent/duration/Duration;->$div(Lscala/concurrent/duration/Duration;)D

    move-result-wide v0

    return-wide v0
.end method

.method public div(D)Lscala/concurrent/duration/Duration;
    .locals 0

    .line 493
    invoke-virtual {p0, p1, p2}, Lscala/concurrent/duration/Duration;->$div(D)Lscala/concurrent/duration/Duration;

    move-result-object p1

    return-object p1
.end method

.method public gt(Lscala/concurrent/duration/Duration;)Z
    .locals 0

    .line 499
    invoke-virtual {p0, p1}, Lscala/concurrent/duration/Duration;->$greater(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public gteq(Lscala/concurrent/duration/Duration;)Z
    .locals 0

    .line 500
    invoke-virtual {p0, p1}, Lscala/concurrent/duration/Duration;->$greater$eq(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public abstract isFinite()Z
.end method

.method public abstract length()J
.end method

.method public lt(Lscala/concurrent/duration/Duration;)Z
    .locals 0

    .line 501
    invoke-virtual {p0, p1}, Lscala/concurrent/duration/Duration;->$less(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public lteq(Lscala/concurrent/duration/Duration;)Z
    .locals 0

    .line 502
    invoke-virtual {p0, p1}, Lscala/concurrent/duration/Duration;->$less$eq(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public max(Lscala/concurrent/duration/Duration;)Lscala/concurrent/duration/Duration;
    .locals 1

    .line 483
    invoke-virtual {p0, p1}, Lscala/concurrent/duration/Duration;->$greater(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, p0

    :cond_0
    return-object p1
.end method

.method public min(Lscala/concurrent/duration/Duration;)Lscala/concurrent/duration/Duration;
    .locals 1

    .line 479
    invoke-virtual {p0, p1}, Lscala/concurrent/duration/Duration;->$less(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, p0

    :cond_0
    return-object p1
.end method

.method public minus(Lscala/concurrent/duration/Duration;)Lscala/concurrent/duration/Duration;
    .locals 0

    .line 509
    invoke-virtual {p0, p1}, Lscala/concurrent/duration/Duration;->$minus(Lscala/concurrent/duration/Duration;)Lscala/concurrent/duration/Duration;

    move-result-object p1

    return-object p1
.end method

.method public mul(D)Lscala/concurrent/duration/Duration;
    .locals 0

    .line 516
    invoke-virtual {p0, p1, p2}, Lscala/concurrent/duration/Duration;->$times(D)Lscala/concurrent/duration/Duration;

    move-result-object p1

    return-object p1
.end method

.method public neg()Lscala/concurrent/duration/Duration;
    .locals 1

    .line 520
    invoke-virtual {p0}, Lscala/concurrent/duration/Duration;->unary_$minus()Lscala/concurrent/duration/Duration;

    move-result-object v0

    return-object v0
.end method

.method public plus(Lscala/concurrent/duration/Duration;)Lscala/concurrent/duration/Duration;
    .locals 0

    .line 527
    invoke-virtual {p0, p1}, Lscala/concurrent/duration/Duration;->$plus(Lscala/concurrent/duration/Duration;)Lscala/concurrent/duration/Duration;

    move-result-object p1

    return-object p1
.end method

.method public abstract toCoarsest()Lscala/concurrent/duration/Duration;
.end method

.method public abstract toDays()J
.end method

.method public abstract toHours()J
.end method

.method public abstract toMicros()J
.end method

.method public abstract toMillis()J
.end method

.method public abstract toMinutes()J
.end method

.method public abstract toNanos()J
.end method

.method public abstract toSeconds()J
.end method

.method public abstract toUnit(Ljava/util/concurrent/TimeUnit;)D
.end method

.method public abstract unary_$minus()Lscala/concurrent/duration/Duration;
.end method

.method public abstract unit()Ljava/util/concurrent/TimeUnit;
.end method
