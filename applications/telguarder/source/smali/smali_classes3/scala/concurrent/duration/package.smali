.class public final Lscala/concurrent/duration/package;
.super Ljava/lang/Object;
.source "package.scala"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/concurrent/duration/package$span$;,
        Lscala/concurrent/duration/package$fromNow$;,
        Lscala/concurrent/duration/package$IntMult;,
        Lscala/concurrent/duration/package$IntMult$;,
        Lscala/concurrent/duration/package$LongMult;,
        Lscala/concurrent/duration/package$LongMult$;,
        Lscala/concurrent/duration/package$DoubleMult;,
        Lscala/concurrent/duration/package$DoubleMult$;,
        Lscala/concurrent/duration/package$DurationInt;,
        Lscala/concurrent/duration/package$DurationInt$;,
        Lscala/concurrent/duration/package$DurationLong;,
        Lscala/concurrent/duration/package$DurationLong$;,
        Lscala/concurrent/duration/package$DurationDouble;,
        Lscala/concurrent/duration/package$DurationDouble$;
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\r\u0015t!B\u0001\u0003\u0011\u0003I\u0011a\u00029bG.\u000cw-\u001a\u0006\u0003\u0007\u0011\t\u0001\u0002Z;sCRLwN\u001c\u0006\u0003\u000b\u0019\t!bY8oGV\u0014(/\u001a8u\u0015\u00059\u0011!B:dC2\u000c7\u0001\u0001\t\u0003\u0015-i\u0011A\u0001\u0004\u0006\u0019\tA\t!\u0004\u0002\u0008a\u0006\u001c7.Y4f\'\tYa\u0002\u0005\u0002\u0010!5\ta!\u0003\u0002\u0012\r\t1\u0011I\\=SK\u001aDQaE\u0006\u0005\u0002Q\ta\u0001P5oSRtD#A\u0005\u0008\u000bYY\u0001\u0012A\u000c\u0002\tM\u0004\u0018M\u001c\t\u00031ei\u0011a\u0003\u0004\u00065-A\ta\u0007\u0002\u0005gB\u000cgn\u0005\u0002\u001a\u001d!)1#\u0007C\u0001;Q\tqcB\u0003 \u0017!\u0005\u0001%A\u0004ge>lgj\\<\u0011\u0005a\tc!\u0002\u0012\u000c\u0011\u0003\u0019#a\u00024s_6tun^\n\u0003C9AQaE\u0011\u0005\u0002\u0015\"\u0012\u0001I\u0003\u0005O-\u0001\u0001F\u0001\u0005US6,WK\\5u!\tIs&D\u0001+\u0015\t)1F\u0003\u0002-[\u0005!Q\u000f^5m\u0015\u0005q\u0013\u0001\u00026bm\u0006L!a\n\u0016\t\u000fEZ!\u0019!C\u0003e\u0005!A)Q-T+\u0005\u0019t\"\u0001\u001b%\u0003UJ!!\r\u001c\u000b\u0005]R\u0013\u0001\u0003+j[\u0016,f.\u001b;\t\reZ\u0001\u0015!\u00044\u0003\u0015!\u0015)W*!\u0011\u001dY4B1A\u0005\u0006q\nQ\u0001S(V%N+\u0012!P\u0008\u0002}\u0011\nq(\u0003\u0002<m!1\u0011i\u0003Q\u0001\u000eu\na\u0001S(V%N\u0003\u0003bB\"\u000c\u0005\u0004%)\u0001R\u0001\r\u001b&\u001b%kT*F\u0007>sEiU\u000b\u0002\u000b>\ta\tJ\u0001H\u0013\t\u0019e\u0007\u0003\u0004J\u0017\u0001\u0006i!R\u0001\u000e\u001b&\u001b%kT*F\u0007>sEi\u0015\u0011\t\u000f-[!\u0019!C\u0003\u0019\u0006aQ*\u0013\'M\u0013N+5i\u0014(E\'V\tQjD\u0001OI\u0005y\u0015BA&7\u0011\u0019\t6\u0002)A\u0007\u001b\u0006iQ*\u0013\'M\u0013N+5i\u0014(E\'\u0002BqaU\u0006C\u0002\u0013\u0015A+A\u0004N\u0013:+F+R*\u0016\u0003U{\u0011A\u0016\u0013\u0002/&\u00111K\u000e\u0005\u00073.\u0001\u000bQB+\u0002\u00115Ke*\u0016+F\'\u0002BqaW\u0006C\u0002\u0013\u0015A,A\u0006O\u0003:{5+R\"P\u001d\u0012\u001bV#A/\u0010\u0003y#\u0013aX\u0005\u00037ZBa!Y\u0006!\u0002\u001bi\u0016\u0001\u0004(B\u001d>\u001bViQ(O\tN\u0003\u0003bB2\u000c\u0005\u0004%)\u0001Z\u0001\u0008\'\u0016\u001buJ\u0014#T+\u0005)w\"\u00014%\u0003\u001dL!a\u0019\u001c\t\r%\\\u0001\u0015!\u0004f\u0003!\u0019ViQ(O\tN\u0003\u0003\"B6\u000c\t\u0007a\u0017!\u00059bSJLe\u000e\u001e+p\tV\u0014\u0018\r^5p]R\u0011Q\u000e\u001d\t\u0003\u00159L!a\u001c\u0002\u0003\u0011\u0011+(/\u0019;j_:DQ!\u001d6A\u0002I\u000c\u0011\u0001\u001d\t\u0005\u001fM,\u00080\u0003\u0002u\r\t1A+\u001e9mKJ\u0002\"a\u0004<\n\u0005]4!aA%oiB\u0011\u0001D\n\u0005\u0006u.!\u0019a_\u0001\u0013a\u0006L\'\u000fT8oOR{G)\u001e:bi&|g\u000e\u0006\u0002}\u007fB\u0011!\"`\u0005\u0003}\n\u0011aBR5oSR,G)\u001e:bi&|g\u000e\u0003\u0004rs\u0002\u0007\u0011\u0011\u0001\t\u0006\u001fM\u000c\u0019\u0001\u001f\t\u0004\u001f\u0005\u0015\u0011bAA\u0004\r\t!Aj\u001c8h\u0011\u001d\tYa\u0003C\u0002\u0003\u001b\ta\u0002Z;sCRLwN\u001c+p!\u0006L\'\u000f\u0006\u0003\u0002\u0002\u0005=\u0001bBA\t\u0003\u0013\u0001\r!\\\u0001\u0002I\u001a1\u0011QC\u0006\u0004\u0003/\u00111\u0002R;sCRLwN\\%oiN1\u00111CA\r\u0003?\u00012aDA\u000e\u0013\r\tiB\u0002\u0002\u0007\u0003:Lh+\u00197\u0011\u0007)\t\t#C\u0002\u0002$\t\u00111\u0003R;sCRLwN\\\"p]Z,\'o]5p]NDq\"a\n\u0002\u0014\u0011\u0005\tQ!BC\u0002\u0013%\u0011\u0011F\u0001)g\u000e\u000cG.\u0019\u0013d_:\u001cWO\u001d:f]R$C-\u001e:bi&|g\u000e\n#ve\u0006$\u0018n\u001c8J]R$CE\\\u000b\u0002k\"Y\u0011QFA\n\u0005\u000b\u0005\t\u0015!\u0003v\u0003%\u001a8-\u00197bI\r|gnY;se\u0016tG\u000f\n3ve\u0006$\u0018n\u001c8%\tV\u0014\u0018\r^5p]&sG\u000f\n\u0013oA!91#a\u0005\u0005\u0002\u0005EB\u0003BA\u001a\u0003k\u00012\u0001GA\n\u0011\u001d\t9$a\u000cA\u0002U\u000c\u0011A\u001c\u0005\t\u0003w\t\u0019\u0002\"\u0015\u0002>\u0005QA-\u001e:bi&|g.\u00138\u0015\u0007q\u000cy\u0004C\u0004\u0002B\u0005e\u0002\u0019\u0001=\u0002\tUt\u0017\u000e\u001e\u0005\u000b\u0003\u000b\n\u0019\"!A\u0005B\u0005\u001d\u0013\u0001\u00035bg\"\u001cu\u000eZ3\u0015\u0003UD!\"a\u0013\u0002\u0014\u0005\u0005I\u0011IA\'\u0003\u0019)\u0017/^1mgR!\u0011qJA+!\ry\u0011\u0011K\u0005\u0004\u0003\'2!a\u0002\"p_2,\u0017M\u001c\u0005\u000b\u0003/\nI%!AA\u0002\u0005e\u0013a\u0001=%cA\u0019q\"a\u0017\n\u0007\u0005ucAA\u0002B]fD\u0011\"!\u0019\u000c\u0003\u0003%\u0019!a\u0019\u0002\u0017\u0011+(/\u0019;j_:Le\u000e\u001e\u000b\u0005\u0003g\t)\u0007C\u0004\u00028\u0005}\u0003\u0019A;\u0007\r\u0005%4bAA6\u00051!UO]1uS>tGj\u001c8h\'\u0019\t9\'!\u0007\u0002 !y\u0011qNA4\t\u0003\u0005)Q!b\u0001\n\u0013\t\t(A\u0015tG\u0006d\u0017\rJ2p]\u000e,(O]3oi\u0012\"WO]1uS>tG\u0005R;sCRLwN\u001c\'p]\u001e$CE\\\u000b\u0003\u0003\u0007AA\"!\u001e\u0002h\t\u0015\t\u0011)A\u0005\u0003\u0007\t!f]2bY\u0006$3m\u001c8dkJ\u0014XM\u001c;%IV\u0014\u0018\r^5p]\u0012\"UO]1uS>tGj\u001c8hI\u0011r\u0007\u0005C\u0004\u0014\u0003O\"\t!!\u001f\u0015\t\u0005m\u0014Q\u0010\t\u00041\u0005\u001d\u0004\u0002CA\u001c\u0003o\u0002\r!a\u0001\t\u0011\u0005m\u0012q\rC)\u0003\u0003#2\u0001`AB\u0011\u001d\t\t%a A\u0002aD!\"!\u0012\u0002h\u0005\u0005I\u0011IA$\u0011)\tY%a\u001a\u0002\u0002\u0013\u0005\u0013\u0011\u0012\u000b\u0005\u0003\u001f\nY\t\u0003\u0006\u0002X\u0005\u001d\u0015\u0011!a\u0001\u00033B\u0011\"a$\u000c\u0003\u0003%\u0019!!%\u0002\u0019\u0011+(/\u0019;j_:duN\\4\u0015\t\u0005m\u00141\u0013\u0005\t\u0003o\ti\t1\u0001\u0002\u0004\u00191\u0011qS\u0006\u0004\u00033\u0013a\u0002R;sCRLwN\u001c#pk\ndWm\u0005\u0004\u0002\u0016\u0006e\u0011q\u0004\u0005\u0010\u0003;\u000b)\n\"A\u0001\u0006\u000b\u0015\r\u0011\"\u0003\u0002 \u0006Y3oY1mC\u0012\u001awN\\2veJ,g\u000e\u001e\u0013ekJ\u000cG/[8oI\u0011+(/\u0019;j_:$u.\u001e2mK\u0012\"C-\u0006\u0002\u0002\"B\u0019q\"a)\n\u0007\u0005\u0015fA\u0001\u0004E_V\u0014G.\u001a\u0005\r\u0003S\u000b)J!B\u0001B\u0003%\u0011\u0011U\u0001-g\u000e\u000cG.\u0019\u0013d_:\u001cWO\u001d:f]R$C-\u001e:bi&|g\u000e\n#ve\u0006$\u0018n\u001c8E_V\u0014G.\u001a\u0013%I\u0002BqaEAK\t\u0003\ti\u000b\u0006\u0003\u00020\u0006E\u0006c\u0001\r\u0002\u0016\"A\u0011\u0011CAV\u0001\u0004\t\t\u000b\u0003\u0005\u0002<\u0005UE\u0011KA[)\ra\u0018q\u0017\u0005\u0008\u0003\u0003\n\u0019\u000c1\u0001y\u0011)\t)%!&\u0002\u0002\u0013\u0005\u0013q\t\u0005\u000b\u0003\u0017\n)*!A\u0005B\u0005uF\u0003BA(\u0003\u007fC!\"a\u0016\u0002<\u0006\u0005\t\u0019AA-\u0011%\t\u0019mCA\u0001\n\u0007\t)-\u0001\u0008EkJ\u000cG/[8o\t>,(\r\\3\u0015\t\u0005=\u0016q\u0019\u0005\t\u0003#\t\t\r1\u0001\u0002\"\u001a1\u00111Z\u0006\u0004\u0003\u001b\u0014q!\u00138u\u001bVdGo\u0005\u0003\u0002J\u0006e\u0001bDAi\u0003\u0013$\t\u0011!B\u0003\u0006\u0004%I!!\u000b\u0002IM\u001c\u0017\r\\1%G>t7-\u001e:sK:$H\u0005Z;sCRLwN\u001c\u0013J]RlU\u000f\u001c;%I%D1\"!6\u0002J\n\u0015\t\u0011)A\u0005k\u0006)3oY1mC\u0012\u001awN\\2veJ,g\u000e\u001e\u0013ekJ\u000cG/[8oI%sG/T;mi\u0012\"\u0013\u000e\t\u0005\u0008\'\u0005%G\u0011AAm)\u0011\tY.!8\u0011\u0007a\tI\rC\u0004\u0002`\u0006]\u0007\u0019A;\u0002\u0003%D\u0001\"a9\u0002J\u0012\u0005\u0011Q]\u0001\u0007IQLW.Z:\u0015\u00075\u000c9\u000fC\u0004\u0002\u0012\u0005\u0005\u0008\u0019A7\t\u0011\u0005\r\u0018\u0011\u001aC\u0001\u0003W$2\u0001`Aw\u0011\u001d\t\t\"!;A\u0002qD!\"!\u0012\u0002J\u0006\u0005I\u0011IA$\u0011)\tY%!3\u0002\u0002\u0013\u0005\u00131\u001f\u000b\u0005\u0003\u001f\n)\u0010\u0003\u0006\u0002X\u0005E\u0018\u0011!a\u0001\u00033B\u0011\"!?\u000c\u0003\u0003%\u0019!a?\u0002\u000f%sG/T;miR!\u00111\\A\u007f\u0011\u001d\ty.a>A\u0002U4aA!\u0001\u000c\u0007\t\r!\u0001\u0003\'p]\u001elU\u000f\u001c;\u0014\t\u0005}\u0018\u0011\u0004\u0005\u0010\u0005\u000f\ty\u0010\"A\u0001\u0006\u000b\u0015\r\u0011\"\u0003\u0002r\u0005)3oY1mC\u0012\u001awN\\2veJ,g\u000e\u001e\u0013ekJ\u000cG/[8oI1{gnZ\'vYR$C%\u001b\u0005\r\u0005\u0017\tyP!B\u0001B\u0003%\u00111A\u0001\'g\u000e\u000cG.\u0019\u0013d_:\u001cWO\u001d:f]R$C-\u001e:bi&|g\u000e\n\'p]\u001elU\u000f\u001c;%I%\u0004\u0003bB\n\u0002\u0000\u0012\u0005!q\u0002\u000b\u0005\u0005#\u0011\u0019\u0002E\u0002\u0019\u0003\u007fD\u0001\"a8\u0003\u000e\u0001\u0007\u00111\u0001\u0005\t\u0003G\u000cy\u0010\"\u0001\u0003\u0018Q\u0019QN!\u0007\t\u000f\u0005E!Q\u0003a\u0001[\"A\u00111]A\u0000\t\u0003\u0011i\u0002F\u0002}\u0005?Aq!!\u0005\u0003\u001c\u0001\u0007A\u0010\u0003\u0006\u0002F\u0005}\u0018\u0011!C!\u0003\u000fB!\"a\u0013\u0002\u0000\u0006\u0005I\u0011\tB\u0013)\u0011\tyEa\n\t\u0015\u0005]#1EA\u0001\u0002\u0004\tI\u0006C\u0005\u0003,-\t\t\u0011b\u0001\u0003.\u0005AAj\u001c8h\u001bVdG\u000f\u0006\u0003\u0003\u0012\t=\u0002\u0002CAp\u0005S\u0001\r!a\u0001\u0007\r\tM2b\u0001B\u001b\u0005)!u.\u001e2mK6+H\u000e^\n\u0005\u0005c\tI\u0002C\u0008\u0003:\tEB\u0011!A\u0003\u0006\u000b\u0007I\u0011BAP\u0003\u001d\u001a8-\u00197bI\r|gnY;se\u0016tG\u000f\n3ve\u0006$\u0018n\u001c8%\t>,(\r\\3Nk2$H\u0005\n4\t\u0019\tu\"\u0011\u0007B\u0003\u0002\u0003\u0006I!!)\u0002QM\u001c\u0017\r\\1%G>t7-\u001e:sK:$H\u0005Z;sCRLwN\u001c\u0013E_V\u0014G.Z\'vYR$CE\u001a\u0011\t\u000fM\u0011\t\u0004\"\u0001\u0003BQ!!1\tB#!\rA\"\u0011\u0007\u0005\t\u0005\u000f\u0012y\u00041\u0001\u0002\"\u0006\ta\r\u0003\u0005\u0002d\nEB\u0011\u0001B&)\ri\'Q\n\u0005\u0008\u0003#\u0011I\u00051\u0001n\u0011)\t)E!\r\u0002\u0002\u0013\u0005\u0013q\t\u0005\u000b\u0003\u0017\u0012\t$!A\u0005B\tMC\u0003BA(\u0005+B!\"a\u0016\u0003R\u0005\u0005\t\u0019AA-\u0011%\u0011IfCA\u0001\n\u0007\u0011Y&\u0001\u0006E_V\u0014G.Z\'vYR$BAa\u0011\u0003^!A!q\tB,\u0001\u0004\t\tkB\u0005\u0003Z-\t\t\u0011#\u0001\u0003bA\u0019\u0001Da\u0019\u0007\u0013\tM2\"!A\t\u0002\t\u00154c\u0001B2\u001d!91Ca\u0019\u0005\u0002\t%DC\u0001B1\u0011!\u0011iGa\u0019\u0005\u0006\t=\u0014\u0001\u0005\u0013uS6,7\u000fJ3yi\u0016t7/[8o)\u0011\u0011\tH!\u001e\u0015\u00075\u0014\u0019\u0008C\u0004\u0002\u0012\t-\u0004\u0019A7\t\u0011\t]$1\u000ea\u0001\u0005\u0007\nQ\u0001\n;iSND!Ba\u001f\u0003d\u0005\u0005IQ\u0001B?\u0003IA\u0017m\u001d5D_\u0012,G%\u001a=uK:\u001c\u0018n\u001c8\u0015\t\u0005\u001d#q\u0010\u0005\t\u0005o\u0012I\u00081\u0001\u0003D!Q!1\u0011B2\u0003\u0003%)A!\"\u0002!\u0015\u000cX/\u00197tI\u0015DH/\u001a8tS>tG\u0003\u0002BD\u0005\u0017#B!a\u0014\u0003\n\"Q\u0011q\u000bBA\u0003\u0003\u0005\r!!\u0017\t\u0011\t]$\u0011\u0011a\u0001\u0005\u0007:\u0011Ba\u000b\u000c\u0003\u0003E\tAa$\u0011\u0007a\u0011\tJB\u0005\u0003\u0002-\t\t\u0011#\u0001\u0003\u0014N\u0019!\u0011\u0013\u0008\t\u000fM\u0011\t\n\"\u0001\u0003\u0018R\u0011!q\u0012\u0005\t\u00057\u0013\t\n\"\u0002\u0003\u001e\u0006\tB\u0005^5nKN$S\r\u001f;f]NLwN\u001c\u0019\u0015\t\t}%1\u0015\u000b\u0004[\n\u0005\u0006bBA\t\u00053\u0003\r!\u001c\u0005\t\u0005o\u0012I\n1\u0001\u0003\u0012!A!q\u0015BI\t\u000b\u0011I+A\t%i&lWm\u001d\u0013fqR,gn]5p]F\"BAa+\u00030R\u0019AP!,\t\u000f\u0005E!Q\u0015a\u0001y\"A!q\u000fBS\u0001\u0004\u0011\t\u0002\u0003\u0006\u0003|\tE\u0015\u0011!C\u0003\u0005g#B!a\u0012\u00036\"A!q\u000fBY\u0001\u0004\u0011\t\u0002\u0003\u0006\u0003\u0004\nE\u0015\u0011!C\u0003\u0005s#BAa/\u0003@R!\u0011q\nB_\u0011)\t9Fa.\u0002\u0002\u0003\u0007\u0011\u0011\u000c\u0005\t\u0005o\u00129\u000c1\u0001\u0003\u0012\u001dI\u0011\u0011`\u0006\u0002\u0002#\u0005!1\u0019\t\u00041\t\u0015g!CAf\u0017\u0005\u0005\t\u0012\u0001Bd\'\r\u0011)M\u0004\u0005\u0008\'\t\u0015G\u0011\u0001Bf)\t\u0011\u0019\r\u0003\u0005\u0003\u001c\n\u0015GQ\u0001Bh)\u0011\u0011\tN!6\u0015\u00075\u0014\u0019\u000eC\u0004\u0002\u0012\t5\u0007\u0019A7\t\u0011\t]$Q\u001aa\u0001\u00037D\u0001Ba*\u0003F\u0012\u0015!\u0011\u001c\u000b\u0005\u00057\u0014y\u000eF\u0002}\u0005;Dq!!\u0005\u0003X\u0002\u0007A\u0010\u0003\u0005\u0003x\t]\u0007\u0019AAn\u0011)\u0011YH!2\u0002\u0002\u0013\u0015!1\u001d\u000b\u0005\u0003\u000f\u0012)\u000f\u0003\u0005\u0003x\t\u0005\u0008\u0019AAn\u0011)\u0011\u0019I!2\u0002\u0002\u0013\u0015!\u0011\u001e\u000b\u0005\u0005W\u0014y\u000f\u0006\u0003\u0002P\t5\u0008BCA,\u0005O\u000c\t\u00111\u0001\u0002Z!A!q\u000fBt\u0001\u0004\tYnB\u0005\u0002D.\t\t\u0011#\u0001\u0003tB\u0019\u0001D!>\u0007\u0013\u0005]5\"!A\t\u0002\t]8c\u0001B{\u001d!91C!>\u0005\u0002\tmHC\u0001Bz\u0011!\u0011yP!>\u0005\u0006\r\u0005\u0011\u0001\u00063ve\u0006$\u0018n\u001c8J]\u0012*\u0007\u0010^3og&|g\u000e\u0006\u0003\u0004\u0004\r\u001dAc\u0001?\u0004\u0006!9\u0011\u0011\tB\u007f\u0001\u0004A\u0008\u0002\u0003B<\u0005{\u0004\r!a,\t\u0015\tm$Q_A\u0001\n\u000b\u0019Y\u0001\u0006\u0003\u0002H\r5\u0001\u0002\u0003B<\u0007\u0013\u0001\r!a,\t\u0015\t\r%Q_A\u0001\n\u000b\u0019\t\u0002\u0006\u0003\u0004\u0014\r]A\u0003BA(\u0007+A!\"a\u0016\u0004\u0010\u0005\u0005\t\u0019AA-\u0011!\u00119ha\u0004A\u0002\u0005=v!CAH\u0017\u0005\u0005\t\u0012AB\u000e!\rA2Q\u0004\u0004\n\u0003SZ\u0011\u0011!E\u0001\u0007?\u00192a!\u0008\u000f\u0011\u001d\u00192Q\u0004C\u0001\u0007G!\"aa\u0007\t\u0011\t}8Q\u0004C\u0003\u0007O!Ba!\u000b\u0004.Q\u0019Apa\u000b\t\u000f\u0005\u00053Q\u0005a\u0001q\"A!qOB\u0013\u0001\u0004\tY\u0008\u0003\u0006\u0003|\ru\u0011\u0011!C\u0003\u0007c!B!a\u0012\u00044!A!qOB\u0018\u0001\u0004\tY\u0008\u0003\u0006\u0003\u0004\u000eu\u0011\u0011!C\u0003\u0007o!Ba!\u000f\u0004>Q!\u0011qJB\u001e\u0011)\t9f!\u000e\u0002\u0002\u0003\u0007\u0011\u0011\u000c\u0005\t\u0005o\u001a)\u00041\u0001\u0002|\u001dI\u0011\u0011M\u0006\u0002\u0002#\u00051\u0011\t\t\u00041\r\rc!CA\u000b\u0017\u0005\u0005\t\u0012AB#\'\r\u0019\u0019E\u0004\u0005\u0008\'\r\rC\u0011AB%)\t\u0019\t\u0005\u0003\u0005\u0003\u0000\u000e\rCQAB\')\u0011\u0019yea\u0015\u0015\u0007q\u001c\t\u0006C\u0004\u0002B\r-\u0003\u0019\u0001=\t\u0011\t]41\na\u0001\u0003gA!Ba\u001f\u0004D\u0005\u0005IQAB,)\u0011\t9e!\u0017\t\u0011\t]4Q\u000ba\u0001\u0003gA!Ba!\u0004D\u0005\u0005IQAB/)\u0011\u0019yfa\u0019\u0015\t\u0005=3\u0011\r\u0005\u000b\u0003/\u001aY&!AA\u0002\u0005e\u0003\u0002\u0003B<\u00077\u0002\r!a\r"
.end annotation


# direct methods
.method public static DAYS()Ljava/util/concurrent/TimeUnit;
    .locals 1

    sget-object v0, Lscala/concurrent/duration/package$;->MODULE$:Lscala/concurrent/duration/package$;

    invoke-virtual {v0}, Lscala/concurrent/duration/package$;->DAYS()Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    return-object v0
.end method

.method public static DoubleMult(D)D
    .locals 1

    sget-object v0, Lscala/concurrent/duration/package$;->MODULE$:Lscala/concurrent/duration/package$;

    invoke-virtual {v0, p0, p1}, Lscala/concurrent/duration/package$;->DoubleMult(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static DurationDouble(D)D
    .locals 1

    sget-object v0, Lscala/concurrent/duration/package$;->MODULE$:Lscala/concurrent/duration/package$;

    invoke-virtual {v0, p0, p1}, Lscala/concurrent/duration/package$;->DurationDouble(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static DurationInt(I)I
    .locals 1

    sget-object v0, Lscala/concurrent/duration/package$;->MODULE$:Lscala/concurrent/duration/package$;

    invoke-virtual {v0, p0}, Lscala/concurrent/duration/package$;->DurationInt(I)I

    move-result p0

    return p0
.end method

.method public static DurationLong(J)J
    .locals 1

    sget-object v0, Lscala/concurrent/duration/package$;->MODULE$:Lscala/concurrent/duration/package$;

    invoke-virtual {v0, p0, p1}, Lscala/concurrent/duration/package$;->DurationLong(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static HOURS()Ljava/util/concurrent/TimeUnit;
    .locals 1

    sget-object v0, Lscala/concurrent/duration/package$;->MODULE$:Lscala/concurrent/duration/package$;

    invoke-virtual {v0}, Lscala/concurrent/duration/package$;->HOURS()Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    return-object v0
.end method

.method public static IntMult(I)I
    .locals 1

    sget-object v0, Lscala/concurrent/duration/package$;->MODULE$:Lscala/concurrent/duration/package$;

    invoke-virtual {v0, p0}, Lscala/concurrent/duration/package$;->IntMult(I)I

    move-result p0

    return p0
.end method

.method public static LongMult(J)J
    .locals 1

    sget-object v0, Lscala/concurrent/duration/package$;->MODULE$:Lscala/concurrent/duration/package$;

    invoke-virtual {v0, p0, p1}, Lscala/concurrent/duration/package$;->LongMult(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static MICROSECONDS()Ljava/util/concurrent/TimeUnit;
    .locals 1

    sget-object v0, Lscala/concurrent/duration/package$;->MODULE$:Lscala/concurrent/duration/package$;

    invoke-virtual {v0}, Lscala/concurrent/duration/package$;->MICROSECONDS()Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    return-object v0
.end method

.method public static MILLISECONDS()Ljava/util/concurrent/TimeUnit;
    .locals 1

    sget-object v0, Lscala/concurrent/duration/package$;->MODULE$:Lscala/concurrent/duration/package$;

    invoke-virtual {v0}, Lscala/concurrent/duration/package$;->MILLISECONDS()Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    return-object v0
.end method

.method public static MINUTES()Ljava/util/concurrent/TimeUnit;
    .locals 1

    sget-object v0, Lscala/concurrent/duration/package$;->MODULE$:Lscala/concurrent/duration/package$;

    invoke-virtual {v0}, Lscala/concurrent/duration/package$;->MINUTES()Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    return-object v0
.end method

.method public static NANOSECONDS()Ljava/util/concurrent/TimeUnit;
    .locals 1

    sget-object v0, Lscala/concurrent/duration/package$;->MODULE$:Lscala/concurrent/duration/package$;

    invoke-virtual {v0}, Lscala/concurrent/duration/package$;->NANOSECONDS()Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    return-object v0
.end method

.method public static SECONDS()Ljava/util/concurrent/TimeUnit;
    .locals 1

    sget-object v0, Lscala/concurrent/duration/package$;->MODULE$:Lscala/concurrent/duration/package$;

    invoke-virtual {v0}, Lscala/concurrent/duration/package$;->SECONDS()Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    return-object v0
.end method

.method public static durationToPair(Lscala/concurrent/duration/Duration;)Lscala/Tuple2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/duration/Duration;",
            ")",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/TimeUnit;",
            ">;"
        }
    .end annotation

    sget-object v0, Lscala/concurrent/duration/package$;->MODULE$:Lscala/concurrent/duration/package$;

    invoke-virtual {v0, p0}, Lscala/concurrent/duration/package$;->durationToPair(Lscala/concurrent/duration/Duration;)Lscala/Tuple2;

    move-result-object p0

    return-object p0
.end method

.method public static pairIntToDuration(Lscala/Tuple2;)Lscala/concurrent/duration/Duration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/TimeUnit;",
            ">;)",
            "Lscala/concurrent/duration/Duration;"
        }
    .end annotation

    sget-object v0, Lscala/concurrent/duration/package$;->MODULE$:Lscala/concurrent/duration/package$;

    invoke-virtual {v0, p0}, Lscala/concurrent/duration/package$;->pairIntToDuration(Lscala/Tuple2;)Lscala/concurrent/duration/Duration;

    move-result-object p0

    return-object p0
.end method

.method public static pairLongToDuration(Lscala/Tuple2;)Lscala/concurrent/duration/FiniteDuration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/TimeUnit;",
            ">;)",
            "Lscala/concurrent/duration/FiniteDuration;"
        }
    .end annotation

    sget-object v0, Lscala/concurrent/duration/package$;->MODULE$:Lscala/concurrent/duration/package$;

    invoke-virtual {v0, p0}, Lscala/concurrent/duration/package$;->pairLongToDuration(Lscala/Tuple2;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object p0

    return-object p0
.end method
