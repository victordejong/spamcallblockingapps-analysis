.class public final Lscala/collection/mutable/AnyRefMap;
.super Lscala/collection/mutable/AbstractMap;
.source "AnyRefMap.scala"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/mutable/AnyRefMap$AnyRefMapBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/mutable/AbstractMap<",
        "TK;TV;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\rEd\u0001B\u0001\u0003\u0005%\u0011\u0011\"\u00118z%\u00164W*\u00199\u000b\u0005\r!\u0011aB7vi\u0006\u0014G.\u001a\u0006\u0003\u000b\u0019\t!bY8mY\u0016\u001cG/[8o\u0015\u00059\u0011!B:dC2\u000c7\u0001A\u000b\u0004\u0015Ea2\u0003\u0002\u0001\u000cE\u0015\u0002B\u0001D\u0007\u001075\t!!\u0003\u0002\u000f\u0005\tY\u0011IY:ue\u0006\u001cG/T1q!\t\u0001\u0012\u0003\u0004\u0001\u0005\u000bI\u0001!\u0019A\n\u0003\u0003-\u000b\"\u0001\u0006\r\u0011\u0005U1R\"\u0001\u0004\n\u0005]1!a\u0002(pi\"Lgn\u001a\t\u0003+eI!A\u0007\u0004\u0003\r\u0005s\u0017PU3g!\t\u0001B\u0004B\u0003\u001e\u0001\t\u0007aDA\u0001W#\t!r\u0004\u0005\u0002\u0016A%\u0011\u0011E\u0002\u0002\u0004\u0003:L\u0008\u0003\u0002\u0007$\u001fmI!\u0001\n\u0002\u0003\u00075\u000b\u0007\u000fE\u0003\rM=Y\u0002&\u0003\u0002(\u0005\t9Q*\u00199MS.,\u0007\u0003\u0002\u0007\u0001\u001fmA\u0001B\u000b\u0001\u0003\u0002\u0003\u0006IaK\u0001\rI\u00164\u0017-\u001e7u\u000b:$(/\u001f\t\u0005+1z1$\u0003\u0002.\r\tIa)\u001e8di&|g.\r\u0005\t_\u0001\u0011\t\u0011)A\u0005a\u0005\t\u0012N\\5uS\u0006d\')\u001e4gKJ\u001c\u0016N_3\u0011\u0005U\t\u0014B\u0001\u001a\u0007\u0005\rIe\u000e\u001e\u0005\ti\u0001\u0011\t\u0011)A\u0005k\u0005I\u0011N\\5u\u00052\u000cgn\u001b\t\u0003+YJ!a\u000e\u0004\u0003\u000f\t{w\u000e\\3b]\"1\u0011\u0008\u0001C\u0001\ti\na\u0001P5oSRtD\u0003\u0002\u0015<yuBQA\u000b\u001dA\u0002-BQa\u000c\u001dA\u0002ABQ\u0001\u000e\u001dA\u0002UBQ!\u000f\u0001\u0005\u0002}\"\u0012\u0001\u000b\u0005\u0006s\u0001!\t!\u0011\u000b\u0003Q\tCQA\u000b!A\u0002-BQ!\u000f\u0001\u0005\u0002\u0011#\"\u0001K#\t\u000b=\u001a\u0005\u0019\u0001\u0019\t\u000be\u0002A\u0011A$\u0015\u0007!B\u0015\nC\u0003+\r\u0002\u00071\u0006C\u00030\r\u0002\u0007\u0001\u0007\u0003\u0004L\u0001\u0001\u0006K\u0001M\u0001\u0005[\u0006\u001c8\u000e\u0003\u0004N\u0001\u0001\u0006K\u0001M\u0001\u0006?NL\'0\u001a\u0005\u0007\u001f\u0002\u0001\u000b\u0015\u0002\u0019\u0002\u000f}3\u0018mY1oi\"1\u0011\u000b\u0001Q!\nI\u000bqa\u00185bg\",7\u000fE\u0002\u0016\'BJ!\u0001\u0016\u0004\u0003\u000b\u0005\u0013(/Y=\t\rY\u0003\u0001\u0015)\u0003X\u0003\u0015y6.Z=t!\r)2\u000b\u0007\u0005\u00073\u0002\u0001\u000b\u0015B,\u0002\u000f}3\u0018\r\\;fg\"11\u000c\u0001Q\u0005\nq\u000b\u0011\u0003Z3gCVdG/\u00138ji&\u000cG.\u001b>f)\ti\u0006\r\u0005\u0002\u0016=&\u0011qL\u0002\u0002\u0005+:LG\u000fC\u0003b5\u0002\u0007\u0001\'A\u0001o\u0011\u0019\u0019\u0007\u0001\"\u0001\u0005I\u0006a\u0011N\\5uS\u0006d\u0017N_3U_R9Q,Z4jW6|\u0007\"\u00024c\u0001\u0004\u0001\u0014!A7\t\u000b!\u0014\u0007\u0019\u0001\u0019\u0002\u0005MT\u0008\"\u00026c\u0001\u0004\u0001\u0014A\u0001<d\u0011\u0015a\'\r1\u0001S\u0003\tA\'\u0010C\u0003oE\u0002\u0007q+\u0001\u0002lu\")\u0001O\u0019a\u0001/\u0006\u0011aO\u001f\u0005\u0006e\u0002!\te]\u0001\u0005g&TX-F\u00011\u0011\u0015)\u0008\u0001\"\u0011w\u0003\u0015)W\u000e\u001d;z+\u0005A\u0003\"\u0002=\u0001\t\u0013I\u0018AC5nE\u0006d\u0017M\\2fIV\tQ\u0007C\u0003|\u0001\u0011%A0\u0001\u0004iCNDwJ\u001a\u000b\u0003auDQA >A\u0002=\t1a[3z\u0011\u001d\t\t\u0001\u0001C\u0005\u0003\u0007\t\u0011b]3fW\u0016sGO]=\u0015\u000bA\n)!!\u0003\t\r\u0005\u001dq\u00101\u00011\u0003\u0005A\u0007BBA\u0006\u007f\u0002\u0007\u0001$A\u0001l\u0011\u001d\ty\u0001\u0001C\u0005\u0003#\tqb]3fW\u0016sGO]=Pe>\u0003XM\u001c\u000b\u0006a\u0005M\u0011Q\u0003\u0005\u0008\u0003\u000f\ti\u00011\u00011\u0011\u001d\tY!!\u0004A\u0002aAq!!\u0007\u0001\t\u0003\nY\"\u0001\u0005d_:$\u0018-\u001b8t)\r)\u0014Q\u0004\u0005\u0007}\u0006]\u0001\u0019A\u0008\t\u000f\u0005\u0005\u0002\u0001\"\u0011\u0002$\u0005\u0019q-\u001a;\u0015\t\u0005\u0015\u00121\u0006\t\u0005+\u0005\u001d2$C\u0002\u0002*\u0019\u0011aa\u00149uS>t\u0007B\u0002@\u0002 \u0001\u0007q\u0002C\u0004\u00020\u0001!\t%!\r\u0002\u0013\u001d,Go\u0014:FYN,W\u0003BA\u001a\u0003o!b!!\u000e\u0002>\u0005}\u0002c\u0001\t\u00028\u0011A\u0011\u0011HA\u0017\u0005\u0004\tYD\u0001\u0002WcE\u00111d\u0008\u0005\u0007}\u00065\u0002\u0019A\u0008\t\u0013\u0005\u0005\u0013Q\u0006CA\u0002\u0005\r\u0013a\u00023fM\u0006,H\u000e\u001e\t\u0006+\u0005\u0015\u0013QG\u0005\u0004\u0003\u000f2!\u0001\u0003\u001fcs:\u000cW.\u001a \t\u000f\u0005-\u0003\u0001\"\u0011\u0002N\u0005yq-\u001a;Pe\u0016c7/Z+qI\u0006$X\rF\u0003\u001c\u0003\u001f\n\t\u0006\u0003\u0004\u007f\u0003\u0013\u0002\ra\u0004\u0005\n\u0003\'\nI\u0005\"a\u0001\u0003+\nA\u0002Z3gCVdGOV1mk\u0016\u0004B!FA#7!9\u0011\u0011\u000c\u0001\u0005\u0002\u0005m\u0013!C4fi>\u0013h*\u001e7m)\rY\u0012Q\u000c\u0005\u0007}\u0006]\u0003\u0019A\u0008\t\u000f\u0005\u0005\u0004\u0001\"\u0011\u0002d\u0005)\u0011\r\u001d9msR\u00191$!\u001a\t\ry\u000cy\u00061\u0001\u0010\u0011\u001d\t\t\u0005\u0001C!\u0003S\"2aGA6\u0011\u0019q\u0018q\ra\u0001\u001f!9\u0011q\u000e\u0001\u0005\n\u0005E\u0014A\u0002:fa\u0006\u001c7\u000eF\u0002^\u0003gBq!!\u001e\u0002n\u0001\u0007\u0001\'A\u0004oK^l\u0015m]6\t\u000f\u0005=\u0004\u0001\"\u0001\u0002zQ\tQ\u000cC\u0004\u0002~\u0001!\t%a \u0002\u0007A,H\u000f\u0006\u0004\u0002&\u0005\u0005\u00151\u0011\u0005\u0007}\u0006m\u0004\u0019A\u0008\t\u000f\u0005\u0015\u00151\u0010a\u00017\u0005)a/\u00197vK\"9\u0011\u0011\u0012\u0001\u0005B\u0005-\u0015AB;qI\u0006$X\rF\u0003^\u0003\u001b\u000by\t\u0003\u0004\u007f\u0003\u000f\u0003\ra\u0004\u0005\u0008\u0003\u000b\u000b9\t1\u0001\u001c\u0011\u001d\t\u0019\n\u0001C\u0001\u0003+\u000b\u0001\u0002\n9mkN$S-\u001d\u000b\u0007\u0003/\u000bI*a\'\u000e\u0003\u0001AaA`AI\u0001\u0004y\u0001bBAC\u0003#\u0003\ra\u0007\u0005\u0008\u0003\'\u0003A\u0011AAP)\u0011\t9*!)\t\u0011\u0005\r\u0016Q\u0014a\u0001\u0003K\u000b!a\u001b<\u0011\u000bU\t9kD\u000e\n\u0007\u0005%fA\u0001\u0004UkBdWM\r\u0005\u0008\u0003[\u0003A\u0011AAX\u0003%!S.\u001b8vg\u0012*\u0017\u000f\u0006\u0003\u0002\u0018\u0006E\u0006B\u0002@\u0002,\u0002\u0007q\u0002C\u0004\u00026\u0002!\t!a.\u0002\u0011%$XM]1u_J,\"!!/\u0011\r\u0005m\u0016QXAS\u001b\u0005!\u0011bAA`\t\tA\u0011\n^3sCR|\'\u000fC\u0004\u0002D\u0002!\t%!2\u0002\u000f\u0019|\'/Z1dQV!\u0011qYAi)\ri\u0016\u0011\u001a\u0005\t\u0003\u0017\u000c\t\r1\u0001\u0002N\u0006\ta\r\u0005\u0004\u0016Y\u0005\u0015\u0016q\u001a\t\u0004!\u0005EGaBAj\u0003\u0003\u0014\rA\u0008\u0002\u0002\u0003\"1\u0011q\u001b\u0001\u0005B}\nQa\u00197p]\u0016D\u0001\"a7\u0001A\u0013%\u0011Q\\\u0001\u000fM>\u0014X-Y2i\u000b2,W.\u001a8u+\u0019\ty.a;\u0002pR)Q,!9\u0002f\"9\u00111]Am\u0001\u00049\u0016!B3mK6\u001c\u0008\u0002CAf\u00033\u0004\r!a:\u0011\rUa\u0013\u0011^Aw!\r\u0001\u00121\u001e\u0003\u0008\u0003\'\u000cIN1\u0001\u001f!\r\u0001\u0012q\u001e\u0003\u0008\u0003c\u000cIN1\u0001\u001f\u0005\u0005\u0011\u0005bBA{\u0001\u0011\u0005\u0011q_\u0001\u000bM>\u0014X-Y2i\u0017\u0016LX\u0003BA}\u0005\u0003!2!XA~\u0011!\tY-a=A\u0002\u0005u\u0008#B\u000b-\u001f\u0005}\u0008c\u0001\t\u0003\u0002\u00119\u00111[Az\u0005\u0004q\u0002b\u0002B\u0003\u0001\u0011\u0005!qA\u0001\rM>\u0014X-Y2i-\u0006dW/Z\u000b\u0005\u0005\u0013\u0011\t\u0002F\u0002^\u0005\u0017A\u0001\"a3\u0003\u0004\u0001\u0007!Q\u0002\t\u0006+1Z\"q\u0002\t\u0004!\tEAaBAj\u0005\u0007\u0011\rA\u0008\u0005\u0008\u0005+\u0001A\u0011\u0001B\u000c\u00031i\u0017\r\u001d,bYV,7OT8x+\u0011\u0011IBa\u0008\u0015\t\tm!\u0011\u0005\t\u0006\u0019\u0001y!Q\u0004\t\u0004!\t}AaBA\u001d\u0005\'\u0011\rA\u0008\u0005\t\u0003\u0017\u0014\u0019\u00021\u0001\u0003$A)Q\u0003L\u000e\u0003\u001e!9!q\u0005\u0001\u0005\u0002\t%\u0012a\u0004;sC:\u001chm\u001c:n-\u0006dW/Z:\u0015\t\u0005]%1\u0006\u0005\t\u0003\u0017\u0014)\u00031\u0001\u0003.A!Q\u0003L\u000e\u001c\u000f\u001d\u0011\tD\u0001E\u0001\u0005g\t\u0011\"\u00118z%\u00164W*\u00199\u0011\u00071\u0011)D\u0002\u0004\u0002\u0005!\u0005!qG\n\u0004\u0005kA\u0002bB\u001d\u00036\u0011\u0005!1\u0008\u000b\u0003\u0005gA!Ba\u0010\u00036\t\u0007IQ\u0002B!\u0003%Ie\u000eZ3y\u001b\u0006\u001c8.\u0006\u0002\u0003D=\u0011!QI\u000f\u0005\u007f}\u0000\u0000 C\u0005\u0003J\tU\u0002\u0015!\u0004\u0003D\u0005Q\u0011J\u001c3fq6\u000b7o\u001b\u0011\t\u0015\t5#Q\u0007b\u0001\n\u001b\u0011y%\u0001\u0006NSN\u001c\u0018N\\4CSR,\"A!\u0015\u0010\u0005\tMS\u0004\u0002A\u0001\u0001\u0001A\u0011Ba\u0016\u00036\u0001\u0006iA!\u0015\u0002\u00175K7o]5oO\nKG\u000f\t\u0005\u000b\u00057\u0012)D1A\u0005\u000e\tu\u0013!\u0003,bG\u0006tGOQ5u+\t\u0011yf\u0004\u0002\u0003bu!\u0001\t\u0001\u0001\u0001\u0011%\u0011)G!\u000e!\u0002\u001b\u0011y&\u0001\u0006WC\u000e\u000cg\u000e\u001e\"ji\u0002B!B!\u001b\u00036\t\u0007IQ\u0002B6\u0003)i\u0015n]:WC\u000e\u000cg\u000e^\u000b\u0003\u0005[z!Aa\u001c\u001e\t\u0001\u0007\u0001\u0001\u0001\u0005\n\u0005g\u0012)\u0004)A\u0007\u0005[\n1\"T5tgZ\u000b7-\u00198uA!Q!q\u000fB\u001b\u0005\u0004%IA!\u001f\u0002!\u0015D8-\u001a9uS>tG)\u001a4bk2$XC\u0001B>!\u0011)Bf\u0008\u000b\t\u0013\t}$Q\u0007Q\u0001\n\tm\u0014!E3yG\u0016\u0004H/[8o\t\u00164\u0017-\u001e7uA!A!1\u0011B\u001b\t\u0007\u0011))\u0001\u0007dC:\u0014U/\u001b7e\rJ|W.\u0006\u0006\u0003\u0008\ne%Q\u0014BR\u0005S+\"A!#\u0011\u0015\t-%\u0011\u0013BK\u0005?\u0013i+\u0004\u0002\u0003\u000e*\u0019!q\u0012\u0003\u0002\u000f\u001d,g.\u001a:jG&!!1\u0013BG\u00051\u0019\u0015M\u001c\"vS2$gI]8n!\u0019a\u0001Aa&\u0003\u001cB\u0019\u0001C!\'\u0005\rI\u0011\tI1\u0001\u0014!\r\u0001\"Q\u0014\u0003\u0007;\t\u0005%\u0019\u0001\u0010\u0011\u000fU\t9K!)\u0003(B\u0019\u0001Ca)\u0005\u000f\t\u0015&\u0011\u0011b\u0001\'\t\t!\nE\u0002\u0011\u0005S#qAa+\u0003\u0002\n\u0007aDA\u0001V!\u0019a\u0001A!)\u0003(\u001a9!\u0011\u0017B\u001b\u0005\tM&\u0001E!osJ+g-T1q\u0005VLG\u000eZ3s+\u0019\u0011)L!1\u0003FN)!q\u0016\r\u00038B9AB!/\u0003>\n\u001d\u0017b\u0001B^\u0005\t9!)^5mI\u0016\u0014\u0008cB\u000b\u0002(\n}&1\u0019\t\u0004!\t\u0005GA\u0002\n\u00030\n\u00071\u0003E\u0002\u0011\u0005\u000b$a!\u0008BX\u0005\u0004q\u0002C\u0002\u0007\u0001\u0005\u007f\u0013\u0019\rC\u0004:\u0005_#\tAa3\u0015\u0005\t5\u0007\u0003\u0003Bh\u0005_\u0013yLa1\u000e\u0005\tU\u0002bCAr\u0005_\u0003\r\u0011\"\u0001\u0005\u0005\',\"Aa2\t\u0017\t]\'q\u0016a\u0001\n\u0003!!\u0011\\\u0001\nK2,Wn]0%KF$2!\u0018Bn\u0011)\u0011iN!6\u0002\u0002\u0003\u0007!qY\u0001\u0004q\u0012\n\u0004\"\u0003Bq\u0005_\u0003\u000b\u0015\u0002Bd\u0003\u0019)G.Z7tA!A\u00111\u0013BX\t\u0003\u0011)\u000f\u0006\u0003\u0003h\n%XB\u0001BX\u0011!\u0011YOa9A\u0002\tu\u0016!B3oiJL\u0008\u0002\u0003Bx\u0005_#\t!!\u001f\u0002\u000b\rdW-\u0019:\t\u0011\tM(q\u0016C\u0001\u0005k\u000caA]3tk2$HC\u0001Bd\u0011!\t\tG!\u000e\u0005\u0002\teXC\u0002B~\u0007\u0003\u0019)\u0001\u0006\u0003\u0003~\u000e\u001d\u0001C\u0002\u0007\u0001\u0005\u007f\u001c\u0019\u0001E\u0002\u0011\u0007\u0003!aA\u0005B|\u0005\u0004\u0019\u0002c\u0001\t\u0004\u0006\u00111QDa>C\u0002yA\u0001\"a9\u0003x\u0002\u00071\u0011\u0002\t\u0006+\r-1qB\u0005\u0004\u0007\u001b1!A\u0003\u001fsKB,\u0017\r^3e}A9Q#a*\u0003\u0000\u000e\r\u0001bB;\u00036\u0011\u000511C\u000b\u0007\u0007+\u0019Yba\u0008\u0016\u0005\r]\u0001C\u0002\u0007\u0001\u00073\u0019i\u0002E\u0002\u0011\u00077!aAEB\t\u0005\u0004\u0019\u0002c\u0001\t\u0004 \u00111Qd!\u0005C\u0002yA\u0001ba\t\u00036\u0011\u00051QE\u0001\u000co&$\u0008\u000eR3gCVdG/\u0006\u0004\u0004(\r52\u0011\u0007\u000b\u0005\u0007S\u0019\u0019\u0004\u0005\u0004\r\u0001\r-2q\u0006\t\u0004!\r5BA\u0002\n\u0004\"\t\u00071\u0003E\u0002\u0011\u0007c!a!HB\u0011\u0005\u0004q\u0002\u0002CA!\u0007C\u0001\ra!\u000e\u0011\rUa31FB\u0018\u0011!\u0019ID!\u000e\u0005\u0002\rm\u0012a\u00024s_6T\u0016\u000e]\u000b\u0007\u0007{\u0019\u0019ea\u0012\u0015\r\r}2\u0011JB(!\u0019a\u0001a!\u0011\u0004FA\u0019\u0001ca\u0011\u0005\rI\u00199D1\u0001\u0014!\r\u00012q\t\u0003\u0007;\r]\"\u0019\u0001\u0010\t\u0011\r-3q\u0007a\u0001\u0007\u001b\nAa[3zgB!QcUB!\u0011!\u0019\tfa\u000eA\u0002\rM\u0013A\u0002<bYV,7\u000f\u0005\u0003\u0016\'\u000e\u0015\u0003\u0002CB\u001d\u0005k!\taa\u0016\u0016\r\re3qLB2)\u0019\u0019Yf!\u001a\u0004nA1A\u0002AB/\u0007C\u00022\u0001EB0\t\u0019\u00112Q\u000bb\u0001\'A\u0019\u0001ca\u0019\u0005\ru\u0019)F1\u0001\u001f\u0011!\u0019Ye!\u0016A\u0002\r\u001d\u0004#\u0002\u0007\u0004j\ru\u0013bAB6\u0005\tA\u0011\n^3sC\ndW\r\u0003\u0005\u0004R\rU\u0003\u0019AB8!\u0015a1\u0011NB1\u0001"
.end annotation


# instance fields
.field private _size:I

.field private _vacant:I

.field private final defaultEntry:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private mask:I

.field public scala$collection$mutable$AnyRefMap$$_hashes:[I

.field public scala$collection$mutable$AnyRefMap$$_keys:[Ljava/lang/Object;

.field public scala$collection$mutable$AnyRefMap$$_values:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    sget-object v0, Lscala/collection/mutable/AnyRefMap$;->MODULE$:Lscala/collection/mutable/AnyRefMap$;

    invoke-virtual {v0}, Lscala/collection/mutable/AnyRefMap$;->scala$collection$mutable$AnyRefMap$$exceptionDefault()Lscala/Function1;

    move-result-object v0

    const/16 v1, 0x10

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lscala/collection/mutable/AnyRefMap;-><init>(Lscala/Function1;IZ)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 46
    sget-object v0, Lscala/collection/mutable/AnyRefMap$;->MODULE$:Lscala/collection/mutable/AnyRefMap$;

    invoke-virtual {v0}, Lscala/collection/mutable/AnyRefMap$;->scala$collection$mutable$AnyRefMap$$exceptionDefault()Lscala/Function1;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lscala/collection/mutable/AnyRefMap;-><init>(Lscala/Function1;IZ)V

    return-void
.end method

.method public constructor <init>(Lscala/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TK;TV;>;)V"
        }
    .end annotation

    const/16 v0, 0x10

    const/4 v1, 0x1

    .line 39
    invoke-direct {p0, p1, v0, v1}, Lscala/collection/mutable/AnyRefMap;-><init>(Lscala/Function1;IZ)V

    return-void
.end method

.method public constructor <init>(Lscala/Function1;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TK;TV;>;I)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 49
    invoke-direct {p0, p1, p2, v0}, Lscala/collection/mutable/AnyRefMap;-><init>(Lscala/Function1;IZ)V

    return-void
.end method

.method public constructor <init>(Lscala/Function1;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TK;TV;>;IZ)V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lscala/collection/mutable/AnyRefMap;->defaultEntry:Lscala/Function1;

    .line 31
    invoke-direct {p0}, Lscala/collection/mutable/AbstractMap;-><init>()V

    const/4 p1, 0x0

    .line 51
    iput p1, p0, Lscala/collection/mutable/AnyRefMap;->mask:I

    .line 52
    iput p1, p0, Lscala/collection/mutable/AnyRefMap;->_size:I

    .line 53
    iput p1, p0, Lscala/collection/mutable/AnyRefMap;->_vacant:I

    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_hashes:[I

    .line 55
    iput-object p1, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_keys:[Ljava/lang/Object;

    .line 56
    iput-object p1, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_values:[Ljava/lang/Object;

    if-eqz p3, :cond_0

    .line 58
    invoke-direct {p0, p2}, Lscala/collection/mutable/AnyRefMap;->defaultInitialize(I)V

    :cond_0
    return-void
.end method

.method public static canBuildFrom()Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "J:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/mutable/AnyRefMap<",
            "TK;TV;>;",
            "Lscala/Tuple2<",
            "TJ;TU;>;",
            "Lscala/collection/mutable/AnyRefMap<",
            "TJ;TU;>;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/mutable/AnyRefMap$;->MODULE$:Lscala/collection/mutable/AnyRefMap$;

    invoke-virtual {v0}, Lscala/collection/mutable/AnyRefMap$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

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

    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x20

    shl-int p1, v1, p1

    sub-int/2addr p1, v1

    const v2, 0x3fffffff    # 1.9999999f

    and-int/2addr p1, v2

    or-int/2addr v0, p1

    .line 61
    :goto_0
    iput v0, p0, Lscala/collection/mutable/AnyRefMap;->mask:I

    add-int/lit8 p1, v0, 0x1

    .line 64
    new-array p1, p1, [I

    iput-object p1, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_hashes:[I

    add-int/lit8 p1, v0, 0x1

    .line 65
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_keys:[Ljava/lang/Object;

    add-int/2addr v0, v1

    .line 66
    new-array p1, v0, [Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_values:[Ljava/lang/Object;

    return-void
.end method

.method private foreachElement([Ljava/lang/Object;Lscala/Function1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "Lscala/Function1<",
            "TA;TB;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 340
    :goto_0
    iget-object v3, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_hashes:[I

    array-length v4, v3

    const/4 v5, 0x1

    if-ge v1, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    iget v6, p0, Lscala/collection/mutable/AnyRefMap;->_size:I

    if-ge v2, v6, :cond_1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 341
    aget v3, v3, v1

    add-int/2addr v3, v3

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 344
    aget-object v3, p1, v1

    invoke-interface {p2, v3}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 342
    :cond_2
    sget-object v3, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static fromZip(Lscala/collection/mutable/Iterable;Lscala/collection/mutable/Iterable;)Lscala/collection/mutable/AnyRefMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/mutable/Iterable<",
            "TK;>;",
            "Lscala/collection/mutable/Iterable<",
            "TV;>;)",
            "Lscala/collection/mutable/AnyRefMap<",
            "TK;TV;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/mutable/AnyRefMap$;->MODULE$:Lscala/collection/mutable/AnyRefMap$;

    invoke-virtual {v0, p0, p1}, Lscala/collection/mutable/AnyRefMap$;->fromZip(Lscala/collection/mutable/Iterable;Lscala/collection/mutable/Iterable;)Lscala/collection/mutable/AnyRefMap;

    move-result-object p0

    return-object p0
.end method

.method public static fromZip([Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/AnyRefMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([TK;",
            "Ljava/lang/Object;",
            ")",
            "Lscala/collection/mutable/AnyRefMap<",
            "TK;TV;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/mutable/AnyRefMap$;->MODULE$:Lscala/collection/mutable/AnyRefMap$;

    invoke-virtual {v0, p0, p1}, Lscala/collection/mutable/AnyRefMap$;->fromZip([Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/AnyRefMap;

    move-result-object p0

    return-object p0
.end method

.method private hashOf(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    const v0, 0x41081989

    if-nez p1, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    ushr-int/lit8 v1, p1, 0x10

    xor-int/2addr p1, v1

    const v1, -0x7a143595

    mul-int p1, p1, v1

    ushr-int/lit8 v1, p1, 0xd

    xor-int/2addr p1, v1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const v0, 0x7fffffff

    and-int/2addr v0, p1

    :goto_0
    return v0
.end method

.method private imbalanced()Z
    .locals 8

    .line 79
    iget v0, p0, Lscala/collection/mutable/AnyRefMap;->_size:I

    iget v1, p0, Lscala/collection/mutable/AnyRefMap;->_vacant:I

    add-int v2, v0, v1

    int-to-double v2, v2

    iget v4, p0, Lscala/collection/mutable/AnyRefMap;->mask:I

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
    .locals 9

    .line 186
    iget-object v0, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_hashes:[I

    .line 187
    iget-object v1, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_keys:[Ljava/lang/Object;

    .line 188
    iget-object v2, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_values:[Ljava/lang/Object;

    .line 189
    iput p1, p0, Lscala/collection/mutable/AnyRefMap;->mask:I

    add-int/lit8 v3, p1, 0x1

    .line 190
    new-array v3, v3, [I

    iput-object v3, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_hashes:[I

    add-int/lit8 v3, p1, 0x1

    .line 191
    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_keys:[Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    .line 192
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_values:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 193
    iput p1, p0, Lscala/collection/mutable/AnyRefMap;->_vacant:I

    const/4 v3, 0x0

    .line 195
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    .line 196
    aget v4, v0, v3

    add-int v5, v4, v4

    if-eqz v5, :cond_1

    .line 198
    iget v5, p0, Lscala/collection/mutable/AnyRefMap;->mask:I

    and-int/2addr v5, v4

    const/4 v6, 0x0

    .line 200
    :goto_1
    iget-object v7, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_hashes:[I

    aget v8, v7, v5

    if-eqz v8, :cond_0

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v6, 0x1

    mul-int/lit8 v7, v7, 0x2

    mul-int v7, v7, v6

    add-int/2addr v5, v7

    add-int/lit8 v5, v5, -0x3

    iget v7, p0, Lscala/collection/mutable/AnyRefMap;->mask:I

    and-int/2addr v5, v7

    goto :goto_1

    .line 201
    :cond_0
    aput v4, v7, v5

    .line 202
    iget-object v4, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_keys:[Ljava/lang/Object;

    aget-object v6, v1, v3

    aput-object v6, v4, v5

    .line 203
    iget-object v4, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_values:[Ljava/lang/Object;

    aget-object v6, v2, v3

    aput-object v6, v4, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private seekEntry(ILjava/lang/Object;)I
    .locals 6

    .line 93
    iget v0, p0, Lscala/collection/mutable/AnyRefMap;->mask:I

    and-int/2addr v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 95
    :goto_0
    iget-object v3, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_hashes:[I

    aget v3, v3, v0

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_4

    if-ne v3, p1, :cond_3

    .line 97
    iget-object v3, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_keys:[Ljava/lang/Object;

    aget-object v3, v3, v0

    if-eq v3, p2, :cond_2

    if-eqz v3, :cond_1

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v3, 0x1

    :goto_3
    if-eqz v3, :cond_3

    return v0

    :cond_3
    add-int/2addr v2, v4

    add-int/lit8 v3, v2, 0x1

    mul-int/lit8 v3, v3, 0x2

    mul-int v3, v3, v2

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x3

    .line 99
    iget v3, p0, Lscala/collection/mutable/AnyRefMap;->mask:I

    and-int/2addr v0, v3

    goto :goto_0

    :cond_4
    const/high16 p1, -0x80000000

    or-int/2addr p1, v0

    return p1
.end method

.method private seekEntryOrOpen(ILjava/lang/Object;)I
    .locals 8

    .line 105
    iget v0, p0, Lscala/collection/mutable/AnyRefMap;->mask:I

    and-int/2addr v0, p1

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 109
    :goto_0
    iget-object v5, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_hashes:[I

    aget v5, v5, v0

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_5

    if-ne v5, p1, :cond_3

    .line 110
    iget-object v7, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_keys:[Ljava/lang/Object;

    aget-object v7, v7, v0

    if-eq v7, p2, :cond_2

    if-eqz v7, :cond_1

    invoke-virtual {v7, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v7, 0x1

    :goto_3
    if-eqz v7, :cond_3

    return v0

    :cond_3
    if-ne v3, v1, :cond_4

    add-int/2addr v5, v5

    if-nez v5, :cond_4

    move v3, v0

    :cond_4
    add-int/2addr v4, v6

    add-int/lit8 v5, v4, 0x1

    mul-int/lit8 v5, v5, 0x2

    mul-int v5, v5, v4

    add-int/2addr v0, v5

    add-int/lit8 v0, v0, -0x3

    .line 113
    iget v5, p0, Lscala/collection/mutable/AnyRefMap;->mask:I

    and-int/2addr v0, v5

    goto :goto_0

    :cond_5
    if-ltz v3, :cond_6

    const/high16 p1, -0x40000000    # -2.0f

    or-int/2addr p1, v3

    goto :goto_4

    :cond_6
    const/high16 p1, -0x80000000

    or-int/2addr p1, v0

    :goto_4
    return p1
.end method


# virtual methods
.method public bridge synthetic $minus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lscala/collection/mutable/AnyRefMap;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/Map;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lscala/collection/mutable/AnyRefMap;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lscala/collection/mutable/AnyRefMap;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/mutable/AnyRefMap;->$minus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus$eq(Ljava/lang/Object;)Lscala/collection/generic/Shrinkable;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lscala/collection/mutable/AnyRefMap;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/AnyRefMap;

    move-result-object p1

    return-object p1
.end method

.method public $minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/AnyRefMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lscala/collection/mutable/AnyRefMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 277
    invoke-direct {p0, p1}, Lscala/collection/mutable/AnyRefMap;->hashOf(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lscala/collection/mutable/AnyRefMap;->seekEntry(ILjava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 279
    iget v0, p0, Lscala/collection/mutable/AnyRefMap;->_size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lscala/collection/mutable/AnyRefMap;->_size:I

    .line 280
    iget v0, p0, Lscala/collection/mutable/AnyRefMap;->_vacant:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lscala/collection/mutable/AnyRefMap;->_vacant:I

    .line 281
    iget-object v0, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_hashes:[I

    const/high16 v1, -0x80000000

    aput v1, v0, p1

    .line 282
    iget-object v0, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_keys:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 283
    iget-object v0, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_values:[Ljava/lang/Object;

    aput-object v1, v0, p1

    :cond_0
    return-object p0
.end method

.method public bridge synthetic $minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/MapLike;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lscala/collection/mutable/AnyRefMap;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/AnyRefMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus$minus(Lscala/collection/GenTraversableOnce;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lscala/collection/mutable/AnyRefMap;->$minus$minus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/GenMap;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lscala/collection/mutable/AnyRefMap;->$plus(Lscala/Tuple2;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/Map;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lscala/collection/mutable/AnyRefMap;->$plus(Lscala/Tuple2;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/Map;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/mutable/AnyRefMap;->$plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 0

    .line 30
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/AnyRefMap;->$plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/AnyRefMap;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/AnyRefMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lscala/collection/mutable/AnyRefMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 272
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/AnyRefMap;->update(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public $plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/AnyRefMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "TK;TV;>;)",
            "Lscala/collection/mutable/AnyRefMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 274
    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lscala/collection/mutable/AnyRefMap;->update(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 30
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/AnyRefMap;->$plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/AnyRefMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/MapLike;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lscala/collection/mutable/AnyRefMap;->$plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/AnyRefMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Map;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lscala/collection/mutable/AnyRefMap;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 176
    invoke-direct {p0, p1}, Lscala/collection/mutable/AnyRefMap;->hashOf(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lscala/collection/mutable/AnyRefMap;->seekEntry(ILjava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    .line 177
    iget-object v0, p0, Lscala/collection/mutable/AnyRefMap;->defaultEntry:Lscala/Function1;

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_values:[Ljava/lang/Object;

    aget-object p1, p1, v0

    :goto_0
    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/mutable/AnyRefMap;->clone()Lscala/collection/mutable/AnyRefMap;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lscala/collection/mutable/AnyRefMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/AnyRefMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_hashes:[I

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    .line 331
    iget-object v0, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_keys:[Ljava/lang/Object;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    .line 332
    iget-object v0, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_values:[Ljava/lang/Object;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    .line 333
    new-instance v0, Lscala/collection/mutable/AnyRefMap;

    iget-object v1, p0, Lscala/collection/mutable/AnyRefMap;->defaultEntry:Lscala/Function1;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lscala/collection/mutable/AnyRefMap;-><init>(Lscala/Function1;IZ)V

    .line 334
    iget v3, p0, Lscala/collection/mutable/AnyRefMap;->mask:I

    iget v4, p0, Lscala/collection/mutable/AnyRefMap;->_size:I

    iget v5, p0, Lscala/collection/mutable/AnyRefMap;->_vacant:I

    move-object v2, v0

    invoke-virtual/range {v2 .. v8}, Lscala/collection/mutable/AnyRefMap;->initializeTo(III[I[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic clone()Lscala/collection/mutable/Map;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/mutable/AnyRefMap;->clone()Lscala/collection/mutable/AnyRefMap;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 118
    invoke-direct {p0, p1}, Lscala/collection/mutable/AnyRefMap;->hashOf(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lscala/collection/mutable/AnyRefMap;->seekEntry(ILjava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public default(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lscala/collection/mutable/AnyRefMap;->defaultEntry:Lscala/Function1;

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic empty()Lscala/collection/Map;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/mutable/AnyRefMap;->empty()Lscala/collection/mutable/AnyRefMap;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/mutable/AnyRefMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/AnyRefMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 76
    new-instance v0, Lscala/collection/mutable/AnyRefMap;

    iget-object v1, p0, Lscala/collection/mutable/AnyRefMap;->defaultEntry:Lscala/Function1;

    invoke-direct {v0, v1}, Lscala/collection/mutable/AnyRefMap;-><init>(Lscala/Function1;)V

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/mutable/Map;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/mutable/AnyRefMap;->empty()Lscala/collection/mutable/AnyRefMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic filterKeys(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lscala/collection/mutable/AnyRefMap;->filterKeys(Lscala/Function1;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic filterNot(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lscala/collection/mutable/AnyRefMap;->filterNot(Lscala/Function1;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public foreach(Lscala/Function1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TK;TV;>;TA;>;)V"
        }
    .end annotation

    .line 317
    iget v0, p0, Lscala/collection/mutable/AnyRefMap;->_size:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-lez v0, :cond_2

    .line 319
    :goto_1
    iget-object v3, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_hashes:[I

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget v4, v3, v2

    add-int/2addr v4, v4

    if-nez v4, :cond_0

    array-length v4, v3

    if-ge v2, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 320
    :cond_1
    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 321
    new-instance v3, Lscala/Tuple2;

    iget-object v4, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_keys:[Ljava/lang/Object;

    aget-object v4, v4, v2

    iget-object v5, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_values:[Ljava/lang/Object;

    aget-object v5, v5, v2

    invoke-direct {v3, v4, v5}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v3}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public foreachKey(Lscala/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TK;TA;>;)V"
        }
    .end annotation

    .line 351
    iget-object v0, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_keys:[Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lscala/collection/mutable/AnyRefMap;->foreachElement([Ljava/lang/Object;Lscala/Function1;)V

    return-void
.end method

.method public foreachValue(Lscala/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TV;TA;>;)V"
        }
    .end annotation

    .line 354
    iget-object v0, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_values:[Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lscala/collection/mutable/AnyRefMap;->foreachElement([Ljava/lang/Object;Lscala/Function1;)V

    return-void
.end method

.method public get(Ljava/lang/Object;)Lscala/Option;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lscala/Option<",
            "TV;>;"
        }
    .end annotation

    .line 121
    invoke-direct {p0, p1}, Lscala/collection/mutable/AnyRefMap;->hashOf(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lscala/collection/mutable/AnyRefMap;->seekEntry(ILjava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    .line 122
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    iget-object v1, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_values:[Ljava/lang/Object;

    aget-object p1, v1, p1

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public getOrElse(Ljava/lang/Object;Lscala/Function0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V1:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lscala/Function0<",
            "TV1;>;)TV1;"
        }
    .end annotation

    .line 126
    invoke-direct {p0, p1}, Lscala/collection/mutable/AnyRefMap;->hashOf(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lscala/collection/mutable/AnyRefMap;->seekEntry(ILjava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    .line 127
    invoke-interface {p2}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_values:[Ljava/lang/Object;

    aget-object p1, p2, p1

    :goto_0
    return-object p1
.end method

.method public getOrElseUpdate(Ljava/lang/Object;Lscala/Function0;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lscala/Function0<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 131
    invoke-direct {p0, p1}, Lscala/collection/mutable/AnyRefMap;->hashOf(Ljava/lang/Object;)I

    move-result v0

    .line 132
    invoke-direct {p0, v0, p1}, Lscala/collection/mutable/AnyRefMap;->seekEntryOrOpen(ILjava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_2

    .line 138
    iget-object v2, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_hashes:[I

    .line 139
    invoke-interface {p2}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p2

    .line 140
    iget-object v3, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_hashes:[I

    if-eq v2, v3, :cond_0

    .line 141
    invoke-direct {p0, v0, p1}, Lscala/collection/mutable/AnyRefMap;->seekEntryOrOpen(ILjava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 142
    iget v2, p0, Lscala/collection/mutable/AnyRefMap;->_size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lscala/collection/mutable/AnyRefMap;->_size:I

    .line 144
    :cond_0
    iget v2, p0, Lscala/collection/mutable/AnyRefMap;->_size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lscala/collection/mutable/AnyRefMap;->_size:I

    const v2, 0x3fffffff    # 1.9999999f

    and-int/2addr v2, v1

    .line 148
    iget-object v3, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_hashes:[I

    aput v0, v3, v2

    .line 149
    iget-object v0, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_keys:[Ljava/lang/Object;

    aput-object p1, v0, v2

    .line 150
    iget-object p1, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_values:[Ljava/lang/Object;

    aput-object p2, p1, v2

    const/high16 p1, 0x40000000    # 2.0f

    and-int/2addr p1, v1

    if-eqz p1, :cond_1

    .line 151
    iget p1, p0, Lscala/collection/mutable/AnyRefMap;->_vacant:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lscala/collection/mutable/AnyRefMap;->_vacant:I

    goto :goto_0

    .line 152
    :cond_1
    invoke-direct {p0}, Lscala/collection/mutable/AnyRefMap;->imbalanced()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lscala/collection/mutable/AnyRefMap;->repack()V

    goto :goto_0

    .line 155
    :cond_2
    iget-object p1, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_values:[Ljava/lang/Object;

    aget-object p2, p1, v1

    :cond_3
    :goto_0
    return-object p2
.end method

.method public getOrNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 166
    invoke-direct {p0, p1}, Lscala/collection/mutable/AnyRefMap;->hashOf(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lscala/collection/mutable/AnyRefMap;->seekEntry(ILjava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 167
    :cond_0
    iget-object v0, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_values:[Ljava/lang/Object;

    aget-object p1, v0, p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lscala/collection/mutable/AnyRefMap;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public initializeTo(III[I[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .line 72
    iput p1, p0, Lscala/collection/mutable/AnyRefMap;->mask:I

    iput p2, p0, Lscala/collection/mutable/AnyRefMap;->_size:I

    iput p3, p0, Lscala/collection/mutable/AnyRefMap;->_vacant:I

    iput-object p4, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_hashes:[I

    iput-object p5, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_keys:[Ljava/lang/Object;

    iput-object p6, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_values:[Ljava/lang/Object;

    return-void
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 288
    new-instance v0, Lscala/collection/mutable/AnyRefMap$$anon$1;

    invoke-direct {v0, p0}, Lscala/collection/mutable/AnyRefMap$$anon$1;-><init>(Lscala/collection/mutable/AnyRefMap;)V

    return-object v0
.end method

.method public bridge synthetic keySet()Lscala/collection/GenSet;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/mutable/AnyRefMap;->keySet()Lscala/collection/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keys()Lscala/collection/GenIterable;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/mutable/AnyRefMap;->keys()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mapValues(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lscala/collection/mutable/AnyRefMap;->mapValues(Lscala/Function1;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public mapValuesNow(Lscala/Function1;)Lscala/collection/mutable/AnyRefMap;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TV;TV1;>;)",
            "Lscala/collection/mutable/AnyRefMap<",
            "TK;TV1;>;"
        }
    .end annotation

    .line 361
    new-instance v7, Lscala/collection/mutable/AnyRefMap;

    sget-object v0, Lscala/collection/mutable/AnyRefMap$;->MODULE$:Lscala/collection/mutable/AnyRefMap$;

    invoke-virtual {v0}, Lscala/collection/mutable/AnyRefMap$;->scala$collection$mutable$AnyRefMap$$exceptionDefault()Lscala/Function1;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v7, v0, v1, v2}, Lscala/collection/mutable/AnyRefMap;-><init>(Lscala/Function1;IZ)V

    .line 362
    iget-object v0, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_hashes:[I

    array-length v3, v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    .line 363
    iget-object v0, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_keys:[Ljava/lang/Object;

    array-length v3, v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    .line 364
    iget-object v0, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_values:[Ljava/lang/Object;

    array-length v0, v0

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 366
    :goto_0
    iget-object v8, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_hashes:[I

    array-length v9, v8

    if-ge v0, v9, :cond_0

    const/4 v9, 0x1

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    :goto_1
    iget v10, p0, Lscala/collection/mutable/AnyRefMap;->_size:I

    if-ge v3, v10, :cond_1

    const/4 v11, 0x1

    goto :goto_2

    :cond_1
    const/4 v11, 0x0

    :goto_2
    and-int/2addr v9, v11

    if-eqz v9, :cond_3

    .line 367
    aget v8, v8, v0

    add-int/2addr v8, v8

    if-eqz v8, :cond_2

    add-int/lit8 v3, v3, 0x1

    .line 370
    iget-object v8, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_values:[Ljava/lang/Object;

    aget-object v8, v8, v0

    invoke-interface {p1, v8}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 374
    :cond_3
    iget v1, p0, Lscala/collection/mutable/AnyRefMap;->mask:I

    iget v3, p0, Lscala/collection/mutable/AnyRefMap;->_vacant:I

    move-object v0, v7

    move v2, v10

    invoke-virtual/range {v0 .. v6}, Lscala/collection/mutable/AnyRefMap;->initializeTo(III[I[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object v7
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lscala/Option<",
            "TV;>;"
        }
    .end annotation

    .line 225
    invoke-direct {p0, p1}, Lscala/collection/mutable/AnyRefMap;->hashOf(Ljava/lang/Object;)I

    move-result v0

    .line 226
    invoke-direct {p0, v0, p1}, Lscala/collection/mutable/AnyRefMap;->seekEntryOrOpen(ILjava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_2

    const v2, 0x3fffffff    # 1.9999999f

    and-int/2addr v2, v1

    .line 230
    iget-object v3, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_hashes:[I

    aput v0, v3, v2

    .line 231
    iget-object v0, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_keys:[Ljava/lang/Object;

    aput-object p1, v0, v2

    .line 232
    iget-object p1, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_values:[Ljava/lang/Object;

    aput-object p2, p1, v2

    .line 233
    iget p1, p0, Lscala/collection/mutable/AnyRefMap;->_size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lscala/collection/mutable/AnyRefMap;->_size:I

    const/high16 p1, 0x40000000    # 2.0f

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    .line 234
    iget p1, p0, Lscala/collection/mutable/AnyRefMap;->_vacant:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lscala/collection/mutable/AnyRefMap;->_vacant:I

    goto :goto_0

    .line 235
    :cond_0
    invoke-direct {p0}, Lscala/collection/mutable/AnyRefMap;->imbalanced()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lscala/collection/mutable/AnyRefMap;->repack()V

    .line 236
    :cond_1
    :goto_0
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_1

    .line 239
    :cond_2
    new-instance v2, Lscala/Some;

    iget-object v3, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_values:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-direct {v2, v3}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    .line 240
    iget-object v3, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_hashes:[I

    aput v0, v3, v1

    .line 241
    iget-object v0, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_keys:[Ljava/lang/Object;

    aput-object p1, v0, v1

    .line 242
    iget-object p1, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_values:[Ljava/lang/Object;

    aput-object p2, p1, v1

    move-object p1, v2

    :goto_1
    return-object p1
.end method

.method public repack()V
    .locals 9

    .line 218
    iget v0, p0, Lscala/collection/mutable/AnyRefMap;->mask:I

    .line 219
    iget v1, p0, Lscala/collection/mutable/AnyRefMap;->_size:I

    iget v2, p0, Lscala/collection/mutable/AnyRefMap;->_vacant:I

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

    .line 220
    iget v2, p0, Lscala/collection/mutable/AnyRefMap;->_size:I

    mul-int/lit8 v2, v2, 0x8

    if-ge v2, v0, :cond_1

    ushr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    :cond_1
    invoke-direct {p0, v0}, Lscala/collection/mutable/AnyRefMap;->repack(I)V

    return-void
.end method

.method public bridge synthetic repr()Lscala/collection/generic/Subtractable;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/mutable/AnyRefMap;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/generic/Subtractable;

    return-object v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/mutable/AnyRefMap;->result()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Map;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/mutable/AnyRefMap;->seq()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 75
    iget v0, p0, Lscala/collection/mutable/AnyRefMap;->_size:I

    return v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/mutable/AnyRefMap;->thisCollection()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lscala/collection/mutable/AnyRefMap;->toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/mutable/AnyRefMap;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/mutable/AnyRefMap;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/mutable/AnyRefMap;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public transformValues(Lscala/Function1;)Lscala/collection/mutable/AnyRefMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TV;TV;>;)",
            "Lscala/collection/mutable/AnyRefMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 383
    :goto_0
    iget-object v3, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_hashes:[I

    array-length v4, v3

    const/4 v5, 0x1

    if-ge v1, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    iget v6, p0, Lscala/collection/mutable/AnyRefMap;->_size:I

    if-ge v2, v6, :cond_1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 384
    aget v3, v3, v1

    add-int/2addr v3, v3

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 387
    iget-object v3, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_values:[Ljava/lang/Object;

    aget-object v4, v3, v1

    invoke-interface {p1, v4}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public update(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 252
    invoke-direct {p0, p1}, Lscala/collection/mutable/AnyRefMap;->hashOf(Ljava/lang/Object;)I

    move-result v0

    .line 253
    invoke-direct {p0, v0, p1}, Lscala/collection/mutable/AnyRefMap;->seekEntryOrOpen(ILjava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_1

    const v2, 0x3fffffff    # 1.9999999f

    and-int/2addr v2, v1

    .line 257
    iget-object v3, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_hashes:[I

    aput v0, v3, v2

    .line 258
    iget-object v0, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_keys:[Ljava/lang/Object;

    aput-object p1, v0, v2

    .line 259
    iget-object p1, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_values:[Ljava/lang/Object;

    aput-object p2, p1, v2

    .line 260
    iget p1, p0, Lscala/collection/mutable/AnyRefMap;->_size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lscala/collection/mutable/AnyRefMap;->_size:I

    const/high16 p1, 0x40000000    # 2.0f

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    .line 261
    iget p1, p0, Lscala/collection/mutable/AnyRefMap;->_vacant:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lscala/collection/mutable/AnyRefMap;->_vacant:I

    goto :goto_0

    .line 262
    :cond_0
    invoke-direct {p0}, Lscala/collection/mutable/AnyRefMap;->imbalanced()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lscala/collection/mutable/AnyRefMap;->repack()V

    goto :goto_0

    .line 265
    :cond_1
    iget-object v2, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_hashes:[I

    aput v0, v2, v1

    .line 266
    iget-object v0, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_keys:[Ljava/lang/Object;

    aput-object p1, v0, v1

    .line 267
    iget-object p1, p0, Lscala/collection/mutable/AnyRefMap;->scala$collection$mutable$AnyRefMap$$_values:[Ljava/lang/Object;

    aput-object p2, p1, v1

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/GenMap;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/AnyRefMap;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/Map;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/AnyRefMap;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic values()Lscala/collection/GenIterable;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/mutable/AnyRefMap;->values()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/mutable/AnyRefMap;->view()Lscala/collection/IterableView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/AnyRefMap;->view(II)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method
