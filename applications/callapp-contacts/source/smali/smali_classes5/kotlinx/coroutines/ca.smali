.class public Lkotlinx/coroutines/ca;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/bv;
.implements Lkotlinx/coroutines/ci;
.implements Lkotlinx/coroutines/v;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/ca$c;,
        Lkotlinx/coroutines/ca$b;,
        Lkotlinx/coroutines/ca$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00e8\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0001\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0012\u0008\u0017\u0018\u00002\u00020X2\u00020\u00172\u00030\u0081\u00012\u00030\u00c5\u0001:\u0006\u00d4\u0001\u00d5\u0001\u00d6\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\'\u0010\u000b\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ%\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\r2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000fH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0019\u0010\u0015\u001a\u00020\u00112\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0005H\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0015\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0015\u0010\u001e\u001a\u0004\u0018\u00010\u0005H\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0015\u0010\u001f\u001a\u0004\u0018\u00010\u0005H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001f\u0010\u001dJ\u0019\u0010!\u001a\u00020\u00012\u0008\u0010 \u001a\u0004\u0018\u00010\rH\u0017\u00a2\u0006\u0004\u0008!\u0010\"J\u001f\u0010!\u001a\u00020\u00112\u000e\u0010 \u001a\n\u0018\u00010#j\u0004\u0018\u0001`$H\u0016\u00a2\u0006\u0004\u0008!\u0010%J\u0017\u0010&\u001a\u00020\u00012\u0008\u0010 \u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008&\u0010\"J\u0019\u0010)\u001a\u00020\u00012\u0008\u0010 \u001a\u0004\u0018\u00010\u0005H\u0000\u00a2\u0006\u0004\u0008\'\u0010(J\u0017\u0010*\u001a\u00020\u00112\u0006\u0010 \u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008*\u0010+J\u001b\u0010,\u001a\u0004\u0018\u00010\u00052\u0008\u0010 \u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0004\u0008,\u0010-J\u0017\u0010.\u001a\u00020\u00012\u0006\u0010 \u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008.\u0010\"J\u000f\u00100\u001a\u00020/H\u0014\u00a2\u0006\u0004\u00080\u00101J\u0017\u00102\u001a\u00020\u00012\u0006\u0010 \u001a\u00020\rH\u0016\u00a2\u0006\u0004\u00082\u0010\"J!\u00105\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u0002032\u0008\u00104\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0004\u00085\u00106J)\u0010;\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u0002072\u0006\u00109\u001a\u0002082\u0008\u0010:\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0004\u0008;\u0010<J\u0019\u0010=\u001a\u00020\r2\u0008\u0010 \u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0004\u0008=\u0010>J(\u0010C\u001a\u00020@2\n\u0008\u0002\u0010?\u001a\u0004\u0018\u00010/2\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\rH\u0080\u0008\u00a2\u0006\u0004\u0008A\u0010BJ#\u0010D\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0014\u001a\u0002072\u0008\u0010:\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0004\u0008D\u0010EJ\u0019\u0010F\u001a\u0004\u0018\u0001082\u0006\u0010\u0014\u001a\u000203H\u0002\u00a2\u0006\u0004\u0008F\u0010GJ\u0011\u0010H\u001a\u00060#j\u0002`$\u00a2\u0006\u0004\u0008H\u0010IJ\u0013\u0010J\u001a\u00060#j\u0002`$H\u0016\u00a2\u0006\u0004\u0008J\u0010IJ\u0011\u0010M\u001a\u0004\u0018\u00010\u0005H\u0000\u00a2\u0006\u0004\u0008K\u0010LJ\u000f\u0010N\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008N\u0010OJ\'\u0010P\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0014\u001a\u0002072\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000fH\u0002\u00a2\u0006\u0004\u0008P\u0010QJ\u0019\u0010R\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0014\u001a\u000203H\u0002\u00a2\u0006\u0004\u0008R\u0010SJ\u0017\u0010U\u001a\u00020\u00012\u0006\u0010T\u001a\u00020\rH\u0014\u00a2\u0006\u0004\u0008U\u0010\"J\u0017\u0010W\u001a\u00020\u00112\u0006\u0010T\u001a\u00020\rH\u0010\u00a2\u0006\u0004\u0008V\u0010+J\u0019\u0010\\\u001a\u00020\u00112\u0008\u0010Y\u001a\u0004\u0018\u00010XH\u0000\u00a2\u0006\u0004\u0008Z\u0010[JF\u0010e\u001a\u00020d2\u0006\u0010]\u001a\u00020\u00012\u0006\u0010^\u001a\u00020\u00012\'\u0010c\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\r\u00a2\u0006\u000c\u0008`\u0012\u0008\u0008a\u0012\u0004\u0008\u0008( \u0012\u0004\u0012\u00020\u00110_j\u0002`b\u00a2\u0006\u0004\u0008e\u0010fJ6\u0010e\u001a\u00020d2\'\u0010c\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\r\u00a2\u0006\u000c\u0008`\u0012\u0008\u0008a\u0012\u0004\u0008\u0008( \u0012\u0004\u0012\u00020\u00110_j\u0002`b\u00a2\u0006\u0004\u0008e\u0010gJ\u0013\u0010h\u001a\u00020\u0011H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008h\u0010\u001dJ\u000f\u0010i\u001a\u00020\u0001H\u0002\u00a2\u0006\u0004\u0008i\u0010jJ\u0013\u0010k\u001a\u00020\u0011H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008k\u0010\u001dJ&\u0010n\u001a\u00020m2\u0014\u0010l\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00110_H\u0082\u0008\u00a2\u0006\u0004\u0008n\u0010oJ\u001b\u0010p\u001a\u0004\u0018\u00010\u00052\u0008\u0010 \u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0004\u0008p\u0010-J\u0019\u0010r\u001a\u00020\u00012\u0008\u0010:\u001a\u0004\u0018\u00010\u0005H\u0000\u00a2\u0006\u0004\u0008q\u0010(J\u001b\u0010t\u001a\u0004\u0018\u00010\u00052\u0008\u0010:\u001a\u0004\u0018\u00010\u0005H\u0000\u00a2\u0006\u0004\u0008s\u0010-J@\u0010u\u001a\u00020\t2\'\u0010c\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\r\u00a2\u0006\u000c\u0008`\u0012\u0008\u0008a\u0012\u0004\u0008\u0008( \u0012\u0004\u0012\u00020\u00110_j\u0002`b2\u0006\u0010]\u001a\u00020\u0001H\u0002\u00a2\u0006\u0004\u0008u\u0010vJ\u000f\u0010x\u001a\u00020/H\u0010\u00a2\u0006\u0004\u0008w\u00101J\u001f\u0010y\u001a\u00020\u00112\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008y\u0010zJ.\u0010|\u001a\u00020\u0011\"\n\u0008\u0000\u0010{\u0018\u0001*\u00020\t2\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010 \u001a\u0004\u0018\u00010\rH\u0082\u0008\u00a2\u0006\u0004\u0008|\u0010zJ\u0019\u0010]\u001a\u00020\u00112\u0008\u0010 \u001a\u0004\u0018\u00010\rH\u0014\u00a2\u0006\u0004\u0008]\u0010+J\u0019\u0010}\u001a\u00020\u00112\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0005H\u0014\u00a2\u0006\u0004\u0008}\u0010\u0016J\u0010\u0010\u0080\u0001\u001a\u00020\u0011H\u0010\u00a2\u0006\u0004\u0008~\u0010\u007fJ\u001a\u0010\u0083\u0001\u001a\u00020\u00112\u0008\u0010\u0082\u0001\u001a\u00030\u0081\u0001\u00a2\u0006\u0006\u0008\u0083\u0001\u0010\u0084\u0001J\u001b\u0010\u0086\u0001\u001a\u00020\u00112\u0007\u0010\u0014\u001a\u00030\u0085\u0001H\u0002\u00a2\u0006\u0006\u0008\u0086\u0001\u0010\u0087\u0001J\u001a\u0010\u0088\u0001\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\tH\u0002\u00a2\u0006\u0006\u0008\u0088\u0001\u0010\u0089\u0001JI\u0010\u008e\u0001\u001a\u00020\u0011\"\u0005\u0008\u0000\u0010\u008a\u00012\u000e\u0010\u008c\u0001\u001a\t\u0012\u0004\u0012\u00028\u00000\u008b\u00012\u001d\u0010l\u001a\u0019\u0008\u0001\u0012\u000b\u0012\t\u0012\u0004\u0012\u00028\u00000\u008d\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00050_\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u008e\u0001\u0010\u008f\u0001JX\u0010\u0093\u0001\u001a\u00020\u0011\"\u0004\u0008\u0000\u0010{\"\u0005\u0008\u0001\u0010\u008a\u00012\u000e\u0010\u008c\u0001\u001a\t\u0012\u0004\u0012\u00028\u00010\u008b\u00012$\u0010l\u001a \u0008\u0001\u0012\u0004\u0012\u00028\u0000\u0012\u000b\u0012\t\u0012\u0004\u0012\u00028\u00010\u008d\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0090\u0001H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u0091\u0001\u0010\u0092\u0001J\u001a\u0010\u0095\u0001\u001a\u00020\u00112\u0006\u0010\n\u001a\u00020\tH\u0000\u00a2\u0006\u0006\u0008\u0094\u0001\u0010\u0089\u0001JX\u0010\u0097\u0001\u001a\u00020\u0011\"\u0004\u0008\u0000\u0010{\"\u0005\u0008\u0001\u0010\u008a\u00012\u000e\u0010\u008c\u0001\u001a\t\u0012\u0004\u0012\u00028\u00010\u008b\u00012$\u0010l\u001a \u0008\u0001\u0012\u0004\u0012\u00028\u0000\u0012\u000b\u0012\t\u0012\u0004\u0012\u00028\u00010\u008d\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0090\u0001H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u0096\u0001\u0010\u0092\u0001J\u000f\u0010\u0098\u0001\u001a\u00020\u0001\u00a2\u0006\u0005\u0008\u0098\u0001\u0010jJ\u001d\u0010\u009a\u0001\u001a\u00030\u0099\u00012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0006\u0008\u009a\u0001\u0010\u009b\u0001J\u001c\u0010\u009c\u0001\u001a\u00020/2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0006\u0008\u009c\u0001\u0010\u009d\u0001J\u0011\u0010\u009e\u0001\u001a\u00020/H\u0007\u00a2\u0006\u0005\u0008\u009e\u0001\u00101J\u0011\u0010\u009f\u0001\u001a\u00020/H\u0016\u00a2\u0006\u0005\u0008\u009f\u0001\u00101J$\u0010\u00a0\u0001\u001a\u00020\u00012\u0006\u0010\u0014\u001a\u0002032\u0008\u00104\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0006\u0008\u00a0\u0001\u0010\u00a1\u0001J\"\u0010\u00a2\u0001\u001a\u00020\u00012\u0006\u0010\u0014\u001a\u0002032\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0006\u0008\u00a2\u0001\u0010\u00a3\u0001J(\u0010\u00a4\u0001\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00052\u0008\u0010:\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0006\u0008\u00a4\u0001\u0010\u00a5\u0001J&\u0010\u00a6\u0001\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0014\u001a\u0002032\u0008\u0010:\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0006\u0008\u00a6\u0001\u0010\u00a7\u0001J-\u0010\u00a8\u0001\u001a\u00020\u00012\u0006\u0010\u0014\u001a\u0002072\u0006\u0010\u0018\u001a\u0002082\u0008\u0010:\u001a\u0004\u0018\u00010\u0005H\u0082\u0010\u00a2\u0006\u0006\u0008\u00a8\u0001\u0010\u00a9\u0001J\u0019\u0010\u00ab\u0001\u001a\u0004\u0018\u000108*\u00030\u00aa\u0001H\u0002\u00a2\u0006\u0006\u0008\u00ab\u0001\u0010\u00ac\u0001J\u001f\u0010\u00ad\u0001\u001a\u00020\u0011*\u00020\u00072\u0008\u0010 \u001a\u0004\u0018\u00010\rH\u0002\u00a2\u0006\u0005\u0008\u00ad\u0001\u0010zJ&\u0010\u00ae\u0001\u001a\u00060#j\u0002`$*\u00020\r2\n\u0008\u0002\u0010?\u001a\u0004\u0018\u00010/H\u0004\u00a2\u0006\u0006\u0008\u00ae\u0001\u0010\u00af\u0001R\u001d\u0010\u00b3\u0001\u001a\t\u0012\u0004\u0012\u00020X0\u00b0\u00018F@\u0006\u00a2\u0006\u0008\u001a\u0006\u0008\u00b1\u0001\u0010\u00b2\u0001R\u001a\u0010\u00b5\u0001\u001a\u0004\u0018\u00010\r8D@\u0004X\u0084\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00b4\u0001\u0010OR\u0018\u0010\u00b7\u0001\u001a\u00020\u00018D@\u0004X\u0084\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00b6\u0001\u0010jR\u0018\u0010\u00b9\u0001\u001a\u00020\u00018P@\u0010X\u0090\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00b8\u0001\u0010jR\u0018\u0010\u00ba\u0001\u001a\u00020\u00018V@\u0016X\u0096\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00ba\u0001\u0010jR\u0015\u0010\u00bb\u0001\u001a\u00020\u00018F@\u0006\u00a2\u0006\u0007\u001a\u0005\u0008\u00bb\u0001\u0010jR\u0015\u0010\u00bc\u0001\u001a\u00020\u00018F@\u0006\u00a2\u0006\u0007\u001a\u0005\u0008\u00bc\u0001\u0010jR\u0015\u0010\u00bd\u0001\u001a\u00020\u00018F@\u0006\u00a2\u0006\u0007\u001a\u0005\u0008\u00bd\u0001\u0010jR\u0018\u0010\u00be\u0001\u001a\u00020\u00018T@\u0014X\u0094\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00be\u0001\u0010jR\u001b\u0010\u00c2\u0001\u001a\u0007\u0012\u0002\u0008\u00030\u00bf\u00018F@\u0006\u00a2\u0006\u0008\u001a\u0006\u0008\u00c0\u0001\u0010\u00c1\u0001R\u0018\u0010\u00c4\u0001\u001a\u00020\u00018P@\u0010X\u0090\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00c3\u0001\u0010jR\u0017\u0010\u00c8\u0001\u001a\u00030\u00c5\u00018F@\u0006\u00a2\u0006\u0008\u001a\u0006\u0008\u00c6\u0001\u0010\u00c7\u0001R.\u0010\u00ce\u0001\u001a\u0004\u0018\u00010\u00192\t\u0010\u00c9\u0001\u001a\u0004\u0018\u00010\u00198@@@X\u0080\u000e\u00a2\u0006\u0010\u001a\u0006\u0008\u00ca\u0001\u0010\u00cb\u0001\"\u0006\u0008\u00cc\u0001\u0010\u00cd\u0001R\u0019\u0010\u0014\u001a\u0004\u0018\u00010\u00058@@\u0000X\u0080\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00cf\u0001\u0010LR \u0010\u00d1\u0001\u001a\u0004\u0018\u00010\r*\u0004\u0018\u00010\u00058B@\u0002X\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00d0\u0001\u0010>R\u001d\u0010\u00d2\u0001\u001a\u00020\u0001*\u0002038B@\u0002X\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00d2\u0001\u0010\u00d3\u0001\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u00d7\u0001"
    }
    d2 = {
        "Lkotlinx/coroutines/JobSupport;",
        "",
        "active",
        "<init>",
        "(Z)V",
        "",
        "expect",
        "Lkotlinx/coroutines/NodeList;",
        "list",
        "Lkotlinx/coroutines/JobNode;",
        "node",
        "addLastAtomic",
        "(Ljava/lang/Object;Lkotlinx/coroutines/NodeList;Lkotlinx/coroutines/JobNode;)Z",
        "",
        "rootCause",
        "",
        "exceptions",
        "",
        "addSuppressedExceptions",
        "(Ljava/lang/Throwable;Ljava/util/List;)V",
        "state",
        "afterCompletion",
        "(Ljava/lang/Object;)V",
        "Lkotlinx/coroutines/ChildJob;",
        "child",
        "Lkotlinx/coroutines/ChildHandle;",
        "attachChild",
        "(Lkotlinx/coroutines/ChildJob;)Lkotlinx/coroutines/ChildHandle;",
        "awaitInternal$kotlinx_coroutines_core",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "awaitInternal",
        "awaitSuspend",
        "cause",
        "cancel",
        "(Ljava/lang/Throwable;)Z",
        "Ljava/util/concurrent/CancellationException;",
        "Lkotlinx/coroutines/CancellationException;",
        "(Ljava/util/concurrent/CancellationException;)V",
        "cancelCoroutine",
        "cancelImpl$kotlinx_coroutines_core",
        "(Ljava/lang/Object;)Z",
        "cancelImpl",
        "cancelInternal",
        "(Ljava/lang/Throwable;)V",
        "cancelMakeCompleting",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "cancelParent",
        "",
        "cancellationExceptionMessage",
        "()Ljava/lang/String;",
        "childCancelled",
        "Lkotlinx/coroutines/Incomplete;",
        "update",
        "completeStateFinalization",
        "(Lkotlinx/coroutines/Incomplete;Ljava/lang/Object;)V",
        "Lkotlinx/coroutines/JobSupport$Finishing;",
        "Lkotlinx/coroutines/ChildHandleNode;",
        "lastChild",
        "proposedUpdate",
        "continueCompleting",
        "(Lkotlinx/coroutines/JobSupport$Finishing;Lkotlinx/coroutines/ChildHandleNode;Ljava/lang/Object;)V",
        "createCauseException",
        "(Ljava/lang/Object;)Ljava/lang/Throwable;",
        "message",
        "Lkotlinx/coroutines/JobCancellationException;",
        "defaultCancellationException$kotlinx_coroutines_core",
        "(Ljava/lang/String;Ljava/lang/Throwable;)Lkotlinx/coroutines/JobCancellationException;",
        "defaultCancellationException",
        "finalizeFinishingState",
        "(Lkotlinx/coroutines/JobSupport$Finishing;Ljava/lang/Object;)Ljava/lang/Object;",
        "firstChild",
        "(Lkotlinx/coroutines/Incomplete;)Lkotlinx/coroutines/ChildHandleNode;",
        "getCancellationException",
        "()Ljava/util/concurrent/CancellationException;",
        "getChildJobCancellationCause",
        "getCompletedInternal$kotlinx_coroutines_core",
        "()Ljava/lang/Object;",
        "getCompletedInternal",
        "getCompletionExceptionOrNull",
        "()Ljava/lang/Throwable;",
        "getFinalRootCause",
        "(Lkotlinx/coroutines/JobSupport$Finishing;Ljava/util/List;)Ljava/lang/Throwable;",
        "getOrPromoteCancellingList",
        "(Lkotlinx/coroutines/Incomplete;)Lkotlinx/coroutines/NodeList;",
        "exception",
        "handleJobException",
        "handleOnCompletionException$kotlinx_coroutines_core",
        "handleOnCompletionException",
        "Lkotlinx/coroutines/Job;",
        "parent",
        "initParentJobInternal$kotlinx_coroutines_core",
        "(Lkotlinx/coroutines/Job;)V",
        "initParentJobInternal",
        "onCancelling",
        "invokeImmediately",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "Lkotlinx/coroutines/CompletionHandler;",
        "handler",
        "Lkotlinx/coroutines/DisposableHandle;",
        "invokeOnCompletion",
        "(ZZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;",
        "(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;",
        "join",
        "joinInternal",
        "()Z",
        "joinSuspend",
        "block",
        "",
        "loopOnState",
        "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Void;",
        "makeCancelling",
        "makeCompleting$kotlinx_coroutines_core",
        "makeCompleting",
        "makeCompletingOnce$kotlinx_coroutines_core",
        "makeCompletingOnce",
        "makeNode",
        "(Lkotlin/jvm/functions/Function1;Z)Lkotlinx/coroutines/JobNode;",
        "nameString$kotlinx_coroutines_core",
        "nameString",
        "notifyCancelling",
        "(Lkotlinx/coroutines/NodeList;Ljava/lang/Throwable;)V",
        "T",
        "notifyHandlers",
        "onCompletionInternal",
        "onStartInternal$kotlinx_coroutines_core",
        "()V",
        "onStartInternal",
        "Lkotlinx/coroutines/ParentJob;",
        "parentJob",
        "parentCancelled",
        "(Lkotlinx/coroutines/ParentJob;)V",
        "Lkotlinx/coroutines/Empty;",
        "promoteEmptyToNodeList",
        "(Lkotlinx/coroutines/Empty;)V",
        "promoteSingleToNodeList",
        "(Lkotlinx/coroutines/JobNode;)V",
        "R",
        "Lkotlinx/coroutines/selects/SelectInstance;",
        "select",
        "Lkotlin/coroutines/Continuation;",
        "registerSelectClause0",
        "(Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function1;)V",
        "Lkotlin/Function2;",
        "registerSelectClause1Internal$kotlinx_coroutines_core",
        "(Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V",
        "registerSelectClause1Internal",
        "removeNode$kotlinx_coroutines_core",
        "removeNode",
        "selectAwaitCompletion$kotlinx_coroutines_core",
        "selectAwaitCompletion",
        "start",
        "",
        "startInternal",
        "(Ljava/lang/Object;)I",
        "stateString",
        "(Ljava/lang/Object;)Ljava/lang/String;",
        "toDebugString",
        "toString",
        "tryFinalizeSimpleState",
        "(Lkotlinx/coroutines/Incomplete;Ljava/lang/Object;)Z",
        "tryMakeCancelling",
        "(Lkotlinx/coroutines/Incomplete;Ljava/lang/Throwable;)Z",
        "tryMakeCompleting",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "tryMakeCompletingSlowPath",
        "(Lkotlinx/coroutines/Incomplete;Ljava/lang/Object;)Ljava/lang/Object;",
        "tryWaitForChild",
        "(Lkotlinx/coroutines/JobSupport$Finishing;Lkotlinx/coroutines/ChildHandleNode;Ljava/lang/Object;)Z",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;",
        "nextChild",
        "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/ChildHandleNode;",
        "notifyCompletion",
        "toCancellationException",
        "(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;",
        "Lkotlin/sequences/Sequence;",
        "getChildren",
        "()Lkotlin/sequences/Sequence;",
        "children",
        "getCompletionCause",
        "completionCause",
        "getCompletionCauseHandled",
        "completionCauseHandled",
        "getHandlesException$kotlinx_coroutines_core",
        "handlesException",
        "isActive",
        "isCancelled",
        "isCompleted",
        "isCompletedExceptionally",
        "isScopedCoroutine",
        "Lkotlin/coroutines/CoroutineContext$Key;",
        "getKey",
        "()Lkotlin/coroutines/CoroutineContext$Key;",
        "key",
        "getOnCancelComplete$kotlinx_coroutines_core",
        "onCancelComplete",
        "Lkotlinx/coroutines/selects/SelectClause0;",
        "getOnJoin",
        "()Lkotlinx/coroutines/selects/SelectClause0;",
        "onJoin",
        "value",
        "getParentHandle$kotlinx_coroutines_core",
        "()Lkotlinx/coroutines/ChildHandle;",
        "setParentHandle$kotlinx_coroutines_core",
        "(Lkotlinx/coroutines/ChildHandle;)V",
        "parentHandle",
        "getState$kotlinx_coroutines_core",
        "getExceptionOrNull",
        "exceptionOrNull",
        "isCancelling",
        "(Lkotlinx/coroutines/Incomplete;)Z",
        "AwaitContinuation",
        "ChildCompletion",
        "Finishing",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field static final synthetic d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _parentHandle:Ljava/lang/Object;

.field private volatile synthetic _state:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lkotlinx/coroutines/ca;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/ca;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 129
    invoke-static {}, Lkotlinx/coroutines/cb;->b()Lkotlinx/coroutines/be;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/cb;->f()Lkotlinx/coroutines/be;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lkotlinx/coroutines/ca;->_state:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 131
    iput-object p1, p0, Lkotlinx/coroutines/ca;->_parentHandle:Ljava/lang/Object;

    return-void
.end method

.method private final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 847
    instance-of v0, p1, Lkotlinx/coroutines/bq;

    if-nez v0, :cond_0

    .line 848
    invoke-static {}, Lkotlinx/coroutines/cb;->c()Lkotlinx/coroutines/internal/v;

    move-result-object p1

    return-object p1

    .line 855
    :cond_0
    instance-of v0, p1, Lkotlinx/coroutines/be;

    if-nez v0, :cond_1

    instance-of v0, p1, Lkotlinx/coroutines/bz;

    if-eqz v0, :cond_3

    :cond_1
    instance-of v0, p1, Lkotlinx/coroutines/u;

    if-nez v0, :cond_3

    instance-of v0, p2, Lkotlinx/coroutines/z;

    if-nez v0, :cond_3

    .line 856
    check-cast p1, Lkotlinx/coroutines/bq;

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/ca;->a(Lkotlinx/coroutines/bq;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object p2

    .line 860
    :cond_2
    invoke-static {}, Lkotlinx/coroutines/cb;->e()Lkotlinx/coroutines/internal/v;

    move-result-object p1

    return-object p1

    .line 863
    :cond_3
    check-cast p1, Lkotlinx/coroutines/bq;

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/ca;->c(Lkotlinx/coroutines/bq;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final a(Lkotlinx/coroutines/ca$c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 205
    invoke-static {}, Lkotlinx/coroutines/ao;->a()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lkotlinx/coroutines/ca;->p()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 206
    :cond_2
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/ao;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lkotlinx/coroutines/ca$c;->c()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 207
    :cond_4
    :goto_2
    invoke-static {}, Lkotlinx/coroutines/ao;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5081
    iget v0, p1, Lkotlinx/coroutines/ca$c;->_isCompleting:I

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 208
    :cond_6
    :goto_3
    instance-of v0, p2, Lkotlinx/coroutines/z;

    const/4 v3, 0x0

    if-nez v0, :cond_7

    move-object v0, v3

    goto :goto_4

    :cond_7
    move-object v0, p2

    :goto_4
    check-cast v0, Lkotlinx/coroutines/z;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lkotlinx/coroutines/z;->b:Ljava/lang/Throwable;

    goto :goto_5

    :cond_8
    move-object v0, v3

    .line 1479
    :goto_5
    monitor-enter p1

    .line 212
    :try_start_0
    invoke-virtual {p1}, Lkotlinx/coroutines/ca$c;->d()Z

    .line 6091
    iget-object v4, p1, Lkotlinx/coroutines/ca$c;->_exceptionsHolder:Ljava/lang/Object;

    if-nez v4, :cond_9

    .line 5103
    invoke-static {}, Lkotlinx/coroutines/ca$c;->e()Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_6

    .line 5104
    :cond_9
    instance-of v5, v4, Ljava/lang/Throwable;

    if-eqz v5, :cond_a

    invoke-static {}, Lkotlinx/coroutines/ca$c;->e()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v4, v5

    goto :goto_6

    .line 5105
    :cond_a
    instance-of v5, v4, Ljava/util/ArrayList;

    if-eqz v5, :cond_15

    check-cast v4, Ljava/util/ArrayList;

    .line 7086
    :goto_6
    iget-object v5, p1, Lkotlinx/coroutines/ca$c;->_rootCause:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Throwable;

    if-eqz v5, :cond_b

    .line 5109
    invoke-virtual {v4, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_b
    if-eqz v0, :cond_c

    .line 5110
    invoke-static {v0, v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v1

    if-eqz v5, :cond_c

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5111
    :cond_c
    invoke-static {}, Lkotlinx/coroutines/cb;->a()Lkotlinx/coroutines/internal/v;

    move-result-object v5

    .line 7092
    iput-object v5, p1, Lkotlinx/coroutines/ca$c;->_exceptionsHolder:Ljava/lang/Object;

    .line 5112
    check-cast v4, Ljava/util/List;

    .line 214
    invoke-direct {p0, p1, v4}, Lkotlinx/coroutines/ca;->a(Lkotlinx/coroutines/ca$c;Ljava/util/List;)Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 215
    invoke-static {v5, v4}, Lkotlinx/coroutines/ca;->a(Ljava/lang/Throwable;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :cond_d
    monitor-exit p1

    if-nez v5, :cond_e

    goto :goto_7

    :cond_e
    if-ne v5, v0, :cond_f

    goto :goto_7

    .line 225
    :cond_f
    new-instance p2, Lkotlinx/coroutines/z;

    const/4 v0, 0x2

    invoke-direct {p2, v5, v2, v0, v3}, Lkotlinx/coroutines/z;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_7
    if-eqz v5, :cond_12

    .line 229
    invoke-direct {p0, v5}, Lkotlinx/coroutines/ca;->d(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0, v5}, Lkotlinx/coroutines/ca;->c(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_8

    :cond_10
    const/4 v1, 0x0

    :cond_11
    :goto_8
    if-eqz v1, :cond_12

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally"

    .line 230
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/z;

    invoke-virtual {v0}, Lkotlinx/coroutines/z;->a()Z

    .line 235
    :cond_12
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/ca;->a(Ljava/lang/Object;)V

    .line 237
    sget-object v0, Lkotlinx/coroutines/ca;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {p2}, Lkotlinx/coroutines/cb;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 238
    invoke-static {}, Lkotlinx/coroutines/ao;->a()Z

    move-result v1

    if-eqz v1, :cond_14

    if-eqz v0, :cond_13

    goto :goto_9

    :cond_13
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 240
    :cond_14
    :goto_9
    check-cast p1, Lkotlinx/coroutines/bq;

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/ca;->b(Lkotlinx/coroutines/bq;Ljava/lang/Object;)V

    return-object p2

    :cond_15
    :try_start_1
    const-string p2, "State is "

    .line 5106
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p2

    .line 216
    monitor-exit p1

    throw p2
.end method

.method private final a(Lkotlinx/coroutines/ca$c;Ljava/util/List;)Ljava/lang/Throwable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/ca$c;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 246
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 248
    invoke-virtual {p1}, Lkotlinx/coroutines/ca$c;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1481
    new-instance p1, Lkotlinx/coroutines/JobCancellationException;

    .line 8028
    invoke-virtual {p0}, Lkotlinx/coroutines/ca;->i()Ljava/lang/String;

    move-result-object p2

    .line 1481
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/bv;

    invoke-direct {p1, p2, v1, v0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/bv;)V

    check-cast p1, Ljava/lang/Throwable;

    return-object p1

    :cond_0
    return-object v1

    .line 259
    :cond_1
    move-object p1, p2

    check-cast p1, Ljava/lang/Iterable;

    .line 1482
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/Throwable;

    .line 259
    instance-of v4, v4, Ljava/util/concurrent/CancellationException;

    xor-int/2addr v4, v3

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    move-object v2, v1

    :goto_0
    check-cast v2, Ljava/lang/Throwable;

    if-eqz v2, :cond_4

    return-object v2

    :cond_4
    const/4 v0, 0x0

    .line 261
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Throwable;

    .line 262
    instance-of v2, p2, Lkotlinx/coroutines/TimeoutCancellationException;

    if-eqz v2, :cond_8

    .line 1484
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/Throwable;

    if-eq v4, p2, :cond_6

    .line 263
    instance-of v4, v4, Lkotlinx/coroutines/TimeoutCancellationException;

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_5

    move-object v1, v2

    :cond_7
    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_8

    return-object v1

    :cond_8
    return-object p2
.end method

.method private a(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;
    .locals 2

    .line 424
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    check-cast v0, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_2

    .line 1539
    new-instance v0, Lkotlinx/coroutines/JobCancellationException;

    if-nez p2, :cond_1

    .line 12028
    invoke-virtual {p0}, Lkotlinx/coroutines/ca;->i()Ljava/lang/String;

    move-result-object p2

    .line 1539
    :cond_1
    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/bv;

    invoke-direct {v0, p2, p1, v1}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/bv;)V

    check-cast v0, Ljava/util/concurrent/CancellationException;

    :cond_2
    return-object v0
.end method

.method private final a(Lkotlinx/coroutines/bq;)Lkotlinx/coroutines/cf;
    .locals 1

    .line 773
    invoke-interface {p1}, Lkotlinx/coroutines/bq;->ax_()Lkotlinx/coroutines/cf;

    move-result-object v0

    if-nez v0, :cond_2

    .line 775
    instance-of v0, p1, Lkotlinx/coroutines/be;

    if-eqz v0, :cond_0

    new-instance p1, Lkotlinx/coroutines/cf;

    invoke-direct {p1}, Lkotlinx/coroutines/cf;-><init>()V

    return-object p1

    .line 776
    :cond_0
    instance-of v0, p1, Lkotlinx/coroutines/bz;

    if-eqz v0, :cond_1

    .line 779
    check-cast p1, Lkotlinx/coroutines/bz;

    invoke-direct {p0, p1}, Lkotlinx/coroutines/ca;->a(Lkotlinx/coroutines/bz;)V

    const/4 p1, 0x0

    return-object p1

    .line 782
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "State should have list: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_2
    return-object v0
.end method

.method private static a(Lkotlinx/coroutines/internal/l;)Lkotlinx/coroutines/u;
    .locals 1

    .line 941
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/l;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/l;->g()Lkotlinx/coroutines/internal/l;

    move-result-object p0

    goto :goto_0

    .line 26102
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/l;->e()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/internal/k;->a(Ljava/lang/Object;)Lkotlinx/coroutines/internal/l;

    move-result-object p0

    .line 944
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/l;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 945
    instance-of v0, p0, Lkotlinx/coroutines/u;

    if-eqz v0, :cond_1

    check-cast p0, Lkotlinx/coroutines/u;

    return-object p0

    .line 946
    :cond_1
    instance-of v0, p0, Lkotlinx/coroutines/cf;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/lang/Throwable;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 270
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    .line 271
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1486
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1, v0}, Ljava/util/IdentityHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    .line 1487
    invoke-static {}, Lkotlinx/coroutines/ao;->c()Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, p0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lkotlinx/coroutines/internal/u;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    .line 278
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    .line 1488
    invoke-static {}, Lkotlinx/coroutines/ao;->c()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v2}, Lkotlinx/coroutines/internal/u;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    :goto_2
    if-eq v2, p0, :cond_2

    if-eq v2, v1, :cond_2

    .line 281
    instance-of v3, v2, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1489
    invoke-static {p0, v2}, Lkotlin/b;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method private final a(Lkotlinx/coroutines/bz;)V
    .locals 2

    .line 535
    new-instance v0, Lkotlinx/coroutines/cf;

    invoke-direct {v0}, Lkotlinx/coroutines/cf;-><init>()V

    check-cast v0, Lkotlinx/coroutines/internal/l;

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/bz;->a(Lkotlinx/coroutines/internal/l;)Z

    .line 19102
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/l;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/internal/k;->a(Ljava/lang/Object;)Lkotlinx/coroutines/internal/l;

    move-result-object v0

    .line 539
    sget-object v1, Lkotlinx/coroutines/ca;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public static final synthetic a(Lkotlinx/coroutines/ca;Lkotlinx/coroutines/ca$c;Lkotlinx/coroutines/u;Ljava/lang/Object;)V
    .locals 1

    .line 34929
    invoke-static {}, Lkotlinx/coroutines/ao;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lkotlinx/coroutines/ca;->p()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    .line 34931
    :cond_2
    :goto_1
    check-cast p2, Lkotlinx/coroutines/internal/l;

    invoke-static {p2}, Lkotlinx/coroutines/ca;->a(Lkotlinx/coroutines/internal/l;)Lkotlinx/coroutines/u;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 34933
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/ca;->a(Lkotlinx/coroutines/ca$c;Lkotlinx/coroutines/u;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 34935
    :cond_3
    invoke-direct {p0, p1, p3}, Lkotlinx/coroutines/ca;->a(Lkotlinx/coroutines/ca$c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 34936
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/ca;->d(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method private final a(Lkotlinx/coroutines/cf;Ljava/lang/Throwable;)V
    .locals 7

    .line 1491
    check-cast p1, Lkotlinx/coroutines/internal/j;

    .line 1492
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/j;->e()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/l;

    const/4 v1, 0x0

    .line 1493
    :goto_0
    invoke-static {v0, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 1494
    instance-of v2, v0, Lkotlinx/coroutines/bw;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/bz;

    .line 1496
    :try_start_0
    invoke-virtual {v2, p2}, Lkotlinx/coroutines/bz;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    if-eqz v1, :cond_0

    .line 1500
    invoke-static {v1, v3}, Lkotlin/b;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    if-nez v1, :cond_1

    :cond_0
    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/ca;

    .line 1501
    new-instance v4, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception in completion handler "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1, v3}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v4

    check-cast v1, Ljava/lang/Throwable;

    .line 1502
    sget-object v2, Lkotlin/v;->a:Lkotlin/v;

    .line 1505
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/l;->f()Lkotlinx/coroutines/internal/l;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 1508
    invoke-virtual {p0, v1}, Lkotlinx/coroutines/ca;->a(Ljava/lang/Throwable;)V

    .line 332
    :cond_3
    invoke-direct {p0, p2}, Lkotlinx/coroutines/ca;->d(Ljava/lang/Throwable;)Z

    return-void
.end method

.method private final a(Ljava/lang/Object;Lkotlinx/coroutines/cf;Lkotlinx/coroutines/bz;)Z
    .locals 5

    .line 524
    check-cast p2, Lkotlinx/coroutines/internal/l;

    .line 1547
    new-instance v0, Lkotlinx/coroutines/ca$d;

    check-cast p3, Lkotlinx/coroutines/internal/l;

    invoke-direct {v0, p3, p3, p0, p1}, Lkotlinx/coroutines/ca$d;-><init>(Lkotlinx/coroutines/internal/l;Lkotlinx/coroutines/internal/l;Lkotlinx/coroutines/ca;Ljava/lang/Object;)V

    check-cast v0, Lkotlinx/coroutines/internal/l$a;

    .line 1551
    :goto_0
    invoke-virtual {p2}, Lkotlinx/coroutines/internal/l;->g()Lkotlinx/coroutines/internal/l;

    move-result-object p1

    .line 18222
    sget-object v1, Lkotlinx/coroutines/internal/l;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p3, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18223
    sget-object v1, Lkotlinx/coroutines/internal/l;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p3, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18224
    iput-object p2, v0, Lkotlinx/coroutines/internal/l$a;->d:Lkotlinx/coroutines/internal/l;

    .line 18225
    sget-object v1, Lkotlinx/coroutines/internal/l;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p1, p2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 18227
    :cond_0
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/internal/l$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x2

    :goto_1
    if-eq p1, v4, :cond_3

    if-eq p1, v2, :cond_2

    goto :goto_0

    :cond_2
    return v3

    :cond_3
    return v4
.end method

.method private final a(Lkotlinx/coroutines/bq;Ljava/lang/Object;)Z
    .locals 4

    .line 290
    invoke-static {}, Lkotlinx/coroutines/ao;->a()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    instance-of v0, p1, Lkotlinx/coroutines/be;

    if-nez v0, :cond_1

    instance-of v0, p1, Lkotlinx/coroutines/bz;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 291
    :cond_3
    :goto_2
    invoke-static {}, Lkotlinx/coroutines/ao;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    instance-of v0, p2, Lkotlinx/coroutines/z;

    xor-int/2addr v0, v2

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 292
    :cond_5
    :goto_3
    sget-object v0, Lkotlinx/coroutines/ca;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {p2}, Lkotlinx/coroutines/cb;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    .line 294
    :cond_6
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/ca;->a(Ljava/lang/Object;)V

    .line 295
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/ca;->b(Lkotlinx/coroutines/bq;Ljava/lang/Object;)V

    return v2
.end method

.method private final a(Lkotlinx/coroutines/ca$c;Lkotlinx/coroutines/u;Ljava/lang/Object;)Z
    .locals 4

    .line 918
    :cond_0
    iget-object v0, p2, Lkotlinx/coroutines/u;->a:Lkotlinx/coroutines/v;

    check-cast v0, Lkotlinx/coroutines/bv;

    .line 920
    new-instance v1, Lkotlinx/coroutines/ca$b;

    invoke-direct {v1, p0, p1, p2, p3}, Lkotlinx/coroutines/ca$b;-><init>(Lkotlinx/coroutines/ca;Lkotlinx/coroutines/ca$c;Lkotlinx/coroutines/u;Ljava/lang/Object;)V

    check-cast v1, Lkotlinx/coroutines/ab;

    .line 1590
    check-cast v1, Lkotlin/jvm/functions/Function1;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 918
    invoke-static {v0, v2, v2, v1, v3}, Lkotlinx/coroutines/bv$a;->a(Lkotlinx/coroutines/bv;ZZLkotlin/jvm/functions/Function1;I)Lkotlinx/coroutines/bb;

    move-result-object v0

    .line 922
    sget-object v1, Lkotlinx/coroutines/cg;->a:Lkotlinx/coroutines/cg;

    if-eq v0, v1, :cond_1

    return v3

    .line 923
    :cond_1
    check-cast p2, Lkotlinx/coroutines/internal/l;

    invoke-static {p2}, Lkotlinx/coroutines/ca;->a(Lkotlinx/coroutines/internal/l;)Lkotlinx/coroutines/u;

    move-result-object p2

    if-nez p2, :cond_0

    return v2
.end method

.method private final b(Lkotlinx/coroutines/bq;Ljava/lang/Object;)V
    .locals 3

    .line 8133
    iget-object v0, p0, Lkotlinx/coroutines/ca;->_parentHandle:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/t;

    if-eqz v0, :cond_0

    .line 308
    invoke-interface {v0}, Lkotlinx/coroutines/t;->a()V

    .line 309
    sget-object v0, Lkotlinx/coroutines/cg;->a:Lkotlinx/coroutines/cg;

    check-cast v0, Lkotlinx/coroutines/t;

    .line 8134
    iput-object v0, p0, Lkotlinx/coroutines/ca;->_parentHandle:Ljava/lang/Object;

    .line 311
    :cond_0
    instance-of v0, p2, Lkotlinx/coroutines/z;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object p2, v1

    :cond_1
    check-cast p2, Lkotlinx/coroutines/z;

    if-eqz p2, :cond_2

    iget-object v1, p2, Lkotlinx/coroutines/z;->b:Ljava/lang/Throwable;

    .line 316
    :cond_2
    instance-of p2, p1, Lkotlinx/coroutines/bz;

    if-eqz p2, :cond_3

    .line 318
    :try_start_0
    move-object p2, p1

    check-cast p2, Lkotlinx/coroutines/bz;

    invoke-virtual {p2, v1}, Lkotlinx/coroutines/bz;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    .line 320
    new-instance v0, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in completion handler "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/ca;->a(Ljava/lang/Throwable;)V

    return-void

    .line 323
    :cond_3
    invoke-interface {p1}, Lkotlinx/coroutines/bq;->ax_()Lkotlinx/coroutines/cf;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-direct {p0, p1, v1}, Lkotlinx/coroutines/ca;->b(Lkotlinx/coroutines/cf;Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method private final b(Lkotlinx/coroutines/cf;Ljava/lang/Throwable;)V
    .locals 7

    .line 1511
    check-cast p1, Lkotlinx/coroutines/internal/j;

    .line 1512
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/j;->e()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/l;

    const/4 v1, 0x0

    .line 1513
    :goto_0
    invoke-static {v0, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 1514
    instance-of v2, v0, Lkotlinx/coroutines/bz;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/bz;

    .line 1516
    :try_start_0
    invoke-virtual {v2, p2}, Lkotlinx/coroutines/bz;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    if-eqz v1, :cond_0

    .line 1520
    invoke-static {v1, v3}, Lkotlin/b;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    if-nez v1, :cond_1

    :cond_0
    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/ca;

    .line 1521
    new-instance v4, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception in completion handler "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1, v3}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v4

    check-cast v1, Ljava/lang/Throwable;

    .line 1522
    sget-object v2, Lkotlin/v;->a:Lkotlin/v;

    .line 1525
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/l;->f()Lkotlinx/coroutines/internal/l;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 1528
    invoke-virtual {p0, v1}, Lkotlinx/coroutines/ca;->a(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method private final c(Ljava/lang/Object;)I
    .locals 4

    .line 393
    instance-of v0, p1, Lkotlinx/coroutines/be;

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 394
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/be;

    .line 9308
    iget-boolean v0, v0, Lkotlinx/coroutines/be;->a:Z

    if-eqz v0, :cond_0

    return v3

    .line 395
    :cond_0
    sget-object v0, Lkotlinx/coroutines/ca;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlinx/coroutines/cb;->b()Lkotlinx/coroutines/be;

    move-result-object v3

    invoke-virtual {v0, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 396
    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/ca;->h()V

    return v2

    .line 399
    :cond_2
    instance-of v0, p1, Lkotlinx/coroutines/bp;

    if-eqz v0, :cond_4

    .line 400
    sget-object v0, Lkotlinx/coroutines/ca;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-object v3, p1

    check-cast v3, Lkotlinx/coroutines/bp;

    .line 9380
    iget-object v3, v3, Lkotlinx/coroutines/bp;->a:Lkotlinx/coroutines/cf;

    .line 400
    invoke-virtual {v0, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    .line 401
    :cond_3
    invoke-virtual {p0}, Lkotlinx/coroutines/ca;->h()V

    return v2

    :cond_4
    return v3
.end method

.method private final c(Lkotlinx/coroutines/bq;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 873
    invoke-direct {p0, p1}, Lkotlinx/coroutines/ca;->a(Lkotlinx/coroutines/bq;)Lkotlinx/coroutines/cf;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlinx/coroutines/cb;->e()Lkotlinx/coroutines/internal/v;

    move-result-object p1

    return-object p1

    .line 877
    :cond_0
    instance-of v1, p1, Lkotlinx/coroutines/ca$c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    check-cast v1, Lkotlinx/coroutines/ca$c;

    if-nez v1, :cond_2

    new-instance v1, Lkotlinx/coroutines/ca$c;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2}, Lkotlinx/coroutines/ca$c;-><init>(Lkotlinx/coroutines/cf;ZLjava/lang/Throwable;)V

    .line 1589
    :cond_2
    monitor-enter v1

    .line 25081
    :try_start_0
    iget v3, v1, Lkotlinx/coroutines/ca$c;->_isCompleting:I

    if-eqz v3, :cond_3

    .line 882
    invoke-static {}, Lkotlinx/coroutines/cb;->c()Lkotlinx/coroutines/internal/v;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object p1

    :cond_3
    const/4 v3, 0x1

    .line 25082
    :try_start_1
    iput v3, v1, Lkotlinx/coroutines/ca$c;->_isCompleting:I

    if-eq v1, p1, :cond_4

    .line 889
    sget-object v4, Lkotlinx/coroutines/ca;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lkotlinx/coroutines/cb;->e()Lkotlinx/coroutines/internal/v;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object p1

    .line 892
    :cond_4
    :try_start_2
    invoke-static {}, Lkotlinx/coroutines/ao;->a()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v1}, Lkotlinx/coroutines/ca$c;->c()Z

    move-result v4

    xor-int/2addr v4, v3

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 894
    :cond_6
    :goto_1
    invoke-virtual {v1}, Lkotlinx/coroutines/ca$c;->d()Z

    move-result v4

    .line 895
    instance-of v5, p2, Lkotlinx/coroutines/z;

    if-nez v5, :cond_7

    move-object v5, v2

    goto :goto_2

    :cond_7
    move-object v5, p2

    :goto_2
    check-cast v5, Lkotlinx/coroutines/z;

    if-eqz v5, :cond_8

    iget-object v5, v5, Lkotlinx/coroutines/z;->b:Ljava/lang/Throwable;

    invoke-virtual {v1, v5}, Lkotlinx/coroutines/ca$c;->a(Ljava/lang/Throwable;)V

    .line 25086
    :cond_8
    iget-object v5, v1, Lkotlinx/coroutines/ca$c;->_rootCause:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Throwable;

    xor-int/2addr v3, v4

    if-eqz v3, :cond_9

    goto :goto_3

    :cond_9
    move-object v5, v2

    .line 898
    :goto_3
    sget-object v3, Lkotlin/v;->a:Lkotlin/v;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    if-eqz v5, :cond_a

    .line 900
    invoke-direct {p0, v0, v5}, Lkotlinx/coroutines/ca;->a(Lkotlinx/coroutines/cf;Ljava/lang/Throwable;)V

    .line 25913
    :cond_a
    instance-of v0, p1, Lkotlinx/coroutines/u;

    if-nez v0, :cond_b

    move-object v0, v2

    goto :goto_4

    :cond_b
    move-object v0, p1

    :goto_4
    check-cast v0, Lkotlinx/coroutines/u;

    if-nez v0, :cond_c

    invoke-interface {p1}, Lkotlinx/coroutines/bq;->ax_()Lkotlinx/coroutines/cf;

    move-result-object p1

    if-eqz p1, :cond_d

    check-cast p1, Lkotlinx/coroutines/internal/l;

    invoke-static {p1}, Lkotlinx/coroutines/ca;->a(Lkotlinx/coroutines/internal/l;)Lkotlinx/coroutines/u;

    move-result-object v2

    goto :goto_5

    :cond_c
    move-object v2, v0

    :cond_d
    :goto_5
    if-eqz v2, :cond_e

    .line 903
    invoke-direct {p0, v1, v2, p2}, Lkotlinx/coroutines/ca;->a(Lkotlinx/coroutines/ca$c;Lkotlinx/coroutines/u;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 904
    sget-object p1, Lkotlinx/coroutines/cb;->a:Lkotlinx/coroutines/internal/v;

    return-object p1

    .line 906
    :cond_e
    invoke-direct {p0, v1, p2}, Lkotlinx/coroutines/ca;->a(Lkotlinx/coroutines/ca$c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 898
    monitor-exit v1

    throw p1
.end method

.method private final d(Ljava/lang/Throwable;)Z
    .locals 4

    .line 344
    invoke-virtual {p0}, Lkotlinx/coroutines/ca;->aA_()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 350
    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    .line 9133
    iget-object v2, p0, Lkotlinx/coroutines/ca;->_parentHandle:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/t;

    if-eqz v2, :cond_4

    .line 353
    sget-object v3, Lkotlinx/coroutines/cg;->a:Lkotlinx/coroutines/cg;

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 358
    :cond_1
    invoke-interface {v2, p1}, Lkotlinx/coroutines/t;->b(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_0
    return v1

    :cond_4
    :goto_1
    return v0
.end method

.method private final g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1579
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/ca;->p()Ljava/lang/Object;

    move-result-object v0

    .line 691
    instance-of v1, v0, Lkotlinx/coroutines/bq;

    if-eqz v1, :cond_2

    instance-of v1, v0, Lkotlinx/coroutines/ca$c;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/ca$c;

    .line 21081
    iget v1, v1, Lkotlinx/coroutines/ca$c;->_isCompleting:I

    if-eqz v1, :cond_1

    goto :goto_0

    .line 695
    :cond_1
    new-instance v1, Lkotlinx/coroutines/z;

    invoke-direct {p0, p1}, Lkotlinx/coroutines/ca;->h(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlinx/coroutines/z;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 696
    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/ca;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 697
    invoke-static {}, Lkotlinx/coroutines/cb;->e()Lkotlinx/coroutines/internal/v;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-object v0

    .line 693
    :cond_2
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/cb;->c()Lkotlinx/coroutines/internal/v;

    move-result-object p1

    return-object p1
.end method

.method private final h(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 3

    if-eqz p1, :cond_0

    .line 719
    instance-of v0, p1, Ljava/lang/Throwable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Throwable;

    return-object p1

    .line 1581
    :cond_1
    new-instance p1, Lkotlinx/coroutines/JobCancellationException;

    .line 22028
    invoke-virtual {p0}, Lkotlinx/coroutines/ca;->i()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1581
    move-object v2, p0

    check-cast v2, Lkotlinx/coroutines/bv;

    invoke-direct {p1, v0, v1, v2}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/bv;)V

    check-cast p1, Ljava/lang/Throwable;

    return-object p1

    :cond_2
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob"

    .line 720
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/ci;

    invoke-interface {p1}, Lkotlinx/coroutines/ci;->q()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    return-object p1
.end method

.method private final i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x0

    move-object v1, v0

    .line 1583
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/ca;->p()Ljava/lang/Object;

    move-result-object v2

    .line 734
    instance-of v3, v2, Lkotlinx/coroutines/ca$c;

    const/4 v4, 0x1

    if-eqz v3, :cond_7

    .line 1584
    monitor-enter v2

    .line 736
    :try_start_0
    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/ca$c;

    invoke-virtual {v3}, Lkotlinx/coroutines/ca$c;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lkotlinx/coroutines/cb;->d()Lkotlinx/coroutines/internal/v;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object p1

    .line 738
    :cond_1
    :try_start_1
    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/ca$c;

    invoke-virtual {v3}, Lkotlinx/coroutines/ca$c;->d()Z

    move-result v3

    if-nez p1, :cond_2

    if-nez v3, :cond_4

    :cond_2
    if-nez v1, :cond_3

    .line 741
    invoke-direct {p0, p1}, Lkotlinx/coroutines/ca;->h(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    .line 742
    :cond_3
    move-object p1, v2

    check-cast p1, Lkotlinx/coroutines/ca$c;

    invoke-virtual {p1, v1}, Lkotlinx/coroutines/ca$c;->a(Ljava/lang/Throwable;)V

    .line 745
    :cond_4
    move-object p1, v2

    check-cast p1, Lkotlinx/coroutines/ca$c;

    .line 22086
    iget-object p1, p1, Lkotlinx/coroutines/ca$c;->_rootCause:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    xor-int/lit8 v1, v3, 0x1

    if-eqz v1, :cond_5

    move-object v0, p1

    .line 745
    :cond_5
    monitor-exit v2

    if-eqz v0, :cond_6

    .line 747
    check-cast v2, Lkotlinx/coroutines/ca$c;

    .line 23075
    iget-object p1, v2, Lkotlinx/coroutines/ca$c;->a:Lkotlinx/coroutines/cf;

    .line 747
    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/ca;->a(Lkotlinx/coroutines/cf;Ljava/lang/Throwable;)V

    .line 748
    :cond_6
    invoke-static {}, Lkotlinx/coroutines/cb;->c()Lkotlinx/coroutines/internal/v;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 745
    monitor-exit v2

    throw p1

    .line 750
    :cond_7
    instance-of v3, v2, Lkotlinx/coroutines/bq;

    if-eqz v3, :cond_11

    if-nez v1, :cond_8

    .line 752
    invoke-direct {p0, p1}, Lkotlinx/coroutines/ca;->h(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    .line 753
    :cond_8
    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/bq;

    invoke-interface {v3}, Lkotlinx/coroutines/bq;->b()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_f

    .line 23787
    invoke-static {}, Lkotlinx/coroutines/ao;->a()Z

    move-result v2

    if-eqz v2, :cond_a

    instance-of v2, v3, Lkotlinx/coroutines/ca$c;

    xor-int/2addr v2, v4

    if-eqz v2, :cond_9

    goto :goto_0

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 23788
    :cond_a
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/ao;->a()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v3}, Lkotlinx/coroutines/bq;->b()Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_1

    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 23790
    :cond_c
    :goto_1
    invoke-direct {p0, v3}, Lkotlinx/coroutines/ca;->a(Lkotlinx/coroutines/bq;)Lkotlinx/coroutines/cf;

    move-result-object v2

    if-nez v2, :cond_d

    :goto_2
    const/4 v4, 0x0

    goto :goto_3

    .line 23792
    :cond_d
    new-instance v5, Lkotlinx/coroutines/ca$c;

    invoke-direct {v5, v2, v6, v1}, Lkotlinx/coroutines/ca$c;-><init>(Lkotlinx/coroutines/cf;ZLjava/lang/Throwable;)V

    .line 23793
    sget-object v7, Lkotlinx/coroutines/ca;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v7, p0, v3, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto :goto_2

    .line 23795
    :cond_e
    invoke-direct {p0, v2, v1}, Lkotlinx/coroutines/ca;->a(Lkotlinx/coroutines/cf;Ljava/lang/Throwable;)V

    :goto_3
    if-eqz v4, :cond_0

    .line 755
    invoke-static {}, Lkotlinx/coroutines/cb;->c()Lkotlinx/coroutines/internal/v;

    move-result-object p1

    return-object p1

    .line 758
    :cond_f
    new-instance v3, Lkotlinx/coroutines/z;

    const/4 v4, 0x2

    invoke-direct {v3, v1, v6, v4, v0}, Lkotlinx/coroutines/z;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0, v2, v3}, Lkotlinx/coroutines/ca;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 760
    invoke-static {}, Lkotlinx/coroutines/cb;->c()Lkotlinx/coroutines/internal/v;

    move-result-object v4

    if-eq v3, v4, :cond_10

    .line 761
    invoke-static {}, Lkotlinx/coroutines/cb;->e()Lkotlinx/coroutines/internal/v;

    move-result-object v2

    if-eq v3, v2, :cond_0

    return-object v3

    :cond_10
    const-string p1, "Cannot happen in "

    .line 760
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 766
    :cond_11
    invoke-static {}, Lkotlinx/coroutines/cb;->d()Lkotlinx/coroutines/internal/v;

    move-result-object p1

    return-object p1
.end method

.method private static j(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1061
    instance-of v0, p0, Lkotlinx/coroutines/ca$c;

    const-string v1, "Active"

    if-eqz v0, :cond_2

    .line 1062
    check-cast p0, Lkotlinx/coroutines/ca$c;

    invoke-virtual {p0}, Lkotlinx/coroutines/ca$c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Cancelling"

    return-object p0

    .line 28081
    :cond_0
    iget p0, p0, Lkotlinx/coroutines/ca$c;->_isCompleting:I

    if-eqz p0, :cond_1

    const-string p0, "Completing"

    return-object p0

    :cond_1
    return-object v1

    .line 1066
    :cond_2
    instance-of v0, p0, Lkotlinx/coroutines/bq;

    if-eqz v0, :cond_4

    check-cast p0, Lkotlinx/coroutines/bq;

    invoke-interface {p0}, Lkotlinx/coroutines/bq;->b()Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v1

    :cond_3
    const-string p0, "New"

    return-object p0

    .line 1067
    :cond_4
    instance-of p0, p0, Lkotlinx/coroutines/z;

    if-eqz p0, :cond_5

    const-string p0, "Cancelled"

    return-object p0

    :cond_5
    const-string p0, "Completed"

    return-object p0
.end method


# virtual methods
.method public final a(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/bb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/v;",
            ">;)",
            "Lkotlinx/coroutines/bb;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 449
    invoke-virtual {p0, v0, v1, p1}, Lkotlinx/coroutines/ca;->a(ZZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/bb;

    move-result-object p1

    return-object p1
.end method

.method public final a(ZZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/bb;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/v;",
            ">;)",
            "Lkotlinx/coroutines/bb;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 12512
    instance-of v1, p3, Lkotlinx/coroutines/bw;

    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p3

    :goto_0
    check-cast v1, Lkotlinx/coroutines/bw;

    if-nez v1, :cond_1

    .line 12513
    new-instance v1, Lkotlinx/coroutines/bt;

    invoke-direct {v1, p3}, Lkotlinx/coroutines/bt;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lkotlinx/coroutines/bw;

    :cond_1
    check-cast v1, Lkotlinx/coroutines/bz;

    goto :goto_3

    .line 12516
    :cond_2
    instance-of v1, p3, Lkotlinx/coroutines/bz;

    if-nez v1, :cond_3

    move-object v1, v0

    goto :goto_1

    :cond_3
    move-object v1, p3

    :goto_1
    check-cast v1, Lkotlinx/coroutines/bz;

    if-eqz v1, :cond_6

    invoke-static {}, Lkotlinx/coroutines/ao;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    instance-of v2, v1, Lkotlinx/coroutines/bw;

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_5
    :goto_2
    if-nez v1, :cond_7

    .line 12517
    :cond_6
    new-instance v1, Lkotlinx/coroutines/bu;

    invoke-direct {v1, p3}, Lkotlinx/coroutines/bu;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lkotlinx/coroutines/bz;

    .line 12519
    :cond_7
    :goto_3
    move-object v2, p0

    check-cast v2, Lkotlinx/coroutines/ca;

    .line 14352
    iput-object v2, v1, Lkotlinx/coroutines/bz;->c:Lkotlinx/coroutines/ca;

    .line 1541
    :cond_8
    :goto_4
    invoke-virtual {p0}, Lkotlinx/coroutines/ca;->p()Ljava/lang/Object;

    move-result-object v2

    .line 461
    instance-of v3, v2, Lkotlinx/coroutines/be;

    if-eqz v3, :cond_b

    .line 462
    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/be;

    .line 15308
    iget-boolean v4, v3, Lkotlinx/coroutines/be;->a:Z

    if-eqz v4, :cond_9

    .line 464
    sget-object v3, Lkotlinx/coroutines/ca;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    check-cast v1, Lkotlinx/coroutines/bb;

    return-object v1

    .line 15528
    :cond_9
    new-instance v2, Lkotlinx/coroutines/cf;

    invoke-direct {v2}, Lkotlinx/coroutines/cf;-><init>()V

    .line 16308
    iget-boolean v4, v3, Lkotlinx/coroutines/be;->a:Z

    if-eqz v4, :cond_a

    .line 15529
    check-cast v2, Lkotlinx/coroutines/bq;

    goto :goto_5

    :cond_a
    new-instance v4, Lkotlinx/coroutines/bp;

    invoke-direct {v4, v2}, Lkotlinx/coroutines/bp;-><init>(Lkotlinx/coroutines/cf;)V

    move-object v2, v4

    check-cast v2, Lkotlinx/coroutines/bq;

    .line 15530
    :goto_5
    sget-object v4, Lkotlinx/coroutines/ca;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, p0, v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_4

    .line 468
    :cond_b
    instance-of v3, v2, Lkotlinx/coroutines/bq;

    if-eqz v3, :cond_14

    .line 469
    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/bq;

    invoke-interface {v3}, Lkotlinx/coroutines/bq;->ax_()Lkotlinx/coroutines/cf;

    move-result-object v3

    if-nez v3, :cond_c

    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.JobNode"

    .line 471
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/bz;

    invoke-direct {p0, v2}, Lkotlinx/coroutines/ca;->a(Lkotlinx/coroutines/bz;)V

    goto :goto_4

    .line 474
    :cond_c
    sget-object v4, Lkotlinx/coroutines/cg;->a:Lkotlinx/coroutines/cg;

    check-cast v4, Lkotlinx/coroutines/bb;

    if-eqz p1, :cond_11

    .line 475
    instance-of v5, v2, Lkotlinx/coroutines/ca$c;

    if-eqz v5, :cond_11

    .line 1542
    monitor-enter v2

    .line 478
    :try_start_0
    move-object v5, v2

    check-cast v5, Lkotlinx/coroutines/ca$c;

    .line 17086
    iget-object v5, v5, Lkotlinx/coroutines/ca$c;->_rootCause:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Throwable;

    if-eqz v5, :cond_d

    .line 1543
    instance-of v6, p3, Lkotlinx/coroutines/u;

    if-eqz v6, :cond_10

    .line 481
    move-object v6, v2

    check-cast v6, Lkotlinx/coroutines/ca$c;

    .line 18081
    iget v6, v6, Lkotlinx/coroutines/ca$c;->_isCompleting:I

    if-nez v6, :cond_10

    .line 483
    :cond_d
    invoke-direct {p0, v2, v3, v1}, Lkotlinx/coroutines/ca;->a(Ljava/lang/Object;Lkotlinx/coroutines/cf;Lkotlinx/coroutines/bz;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_e

    monitor-exit v2

    goto :goto_4

    :cond_e
    if-nez v5, :cond_f

    .line 485
    :try_start_1
    check-cast v1, Lkotlinx/coroutines/bb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-object v1

    .line 487
    :cond_f
    :try_start_2
    move-object v4, v1

    check-cast v4, Lkotlinx/coroutines/bb;

    .line 489
    :cond_10
    sget-object v6, Lkotlin/v;->a:Lkotlin/v;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    goto :goto_6

    :catchall_0
    move-exception p1

    monitor-exit v2

    throw p1

    :cond_11
    move-object v5, v0

    :goto_6
    if-eqz v5, :cond_13

    if-eqz p2, :cond_12

    .line 1544
    invoke-interface {p3, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    return-object v4

    .line 496
    :cond_13
    invoke-direct {p0, v2, v3, v1}, Lkotlinx/coroutines/ca;->a(Ljava/lang/Object;Lkotlinx/coroutines/cf;Lkotlinx/coroutines/bz;)Z

    move-result v2

    if-eqz v2, :cond_8

    check-cast v1, Lkotlinx/coroutines/bb;

    return-object v1

    :cond_14
    if-eqz p2, :cond_17

    .line 503
    instance-of p1, v2, Lkotlinx/coroutines/z;

    if-nez p1, :cond_15

    move-object v2, v0

    :cond_15
    check-cast v2, Lkotlinx/coroutines/z;

    if-eqz v2, :cond_16

    iget-object v0, v2, Lkotlinx/coroutines/z;->b:Ljava/lang/Throwable;

    .line 1545
    :cond_16
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    :cond_17
    sget-object p1, Lkotlinx/coroutines/cg;->a:Lkotlinx/coroutines/cg;

    check-cast p1, Lkotlinx/coroutines/bb;

    return-object p1
.end method

.method public final a(Lkotlinx/coroutines/v;)Lkotlinx/coroutines/t;
    .locals 3

    .line 970
    new-instance v0, Lkotlinx/coroutines/u;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/u;-><init>(Lkotlinx/coroutines/v;)V

    check-cast v0, Lkotlinx/coroutines/ab;

    .line 1591
    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 970
    invoke-static {p0, p1, v1, v0, v2}, Lkotlinx/coroutines/bv$a;->a(Lkotlinx/coroutines/bv;ZZLkotlin/jvm/functions/Function1;I)Lkotlinx/coroutines/bb;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ChildHandle"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/t;

    return-object p1
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 0

    .line 980
    throw p1
.end method

.method public final a(Ljava/util/concurrent/CancellationException;)V
    .locals 3

    if-nez p1, :cond_0

    .line 1575
    new-instance p1, Lkotlinx/coroutines/JobCancellationException;

    .line 20028
    invoke-virtual {p0}, Lkotlinx/coroutines/ca;->i()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1575
    move-object v2, p0

    check-cast v2, Lkotlinx/coroutines/bv;

    invoke-direct {p1, v0, v1, v2}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/bv;)V

    check-cast p1, Ljava/util/concurrent/CancellationException;

    :cond_0
    check-cast p1, Ljava/lang/Throwable;

    .line 20632
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/ca;->e(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lkotlinx/coroutines/bv;)V
    .locals 1

    .line 143
    invoke-static {}, Lkotlinx/coroutines/ao;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2133
    iget-object v0, p0, Lkotlinx/coroutines/ca;->_parentHandle:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/t;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 143
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_2
    :goto_1
    if-nez p1, :cond_3

    .line 145
    sget-object p1, Lkotlinx/coroutines/cg;->a:Lkotlinx/coroutines/cg;

    check-cast p1, Lkotlinx/coroutines/t;

    .line 2134
    iput-object p1, p0, Lkotlinx/coroutines/ca;->_parentHandle:Ljava/lang/Object;

    return-void

    .line 148
    :cond_3
    invoke-interface {p1}, Lkotlinx/coroutines/bv;->n()Z

    .line 150
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/v;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/bv;->a(Lkotlinx/coroutines/v;)Lkotlinx/coroutines/t;

    move-result-object p1

    .line 3134
    iput-object p1, p0, Lkotlinx/coroutines/ca;->_parentHandle:Ljava/lang/Object;

    .line 153
    invoke-virtual {p0}, Lkotlinx/coroutines/ca;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 154
    invoke-interface {p1}, Lkotlinx/coroutines/t;->a()V

    .line 155
    sget-object p1, Lkotlinx/coroutines/cg;->a:Lkotlinx/coroutines/cg;

    check-cast p1, Lkotlinx/coroutines/t;

    .line 4134
    iput-object p1, p0, Lkotlinx/coroutines/ca;->_parentHandle:Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public final a(Lkotlinx/coroutines/ci;)V
    .locals 0

    .line 637
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/ca;->e(Ljava/lang/Object;)Z

    return-void
.end method

.method protected aA_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public au_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public av_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b(Lkotlin/c/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/d<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1210
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/ca;->p()Ljava/lang/Object;

    move-result-object v0

    .line 1211
    instance-of v1, v0, Lkotlinx/coroutines/bq;

    if-nez v1, :cond_4

    .line 1213
    instance-of v1, v0, Lkotlinx/coroutines/z;

    if-eqz v1, :cond_3

    .line 1214
    check-cast v0, Lkotlinx/coroutines/z;

    iget-object v0, v0, Lkotlinx/coroutines/z;->b:Ljava/lang/Throwable;

    .line 1592
    invoke-static {}, Lkotlinx/coroutines/ao;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1594
    instance-of v1, p1, Lkotlin/c/b/a/d;

    if-nez v1, :cond_1

    throw v0

    .line 1595
    :cond_1
    check-cast p1, Lkotlin/c/b/a/d;

    invoke-static {v0, p1}, Lkotlinx/coroutines/internal/u;->a(Ljava/lang/Throwable;Lkotlin/c/b/a/d;)Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    .line 1592
    :cond_2
    throw v0

    .line 1216
    :cond_3
    invoke-static {v0}, Lkotlinx/coroutines/cb;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1219
    :cond_4
    invoke-direct {p0, v0}, Lkotlinx/coroutines/ca;->c(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 28230
    new-instance v0, Lkotlinx/coroutines/ca$a;

    invoke-static {p1}, Lkotlin/c/a/b;->a(Lkotlin/c/d;)Lkotlin/c/d;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lkotlinx/coroutines/ca$a;-><init>(Lkotlin/c/d;Lkotlinx/coroutines/ca;)V

    .line 28231
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/n;

    new-instance v2, Lkotlinx/coroutines/cj;

    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/o;

    invoke-direct {v2, v3}, Lkotlinx/coroutines/cj;-><init>(Lkotlinx/coroutines/o;)V

    check-cast v2, Lkotlinx/coroutines/ab;

    .line 28596
    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 29449
    invoke-virtual {p0, v3, v4, v2}, Lkotlinx/coroutines/ca;->a(ZZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/bb;

    move-result-object v2

    .line 28231
    invoke-static {v1, v2}, Lkotlinx/coroutines/q;->a(Lkotlinx/coroutines/n;Lkotlinx/coroutines/bb;)V

    .line 28232
    invoke-virtual {v0}, Lkotlinx/coroutines/ca$a;->g()Ljava/lang/Object;

    move-result-object v0

    .line 30057
    sget-object v1, Lkotlin/c/a/a;->COROUTINE_SUSPENDED:Lkotlin/c/a/a;

    if-ne v0, v1, :cond_5

    const-string v1, "frame"

    .line 28224
    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    return-object v0
.end method

.method public final b(Ljava/lang/Throwable;)Z
    .locals 0

    .line 658
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/ca;->e(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected c(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected d(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public e()Z
    .locals 2

    .line 182
    invoke-virtual {p0}, Lkotlinx/coroutines/ca;->p()Ljava/lang/Object;

    move-result-object v0

    .line 183
    instance-of v1, v0, Lkotlinx/coroutines/bq;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/bq;

    invoke-interface {v0}, Lkotlinx/coroutines/bq;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e(Ljava/lang/Object;)Z
    .locals 3

    .line 663
    invoke-static {}, Lkotlinx/coroutines/cb;->c()Lkotlinx/coroutines/internal/v;

    move-result-object v0

    .line 664
    invoke-virtual {p0}, Lkotlinx/coroutines/ca;->au_()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 667
    invoke-direct {p0, p1}, Lkotlinx/coroutines/ca;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 668
    sget-object v1, Lkotlinx/coroutines/cb;->a:Lkotlinx/coroutines/internal/v;

    if-ne v0, v1, :cond_0

    return v2

    .line 670
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/cb;->c()Lkotlinx/coroutines/internal/v;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 671
    invoke-direct {p0, p1}, Lkotlinx/coroutines/ca;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 674
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/cb;->c()Lkotlinx/coroutines/internal/v;

    move-result-object p1

    if-ne v0, p1, :cond_2

    return v2

    .line 675
    :cond_2
    sget-object p1, Lkotlinx/coroutines/cb;->a:Lkotlinx/coroutines/internal/v;

    if-ne v0, p1, :cond_3

    return v2

    .line 676
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/cb;->d()Lkotlinx/coroutines/internal/v;

    move-result-object p1

    if-ne v0, p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 678
    :cond_4
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/ca;->d(Ljava/lang/Object;)V

    return v2
.end method

.method public final f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1588
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/ca;->p()Ljava/lang/Object;

    move-result-object v0

    .line 828
    invoke-direct {p0, v0, p1}, Lkotlinx/coroutines/ca;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 830
    invoke-static {}, Lkotlinx/coroutines/cb;->c()Lkotlinx/coroutines/internal/v;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 831
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 832
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Job "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is already complete or completing, but is being completed with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 24910
    instance-of v2, p1, Lkotlinx/coroutines/z;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move-object p1, v3

    :cond_1
    check-cast p1, Lkotlinx/coroutines/z;

    if-eqz p1, :cond_2

    iget-object v3, p1, Lkotlinx/coroutines/z;->b:Ljava/lang/Throwable;

    .line 831
    :cond_2
    invoke-direct {v0, v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 835
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/cb;->e()Lkotlinx/coroutines/internal/v;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-object v0
.end method

.method public fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lkotlin/jvm/functions/Function2<",
            "-TR;-",
            "Lkotlin/c/f$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 32000
    move-object v0, p0

    check-cast v0, Lkotlin/c/f$b;

    invoke-static {v0, p1, p2}, Lkotlin/c/f$b$a;->a(Lkotlin/c/f$b;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lkotlin/c/f$c;)Lkotlin/c/f$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lkotlin/c/f$b;",
            ">(",
            "Lkotlin/c/f$c<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 33000
    move-object v0, p0

    check-cast v0, Lkotlin/c/f$b;

    invoke-static {v0, p1}, Lkotlin/c/f$b$a;->a(Lkotlin/c/f$b;Lkotlin/c/f$c;)Lkotlin/c/f$b;

    move-result-object p1

    return-object p1
.end method

.method public final getKey()Lkotlin/c/f$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/c/f$c<",
            "*>;"
        }
    .end annotation

    .line 29
    sget-object v0, Lkotlinx/coroutines/bv;->c:Lkotlinx/coroutines/bv$b;

    check-cast v0, Lkotlin/c/f$c;

    return-object v0
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method protected i()Ljava/lang/String;
    .locals 1

    const-string v0, "Job was cancelled"

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 28021
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Z
    .locals 1

    .line 186
    invoke-virtual {p0}, Lkotlinx/coroutines/ca;->p()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/bq;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final l()Z
    .locals 2

    .line 189
    invoke-virtual {p0}, Lkotlinx/coroutines/ca;->p()Ljava/lang/Object;

    move-result-object v0

    .line 190
    instance-of v1, v0, Lkotlinx/coroutines/z;

    if-nez v1, :cond_1

    instance-of v1, v0, Lkotlinx/coroutines/ca$c;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/ca$c;

    invoke-virtual {v0}, Lkotlinx/coroutines/ca$c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final m()Ljava/util/concurrent/CancellationException;
    .locals 4

    .line 415
    invoke-virtual {p0}, Lkotlinx/coroutines/ca;->p()Ljava/lang/Object;

    move-result-object v0

    .line 416
    instance-of v1, v0, Lkotlinx/coroutines/ca$c;

    const-string v2, "Job is still new or active: "

    if-eqz v1, :cond_1

    check-cast v0, Lkotlinx/coroutines/ca$c;

    .line 10086
    iget-object v0, v0, Lkotlinx/coroutines/ca$c;->_rootCause:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11021
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 416
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is cancelling"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 417
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 418
    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/bq;

    if-nez v1, :cond_3

    .line 419
    instance-of v1, v0, Lkotlinx/coroutines/z;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast v0, Lkotlinx/coroutines/z;

    iget-object v0, v0, Lkotlinx/coroutines/z;->b:Ljava/lang/Throwable;

    .line 11423
    invoke-direct {p0, v0, v2}, Lkotlinx/coroutines/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    return-object v0

    .line 420
    :cond_2
    new-instance v0, Lkotlinx/coroutines/JobCancellationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12021
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 420
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has completed normally"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, p0

    check-cast v3, Lkotlinx/coroutines/bv;

    invoke-direct {v0, v1, v2, v3}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/bv;)V

    check-cast v0, Ljava/util/concurrent/CancellationException;

    :goto_0
    return-object v0

    .line 418
    :cond_3
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public minusKey(Lkotlin/c/f$c;)Lkotlin/c/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/f$c<",
            "*>;)",
            "Lkotlin/c/f;"
        }
    .end annotation

    .line 34000
    move-object v0, p0

    check-cast v0, Lkotlin/c/f$b;

    invoke-static {v0, p1}, Lkotlin/c/f$b$a;->b(Lkotlin/c/f$b;Lkotlin/c/f$c;)Lkotlin/c/f;

    move-result-object p1

    return-object p1
.end method

.method public final n()Z
    .locals 2

    .line 1538
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/ca;->p()Ljava/lang/Object;

    move-result-object v0

    .line 380
    invoke-direct {p0, v0}, Lkotlinx/coroutines/ca;->c(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final o()Lkotlinx/coroutines/t;
    .locals 1

    .line 133
    iget-object v0, p0, Lkotlinx/coroutines/ca;->_parentHandle:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/t;

    return-object v0
.end method

.method public final p()Ljava/lang/Object;
    .locals 2

    .line 1478
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/ca;->_state:Ljava/lang/Object;

    .line 167
    instance-of v1, v0, Lkotlinx/coroutines/internal/r;

    if-nez v1, :cond_0

    return-object v0

    .line 168
    :cond_0
    check-cast v0, Lkotlinx/coroutines/internal/r;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public plus(Lkotlin/c/f;)Lkotlin/c/f;
    .locals 1

    .line 31000
    move-object v0, p0

    check-cast v0, Lkotlin/c/f$b;

    invoke-static {v0, p1}, Lkotlin/c/f$b$a;->a(Lkotlin/c/f$b;Lkotlin/c/f;)Lkotlin/c/f;

    move-result-object p1

    return-object p1
.end method

.method public final q()Ljava/util/concurrent/CancellationException;
    .locals 5

    .line 707
    invoke-virtual {p0}, Lkotlinx/coroutines/ca;->p()Ljava/lang/Object;

    move-result-object v0

    .line 709
    instance-of v1, v0, Lkotlinx/coroutines/ca$c;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/ca$c;

    .line 21086
    iget-object v1, v1, Lkotlinx/coroutines/ca$c;->_rootCause:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    goto :goto_0

    .line 710
    :cond_0
    instance-of v1, v0, Lkotlinx/coroutines/z;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/z;

    iget-object v1, v1, Lkotlinx/coroutines/z;->b:Ljava/lang/Throwable;

    goto :goto_0

    .line 711
    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/bq;

    if-nez v1, :cond_4

    move-object v1, v2

    .line 714
    :goto_0
    instance-of v3, v1, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    check-cast v2, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_3

    new-instance v2, Lkotlinx/coroutines/JobCancellationException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Parent job is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlinx/coroutines/ca;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, p0

    check-cast v3, Lkotlinx/coroutines/bv;

    invoke-direct {v2, v0, v1, v3}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/bv;)V

    check-cast v2, Ljava/util/concurrent/CancellationException;

    :cond_3
    return-object v2

    .line 711
    :cond_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot be cancelling child in this state: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27053
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlinx/coroutines/ca;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/ca;->p()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/ca;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1050
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28013
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 1050
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
