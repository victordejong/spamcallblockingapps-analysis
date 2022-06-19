package scala.collection.immutable;

import scala.MatchError;
import scala.Predef$;
import scala.compat.Platform$;
import scala.math.package$;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
import scala.runtime.TraitSetter;
@ScalaSignature(bytes = "\u0006\u0001\u0005ed\u0001C\u0001\u0003!\u0003\r\tA\u0001\u0005\u0003\u001bY+7\r^8s!>Lg\u000e^3s\u0015\t\u0019A!A\u0005j[6,H/\u00192mK*\u0011QAB\u0001\u000bG>dG.Z2uS>t'\"A\u0004\u0002\u000bM\u001c\u0017\r\\1\u0016\u0005%)8C\u0001\u0001\u000b!\tYA\"D\u0001\u0007\u0013\tiaA\u0001\u0004B]f\u0014VM\u001a\u0005\u0006\u001f\u0001!\t!E\u0001\u0007I%t\u0017\u000e\u001e\u0013\u0004\u0001Q\t!\u0003\u0005\u0002\f'%\u0011AC\u0002\u0002\u0005+:LG\u000f\u0003\u0006\u0017\u0001\u0001\u0007\t\u0019!C\u0001\u0005]\tQ\u0001Z3qi\",\u0012\u0001\u0007\t\u0003\u0017eI!A\u0007\u0004\u0003\u0007%sG\u000f\u0003\u0006\u001d\u0001\u0001\u0007\t\u0019!C\u0001\u0005u\t\u0011\u0002Z3qi\"|F%Z9\u0015\u0005Iq\u0002bB\u0010\u001c\u0003\u0003\u0005\r\u0001G\u0001\u0004q\u0012\n\u0004BB\u0011\u0001A\u0003&\u0001$\u0001\u0004eKB$\b\u000e\t\u0005\u000bG\u0001\u0001\r\u00111A\u0005\u0002\t!\u0013\u0001\u00033jgBd\u0017-\u001f\u0019\u0016\u0003\u0015\u00022a\u0003\u0014\u000b\u0013\t9cAA\u0003BeJ\f\u0017\u0010\u0003\u0006*\u0001\u0001\u0007\t\u0019!C\u0001\u0005)\nA\u0002Z5ta2\f\u0017\u0010M0%KF$\"AE\u0016\t\u000f}A\u0013\u0011!a\u0001K!1Q\u0006\u0001Q!\n\u0015\n\u0011\u0002Z5ta2\f\u0017\u0010\r\u0011\t\u0015=\u0002\u0001\u0019!a\u0001\n\u0003\u0011A%\u0001\u0005eSN\u0004H.Y=2\u0011)\t\u0004\u00011AA\u0002\u0013\u0005!AM\u0001\rI&\u001c\b\u000f\\1zc}#S-\u001d\u000b\u0003%MBqa\b\u0019\u0002\u0002\u0003\u0007Q\u0005\u0003\u00046\u0001\u0001\u0006K!J\u0001\nI&\u001c\b\u000f\\1zc\u0001B!b\u000e\u0001A\u0002\u0003\u0007I\u0011\u0001\u0002%\u0003!!\u0017n\u001d9mCf\u0014\u0004BC\u001d\u0001\u0001\u0004\u0005\r\u0011\"\u0001\u0003u\u0005aA-[:qY\u0006L(g\u0018\u0013fcR\u0011!c\u000f\u0005\b?a\n\t\u00111\u0001&\u0011\u0019i\u0004\u0001)Q\u0005K\u0005IA-[:qY\u0006L(\u0007\t\u0005\u000b\u007f\u0001\u0001\r\u00111A\u0005\u0002\t!\u0013\u0001\u00033jgBd\u0017-_\u001a\t\u0015\u0005\u0003\u0001\u0019!a\u0001\n\u0003\u0011!)\u0001\u0007eSN\u0004H.Y=4?\u0012*\u0017\u000f\u0006\u0002\u0013\u0007\"9q\u0004QA\u0001\u0002\u0004)\u0003BB#\u0001A\u0003&Q%A\u0005eSN\u0004H.Y=4A!Qq\t\u0001a\u0001\u0002\u0004%\tA\u0001\u0013\u0002\u0011\u0011L7\u000f\u001d7bsRB!\"\u0013\u0001A\u0002\u0003\u0007I\u0011\u0001\u0002K\u00031!\u0017n\u001d9mCf$t\fJ3r)\t\u00112\nC\u0004 \u0011\u0006\u0005\t\u0019A\u0013\t\r5\u0003\u0001\u0015)\u0003&\u0003%!\u0017n\u001d9mCf$\u0004\u0005\u0003\u0006P\u0001\u0001\u0007\t\u0019!C\u0001\u0005\u0011\n\u0001\u0002Z5ta2\f\u00170\u000e\u0005\u000b#\u0002\u0001\r\u00111A\u0005\u0002\t\u0011\u0016\u0001\u00043jgBd\u0017-_\u001b`I\u0015\fHC\u0001\nT\u0011\u001dy\u0002+!AA\u0002\u0015Ba!\u0016\u0001!B\u0013)\u0013!\u00033jgBd\u0017-_\u001b!\u0011\u00199\u0006\u0001\"\u0002\u00031\u0006A\u0011N\\5u\rJ|W.\u0006\u0002ZAR\u0011!C\u0017\u0005\u00067Z\u0003\r\u0001X\u0001\u0005i\"\fG\u000fE\u0002^\u0001yk\u0011A\u0001\t\u0003?\u0002d\u0001\u0001B\u0003b-\n\u0007!MA\u0001V#\t\u0019g\r\u0005\u0002\fI&\u0011QM\u0002\u0002\b\u001d>$\b.\u001b8h!\tYq-\u0003\u0002i\r\t\u0019\u0011I\\=\t\r]\u0003AQ\u0001\u0002k+\tYw\u000eF\u0002\u0013YBDQaW5A\u00025\u00042!\u0018\u0001o!\tyv\u000eB\u0003bS\n\u0007!\rC\u0003\u0017S\u0002\u0007\u0001\u0004\u0003\u0004s\u0001\u0011\u0015!a]\u0001\bO\u0016$X\t\\3n)\r!x/\u001f\t\u0003?V$QA\u001e\u0001C\u0002\t\u0014\u0011\u0001\u0016\u0005\u0006qF\u0004\r\u0001G\u0001\u0006S:$W\r\u001f\u0005\u0006uF\u0004\r\u0001G\u0001\u0004q>\u0014\bB\u0002?\u0001\t\u000b\u0011Q0A\u0004h_R|\u0007k\\:\u0015\u0007Iqx\u0010C\u0003yw\u0002\u0007\u0001\u0004C\u0003{w\u0002\u0007\u0001\u0004\u0003\u0005\u0002\u0004\u0001!)AAA\u0003\u0003I9w\u000e^8OKb$(\t\\8dWN#\u0018M\u001d;\u0015\u000bI\t9!!\u0003\t\ra\f\t\u00011\u0001\u0019\u0011\u0019Q\u0018\u0011\u0001a\u00011!A\u0011Q\u0002\u0001\u0005\u0006\t\ty!\u0001\u000eh_R|g*\u001a=u\u00052|7m[*uCJ$xK]5uC\ndW\rF\u0003\u0013\u0003#\t\u0019\u0002\u0003\u0004y\u0003\u0017\u0001\r\u0001\u0007\u0005\u0007u\u0006-\u0001\u0019\u0001\r\t\u0011\u0005]\u0001\u0001\"\u0002\u0003\u00033\taaY8qs>3GcA\u0013\u0002\u001c!9\u0011QDA\u000b\u0001\u0004)\u0013!A1\t\u0011\u0005\u0005\u0002\u0001\"\u0002\u0003\u0003G\tqB\\;mYNcw\u000e^!oI\u000e{\u0007/\u001f\u000b\u0006K\u0005\u0015\u0012\u0011\u0006\u0005\b\u0003O\ty\u00021\u0001&\u0003\u0015\t'O]1z\u0011\u0019A\u0018q\u0004a\u00011!A\u0011Q\u0006\u0001\u0005\u0006\t\ty#A\u0005ti\u0006\u0014\u0017\u000e\\5{KR\u0019!#!\r\t\ra\fY\u00031\u0001\u0019\u0011!\t)\u0004\u0001C\u0003\u0005\u0005]\u0012\u0001E4pi>\u0004vn],sSR\f'\r\\31)\u0015\u0011\u0012\u0011HA\u001f\u0011\u001d\tY$a\rA\u0002a\t\u0001B\\3x\u0013:$W\r\u001f\u0005\u0007u\u0006M\u0002\u0019\u0001\r\t\u0011\u0005\u0005\u0003\u0001\"\u0002\u0003\u0003\u0007\n\u0001cZ8u_B{7o\u0016:ji\u0006\u0014G.Z\u0019\u0015\u000fI\t)%!\u0013\u0002L!9\u0011qIA \u0001\u0004A\u0012\u0001C8mI&sG-\u001a=\t\u000f\u0005m\u0012q\ba\u00011!1!0a\u0010A\u0002aA\u0001\"a\u0014\u0001\t\u000b\u0011\u0011\u0011K\u0001\nG>\u0004\u0018PU1oO\u0016$r!JA*\u0003+\nI\u0006C\u0004\u0002(\u00055\u0003\u0019A\u0013\t\u000f\u0005]\u0013Q\na\u00011\u00059q\u000e\u001c3MK\u001a$\bbBA.\u0003\u001b\u0002\r\u0001G\u0001\b]\u0016<H*\u001a4u\u0011!\ty\u0006\u0001C\u0003\u0005\u0005\u0005\u0014!F4pi>4%/Z:i!>\u001cxK]5uC\ndW\r\r\u000b\b%\u0005\r\u0014QMA4\u0011\u001d\t9%!\u0018A\u0002aAq!a\u000f\u0002^\u0001\u0007\u0001\u0004\u0003\u0004{\u0003;\u0002\r\u0001\u0007\u0005\t\u0003W\u0002AQ\u0001\u0002\u0002n\u0005)rm\u001c;p\rJ,7\u000f\u001b)pg^\u0013\u0018\u000e^1cY\u0016\fDc\u0002\n\u0002p\u0005E\u00141\u000f\u0005\b\u0003\u000f\nI\u00071\u0001\u0019\u0011\u001d\tY$!\u001bA\u0002aAaA_A5\u0001\u0004A\u0002bBA<\u0001\u0011\u0005!!E\u0001\u0006I\u0016\u0014Wo\u001a")
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/VectorPointer.class */
public interface VectorPointer<T> {

    /* renamed from: scala.collection.immutable.VectorPointer$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/VectorPointer$class.class */
    public abstract class Cclass {
        public static void $init$(VectorPointer vectorPointer) {
        }

        public static final Object[] copyOf(VectorPointer vectorPointer, Object[] objArr) {
            if (objArr == null) {
                Predef$.MODULE$.println("NULL");
            }
            Object[] objArr2 = new Object[objArr.length];
            Platform$ platform$ = Platform$.MODULE$;
            System.arraycopy(objArr, 0, objArr2, 0, objArr.length);
            return objArr2;
        }

        public static final Object[] copyRange(VectorPointer vectorPointer, Object[] objArr, int i, int i2) {
            Object[] objArr2 = new Object[32];
            Platform$ platform$ = Platform$.MODULE$;
            System.arraycopy(objArr, i, objArr2, i2, 32 - package$.MODULE$.max(i2, i));
            return objArr2;
        }

        public static void debug(VectorPointer vectorPointer) {
        }

        public static final Object getElem(VectorPointer vectorPointer, int i, int i2) {
            Object obj;
            if (i2 < 32) {
                obj = vectorPointer.display0()[i & 31];
            } else if (i2 < 1024) {
                obj = ((Object[]) vectorPointer.display1()[(i >> 5) & 31])[i & 31];
            } else if (i2 < 32768) {
                obj = ((Object[]) ((Object[]) vectorPointer.display2()[(i >> 10) & 31])[(i >> 5) & 31])[i & 31];
            } else if (i2 < 1048576) {
                obj = ((Object[]) ((Object[]) ((Object[]) vectorPointer.display3()[(i >> 15) & 31])[(i >> 10) & 31])[(i >> 5) & 31])[i & 31];
            } else if (i2 < 33554432) {
                obj = ((Object[]) ((Object[]) ((Object[]) ((Object[]) vectorPointer.display4()[(i >> 20) & 31])[(i >> 15) & 31])[(i >> 10) & 31])[(i >> 5) & 31])[i & 31];
            } else if (i2 >= 1073741824) {
                throw new IllegalArgumentException();
            } else {
                obj = ((Object[]) ((Object[]) ((Object[]) ((Object[]) ((Object[]) vectorPointer.display5()[(i >> 25) & 31])[(i >> 20) & 31])[(i >> 15) & 31])[(i >> 10) & 31])[(i >> 5) & 31])[i & 31];
            }
            return obj;
        }

        public static final void gotoFreshPosWritable0(VectorPointer vectorPointer, int i, int i2, int i3) {
            if (i3 >= 32) {
                if (i3 < 1024) {
                    if (vectorPointer.depth() == 1) {
                        vectorPointer.display1_$eq(new Object[32]);
                        vectorPointer.display1()[(i >> 5) & 31] = vectorPointer.display0();
                        vectorPointer.depth_$eq(vectorPointer.depth() + 1);
                    }
                    vectorPointer.display0_$eq(new Object[32]);
                } else if (i3 < 32768) {
                    if (vectorPointer.depth() == 2) {
                        vectorPointer.display2_$eq(new Object[32]);
                        vectorPointer.display2()[(i >> 10) & 31] = vectorPointer.display1();
                        vectorPointer.depth_$eq(vectorPointer.depth() + 1);
                    }
                    vectorPointer.display1_$eq((Object[]) vectorPointer.display2()[(i2 >> 10) & 31]);
                    if (vectorPointer.display1() == null) {
                        vectorPointer.display1_$eq(new Object[32]);
                    }
                    vectorPointer.display0_$eq(new Object[32]);
                } else if (i3 < 1048576) {
                    if (vectorPointer.depth() == 3) {
                        vectorPointer.display3_$eq(new Object[32]);
                        vectorPointer.display3()[(i >> 15) & 31] = vectorPointer.display2();
                        vectorPointer.display2_$eq(new Object[32]);
                        vectorPointer.display1_$eq(new Object[32]);
                        vectorPointer.depth_$eq(vectorPointer.depth() + 1);
                    }
                    vectorPointer.display2_$eq((Object[]) vectorPointer.display3()[(i2 >> 15) & 31]);
                    if (vectorPointer.display2() == null) {
                        vectorPointer.display2_$eq(new Object[32]);
                    }
                    vectorPointer.display1_$eq((Object[]) vectorPointer.display2()[(i2 >> 10) & 31]);
                    if (vectorPointer.display1() == null) {
                        vectorPointer.display1_$eq(new Object[32]);
                    }
                    vectorPointer.display0_$eq(new Object[32]);
                } else if (i3 < 33554432) {
                    if (vectorPointer.depth() == 4) {
                        vectorPointer.display4_$eq(new Object[32]);
                        vectorPointer.display4()[(i >> 20) & 31] = vectorPointer.display3();
                        vectorPointer.display3_$eq(new Object[32]);
                        vectorPointer.display2_$eq(new Object[32]);
                        vectorPointer.display1_$eq(new Object[32]);
                        vectorPointer.depth_$eq(vectorPointer.depth() + 1);
                    }
                    vectorPointer.display3_$eq((Object[]) vectorPointer.display4()[(i2 >> 20) & 31]);
                    if (vectorPointer.display3() == null) {
                        vectorPointer.display3_$eq(new Object[32]);
                    }
                    vectorPointer.display2_$eq((Object[]) vectorPointer.display3()[(i2 >> 15) & 31]);
                    if (vectorPointer.display2() == null) {
                        vectorPointer.display2_$eq(new Object[32]);
                    }
                    vectorPointer.display1_$eq((Object[]) vectorPointer.display2()[(i2 >> 10) & 31]);
                    if (vectorPointer.display1() == null) {
                        vectorPointer.display1_$eq(new Object[32]);
                    }
                    vectorPointer.display0_$eq(new Object[32]);
                } else if (i3 >= 1073741824) {
                    throw new IllegalArgumentException();
                } else {
                    if (vectorPointer.depth() == 5) {
                        vectorPointer.display5_$eq(new Object[32]);
                        vectorPointer.display5()[(i >> 25) & 31] = vectorPointer.display4();
                        vectorPointer.display4_$eq(new Object[32]);
                        vectorPointer.display3_$eq(new Object[32]);
                        vectorPointer.display2_$eq(new Object[32]);
                        vectorPointer.display1_$eq(new Object[32]);
                        vectorPointer.depth_$eq(vectorPointer.depth() + 1);
                    }
                    int i4 = (i2 >> 20) & 31;
                    vectorPointer.display4_$eq((Object[]) vectorPointer.display5()[i4]);
                    if (vectorPointer.display4() == null) {
                        vectorPointer.display4_$eq(new Object[32]);
                    }
                    vectorPointer.display3_$eq((Object[]) vectorPointer.display4()[i4]);
                    if (vectorPointer.display3() == null) {
                        vectorPointer.display3_$eq(new Object[32]);
                    }
                    vectorPointer.display2_$eq((Object[]) vectorPointer.display3()[(i2 >> 15) & 31]);
                    if (vectorPointer.display2() == null) {
                        vectorPointer.display2_$eq(new Object[32]);
                    }
                    vectorPointer.display1_$eq((Object[]) vectorPointer.display2()[(i2 >> 10) & 31]);
                    if (vectorPointer.display1() == null) {
                        vectorPointer.display1_$eq(new Object[32]);
                    }
                    vectorPointer.display0_$eq(new Object[32]);
                }
            }
        }

        public static final void gotoFreshPosWritable1(VectorPointer vectorPointer, int i, int i2, int i3) {
            vectorPointer.stabilize(i);
            vectorPointer.gotoFreshPosWritable0(i, i2, i3);
        }

        public static final void gotoNextBlockStart(VectorPointer vectorPointer, int i, int i2) {
            if (i2 < 1024) {
                vectorPointer.display0_$eq((Object[]) vectorPointer.display1()[(i >> 5) & 31]);
            } else if (i2 < 32768) {
                vectorPointer.display1_$eq((Object[]) vectorPointer.display2()[(i >> 10) & 31]);
                vectorPointer.display0_$eq((Object[]) vectorPointer.display1()[0]);
            } else if (i2 < 1048576) {
                vectorPointer.display2_$eq((Object[]) vectorPointer.display3()[(i >> 15) & 31]);
                vectorPointer.display1_$eq((Object[]) vectorPointer.display2()[0]);
                vectorPointer.display0_$eq((Object[]) vectorPointer.display1()[0]);
            } else if (i2 < 33554432) {
                vectorPointer.display3_$eq((Object[]) vectorPointer.display4()[(i >> 20) & 31]);
                vectorPointer.display2_$eq((Object[]) vectorPointer.display3()[0]);
                vectorPointer.display1_$eq((Object[]) vectorPointer.display2()[0]);
                vectorPointer.display0_$eq((Object[]) vectorPointer.display1()[0]);
            } else if (i2 >= 1073741824) {
                throw new IllegalArgumentException();
            } else {
                vectorPointer.display4_$eq((Object[]) vectorPointer.display5()[(i >> 25) & 31]);
                vectorPointer.display3_$eq((Object[]) vectorPointer.display4()[0]);
                vectorPointer.display2_$eq((Object[]) vectorPointer.display3()[0]);
                vectorPointer.display1_$eq((Object[]) vectorPointer.display2()[0]);
                vectorPointer.display0_$eq((Object[]) vectorPointer.display1()[0]);
            }
        }

        public static final void gotoNextBlockStartWritable(VectorPointer vectorPointer, int i, int i2) {
            if (i2 < 1024) {
                if (vectorPointer.depth() == 1) {
                    vectorPointer.display1_$eq(new Object[32]);
                    vectorPointer.display1()[0] = vectorPointer.display0();
                    vectorPointer.depth_$eq(vectorPointer.depth() + 1);
                }
                vectorPointer.display0_$eq(new Object[32]);
                vectorPointer.display1()[(i >> 5) & 31] = vectorPointer.display0();
            } else if (i2 < 32768) {
                if (vectorPointer.depth() == 2) {
                    vectorPointer.display2_$eq(new Object[32]);
                    vectorPointer.display2()[0] = vectorPointer.display1();
                    vectorPointer.depth_$eq(vectorPointer.depth() + 1);
                }
                vectorPointer.display0_$eq(new Object[32]);
                vectorPointer.display1_$eq(new Object[32]);
                vectorPointer.display1()[(i >> 5) & 31] = vectorPointer.display0();
                vectorPointer.display2()[(i >> 10) & 31] = vectorPointer.display1();
            } else if (i2 < 1048576) {
                if (vectorPointer.depth() == 3) {
                    vectorPointer.display3_$eq(new Object[32]);
                    vectorPointer.display3()[0] = vectorPointer.display2();
                    vectorPointer.depth_$eq(vectorPointer.depth() + 1);
                }
                vectorPointer.display0_$eq(new Object[32]);
                vectorPointer.display1_$eq(new Object[32]);
                vectorPointer.display2_$eq(new Object[32]);
                vectorPointer.display1()[(i >> 5) & 31] = vectorPointer.display0();
                vectorPointer.display2()[(i >> 10) & 31] = vectorPointer.display1();
                vectorPointer.display3()[(i >> 15) & 31] = vectorPointer.display2();
            } else if (i2 < 33554432) {
                if (vectorPointer.depth() == 4) {
                    vectorPointer.display4_$eq(new Object[32]);
                    vectorPointer.display4()[0] = vectorPointer.display3();
                    vectorPointer.depth_$eq(vectorPointer.depth() + 1);
                }
                vectorPointer.display0_$eq(new Object[32]);
                vectorPointer.display1_$eq(new Object[32]);
                vectorPointer.display2_$eq(new Object[32]);
                vectorPointer.display3_$eq(new Object[32]);
                vectorPointer.display1()[(i >> 5) & 31] = vectorPointer.display0();
                vectorPointer.display2()[(i >> 10) & 31] = vectorPointer.display1();
                vectorPointer.display3()[(i >> 15) & 31] = vectorPointer.display2();
                vectorPointer.display4()[(i >> 20) & 31] = vectorPointer.display3();
            } else if (i2 >= 1073741824) {
                throw new IllegalArgumentException();
            } else {
                if (vectorPointer.depth() == 5) {
                    vectorPointer.display5_$eq(new Object[32]);
                    vectorPointer.display5()[0] = vectorPointer.display4();
                    vectorPointer.depth_$eq(vectorPointer.depth() + 1);
                }
                vectorPointer.display0_$eq(new Object[32]);
                vectorPointer.display1_$eq(new Object[32]);
                vectorPointer.display2_$eq(new Object[32]);
                vectorPointer.display3_$eq(new Object[32]);
                vectorPointer.display4_$eq(new Object[32]);
                vectorPointer.display1()[(i >> 5) & 31] = vectorPointer.display0();
                vectorPointer.display2()[(i >> 10) & 31] = vectorPointer.display1();
                vectorPointer.display3()[(i >> 15) & 31] = vectorPointer.display2();
                vectorPointer.display4()[(i >> 20) & 31] = vectorPointer.display3();
                vectorPointer.display5()[(i >> 25) & 31] = vectorPointer.display4();
            }
        }

        public static final void gotoPos(VectorPointer vectorPointer, int i, int i2) {
            if (i2 >= 32) {
                if (i2 < 1024) {
                    vectorPointer.display0_$eq((Object[]) vectorPointer.display1()[(i >> 5) & 31]);
                } else if (i2 < 32768) {
                    vectorPointer.display1_$eq((Object[]) vectorPointer.display2()[(i >> 10) & 31]);
                    vectorPointer.display0_$eq((Object[]) vectorPointer.display1()[(i >> 5) & 31]);
                } else if (i2 < 1048576) {
                    vectorPointer.display2_$eq((Object[]) vectorPointer.display3()[(i >> 15) & 31]);
                    vectorPointer.display1_$eq((Object[]) vectorPointer.display2()[(i >> 10) & 31]);
                    vectorPointer.display0_$eq((Object[]) vectorPointer.display1()[(i >> 5) & 31]);
                } else if (i2 < 33554432) {
                    vectorPointer.display3_$eq((Object[]) vectorPointer.display4()[(i >> 20) & 31]);
                    vectorPointer.display2_$eq((Object[]) vectorPointer.display3()[(i >> 15) & 31]);
                    vectorPointer.display1_$eq((Object[]) vectorPointer.display2()[(i >> 10) & 31]);
                    vectorPointer.display0_$eq((Object[]) vectorPointer.display1()[(i >> 5) & 31]);
                } else if (i2 >= 1073741824) {
                    throw new IllegalArgumentException();
                } else {
                    vectorPointer.display4_$eq((Object[]) vectorPointer.display5()[(i >> 25) & 31]);
                    vectorPointer.display3_$eq((Object[]) vectorPointer.display4()[(i >> 20) & 31]);
                    vectorPointer.display2_$eq((Object[]) vectorPointer.display3()[(i >> 15) & 31]);
                    vectorPointer.display1_$eq((Object[]) vectorPointer.display2()[(i >> 10) & 31]);
                    vectorPointer.display0_$eq((Object[]) vectorPointer.display1()[(i >> 5) & 31]);
                }
            }
        }

        public static final void gotoPosWritable0(VectorPointer vectorPointer, int i, int i2) {
            int depth = vectorPointer.depth() - 1;
            if (depth == 0) {
                vectorPointer.display0_$eq(vectorPointer.copyOf(vectorPointer.display0()));
            } else if (depth == 1) {
                vectorPointer.display1_$eq(vectorPointer.copyOf(vectorPointer.display1()));
                vectorPointer.display0_$eq(vectorPointer.nullSlotAndCopy(vectorPointer.display1(), (i >> 5) & 31));
            } else if (depth == 2) {
                vectorPointer.display2_$eq(vectorPointer.copyOf(vectorPointer.display2()));
                vectorPointer.display1_$eq(vectorPointer.nullSlotAndCopy(vectorPointer.display2(), (i >> 10) & 31));
                vectorPointer.display0_$eq(vectorPointer.nullSlotAndCopy(vectorPointer.display1(), (i >> 5) & 31));
            } else if (depth == 3) {
                vectorPointer.display3_$eq(vectorPointer.copyOf(vectorPointer.display3()));
                vectorPointer.display2_$eq(vectorPointer.nullSlotAndCopy(vectorPointer.display3(), (i >> 15) & 31));
                vectorPointer.display1_$eq(vectorPointer.nullSlotAndCopy(vectorPointer.display2(), (i >> 10) & 31));
                vectorPointer.display0_$eq(vectorPointer.nullSlotAndCopy(vectorPointer.display1(), (i >> 5) & 31));
            } else if (depth == 4) {
                vectorPointer.display4_$eq(vectorPointer.copyOf(vectorPointer.display4()));
                vectorPointer.display3_$eq(vectorPointer.nullSlotAndCopy(vectorPointer.display4(), (i >> 20) & 31));
                vectorPointer.display2_$eq(vectorPointer.nullSlotAndCopy(vectorPointer.display3(), (i >> 15) & 31));
                vectorPointer.display1_$eq(vectorPointer.nullSlotAndCopy(vectorPointer.display2(), (i >> 10) & 31));
                vectorPointer.display0_$eq(vectorPointer.nullSlotAndCopy(vectorPointer.display1(), (i >> 5) & 31));
            } else if (depth != 5) {
                throw new MatchError(BoxesRunTime.boxToInteger(depth));
            } else {
                vectorPointer.display5_$eq(vectorPointer.copyOf(vectorPointer.display5()));
                vectorPointer.display4_$eq(vectorPointer.nullSlotAndCopy(vectorPointer.display5(), (i >> 25) & 31));
                vectorPointer.display3_$eq(vectorPointer.nullSlotAndCopy(vectorPointer.display4(), (i >> 20) & 31));
                vectorPointer.display2_$eq(vectorPointer.nullSlotAndCopy(vectorPointer.display3(), (i >> 15) & 31));
                vectorPointer.display1_$eq(vectorPointer.nullSlotAndCopy(vectorPointer.display2(), (i >> 10) & 31));
                vectorPointer.display0_$eq(vectorPointer.nullSlotAndCopy(vectorPointer.display1(), (i >> 5) & 31));
            }
        }

        public static final void gotoPosWritable1(VectorPointer vectorPointer, int i, int i2, int i3) {
            if (i3 < 32) {
                vectorPointer.display0_$eq(vectorPointer.copyOf(vectorPointer.display0()));
            } else if (i3 < 1024) {
                vectorPointer.display1_$eq(vectorPointer.copyOf(vectorPointer.display1()));
                vectorPointer.display1()[(i >> 5) & 31] = vectorPointer.display0();
                vectorPointer.display0_$eq(vectorPointer.nullSlotAndCopy(vectorPointer.display1(), (i2 >> 5) & 31));
            } else if (i3 < 32768) {
                vectorPointer.display1_$eq(vectorPointer.copyOf(vectorPointer.display1()));
                vectorPointer.display2_$eq(vectorPointer.copyOf(vectorPointer.display2()));
                vectorPointer.display1()[(i >> 5) & 31] = vectorPointer.display0();
                vectorPointer.display2()[(i >> 10) & 31] = vectorPointer.display1();
                vectorPointer.display1_$eq(vectorPointer.nullSlotAndCopy(vectorPointer.display2(), (i2 >> 10) & 31));
                vectorPointer.display0_$eq(vectorPointer.nullSlotAndCopy(vectorPointer.display1(), (i2 >> 5) & 31));
            } else if (i3 < 1048576) {
                vectorPointer.display1_$eq(vectorPointer.copyOf(vectorPointer.display1()));
                vectorPointer.display2_$eq(vectorPointer.copyOf(vectorPointer.display2()));
                vectorPointer.display3_$eq(vectorPointer.copyOf(vectorPointer.display3()));
                vectorPointer.display1()[(i >> 5) & 31] = vectorPointer.display0();
                vectorPointer.display2()[(i >> 10) & 31] = vectorPointer.display1();
                vectorPointer.display3()[(i >> 15) & 31] = vectorPointer.display2();
                vectorPointer.display2_$eq(vectorPointer.nullSlotAndCopy(vectorPointer.display3(), (i2 >> 15) & 31));
                vectorPointer.display1_$eq(vectorPointer.nullSlotAndCopy(vectorPointer.display2(), (i2 >> 10) & 31));
                vectorPointer.display0_$eq(vectorPointer.nullSlotAndCopy(vectorPointer.display1(), (i2 >> 5) & 31));
            } else if (i3 < 33554432) {
                vectorPointer.display1_$eq(vectorPointer.copyOf(vectorPointer.display1()));
                vectorPointer.display2_$eq(vectorPointer.copyOf(vectorPointer.display2()));
                vectorPointer.display3_$eq(vectorPointer.copyOf(vectorPointer.display3()));
                vectorPointer.display4_$eq(vectorPointer.copyOf(vectorPointer.display4()));
                vectorPointer.display1()[(i >> 5) & 31] = vectorPointer.display0();
                vectorPointer.display2()[(i >> 10) & 31] = vectorPointer.display1();
                vectorPointer.display3()[(i >> 15) & 31] = vectorPointer.display2();
                vectorPointer.display4()[(i >> 20) & 31] = vectorPointer.display3();
                vectorPointer.display3_$eq(vectorPointer.nullSlotAndCopy(vectorPointer.display4(), (i2 >> 20) & 31));
                vectorPointer.display2_$eq(vectorPointer.nullSlotAndCopy(vectorPointer.display3(), (i2 >> 15) & 31));
                vectorPointer.display1_$eq(vectorPointer.nullSlotAndCopy(vectorPointer.display2(), (i2 >> 10) & 31));
                vectorPointer.display0_$eq(vectorPointer.nullSlotAndCopy(vectorPointer.display1(), (i2 >> 5) & 31));
            } else if (i3 >= 1073741824) {
                throw new IllegalArgumentException();
            } else {
                vectorPointer.display1_$eq(vectorPointer.copyOf(vectorPointer.display1()));
                vectorPointer.display2_$eq(vectorPointer.copyOf(vectorPointer.display2()));
                vectorPointer.display3_$eq(vectorPointer.copyOf(vectorPointer.display3()));
                vectorPointer.display4_$eq(vectorPointer.copyOf(vectorPointer.display4()));
                vectorPointer.display5_$eq(vectorPointer.copyOf(vectorPointer.display5()));
                vectorPointer.display1()[(i >> 5) & 31] = vectorPointer.display0();
                vectorPointer.display2()[(i >> 10) & 31] = vectorPointer.display1();
                vectorPointer.display3()[(i >> 15) & 31] = vectorPointer.display2();
                vectorPointer.display4()[(i >> 20) & 31] = vectorPointer.display3();
                vectorPointer.display5()[(i >> 25) & 31] = vectorPointer.display4();
                vectorPointer.display4_$eq(vectorPointer.nullSlotAndCopy(vectorPointer.display5(), (i2 >> 25) & 31));
                vectorPointer.display3_$eq(vectorPointer.nullSlotAndCopy(vectorPointer.display4(), (i2 >> 20) & 31));
                vectorPointer.display2_$eq(vectorPointer.nullSlotAndCopy(vectorPointer.display3(), (i2 >> 15) & 31));
                vectorPointer.display1_$eq(vectorPointer.nullSlotAndCopy(vectorPointer.display2(), (i2 >> 10) & 31));
                vectorPointer.display0_$eq(vectorPointer.nullSlotAndCopy(vectorPointer.display1(), (i2 >> 5) & 31));
            }
        }

        public static final void initFrom(VectorPointer vectorPointer, VectorPointer vectorPointer2) {
            vectorPointer.initFrom(vectorPointer2, vectorPointer2.depth());
        }

        public static final void initFrom(VectorPointer vectorPointer, VectorPointer vectorPointer2, int i) {
            vectorPointer.depth_$eq(i);
            int i2 = i - 1;
            switch (i2) {
                case -1:
                    return;
                case 0:
                    vectorPointer.display0_$eq(vectorPointer2.display0());
                    return;
                case 1:
                    vectorPointer.display1_$eq(vectorPointer2.display1());
                    vectorPointer.display0_$eq(vectorPointer2.display0());
                    return;
                case 2:
                    vectorPointer.display2_$eq(vectorPointer2.display2());
                    vectorPointer.display1_$eq(vectorPointer2.display1());
                    vectorPointer.display0_$eq(vectorPointer2.display0());
                    return;
                case 3:
                    vectorPointer.display3_$eq(vectorPointer2.display3());
                    vectorPointer.display2_$eq(vectorPointer2.display2());
                    vectorPointer.display1_$eq(vectorPointer2.display1());
                    vectorPointer.display0_$eq(vectorPointer2.display0());
                    return;
                case 4:
                    vectorPointer.display4_$eq(vectorPointer2.display4());
                    vectorPointer.display3_$eq(vectorPointer2.display3());
                    vectorPointer.display2_$eq(vectorPointer2.display2());
                    vectorPointer.display1_$eq(vectorPointer2.display1());
                    vectorPointer.display0_$eq(vectorPointer2.display0());
                    return;
                case 5:
                    vectorPointer.display5_$eq(vectorPointer2.display5());
                    vectorPointer.display4_$eq(vectorPointer2.display4());
                    vectorPointer.display3_$eq(vectorPointer2.display3());
                    vectorPointer.display2_$eq(vectorPointer2.display2());
                    vectorPointer.display1_$eq(vectorPointer2.display1());
                    vectorPointer.display0_$eq(vectorPointer2.display0());
                    return;
                default:
                    throw new MatchError(BoxesRunTime.boxToInteger(i2));
            }
        }

        public static final Object[] nullSlotAndCopy(VectorPointer vectorPointer, Object[] objArr, int i) {
            Object obj = objArr[i];
            objArr[i] = null;
            return vectorPointer.copyOf((Object[]) obj);
        }

        public static final void stabilize(VectorPointer vectorPointer, int i) {
            int depth = vectorPointer.depth() - 1;
            if (depth != 0) {
                if (depth == 1) {
                    vectorPointer.display1_$eq(vectorPointer.copyOf(vectorPointer.display1()));
                    vectorPointer.display1()[(i >> 5) & 31] = vectorPointer.display0();
                } else if (depth == 2) {
                    vectorPointer.display2_$eq(vectorPointer.copyOf(vectorPointer.display2()));
                    vectorPointer.display1_$eq(vectorPointer.copyOf(vectorPointer.display1()));
                    vectorPointer.display2()[(i >> 10) & 31] = vectorPointer.display1();
                    vectorPointer.display1()[(i >> 5) & 31] = vectorPointer.display0();
                } else if (depth == 3) {
                    vectorPointer.display3_$eq(vectorPointer.copyOf(vectorPointer.display3()));
                    vectorPointer.display2_$eq(vectorPointer.copyOf(vectorPointer.display2()));
                    vectorPointer.display1_$eq(vectorPointer.copyOf(vectorPointer.display1()));
                    vectorPointer.display3()[(i >> 15) & 31] = vectorPointer.display2();
                    vectorPointer.display2()[(i >> 10) & 31] = vectorPointer.display1();
                    vectorPointer.display1()[(i >> 5) & 31] = vectorPointer.display0();
                } else if (depth == 4) {
                    vectorPointer.display4_$eq(vectorPointer.copyOf(vectorPointer.display4()));
                    vectorPointer.display3_$eq(vectorPointer.copyOf(vectorPointer.display3()));
                    vectorPointer.display2_$eq(vectorPointer.copyOf(vectorPointer.display2()));
                    vectorPointer.display1_$eq(vectorPointer.copyOf(vectorPointer.display1()));
                    vectorPointer.display4()[(i >> 20) & 31] = vectorPointer.display3();
                    vectorPointer.display3()[(i >> 15) & 31] = vectorPointer.display2();
                    vectorPointer.display2()[(i >> 10) & 31] = vectorPointer.display1();
                    vectorPointer.display1()[(i >> 5) & 31] = vectorPointer.display0();
                } else if (depth != 5) {
                    throw new MatchError(BoxesRunTime.boxToInteger(depth));
                } else {
                    vectorPointer.display5_$eq(vectorPointer.copyOf(vectorPointer.display5()));
                    vectorPointer.display4_$eq(vectorPointer.copyOf(vectorPointer.display4()));
                    vectorPointer.display3_$eq(vectorPointer.copyOf(vectorPointer.display3()));
                    vectorPointer.display2_$eq(vectorPointer.copyOf(vectorPointer.display2()));
                    vectorPointer.display1_$eq(vectorPointer.copyOf(vectorPointer.display1()));
                    vectorPointer.display5()[(i >> 25) & 31] = vectorPointer.display4();
                    vectorPointer.display4()[(i >> 20) & 31] = vectorPointer.display3();
                    vectorPointer.display3()[(i >> 15) & 31] = vectorPointer.display2();
                    vectorPointer.display2()[(i >> 10) & 31] = vectorPointer.display1();
                    vectorPointer.display1()[(i >> 5) & 31] = vectorPointer.display0();
                }
            }
        }
    }

    Object[] copyOf(Object[] objArr);

    Object[] copyRange(Object[] objArr, int i, int i2);

    void debug();

    int depth();

    @TraitSetter
    void depth_$eq(int i);

    Object[] display0();

    @TraitSetter
    void display0_$eq(Object[] objArr);

    Object[] display1();

    @TraitSetter
    void display1_$eq(Object[] objArr);

    Object[] display2();

    @TraitSetter
    void display2_$eq(Object[] objArr);

    Object[] display3();

    @TraitSetter
    void display3_$eq(Object[] objArr);

    Object[] display4();

    @TraitSetter
    void display4_$eq(Object[] objArr);

    Object[] display5();

    @TraitSetter
    void display5_$eq(Object[] objArr);

    T getElem(int i, int i2);

    void gotoFreshPosWritable0(int i, int i2, int i3);

    void gotoFreshPosWritable1(int i, int i2, int i3);

    void gotoNextBlockStart(int i, int i2);

    void gotoNextBlockStartWritable(int i, int i2);

    void gotoPos(int i, int i2);

    void gotoPosWritable0(int i, int i2);

    void gotoPosWritable1(int i, int i2, int i3);

    <U> void initFrom(VectorPointer<U> vectorPointer);

    <U> void initFrom(VectorPointer<U> vectorPointer, int i);

    Object[] nullSlotAndCopy(Object[] objArr, int i);

    void stabilize(int i);
}
