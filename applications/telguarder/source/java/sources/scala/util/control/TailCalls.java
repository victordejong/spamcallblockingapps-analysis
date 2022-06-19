package scala.util.control;

import scala.Function0;
import scala.Function1;
import scala.MatchError;
import scala.Product;
import scala.Serializable;
import scala.collection.Iterator;
import scala.package$;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
import scala.runtime.ScalaRunTime$;
import scala.util.Either;
import scala.util.Left;
import scala.util.Right;
@ScalaSignature(bytes = "\u0006\u0001\r5r!B\u0001\u0003\u0011\u0003I\u0011!\u0003+bS2\u001c\u0015\r\u001c7t\u0015\t\u0019A!A\u0004d_:$(o\u001c7\u000b\u0005\u00151\u0011\u0001B;uS2T\u0011aB\u0001\u0006g\u000e\fG.Y\u0002\u0001!\tQ1\"D\u0001\u0003\r\u0015a!\u0001#\u0001\u000e\u0005%!\u0016-\u001b7DC2d7o\u0005\u0002\f\u001dA\u0011q\u0002E\u0007\u0002\r%\u0011\u0011C\u0002\u0002\u0007\u0003:L(+\u001a4\t\u000bMYA\u0011\u0001\u000b\u0002\rqJg.\u001b;?)\u0005Ia!\u0002\f\f\u0003\u00039\"a\u0002+bS2\u0014VmY\u000b\u00031}\u0019\"!\u0006\b\t\u000bM)B\u0011\u0001\u000e\u0015\u0003m\u00012\u0001H\u000b\u001e\u001b\u0005Y\u0001C\u0001\u0010 \u0019\u0001!a\u0001I\u000b\u0005\u0006\u0004\t#!A!\u0012\u0005\t*\u0003CA\b$\u0013\t!cAA\u0004O_RD\u0017N\\4\u0011\u0005=1\u0013BA\u0014\u0007\u0005\r\te.\u001f\u0005\u0006SU!)AK\u0001\u0004[\u0006\u0004XCA\u0016/)\ta\u0003\u0007E\u0002\u001d+5\u0002\"A\b\u0018\u0005\u000b=B#\u0019A\u0011\u0003\u0003\tCQ!\r\u0015A\u0002I\n\u0011A\u001a\t\u0005\u001fMjR&\u0003\u00025\r\tIa)\u001e8di&|g.\r\u0005\u0006mU!)aN\u0001\bM2\fG/T1q+\tA4\b\u0006\u0002:yA\u0019A$\u0006\u001e\u0011\u0005yYD!B\u00186\u0005\u0004\t\u0003\"B\u00196\u0001\u0004i\u0004\u0003B\b4;eBQaP\u000b\u0005\u0006\u0001\u000baA]3tk6,W#A!\u0011\t\t+\u0005*\b\b\u0003\u001f\rK!\u0001\u0012\u0004\u0002\u000fA\f7m[1hK&\u0011ai\u0012\u0002\u0007\u000b&$\b.\u001a:\u000b\u0005\u00113\u0001cA\bJ7%\u0011!J\u0002\u0002\n\rVt7\r^5p]BB#A\u0010'\u0011\u00055\u0003V\"\u0001(\u000b\u0005=3\u0011AC1o]>$\u0018\r^5p]&\u0011\u0011K\u0014\u0002\bi\u0006LGN]3d\u0011\u0015\u0019V\u0003\"\u0002U\u0003\u0019\u0011Xm];miV\tQ\u0004\u000b\u0002S\u0019\u001a!qk\u0003%Y\u0005\u0011\u0019\u0015\r\u001c7\u0016\u0005ec6\u0003\u0002,[;\u0002\u00042\u0001H\u000b\\!\tqB\fB\u0003!-\n\u0007\u0011\u0005\u0005\u0002\u0010=&\u0011qL\u0002\u0002\b!J|G-^2u!\ty\u0011-\u0003\u0002c\r\ta1+\u001a:jC2L'0\u00192mK\"AAM\u0016BK\u0002\u0013\u0005Q-\u0001\u0003sKN$X#\u00014\u0011\u0007=I%\f\u0003\u0005i-\nE\t\u0015!\u0003g\u0003\u0015\u0011Xm\u001d;!\u0011\u0015\u0019b\u000b\"\u0001k)\tYG\u000eE\u0002\u001d-nCQ\u0001Z5A\u0002\u0019DqA\u001c,\u0002\u0002\u0013\u0005q.\u0001\u0003d_BLXC\u00019t)\t\tH\u000fE\u0002\u001d-J\u0004\"AH:\u0005\u000b\u0001j'\u0019A\u0011\t\u000f\u0011l\u0007\u0013!a\u0001kB\u0019q\"\u0013<\u0011\u0007q)\"\u000fC\u0004y-F\u0005I\u0011A=\u0002\u001d\r|\u0007/\u001f\u0013eK\u001a\fW\u000f\u001c;%cU\u0019!0a\u0002\u0016\u0003mT#A\u001a?,\u0003u\u00042A`A\u0002\u001b\u0005y(bAA\u0001\u001d\u0006IQO\\2iK\u000e\\W\rZ\u0005\u0004\u0003\u000by(!E;oG\",7m[3e-\u0006\u0014\u0018.\u00198dK\u0012)\u0001e\u001eb\u0001C!I\u00111\u0002,\u0002\u0002\u0013\u0005\u0013QB\u0001\u000eaJ|G-^2u!J,g-\u001b=\u0016\u0005\u0005=\u0001\u0003BA\t\u00037i!!a\u0005\u000b\t\u0005U\u0011qC\u0001\u0005Y\u0006twM\u0003\u0002\u0002\u001a\u0005!!.\u0019<b\u0013\u0011\ti\"a\u0005\u0003\rM#(/\u001b8h\u0011%\t\tCVA\u0001\n\u0003\t\u0019#\u0001\u0007qe>$Wo\u0019;Be&$\u00180\u0006\u0002\u0002&A\u0019q\"a\n\n\u0007\u0005%bAA\u0002J]RD\u0011\"!\fW\u0003\u0003%\t!a\f\u0002\u001dA\u0014x\u000eZ;di\u0016cW-\\3oiR\u0019Q%!\r\t\u0015\u0005M\u00121FA\u0001\u0002\u0004\t)#A\u0002yIEB\u0011\"a\u000eW\u0003\u0003%\t%!\u000f\u0002\u001fA\u0014x\u000eZ;di&#XM]1u_J,\"!a\u000f\u0011\u000b\u0005u\u00121I\u0013\u000e\u0005\u0005}\"bAA!\r\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\n\t\u0005\u0015\u0013q\b\u0002\t\u0013R,'/\u0019;pe\"I\u0011\u0011\n,\u0002\u0002\u0013\u0005\u00111J\u0001\tG\u0006tW)];bYR!\u0011QJA*!\ry\u0011qJ\u0005\u0004\u0003#2!a\u0002\"p_2,\u0017M\u001c\u0005\n\u0003g\t9%!AA\u0002\u0015B\u0011\"a\u0016W\u0003\u0003%\t%!\u0017\u0002\u0011!\f7\u000f[\"pI\u0016$\"!!\n\t\u0013\u0005uc+!A\u0005B\u0005}\u0013\u0001\u0003;p'R\u0014\u0018N\\4\u0015\u0005\u0005=\u0001\"CA2-\u0006\u0005I\u0011IA3\u0003\u0019)\u0017/^1mgR!\u0011QJA4\u0011%\t\u0019$!\u0019\u0002\u0002\u0003\u0007QeB\u0005\u0002l-\t\t\u0011#\u0005\u0002n\u0005!1)\u00197m!\ra\u0012q\u000e\u0004\t/.\t\t\u0011#\u0005\u0002rM!\u0011q\u000e\ba\u0011\u001d\u0019\u0012q\u000eC\u0001\u0003k\"\"!!\u001c\t\u0015\u0005u\u0013qNA\u0001\n\u000b\ny\u0006\u0003\u0006\u0002|\u0005=\u0014\u0011!CA\u0003{\nQ!\u00199qYf,B!a \u0002\u0006R!\u0011\u0011QAD!\u0011ab+a!\u0011\u0007y\t)\t\u0002\u0004!\u0003s\u0012\r!\t\u0005\bI\u0006e\u0004\u0019AAE!\u0011y\u0011*a#\u0011\tq)\u00121\u0011\u0005\u000b\u0003\u001f\u000by'!A\u0005\u0002\u0006E\u0015aB;oCB\u0004H._\u000b\u0005\u0003'\u000b\t\u000b\u0006\u0003\u0002\u0016\u0006\r\u0006#B\b\u0002\u0018\u0006m\u0015bAAM\r\t1q\n\u001d;j_:\u0004BaD%\u0002\u001eB!A$FAP!\rq\u0012\u0011\u0015\u0003\u0007A\u00055%\u0019A\u0011\t\u0015\u0005\u0015\u0016QRA\u0001\u0002\u0004\t9+A\u0002yIA\u0002B\u0001\b,\u0002 \"Q\u00111VA8\u0003\u0003%I!!,\u0002\u0017I,\u0017\r\u001a*fg>dg/\u001a\u000b\u0003\u0003_\u0003B!!\u0005\u00022&!\u00111WA\n\u0005\u0019y%M[3di\u001a1\u0011qW\u0006I\u0003s\u0013A\u0001R8oKV!\u00111XAa'\u0019\t),!0^AB!A$FA`!\rq\u0012\u0011\u0019\u0003\u0007A\u0005U&\u0019A\u0011\t\u0017\u0005\u0015\u0017Q\u0017BK\u0002\u0013\u0005\u0011qY\u0001\u0006m\u0006dW/Z\u000b\u0003\u0003\u007fC1\"a3\u00026\nE\t\u0015!\u0003\u0002@\u00061a/\u00197vK\u0002BqaEA[\t\u0003\ty\r\u0006\u0003\u0002R\u0006M\u0007#\u0002\u000f\u00026\u0006}\u0006\u0002CAc\u0003\u001b\u0004\r!a0\t\u00139\f),!A\u0005\u0002\u0005]W\u0003BAm\u0003?$B!a7\u0002bB)A$!.\u0002^B\u0019a$a8\u0005\r\u0001\n)N1\u0001\"\u0011)\t)-!6\u0011\u0002\u0003\u0007\u0011Q\u001c\u0005\nq\u0006U\u0016\u0013!C\u0001\u0003K,B!a:\u0002lV\u0011\u0011\u0011\u001e\u0016\u0004\u0003\u007fcHA\u0002\u0011\u0002d\n\u0007\u0011\u0005\u0003\u0006\u0002\f\u0005U\u0016\u0011!C!\u0003\u001bA!\"!\t\u00026\u0006\u0005I\u0011AA\u0012\u0011)\ti#!.\u0002\u0002\u0013\u0005\u00111\u001f\u000b\u0004K\u0005U\bBCA\u001a\u0003c\f\t\u00111\u0001\u0002&!Q\u0011qGA[\u0003\u0003%\t%!\u000f\t\u0015\u0005%\u0013QWA\u0001\n\u0003\tY\u0010\u0006\u0003\u0002N\u0005u\b\"CA\u001a\u0003s\f\t\u00111\u0001&\u0011)\t9&!.\u0002\u0002\u0013\u0005\u0013\u0011\f\u0005\u000b\u0003;\n),!A\u0005B\u0005}\u0003BCA2\u0003k\u000b\t\u0011\"\u0011\u0003\u0006Q!\u0011Q\nB\u0004\u0011%\t\u0019Da\u0001\u0002\u0002\u0003\u0007QeB\u0005\u0003\f-\t\t\u0011#\u0005\u0003\u000e\u0005!Ai\u001c8f!\ra\"q\u0002\u0004\n\u0003o[\u0011\u0011!E\t\u0005#\u0019BAa\u0004\u000fA\"91Ca\u0004\u0005\u0002\tUAC\u0001B\u0007\u0011)\tiFa\u0004\u0002\u0002\u0013\u0015\u0013q\f\u0005\u000b\u0003w\u0012y!!A\u0005\u0002\nmQ\u0003\u0002B\u000f\u0005G!BAa\b\u0003&A)A$!.\u0003\"A\u0019aDa\t\u0005\r\u0001\u0012IB1\u0001\"\u0011!\t)M!\u0007A\u0002\t\u0005\u0002BCAH\u0005\u001f\t\t\u0011\"!\u0003*U!!1\u0006B\u0019)\u0011\u0011iCa\r\u0011\u000b=\t9Ja\f\u0011\u0007y\u0011\t\u0004\u0002\u0004!\u0005O\u0011\r!\t\u0005\u000b\u0003K\u00139#!AA\u0002\tU\u0002#\u0002\u000f\u00026\n=\u0002BCAV\u0005\u001f\t\t\u0011\"\u0003\u0002.\u001a1!1H\u0006I\u0005{\u0011AaQ8oiV1!q\bB)\u0005\u000b\u001abA!\u000f\u0003Bu\u0003\u0007\u0003\u0002\u000f\u0016\u0005\u0007\u00022A\bB#\t\u0019y#\u0011\bb\u0001C!Y!\u0011\nB\u001d\u0005+\u0007I\u0011\u0001B&\u0003\u0005\tWC\u0001B'!\u0011aRCa\u0014\u0011\u0007y\u0011\t\u0006\u0002\u0004!\u0005s\u0011\r!\t\u0005\f\u0005+\u0012ID!E!\u0002\u0013\u0011i%\u0001\u0002bA!Q\u0011G!\u000f\u0003\u0016\u0004%\tA!\u0017\u0016\u0005\tm\u0003CB\b4\u0005\u001f\u0012\t\u0005C\u0006\u0003`\te\"\u0011#Q\u0001\n\tm\u0013A\u00014!\u0011\u001d\u0019\"\u0011\bC\u0001\u0005G\"bA!\u001a\u0003h\t%\u0004c\u0002\u000f\u0003:\t=#1\t\u0005\t\u0005\u0013\u0012\t\u00071\u0001\u0003N!9\u0011G!\u0019A\u0002\tm\u0003\"\u00038\u0003:\u0005\u0005I\u0011\u0001B7+\u0019\u0011yG!\u001e\u0003zQ1!\u0011\u000fB>\u0005\u007f\u0002r\u0001\bB\u001d\u0005g\u00129\bE\u0002\u001f\u0005k\"a\u0001\tB6\u0005\u0004\t\u0003c\u0001\u0010\u0003z\u00111qFa\u001bC\u0002\u0005B!B!\u0013\u0003lA\u0005\t\u0019\u0001B?!\u0011aRCa\u001d\t\u0013E\u0012Y\u0007%AA\u0002\t\u0005\u0005CB\b4\u0005g\u0012\u0019\t\u0005\u0003\u001d+\t]\u0004\"\u0003=\u0003:E\u0005I\u0011\u0001BD+\u0019\u0011II!$\u0003\u0010V\u0011!1\u0012\u0016\u0004\u0005\u001bbHA\u0002\u0011\u0003\u0006\n\u0007\u0011\u0005\u0002\u00040\u0005\u000b\u0013\r!\t\u0005\u000b\u0005'\u0013I$%A\u0005\u0002\tU\u0015AD2paf$C-\u001a4bk2$HEM\u000b\u0007\u0005/\u0013YJ!(\u0016\u0005\te%f\u0001B.y\u00121\u0001E!%C\u0002\u0005\"aa\fBI\u0005\u0004\t\u0003BCA\u0006\u0005s\t\t\u0011\"\u0011\u0002\u000e!Q\u0011\u0011\u0005B\u001d\u0003\u0003%\t!a\t\t\u0015\u00055\"\u0011HA\u0001\n\u0003\u0011)\u000bF\u0002&\u0005OC!\"a\r\u0003$\u0006\u0005\t\u0019AA\u0013\u0011)\t9D!\u000f\u0002\u0002\u0013\u0005\u0013\u0011\b\u0005\u000b\u0003\u0013\u0012I$!A\u0005\u0002\t5F\u0003BA'\u0005_C\u0011\"a\r\u0003,\u0006\u0005\t\u0019A\u0013\t\u0015\u0005]#\u0011HA\u0001\n\u0003\nI\u0006\u0003\u0006\u0002^\te\u0012\u0011!C!\u0003?B!\"a\u0019\u0003:\u0005\u0005I\u0011\tB\\)\u0011\tiE!/\t\u0013\u0005M\"QWA\u0001\u0002\u0004)s!\u0003B_\u0017\u0005\u0005\t\u0012\u0003B`\u0003\u0011\u0019uN\u001c;\u0011\u0007q\u0011\tMB\u0005\u0003<-\t\t\u0011#\u0005\u0003DN!!\u0011\u0019\ba\u0011\u001d\u0019\"\u0011\u0019C\u0001\u0005\u000f$\"Aa0\t\u0015\u0005u#\u0011YA\u0001\n\u000b\ny\u0006\u0003\u0006\u0002|\t\u0005\u0017\u0011!CA\u0005\u001b,bAa4\u0003V\neGC\u0002Bi\u00057\u0014y\u000eE\u0004\u001d\u0005s\u0011\u0019Na6\u0011\u0007y\u0011)\u000e\u0002\u0004!\u0005\u0017\u0014\r!\t\t\u0004=\teGAB\u0018\u0003L\n\u0007\u0011\u0005\u0003\u0005\u0003J\t-\u0007\u0019\u0001Bo!\u0011aRCa5\t\u000fE\u0012Y\r1\u0001\u0003bB1qb\rBj\u0005G\u0004B\u0001H\u000b\u0003X\"Q\u0011q\u0012Ba\u0003\u0003%\tIa:\u0016\r\t%(q\u001fB��)\u0011\u0011Yo!\u0001\u0011\u000b=\t9J!<\u0011\u000f=\u0011yOa=\u0003z&\u0019!\u0011\u001f\u0004\u0003\rQ+\b\u000f\\33!\u0011aRC!>\u0011\u0007y\u00119\u0010\u0002\u0004!\u0005K\u0014\r!\t\t\u0007\u001fM\u0012)Pa?\u0011\tq)\"Q \t\u0004=\t}HAB\u0018\u0003f\n\u0007\u0011\u0005\u0003\u0006\u0002&\n\u0015\u0018\u0011!a\u0001\u0007\u0007\u0001r\u0001\bB\u001d\u0005k\u0014i\u0010\u0003\u0006\u0002,\n\u0005\u0017\u0011!C\u0005\u0003[Cqa!\u0003\f\t\u0003\u0019Y!\u0001\u0005uC&d7-\u00197m+\u0011\u0019iaa\u0005\u0015\t\r=1Q\u0003\t\u00059U\u0019\t\u0002E\u0002\u001f\u0007'!a\u0001IB\u0004\u0005\u0004\t\u0003\u0002\u00033\u0004\b\u0011\u0005\raa\u0006\u0011\u000b=\u0019Iba\u0004\n\u0007\rmaA\u0001\u0005=Eft\u0017-\\3?\u0011\u001d\u0019yb\u0003C\u0001\u0007C\tA\u0001Z8oKV!11EB\u0015)\u0011\u0019)ca\u000b\u0011\tq)2q\u0005\t\u0004=\r%BA\u0002\u0011\u0004\u001e\t\u0007\u0011\u0005C\u0004T\u0007;\u0001\raa\n")
/* loaded from: classes3-dex2jar.jar:scala/util/control/TailCalls.class */
public final class TailCalls {

    /* loaded from: classes3-dex2jar.jar:scala/util/control/TailCalls$Call.class */
    public static class Call<A> extends TailRec<A> implements Product, Serializable {
        private final Function0<TailRec<A>> rest;

        public Call(Function0<TailRec<A>> function0) {
            this.rest = function0;
            Product.Cclass.$init$(this);
        }

        @Override // scala.Equals
        public boolean canEqual(Object obj) {
            return obj instanceof Call;
        }

        public <A> Call<A> copy(Function0<TailRec<A>> function0) {
            return new Call<>(function0);
        }

        public <A> Function0<TailRec<A>> copy$default$1() {
            return rest();
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x004d, code lost:
            if (r9 == false) goto L19;
         */
        @Override // scala.Equals
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean equals(java.lang.Object r4) {
            /*
                r3 = this;
                r0 = 0
                r5 = r0
                r0 = r3
                r1 = r4
                if (r0 == r1) goto L50
                r0 = r5
                r6 = r0
                r0 = r4
                boolean r0 = r0 instanceof scala.util.control.TailCalls.Call
                if (r0 == 0) goto L52
                r0 = r4
                scala.util.control.TailCalls$Call r0 = (scala.util.control.TailCalls.Call) r0
                r4 = r0
                r0 = r3
                scala.Function0 r0 = r0.rest()
                r7 = r0
                r0 = r4
                scala.Function0 r0 = r0.rest()
                r8 = r0
                r0 = r7
                if (r0 != 0) goto L2e
                r0 = r8
                if (r0 == 0) goto L38
                goto L46
            L2e:
                r0 = r7
                r1 = r8
                boolean r0 = r0.equals(r1)
                if (r0 == 0) goto L46
            L38:
                r0 = r4
                r1 = r3
                boolean r0 = r0.canEqual(r1)
                if (r0 == 0) goto L46
                r0 = 1
                r9 = r0
                goto L49
            L46:
                r0 = 0
                r9 = r0
            L49:
                r0 = r5
                r6 = r0
                r0 = r9
                if (r0 == 0) goto L52
            L50:
                r0 = 1
                r6 = r0
            L52:
                r0 = r6
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: scala.util.control.TailCalls.Call.equals(java.lang.Object):boolean");
        }

        public int hashCode() {
            return ScalaRunTime$.MODULE$._hashCode(this);
        }

        @Override // scala.Product
        public int productArity() {
            return 1;
        }

        @Override // scala.Product
        public Object productElement(int i) {
            if (i == 0) {
                return rest();
            }
            throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
        }

        @Override // scala.Product
        public Iterator<Object> productIterator() {
            return ScalaRunTime$.MODULE$.typedProductIterator(this);
        }

        @Override // scala.Product
        public String productPrefix() {
            return "Call";
        }

        public Function0<TailRec<A>> rest() {
            return this.rest;
        }

        public String toString() {
            return ScalaRunTime$.MODULE$._toString(this);
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/util/control/TailCalls$Cont.class */
    public static class Cont<A, B> extends TailRec<B> implements Product, Serializable {

        /* renamed from: a */
        private final TailRec<A> f1650a;

        /* renamed from: f */
        private final Function1<A, TailRec<B>> f1651f;

        public Cont(TailRec<A> tailRec, Function1<A, TailRec<B>> function1) {
            this.f1650a = tailRec;
            this.f1651f = function1;
            Product.Cclass.$init$(this);
        }

        /* renamed from: a */
        public TailRec<A> m3a() {
            return this.f1650a;
        }

        @Override // scala.Equals
        public boolean canEqual(Object obj) {
            return obj instanceof Cont;
        }

        public <A, B> Cont<A, B> copy(TailRec<A> tailRec, Function1<A, TailRec<B>> function1) {
            return new Cont<>(tailRec, function1);
        }

        public <A, B> TailRec<A> copy$default$1() {
            return m3a();
        }

        public <A, B> Function1<A, TailRec<B>> copy$default$2() {
            return m2f();
        }

        /* JADX WARN: Code restructure failed: missing block: B:23:0x0070, code lost:
            if (r9 == false) goto L25;
         */
        @Override // scala.Equals
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean equals(java.lang.Object r4) {
            /*
                r3 = this;
                r0 = 0
                r5 = r0
                r0 = r3
                r1 = r4
                if (r0 == r1) goto L73
                r0 = r5
                r6 = r0
                r0 = r4
                boolean r0 = r0 instanceof scala.util.control.TailCalls.Cont
                if (r0 == 0) goto L75
                r0 = r4
                scala.util.control.TailCalls$Cont r0 = (scala.util.control.TailCalls.Cont) r0
                r4 = r0
                r0 = r3
                scala.util.control.TailCalls$TailRec r0 = r0.m3a()
                r7 = r0
                r0 = r4
                scala.util.control.TailCalls$TailRec r0 = r0.m3a()
                r8 = r0
                r0 = r7
                if (r0 != 0) goto L2e
                r0 = r8
                if (r0 == 0) goto L38
                goto L69
            L2e:
                r0 = r7
                r1 = r8
                boolean r0 = r0.equals(r1)
                if (r0 == 0) goto L69
            L38:
                r0 = r3
                scala.Function1 r0 = r0.m2f()
                r8 = r0
                r0 = r4
                scala.Function1 r0 = r0.m2f()
                r7 = r0
                r0 = r8
                if (r0 != 0) goto L51
                r0 = r7
                if (r0 == 0) goto L5b
                goto L69
            L51:
                r0 = r8
                r1 = r7
                boolean r0 = r0.equals(r1)
                if (r0 == 0) goto L69
            L5b:
                r0 = r4
                r1 = r3
                boolean r0 = r0.canEqual(r1)
                if (r0 == 0) goto L69
                r0 = 1
                r9 = r0
                goto L6c
            L69:
                r0 = 0
                r9 = r0
            L6c:
                r0 = r5
                r6 = r0
                r0 = r9
                if (r0 == 0) goto L75
            L73:
                r0 = 1
                r6 = r0
            L75:
                r0 = r6
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: scala.util.control.TailCalls.Cont.equals(java.lang.Object):boolean");
        }

        /* renamed from: f */
        public Function1<A, TailRec<B>> m2f() {
            return this.f1651f;
        }

        public int hashCode() {
            return ScalaRunTime$.MODULE$._hashCode(this);
        }

        @Override // scala.Product
        public int productArity() {
            return 2;
        }

        @Override // scala.Product
        public Object productElement(int i) {
            Function1<A, TailRec<B>> function1;
            if (i == 0) {
                function1 = m3a();
            } else if (i != 1) {
                throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
            } else {
                function1 = m2f();
            }
            return function1;
        }

        @Override // scala.Product
        public Iterator<Object> productIterator() {
            return ScalaRunTime$.MODULE$.typedProductIterator(this);
        }

        @Override // scala.Product
        public String productPrefix() {
            return "Cont";
        }

        public String toString() {
            return ScalaRunTime$.MODULE$._toString(this);
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/util/control/TailCalls$Done.class */
    public static class Done<A> extends TailRec<A> implements Product, Serializable {
        private final A value;

        public Done(A a) {
            this.value = a;
            Product.Cclass.$init$(this);
        }

        @Override // scala.Equals
        public boolean canEqual(Object obj) {
            return obj instanceof Done;
        }

        public <A> Done<A> copy(A a) {
            return new Done<>(a);
        }

        public <A> A copy$default$1() {
            return value();
        }

        /* JADX WARN: Code restructure failed: missing block: B:26:0x007f, code lost:
            if (((r0 == r0 ? true : r0 == null ? false : r0 instanceof java.lang.Number ? scala.runtime.BoxesRunTime.equalsNumObject((java.lang.Number) r0, r0) : r0 instanceof java.lang.Character ? scala.runtime.BoxesRunTime.equalsCharObject((java.lang.Character) r0, r0) : r0.equals(r0)) && r0.canEqual(r3)) != false) goto L27;
         */
        @Override // scala.Equals
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean equals(java.lang.Object r4) {
            /*
                r3 = this;
                r0 = 0
                r5 = r0
                r0 = r3
                r1 = r4
                if (r0 == r1) goto L82
                r0 = r5
                r6 = r0
                r0 = r4
                boolean r0 = r0 instanceof scala.util.control.TailCalls.Done
                if (r0 == 0) goto L84
                r0 = r4
                scala.util.control.TailCalls$Done r0 = (scala.util.control.TailCalls.Done) r0
                r7 = r0
                r0 = r3
                java.lang.Object r0 = r0.value()
                r4 = r0
                r0 = r7
                java.lang.Object r0 = r0.value()
                r8 = r0
                r0 = r4
                r1 = r8
                if (r0 != r1) goto L2d
                r0 = 1
                r6 = r0
                goto L65
            L2d:
                r0 = r4
                if (r0 != 0) goto L36
                r0 = 0
                r6 = r0
                goto L65
            L36:
                r0 = r4
                boolean r0 = r0 instanceof java.lang.Number
                if (r0 == 0) goto L4a
                r0 = r4
                java.lang.Number r0 = (java.lang.Number) r0
                r1 = r8
                boolean r0 = scala.runtime.BoxesRunTime.equalsNumObject(r0, r1)
                r6 = r0
                goto L65
            L4a:
                r0 = r4
                boolean r0 = r0 instanceof java.lang.Character
                if (r0 == 0) goto L5e
                r0 = r4
                java.lang.Character r0 = (java.lang.Character) r0
                r1 = r8
                boolean r0 = scala.runtime.BoxesRunTime.equalsCharObject(r0, r1)
                r6 = r0
                goto L65
            L5e:
                r0 = r4
                r1 = r8
                boolean r0 = r0.equals(r1)
                r6 = r0
            L65:
                r0 = r6
                if (r0 == 0) goto L78
                r0 = r7
                r1 = r3
                boolean r0 = r0.canEqual(r1)
                if (r0 == 0) goto L78
                r0 = 1
                r9 = r0
                goto L7b
            L78:
                r0 = 0
                r9 = r0
            L7b:
                r0 = r5
                r6 = r0
                r0 = r9
                if (r0 == 0) goto L84
            L82:
                r0 = 1
                r6 = r0
            L84:
                r0 = r6
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: scala.util.control.TailCalls.Done.equals(java.lang.Object):boolean");
        }

        public int hashCode() {
            return ScalaRunTime$.MODULE$._hashCode(this);
        }

        @Override // scala.Product
        public int productArity() {
            return 1;
        }

        @Override // scala.Product
        public Object productElement(int i) {
            if (i == 0) {
                return value();
            }
            throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
        }

        @Override // scala.Product
        public Iterator<Object> productIterator() {
            return ScalaRunTime$.MODULE$.typedProductIterator(this);
        }

        @Override // scala.Product
        public String productPrefix() {
            return "Done";
        }

        public String toString() {
            return ScalaRunTime$.MODULE$._toString(this);
        }

        public A value() {
            return this.value;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/util/control/TailCalls$TailRec.class */
    public static abstract class TailRec<A> {
        public final <B> TailRec<B> flatMap(Function1<A, TailRec<B>> function1) {
            Call call;
            if (this instanceof Done) {
                call = new Call(new TailCalls$TailRec$$anonfun$flatMap$1(this, function1, (Done) this));
            } else if (this instanceof Call) {
                call = new Cont((Call) this, function1);
            } else if (!(this instanceof Cont)) {
                throw new MatchError(this);
            } else {
                Cont cont = (Cont) this;
                call = new Cont(cont.m3a(), new TailCalls$TailRec$$anonfun$flatMap$2(this, function1, cont));
            }
            return call;
        }

        public final <B> TailRec<B> map(Function1<A, B> function1) {
            Call call;
            TailCalls$TailRec$$anonfun$map$1 tailCalls$TailRec$$anonfun$map$1 = new TailCalls$TailRec$$anonfun$map$1(this, function1);
            if (this instanceof Done) {
                call = new Call(new TailCalls$TailRec$$anonfun$flatMap$1(this, tailCalls$TailRec$$anonfun$map$1, (Done) this));
            } else if (this instanceof Call) {
                call = new Cont((Call) this, tailCalls$TailRec$$anonfun$map$1);
            } else if (!(this instanceof Cont)) {
                throw new MatchError(this);
            } else {
                Cont cont = (Cont) this;
                call = new Cont(cont.m3a(), new TailCalls$TailRec$$anonfun$flatMap$2(this, tailCalls$TailRec$$anonfun$map$1, cont));
            }
            return call;
        }

        public final A result() {
            TailRec<A> tailRec = this;
            while (true) {
                TailRec<A> tailRec2 = tailRec;
                if (tailRec2 instanceof Done) {
                    return (A) ((Done) tailRec2).value();
                }
                if (tailRec2 instanceof Call) {
                    tailRec = ((Call) tailRec2).rest().apply();
                } else if (!(tailRec2 instanceof Cont)) {
                    throw new MatchError(tailRec2);
                } else {
                    Cont cont = (Cont) tailRec2;
                    TailRec<A> m3a = cont.m3a();
                    if (m3a instanceof Done) {
                        tailRec = (TailRec) cont.m2f().apply(((Done) m3a).value());
                    } else if (m3a instanceof Call) {
                        TailRec<A> apply = ((Call) m3a).rest().apply();
                        Function1 m2f = cont.m2f();
                        if (apply instanceof Done) {
                            tailRec = new Call<>(new TailCalls$TailRec$$anonfun$flatMap$1(apply, m2f, (Done) apply));
                        } else if (apply instanceof Call) {
                            tailRec = new Cont<>((Call) apply, m2f);
                        } else if (!(apply instanceof Cont)) {
                            throw new MatchError(apply);
                        } else {
                            Cont cont2 = (Cont) apply;
                            tailRec = new Cont<>(cont2.m3a(), new TailCalls$TailRec$$anonfun$flatMap$2(apply, m2f, cont2));
                        }
                    } else if (!(m3a instanceof Cont)) {
                        throw new MatchError(m3a);
                    } else {
                        Cont cont3 = (Cont) m3a;
                        TailRec<A> m3a2 = cont3.m3a();
                        TailCalls$TailRec$$anonfun$result$1 tailCalls$TailRec$$anonfun$result$1 = new TailCalls$TailRec$$anonfun$result$1(tailRec2, cont3, cont);
                        if (m3a2 instanceof Done) {
                            tailRec = new Call<>(new TailCalls$TailRec$$anonfun$flatMap$1(m3a2, tailCalls$TailRec$$anonfun$result$1, (Done) m3a2));
                        } else if (m3a2 instanceof Call) {
                            tailRec = new Cont<>((Call) m3a2, tailCalls$TailRec$$anonfun$result$1);
                        } else if (!(m3a2 instanceof Cont)) {
                            throw new MatchError(m3a2);
                        } else {
                            Cont cont4 = (Cont) m3a2;
                            tailRec = new Cont<>(cont4.m3a(), new TailCalls$TailRec$$anonfun$flatMap$2(m3a2, tailCalls$TailRec$$anonfun$result$1, cont4));
                        }
                    }
                }
            }
        }

        public final Either<Function0<TailRec<A>>, A> resume() {
            Either right;
            TailRec<A> tailRec = this;
            while (true) {
                TailRec<A> tailRec2 = tailRec;
                if (tailRec2 instanceof Done) {
                    package$ package_ = package$.MODULE$;
                    right = new Right(((Done) tailRec2).value());
                    break;
                } else if (tailRec2 instanceof Call) {
                    package$ package_2 = package$.MODULE$;
                    right = new Left(((Call) tailRec2).rest());
                    break;
                } else if (!(tailRec2 instanceof Cont)) {
                    throw new MatchError(tailRec2);
                } else {
                    Cont cont = (Cont) tailRec2;
                    TailRec<A> m3a = cont.m3a();
                    if (m3a instanceof Done) {
                        tailRec = (TailRec) cont.m2f().apply(((Done) m3a).value());
                    } else if (m3a instanceof Call) {
                        Call call = (Call) m3a;
                        package$ package_3 = package$.MODULE$;
                        right = new Left(new TailCalls$TailRec$$anonfun$resume$1(tailRec2, call, cont));
                        break;
                    } else if (!(m3a instanceof Cont)) {
                        throw new MatchError(m3a);
                    } else {
                        Cont cont2 = (Cont) m3a;
                        TailRec<A> m3a2 = cont2.m3a();
                        TailCalls$TailRec$$anonfun$resume$2 tailCalls$TailRec$$anonfun$resume$2 = new TailCalls$TailRec$$anonfun$resume$2(tailRec2, cont2, cont);
                        if (m3a2 instanceof Done) {
                            tailRec = new Call<>(new TailCalls$TailRec$$anonfun$flatMap$1(m3a2, tailCalls$TailRec$$anonfun$resume$2, (Done) m3a2));
                        } else if (m3a2 instanceof Call) {
                            tailRec = new Cont<>((Call) m3a2, tailCalls$TailRec$$anonfun$resume$2);
                        } else if (!(m3a2 instanceof Cont)) {
                            throw new MatchError(m3a2);
                        } else {
                            Cont cont3 = (Cont) m3a2;
                            tailRec = new Cont<>(cont3.m3a(), new TailCalls$TailRec$$anonfun$flatMap$2(m3a2, tailCalls$TailRec$$anonfun$resume$2, cont3));
                        }
                    }
                }
            }
            return right;
        }
    }

    public static <A> TailRec<A> done(A a) {
        return TailCalls$.MODULE$.done(a);
    }

    public static <A> TailRec<A> tailcall(Function0<TailRec<A>> function0) {
        return TailCalls$.MODULE$.tailcall(function0);
    }
}
