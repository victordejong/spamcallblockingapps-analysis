.class public interface abstract Lscala/collection/immutable/VectorPointer;
.super Ljava/lang/Object;
.source "Vector.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u0005ed\u0001C\u0001\u0003!\u0003\r\tA\u0001\u0005\u0003\u001bY+7\r^8s!>Lg\u000e^3s\u0015\t\u0019A!A\u0005j[6,H/\u00192mK*\u0011QAB\u0001\u000bG>dG.Z2uS>t\'\"A\u0004\u0002\u000bM\u001c\u0017\r\\1\u0016\u0005%)8C\u0001\u0001\u000b!\tYA\"D\u0001\u0007\u0013\tiaA\u0001\u0004B]f\u0014VM\u001a\u0005\u0006\u001f\u0001!\t!E\u0001\u0007I%t\u0017\u000e\u001e\u0013\u0004\u0001Q\t!\u0003\u0005\u0002\u000c\'%\u0011AC\u0002\u0002\u0005+:LG\u000f\u0003\u0006\u0017\u0001\u0001\u0007\t\u0019!C\u0001\u0005]\tQ\u0001Z3qi\",\u0012\u0001\u0007\t\u0003\u0017eI!A\u0007\u0004\u0003\u0007%sG\u000f\u0003\u0006\u001d\u0001\u0001\u0007\t\u0019!C\u0001\u0005u\t\u0011\u0002Z3qi\"|F%Z9\u0015\u0005Iq\u0002bB\u0010\u001c\u0003\u0003\u0005\r\u0001G\u0001\u0004q\u0012\n\u0004BB\u0011\u0001A\u0003&\u0001$\u0001\u0004eKB$\u0008\u000e\t\u0005\u000bG\u0001\u0001\r\u00111A\u0005\u0002\t!\u0013\u0001\u00033jgBd\u0017-\u001f\u0019\u0016\u0003\u0015\u00022a\u0003\u0014\u000b\u0013\t9cAA\u0003BeJ\u000c\u0017\u0010\u0003\u0006*\u0001\u0001\u0007\t\u0019!C\u0001\u0005)\nA\u0002Z5ta2\u000c\u0017\u0010M0%KF$\"AE\u0016\t\u000f}A\u0013\u0011!a\u0001K!1Q\u0006\u0001Q!\n\u0015\n\u0011\u0002Z5ta2\u000c\u0017\u0010\r\u0011\t\u0015=\u0002\u0001\u0019!a\u0001\n\u0003\u0011A%\u0001\u0005eSN\u0004H.Y=2\u0011)\t\u0004\u00011AA\u0002\u0013\u0005!AM\u0001\rI&\u001c\u0008\u000f\\1zc}#S-\u001d\u000b\u0003%MBqa\u0008\u0019\u0002\u0002\u0003\u0007Q\u0005\u0003\u00046\u0001\u0001\u0006K!J\u0001\nI&\u001c\u0008\u000f\\1zc\u0001B!b\u000e\u0001A\u0002\u0003\u0007I\u0011\u0001\u0002%\u0003!!\u0017n\u001d9mCf\u0014\u0004BC\u001d\u0001\u0001\u0004\u0005\r\u0011\"\u0001\u0003u\u0005aA-[:qY\u0006L(g\u0018\u0013fcR\u0011!c\u000f\u0005\u0008?a\n\t\u00111\u0001&\u0011\u0019i\u0004\u0001)Q\u0005K\u0005IA-[:qY\u0006L(\u0007\t\u0005\u000b\u007f\u0001\u0001\r\u00111A\u0005\u0002\t!\u0013\u0001\u00033jgBd\u0017-_\u001a\t\u0015\u0005\u0003\u0001\u0019!a\u0001\n\u0003\u0011!)\u0001\u0007eSN\u0004H.Y=4?\u0012*\u0017\u000f\u0006\u0002\u0013\u0007\"9q\u0004QA\u0001\u0002\u0004)\u0003BB#\u0001A\u0003&Q%A\u0005eSN\u0004H.Y=4A!Qq\t\u0001a\u0001\u0002\u0004%\tA\u0001\u0013\u0002\u0011\u0011L7\u000f\u001d7bsRB!\"\u0013\u0001A\u0002\u0003\u0007I\u0011\u0001\u0002K\u00031!\u0017n\u001d9mCf$t\u000cJ3r)\t\u00112\nC\u0004 \u0011\u0006\u0005\t\u0019A\u0013\t\r5\u0003\u0001\u0015)\u0003&\u0003%!\u0017n\u001d9mCf$\u0004\u0005\u0003\u0006P\u0001\u0001\u0007\t\u0019!C\u0001\u0005\u0011\n\u0001\u0002Z5ta2\u000c\u00170\u000e\u0005\u000b#\u0002\u0001\r\u00111A\u0005\u0002\t\u0011\u0016\u0001\u00043jgBd\u0017-_\u001b`I\u0015\u000cHC\u0001\nT\u0011\u001dy\u0002+!AA\u0002\u0015Ba!\u0016\u0001!B\u0013)\u0013!\u00033jgBd\u0017-_\u001b!\u0011\u00199\u0006\u0001\"\u0002\u00031\u0006A\u0011N\\5u\rJ|W.\u0006\u0002ZAR\u0011!C\u0017\u0005\u00067Z\u0003\r\u0001X\u0001\u0005i\"\u000cG\u000fE\u0002^\u0001yk\u0011A\u0001\t\u0003?\u0002d\u0001\u0001B\u0003b-\n\u0007!MA\u0001V#\t\u0019g\r\u0005\u0002\u000cI&\u0011QM\u0002\u0002\u0008\u001d>$\u0008.\u001b8h!\tYq-\u0003\u0002i\r\t\u0019\u0011I\\=\t\r]\u0003AQ\u0001\u0002k+\tYw\u000eF\u0002\u0013YBDQaW5A\u00025\u00042!\u0018\u0001o!\tyv\u000eB\u0003bS\n\u0007!\rC\u0003\u0017S\u0002\u0007\u0001\u0004\u0003\u0004s\u0001\u0011\u0015!a]\u0001\u0008O\u0016$X\t\\3n)\r!x/\u001f\t\u0003?V$QA\u001e\u0001C\u0002\t\u0014\u0011\u0001\u0016\u0005\u0006qF\u0004\r\u0001G\u0001\u0006S:$W\r\u001f\u0005\u0006uF\u0004\r\u0001G\u0001\u0004q>\u0014\u0008B\u0002?\u0001\t\u000b\u0011Q0A\u0004h_R|\u0007k\\:\u0015\u0007Iqx\u0010C\u0003yw\u0002\u0007\u0001\u0004C\u0003{w\u0002\u0007\u0001\u0004\u0003\u0005\u0002\u0004\u0001!)AAA\u0003\u0003I9w\u000e^8OKb$(\t\\8dWN#\u0018M\u001d;\u0015\u000bI\t9!!\u0003\t\ra\u000c\t\u00011\u0001\u0019\u0011\u0019Q\u0018\u0011\u0001a\u00011!A\u0011Q\u0002\u0001\u0005\u0006\t\ty!\u0001\u000eh_R|g*\u001a=u\u00052|7m[*uCJ$xK]5uC\ndW\rF\u0003\u0013\u0003#\t\u0019\u0002\u0003\u0004y\u0003\u0017\u0001\r\u0001\u0007\u0005\u0007u\u0006-\u0001\u0019\u0001\r\t\u0011\u0005]\u0001\u0001\"\u0002\u0003\u00033\taaY8qs>3GcA\u0013\u0002\u001c!9\u0011QDA\u000b\u0001\u0004)\u0013!A1\t\u0011\u0005\u0005\u0002\u0001\"\u0002\u0003\u0003G\tqB\\;mYNcw\u000e^!oI\u000e{\u0007/\u001f\u000b\u0006K\u0005\u0015\u0012\u0011\u0006\u0005\u0008\u0003O\ty\u00021\u0001&\u0003\u0015\t\'O]1z\u0011\u0019A\u0018q\u0004a\u00011!A\u0011Q\u0006\u0001\u0005\u0006\t\ty#A\u0005ti\u0006\u0014\u0017\u000e\\5{KR\u0019!#!\r\t\ra\u000cY\u00031\u0001\u0019\u0011!\t)\u0004\u0001C\u0003\u0005\u0005]\u0012\u0001E4pi>\u0004vn],sSR\u000c\'\r\\31)\u0015\u0011\u0012\u0011HA\u001f\u0011\u001d\tY$a\rA\u0002a\t\u0001B\\3x\u0013:$W\r\u001f\u0005\u0007u\u0006M\u0002\u0019\u0001\r\t\u0011\u0005\u0005\u0003\u0001\"\u0002\u0003\u0003\u0007\n\u0001cZ8u_B{7o\u0016:ji\u0006\u0014G.Z\u0019\u0015\u000fI\t)%!\u0013\u0002L!9\u0011qIA \u0001\u0004A\u0012\u0001C8mI&sG-\u001a=\t\u000f\u0005m\u0012q\u0008a\u00011!1!0a\u0010A\u0002aA\u0001\"a\u0014\u0001\t\u000b\u0011\u0011\u0011K\u0001\nG>\u0004\u0018PU1oO\u0016$r!JA*\u0003+\nI\u0006C\u0004\u0002(\u00055\u0003\u0019A\u0013\t\u000f\u0005]\u0013Q\na\u00011\u00059q\u000e\u001c3MK\u001a$\u0008bBA.\u0003\u001b\u0002\r\u0001G\u0001\u0008]\u0016<H*\u001a4u\u0011!\ty\u0006\u0001C\u0003\u0005\u0005\u0005\u0014!F4pi>4%/Z:i!>\u001cxK]5uC\ndW\r\r\u000b\u0008%\u0005\r\u0014QMA4\u0011\u001d\t9%!\u0018A\u0002aAq!a\u000f\u0002^\u0001\u0007\u0001\u0004\u0003\u0004{\u0003;\u0002\r\u0001\u0007\u0005\t\u0003W\u0002AQ\u0001\u0002\u0002n\u0005)rm\u001c;p\rJ,7\u000f\u001b)pg^\u0013\u0018\u000e^1cY\u0016\u000cDc\u0002\n\u0002p\u0005E\u00141\u000f\u0005\u0008\u0003\u000f\nI\u00071\u0001\u0019\u0011\u001d\tY$!\u001bA\u0002aAaA_A5\u0001\u0004A\u0002bBA<\u0001\u0011\u0005!!E\u0001\u0006I\u0016\u0014Wo\u001a"
.end annotation


# virtual methods
.method public abstract copyOf([Ljava/lang/Object;)[Ljava/lang/Object;
.end method

.method public abstract copyRange([Ljava/lang/Object;II)[Ljava/lang/Object;
.end method

.method public abstract debug()V
.end method

.method public abstract depth()I
.end method

.method public abstract depth_$eq(I)V
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation
.end method

.method public abstract display0()[Ljava/lang/Object;
.end method

.method public abstract display0_$eq([Ljava/lang/Object;)V
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation
.end method

.method public abstract display1()[Ljava/lang/Object;
.end method

.method public abstract display1_$eq([Ljava/lang/Object;)V
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation
.end method

.method public abstract display2()[Ljava/lang/Object;
.end method

.method public abstract display2_$eq([Ljava/lang/Object;)V
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation
.end method

.method public abstract display3()[Ljava/lang/Object;
.end method

.method public abstract display3_$eq([Ljava/lang/Object;)V
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation
.end method

.method public abstract display4()[Ljava/lang/Object;
.end method

.method public abstract display4_$eq([Ljava/lang/Object;)V
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation
.end method

.method public abstract display5()[Ljava/lang/Object;
.end method

.method public abstract display5_$eq([Ljava/lang/Object;)V
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation
.end method

.method public abstract getElem(II)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation
.end method

.method public abstract gotoFreshPosWritable0(III)V
.end method

.method public abstract gotoFreshPosWritable1(III)V
.end method

.method public abstract gotoNextBlockStart(II)V
.end method

.method public abstract gotoNextBlockStartWritable(II)V
.end method

.method public abstract gotoPos(II)V
.end method

.method public abstract gotoPosWritable0(II)V
.end method

.method public abstract gotoPosWritable1(III)V
.end method

.method public abstract initFrom(Lscala/collection/immutable/VectorPointer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/VectorPointer<",
            "TU;>;)V"
        }
    .end annotation
.end method

.method public abstract initFrom(Lscala/collection/immutable/VectorPointer;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/VectorPointer<",
            "TU;>;I)V"
        }
    .end annotation
.end method

.method public abstract nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;
.end method

.method public abstract stabilize(I)V
.end method
