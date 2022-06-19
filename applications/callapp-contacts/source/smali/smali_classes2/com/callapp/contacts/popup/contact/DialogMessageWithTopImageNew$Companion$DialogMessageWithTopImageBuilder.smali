.class public final Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DialogMessageWithTopImageBuilder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000E\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0014\n\u0002\u0010\r\n\u0002\u0008#\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u001b\n\u0002\u0018\u0002\n\u0002\u0008\u001a\n\u0002\u0018\u0002\n\u0003\u0008\u009b\u0001\n\u0002\u0018\u0002\n\u0002\u0008\u0012\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0095\u0002\u001a\u00030\u0096\u0002JA\u0010\u0097\u0002\u001a\u00020\u00002\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\t\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0004\u00a2\u0006\u0003\u0010\u0098\u0002Jc\u0010\u0099\u0002\u001a\u00020\u00002\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00192\n\u0008\u0002\u00109\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010B\u001a\u0004\u0018\u00010C2\u0008\u0008\u0002\u0010<\u001a\u00020=2\u0008\u0008\u0002\u00106\u001a\u00020\u00042\u0008\u0008\u0002\u0010-\u001a\u00020\u00042\u0008\u0008\u0002\u00100\u001a\u00020\u00042\u0008\u0008\u0002\u00103\u001a\u00020\u0004\u00a2\u0006\u0003\u0010\u009a\u0002JA\u0010\u009b\u0002\u001a\u00020\u00002\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010*\u001a\u00020\u00042\u0008\u0008\u0002\u0010!\u001a\u00020\u00042\u0008\u0008\u0002\u0010$\u001a\u00020\u00042\u0008\u0008\u0002\u0010\'\u001a\u00020\u0004\u00a2\u0006\u0003\u0010\u0098\u0002J\u0019\u0010\u009c\u0002\u001a\u00020\u00002\n\u0008\u0002\u0010I\u001a\u0004\u0018\u00010C\u00a2\u0006\u0003\u0010\u009d\u0002J\u0007\u0010\u009e\u0002\u001a\u00020\u0000J\u00da\u0001\u0010\u009f\u0002\u001a\u00020\u00002\n\u0008\u0002\u0010y\u001a\u0004\u0018\u00010z2\n\u0008\u0002\u0010R\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010p\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010v\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010s\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u007f\u001a\u0004\u0018\u00010\u00042\u000b\u0008\u0002\u0010\u0082\u0001\u001a\u0004\u0018\u00010C2\n\u0008\u0002\u0010^\u001a\u0004\u0018\u00010_2\u0008\u0008\u0002\u0010O\u001a\u00020=2\n\u0008\u0002\u0010X\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010U\u001a\u00020=2\t\u0008\u0002\u0010\u0088\u0001\u001a\u00020=2\u0008\u0008\u0002\u0010m\u001a\u00020\u00042\u0008\u0008\u0002\u0010d\u001a\u00020\u00042\u0008\u0008\u0002\u0010g\u001a\u00020\u00042\u0008\u0008\u0002\u0010j\u001a\u00020\u00042\u000b\u0008\u0002\u0010\u0085\u0001\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010[\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0003\u0010\u00a0\u0002Jk\u0010\u00a1\u0002\u001a\u00020\u00002\u000b\u0008\u0002\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00192\u000b\u0008\u0002\u0010\u009a\u0001\u001a\u0004\u0018\u00010\u00042\u000b\u0008\u0002\u0010\u00a0\u0001\u001a\u0004\u0018\u00010C2\t\u0008\u0002\u0010\u00a2\u0002\u001a\u00020=2\t\u0008\u0002\u0010\u0097\u0001\u001a\u00020\u00042\t\u0008\u0002\u0010\u008e\u0001\u001a\u00020\u00042\t\u0008\u0002\u0010\u0091\u0001\u001a\u00020\u00042\t\u0008\u0002\u0010\u0094\u0001\u001a\u00020\u0004\u00a2\u0006\u0003\u0010\u009a\u0002J\u00e9\u0001\u0010\u00a3\u0002\u001a\u00020\u00002\u000b\u0008\u0002\u0010\u00ca\u0001\u001a\u0004\u0018\u00010z2\u000b\u0008\u0002\u0010\u00a6\u0001\u001a\u0004\u0018\u00010\u00042\u000b\u0008\u0002\u0010\u00c1\u0001\u001a\u0004\u0018\u00010\u00042\u000b\u0008\u0002\u0010\u00c7\u0001\u001a\u0004\u0018\u00010\u00042\u000b\u0008\u0002\u0010\u00c4\u0001\u001a\u0004\u0018\u00010\u00042\u000b\u0008\u0002\u0010\u00cd\u0001\u001a\u0004\u0018\u00010\u00042\u000b\u0008\u0002\u0010\u00d0\u0001\u001a\u0004\u0018\u00010C2\u000b\u0008\u0002\u0010\u00b2\u0001\u001a\u0004\u0018\u00010_2\t\u0008\u0002\u0010\u00a3\u0001\u001a\u00020=2\u000b\u0008\u0002\u0010\u00ac\u0001\u001a\u0004\u0018\u00010\u00042\t\u0008\u0002\u0010\u00a9\u0001\u001a\u00020=2\t\u0008\u0002\u0010\u00d6\u0001\u001a\u00020=2\t\u0008\u0002\u0010\u00be\u0001\u001a\u00020\u00042\t\u0008\u0002\u0010\u00b5\u0001\u001a\u00020\u00042\t\u0008\u0002\u0010\u00b8\u0001\u001a\u00020\u00042\t\u0008\u0002\u0010\u00bb\u0001\u001a\u00020\u00042\u000b\u0008\u0002\u0010\u00d3\u0001\u001a\u0004\u0018\u00010\u00042\u000b\u0008\u0002\u0010\u00af\u0001\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0003\u0010\u00a0\u0002J^\u0010\u00a4\u0002\u001a\u00020\u00002\u000b\u0008\u0002\u0010\u00d9\u0001\u001a\u0004\u0018\u00010\u00042\u000b\u0008\u0002\u0010\u00e8\u0001\u001a\u0004\u0018\u00010\u00042\t\u0008\u0002\u0010\u00e5\u0001\u001a\u00020\u00042\t\u0008\u0002\u0010\u00dc\u0001\u001a\u00020\u00042\t\u0008\u0002\u0010\u00df\u0001\u001a\u00020\u00042\t\u0008\u0002\u0010\u00e2\u0001\u001a\u00020\u00042\t\u0008\u0002\u0010\u00eb\u0001\u001a\u00020=\u00a2\u0006\u0003\u0010\u00a5\u0002Jk\u0010\u00a6\u0002\u001a\u00020\u00002\u000b\u0008\u0002\u0010\u00ee\u0001\u001a\u0004\u0018\u00010\u00192\u000b\u0008\u0002\u0010\u00fd\u0001\u001a\u0004\u0018\u00010\u00042\u000b\u0008\u0002\u0010\u0083\u0002\u001a\u0004\u0018\u00010C2\t\u0008\u0002\u0010\u00a2\u0002\u001a\u00020=2\t\u0008\u0002\u0010\u00fa\u0001\u001a\u00020\u00042\t\u0008\u0002\u0010\u00f1\u0001\u001a\u00020\u00042\t\u0008\u0002\u0010\u00f4\u0001\u001a\u00020\u00042\t\u0008\u0002\u0010\u00f7\u0001\u001a\u00020\u0004\u00a2\u0006\u0003\u0010\u009a\u0002JF\u0010\u00a7\u0002\u001a\u00020\u00002\u000b\u0008\u0002\u0010\u0092\u0002\u001a\u0004\u0018\u00010\u00042\t\u0008\u0002\u0010\u008f\u0002\u001a\u00020\u00042\t\u0008\u0002\u0010\u0086\u0002\u001a\u00020\u00042\t\u0008\u0002\u0010\u0089\u0002\u001a\u00020\u00042\t\u0008\u0002\u0010\u008c\u0002\u001a\u00020\u0004\u00a2\u0006\u0003\u0010\u0098\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R\u001e\u0010\u0012\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001e\u0010\u001e\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\u0008\u001f\u0010\u0014\"\u0004\u0008 \u0010\u0016R\u001a\u0010!\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u0006\"\u0004\u0008#\u0010\u0008R\u001a\u0010$\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u0006\"\u0004\u0008&\u0010\u0008R\u001a\u0010\'\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u0006\"\u0004\u0008)\u0010\u0008R\u001a\u0010*\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010\u0006\"\u0004\u0008,\u0010\u0008R\u001a\u0010-\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010\u0006\"\u0004\u0008/\u0010\u0008R\u001a\u00100\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u0010\u0006\"\u0004\u00082\u0010\u0008R\u001a\u00103\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u0010\u0006\"\u0004\u00085\u0010\u0008R\u001a\u00106\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u0010\u0006\"\u0004\u00088\u0010\u0008R\u001e\u00109\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\u0008:\u0010\u0014\"\u0004\u0008;\u0010\u0016R\u001a\u0010<\u001a\u00020=X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008>\u0010?\"\u0004\u0008@\u0010AR\u001e\u0010B\u001a\u0004\u0018\u00010CX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010H\u001a\u0004\u0008D\u0010E\"\u0004\u0008F\u0010GR\u001e\u0010I\u001a\u0004\u0018\u00010CX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010H\u001a\u0004\u0008J\u0010E\"\u0004\u0008K\u0010GR\u001a\u0010L\u001a\u00020=X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008M\u0010?\"\u0004\u0008N\u0010AR\u001a\u0010O\u001a\u00020=X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008P\u0010?\"\u0004\u0008Q\u0010AR\u001e\u0010R\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\u0008S\u0010\u0014\"\u0004\u0008T\u0010\u0016R\u001a\u0010U\u001a\u00020=X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008V\u0010?\"\u0004\u0008W\u0010AR\u001e\u0010X\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\u0008Y\u0010\u0014\"\u0004\u0008Z\u0010\u0016R\u001e\u0010[\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\u0008\\\u0010\u0014\"\u0004\u0008]\u0010\u0016R\u001c\u0010^\u001a\u0004\u0018\u00010_X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008`\u0010a\"\u0004\u0008b\u0010cR\u001a\u0010d\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008e\u0010\u0006\"\u0004\u0008f\u0010\u0008R\u001a\u0010g\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008h\u0010\u0006\"\u0004\u0008i\u0010\u0008R\u001a\u0010j\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008k\u0010\u0006\"\u0004\u0008l\u0010\u0008R\u001a\u0010m\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008n\u0010\u0006\"\u0004\u0008o\u0010\u0008R\u001e\u0010p\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\u0008q\u0010\u0014\"\u0004\u0008r\u0010\u0016R\u001e\u0010s\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\u0008t\u0010\u0014\"\u0004\u0008u\u0010\u0016R\u001e\u0010v\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\u0008w\u0010\u0014\"\u0004\u0008x\u0010\u0016R\u001c\u0010y\u001a\u0004\u0018\u00010zX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008{\u0010|\"\u0004\u0008}\u0010~R \u0010\u007f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0012\n\u0002\u0010\u0017\u001a\u0005\u0008\u0080\u0001\u0010\u0014\"\u0005\u0008\u0081\u0001\u0010\u0016R!\u0010\u0082\u0001\u001a\u0004\u0018\u00010CX\u0086\u000e\u00a2\u0006\u0012\n\u0002\u0010H\u001a\u0005\u0008\u0083\u0001\u0010E\"\u0005\u0008\u0084\u0001\u0010GR!\u0010\u0085\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0012\n\u0002\u0010\u0017\u001a\u0005\u0008\u0086\u0001\u0010\u0014\"\u0005\u0008\u0087\u0001\u0010\u0016R\u001d\u0010\u0088\u0001\u001a\u00020=X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0089\u0001\u0010?\"\u0005\u0008\u008a\u0001\u0010AR\u001f\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u0019X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u008c\u0001\u0010\u001b\"\u0005\u0008\u008d\u0001\u0010\u001dR\u001d\u0010\u008e\u0001\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u008f\u0001\u0010\u0006\"\u0005\u0008\u0090\u0001\u0010\u0008R\u001d\u0010\u0091\u0001\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0092\u0001\u0010\u0006\"\u0005\u0008\u0093\u0001\u0010\u0008R\u001d\u0010\u0094\u0001\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0095\u0001\u0010\u0006\"\u0005\u0008\u0096\u0001\u0010\u0008R\u001d\u0010\u0097\u0001\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0098\u0001\u0010\u0006\"\u0005\u0008\u0099\u0001\u0010\u0008R!\u0010\u009a\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0012\n\u0002\u0010\u0017\u001a\u0005\u0008\u009b\u0001\u0010\u0014\"\u0005\u0008\u009c\u0001\u0010\u0016R\u001d\u0010\u009d\u0001\u001a\u00020=X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u009e\u0001\u0010?\"\u0005\u0008\u009f\u0001\u0010AR!\u0010\u00a0\u0001\u001a\u0004\u0018\u00010CX\u0086\u000e\u00a2\u0006\u0012\n\u0002\u0010H\u001a\u0005\u0008\u00a1\u0001\u0010E\"\u0005\u0008\u00a2\u0001\u0010GR\u001d\u0010\u00a3\u0001\u001a\u00020=X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00a4\u0001\u0010?\"\u0005\u0008\u00a5\u0001\u0010AR!\u0010\u00a6\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0012\n\u0002\u0010\u0017\u001a\u0005\u0008\u00a7\u0001\u0010\u0014\"\u0005\u0008\u00a8\u0001\u0010\u0016R\u001d\u0010\u00a9\u0001\u001a\u00020=X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00aa\u0001\u0010?\"\u0005\u0008\u00ab\u0001\u0010AR!\u0010\u00ac\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0012\n\u0002\u0010\u0017\u001a\u0005\u0008\u00ad\u0001\u0010\u0014\"\u0005\u0008\u00ae\u0001\u0010\u0016R!\u0010\u00af\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0012\n\u0002\u0010\u0017\u001a\u0005\u0008\u00b0\u0001\u0010\u0014\"\u0005\u0008\u00b1\u0001\u0010\u0016R\u001f\u0010\u00b2\u0001\u001a\u0004\u0018\u00010_X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00b3\u0001\u0010a\"\u0005\u0008\u00b4\u0001\u0010cR\u001d\u0010\u00b5\u0001\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00b6\u0001\u0010\u0006\"\u0005\u0008\u00b7\u0001\u0010\u0008R\u001d\u0010\u00b8\u0001\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00b9\u0001\u0010\u0006\"\u0005\u0008\u00ba\u0001\u0010\u0008R\u001d\u0010\u00bb\u0001\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00bc\u0001\u0010\u0006\"\u0005\u0008\u00bd\u0001\u0010\u0008R\u001d\u0010\u00be\u0001\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00bf\u0001\u0010\u0006\"\u0005\u0008\u00c0\u0001\u0010\u0008R!\u0010\u00c1\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0012\n\u0002\u0010\u0017\u001a\u0005\u0008\u00c2\u0001\u0010\u0014\"\u0005\u0008\u00c3\u0001\u0010\u0016R!\u0010\u00c4\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0012\n\u0002\u0010\u0017\u001a\u0005\u0008\u00c5\u0001\u0010\u0014\"\u0005\u0008\u00c6\u0001\u0010\u0016R!\u0010\u00c7\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0012\n\u0002\u0010\u0017\u001a\u0005\u0008\u00c8\u0001\u0010\u0014\"\u0005\u0008\u00c9\u0001\u0010\u0016R\u001f\u0010\u00ca\u0001\u001a\u0004\u0018\u00010zX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00cb\u0001\u0010|\"\u0005\u0008\u00cc\u0001\u0010~R!\u0010\u00cd\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0012\n\u0002\u0010\u0017\u001a\u0005\u0008\u00ce\u0001\u0010\u0014\"\u0005\u0008\u00cf\u0001\u0010\u0016R!\u0010\u00d0\u0001\u001a\u0004\u0018\u00010CX\u0086\u000e\u00a2\u0006\u0012\n\u0002\u0010H\u001a\u0005\u0008\u00d1\u0001\u0010E\"\u0005\u0008\u00d2\u0001\u0010GR!\u0010\u00d3\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0012\n\u0002\u0010\u0017\u001a\u0005\u0008\u00d4\u0001\u0010\u0014\"\u0005\u0008\u00d5\u0001\u0010\u0016R\u001d\u0010\u00d6\u0001\u001a\u00020=X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00d7\u0001\u0010?\"\u0005\u0008\u00d8\u0001\u0010AR!\u0010\u00d9\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0012\n\u0002\u0010\u0017\u001a\u0005\u0008\u00da\u0001\u0010\u0014\"\u0005\u0008\u00db\u0001\u0010\u0016R\u001d\u0010\u00dc\u0001\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00dd\u0001\u0010\u0006\"\u0005\u0008\u00de\u0001\u0010\u0008R\u001d\u0010\u00df\u0001\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00e0\u0001\u0010\u0006\"\u0005\u0008\u00e1\u0001\u0010\u0008R\u001d\u0010\u00e2\u0001\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00e3\u0001\u0010\u0006\"\u0005\u0008\u00e4\u0001\u0010\u0008R\u001d\u0010\u00e5\u0001\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00e6\u0001\u0010\u0006\"\u0005\u0008\u00e7\u0001\u0010\u0008R!\u0010\u00e8\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0012\n\u0002\u0010\u0017\u001a\u0005\u0008\u00e9\u0001\u0010\u0014\"\u0005\u0008\u00ea\u0001\u0010\u0016R\u001d\u0010\u00eb\u0001\u001a\u00020=X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00ec\u0001\u0010?\"\u0005\u0008\u00ed\u0001\u0010AR\u001f\u0010\u00ee\u0001\u001a\u0004\u0018\u00010\u0019X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00ef\u0001\u0010\u001b\"\u0005\u0008\u00f0\u0001\u0010\u001dR\u001d\u0010\u00f1\u0001\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00f2\u0001\u0010\u0006\"\u0005\u0008\u00f3\u0001\u0010\u0008R\u001d\u0010\u00f4\u0001\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00f5\u0001\u0010\u0006\"\u0005\u0008\u00f6\u0001\u0010\u0008R\u001d\u0010\u00f7\u0001\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00f8\u0001\u0010\u0006\"\u0005\u0008\u00f9\u0001\u0010\u0008R\u001d\u0010\u00fa\u0001\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00fb\u0001\u0010\u0006\"\u0005\u0008\u00fc\u0001\u0010\u0008R!\u0010\u00fd\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0012\n\u0002\u0010\u0017\u001a\u0005\u0008\u00fe\u0001\u0010\u0014\"\u0005\u0008\u00ff\u0001\u0010\u0016R\u001d\u0010\u0080\u0002\u001a\u00020=X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0081\u0002\u0010?\"\u0005\u0008\u0082\u0002\u0010AR!\u0010\u0083\u0002\u001a\u0004\u0018\u00010CX\u0086\u000e\u00a2\u0006\u0012\n\u0002\u0010H\u001a\u0005\u0008\u0084\u0002\u0010E\"\u0005\u0008\u0085\u0002\u0010GR\u001d\u0010\u0086\u0002\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0087\u0002\u0010\u0006\"\u0005\u0008\u0088\u0002\u0010\u0008R\u001d\u0010\u0089\u0002\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u008a\u0002\u0010\u0006\"\u0005\u0008\u008b\u0002\u0010\u0008R\u001d\u0010\u008c\u0002\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u008d\u0002\u0010\u0006\"\u0005\u0008\u008e\u0002\u0010\u0008R\u001d\u0010\u008f\u0002\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0090\u0002\u0010\u0006\"\u0005\u0008\u0091\u0002\u0010\u0008R!\u0010\u0092\u0002\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0012\n\u0002\u0010\u0017\u001a\u0005\u0008\u0093\u0002\u0010\u0014\"\u0005\u0008\u0094\u0002\u0010\u0016\u00a8\u0006\u00a8\u0002"
    }
    d2 = {
        "Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;",
        "",
        "()V",
        "bottomImageMarginBottom",
        "",
        "getBottomImageMarginBottom",
        "()I",
        "setBottomImageMarginBottom",
        "(I)V",
        "bottomImageMarginLeft",
        "getBottomImageMarginLeft",
        "setBottomImageMarginLeft",
        "bottomImageMarginRight",
        "getBottomImageMarginRight",
        "setBottomImageMarginRight",
        "bottomImageMarginTop",
        "getBottomImageMarginTop",
        "setBottomImageMarginTop",
        "bottomImageResource",
        "getBottomImageResource",
        "()Ljava/lang/Integer;",
        "setBottomImageResource",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "bottomMessage",
        "",
        "getBottomMessage",
        "()Ljava/lang/CharSequence;",
        "setBottomMessage",
        "(Ljava/lang/CharSequence;)V",
        "bottomMessageImage",
        "getBottomMessageImage",
        "setBottomMessageImage",
        "bottomMessageImageMarginBottom",
        "getBottomMessageImageMarginBottom",
        "setBottomMessageImageMarginBottom",
        "bottomMessageImageMarginLeft",
        "getBottomMessageImageMarginLeft",
        "setBottomMessageImageMarginLeft",
        "bottomMessageImageMarginRight",
        "getBottomMessageImageMarginRight",
        "setBottomMessageImageMarginRight",
        "bottomMessageImageMarginTop",
        "getBottomMessageImageMarginTop",
        "setBottomMessageImageMarginTop",
        "bottomMessageMarginBottom",
        "getBottomMessageMarginBottom",
        "setBottomMessageMarginBottom",
        "bottomMessageMarginLeft",
        "getBottomMessageMarginLeft",
        "setBottomMessageMarginLeft",
        "bottomMessageMarginRight",
        "getBottomMessageMarginRight",
        "setBottomMessageMarginRight",
        "bottomMessageMarginTop",
        "getBottomMessageMarginTop",
        "setBottomMessageMarginTop",
        "bottomMessageTextColor",
        "getBottomMessageTextColor",
        "setBottomMessageTextColor",
        "bottomMessageTextIsBold",
        "",
        "getBottomMessageTextIsBold",
        "()Z",
        "setBottomMessageTextIsBold",
        "(Z)V",
        "bottomMessageTextSize",
        "",
        "getBottomMessageTextSize",
        "()Ljava/lang/Float;",
        "setBottomMessageTextSize",
        "(Ljava/lang/Float;)V",
        "Ljava/lang/Float;",
        "buttonPositioning",
        "getButtonPositioning",
        "setButtonPositioning",
        "closeButtonVisibility",
        "getCloseButtonVisibility",
        "setCloseButtonVisibility",
        "leftBtnAllCaps",
        "getLeftBtnAllCaps",
        "setLeftBtnAllCaps",
        "leftBtnBackgroundColor",
        "getLeftBtnBackgroundColor",
        "setLeftBtnBackgroundColor",
        "leftBtnBold",
        "getLeftBtnBold",
        "setLeftBtnBold",
        "leftBtnGravity",
        "getLeftBtnGravity",
        "setLeftBtnGravity",
        "leftBtnHeight",
        "getLeftBtnHeight",
        "setLeftBtnHeight",
        "leftBtnListener",
        "Landroid/view/View$OnClickListener;",
        "getLeftBtnListener",
        "()Landroid/view/View$OnClickListener;",
        "setLeftBtnListener",
        "(Landroid/view/View$OnClickListener;)V",
        "leftBtnMarginBottom",
        "getLeftBtnMarginBottom",
        "setLeftBtnMarginBottom",
        "leftBtnMarginLeft",
        "getLeftBtnMarginLeft",
        "setLeftBtnMarginLeft",
        "leftBtnMarginRight",
        "getLeftBtnMarginRight",
        "setLeftBtnMarginRight",
        "leftBtnMarginTop",
        "getLeftBtnMarginTop",
        "setLeftBtnMarginTop",
        "leftBtnResource",
        "getLeftBtnResource",
        "setLeftBtnResource",
        "leftBtnStrokeColor",
        "getLeftBtnStrokeColor",
        "setLeftBtnStrokeColor",
        "leftBtnStrokeWidth",
        "getLeftBtnStrokeWidth",
        "setLeftBtnStrokeWidth",
        "leftBtnText",
        "Landroid/text/SpannableString;",
        "getLeftBtnText",
        "()Landroid/text/SpannableString;",
        "setLeftBtnText",
        "(Landroid/text/SpannableString;)V",
        "leftBtnTextColor",
        "getLeftBtnTextColor",
        "setLeftBtnTextColor",
        "leftBtnTextSize",
        "getLeftBtnTextSize",
        "setLeftBtnTextSize",
        "leftBtnWidth",
        "getLeftBtnWidth",
        "setLeftBtnWidth",
        "leftWrapContentWidth",
        "getLeftWrapContentWidth",
        "setLeftWrapContentWidth",
        "message",
        "getMessage",
        "setMessage",
        "messageMarginBottom",
        "getMessageMarginBottom",
        "setMessageMarginBottom",
        "messageMarginLeft",
        "getMessageMarginLeft",
        "setMessageMarginLeft",
        "messageMarginRight",
        "getMessageMarginRight",
        "setMessageMarginRight",
        "messageMarginTop",
        "getMessageMarginTop",
        "setMessageMarginTop",
        "messageTextColor",
        "getMessageTextColor",
        "setMessageTextColor",
        "messageTextIsBold",
        "getMessageTextIsBold",
        "setMessageTextIsBold",
        "messageTextSize",
        "getMessageTextSize",
        "setMessageTextSize",
        "rightBtnAllCaps",
        "getRightBtnAllCaps",
        "setRightBtnAllCaps",
        "rightBtnBackgroundColor",
        "getRightBtnBackgroundColor",
        "setRightBtnBackgroundColor",
        "rightBtnBold",
        "getRightBtnBold",
        "setRightBtnBold",
        "rightBtnGravity",
        "getRightBtnGravity",
        "setRightBtnGravity",
        "rightBtnHeight",
        "getRightBtnHeight",
        "setRightBtnHeight",
        "rightBtnListener",
        "getRightBtnListener",
        "setRightBtnListener",
        "rightBtnMarginBottom",
        "getRightBtnMarginBottom",
        "setRightBtnMarginBottom",
        "rightBtnMarginLeft",
        "getRightBtnMarginLeft",
        "setRightBtnMarginLeft",
        "rightBtnMarginRight",
        "getRightBtnMarginRight",
        "setRightBtnMarginRight",
        "rightBtnMarginTop",
        "getRightBtnMarginTop",
        "setRightBtnMarginTop",
        "rightBtnResource",
        "getRightBtnResource",
        "setRightBtnResource",
        "rightBtnStrokeColor",
        "getRightBtnStrokeColor",
        "setRightBtnStrokeColor",
        "rightBtnStrokeWidth",
        "getRightBtnStrokeWidth",
        "setRightBtnStrokeWidth",
        "rightBtnText",
        "getRightBtnText",
        "setRightBtnText",
        "rightBtnTextColor",
        "getRightBtnTextColor",
        "setRightBtnTextColor",
        "rightBtnTextSize",
        "getRightBtnTextSize",
        "setRightBtnTextSize",
        "rightBtnWidth",
        "getRightBtnWidth",
        "setRightBtnWidth",
        "rightWrapContentWidth",
        "getRightWrapContentWidth",
        "setRightWrapContentWidth",
        "shapeBackgroundColor",
        "getShapeBackgroundColor",
        "setShapeBackgroundColor",
        "shapePaddingBottom",
        "getShapePaddingBottom",
        "setShapePaddingBottom",
        "shapePaddingLeft",
        "getShapePaddingLeft",
        "setShapePaddingLeft",
        "shapePaddingRight",
        "getShapePaddingRight",
        "setShapePaddingRight",
        "shapePaddingTop",
        "getShapePaddingTop",
        "setShapePaddingTop",
        "shapeStrokeColor",
        "getShapeStrokeColor",
        "setShapeStrokeColor",
        "shapeWrapContent",
        "getShapeWrapContent",
        "setShapeWrapContent",
        "title",
        "getTitle",
        "setTitle",
        "titleMarginBottom",
        "getTitleMarginBottom",
        "setTitleMarginBottom",
        "titleMarginLeft",
        "getTitleMarginLeft",
        "setTitleMarginLeft",
        "titleMarginRight",
        "getTitleMarginRight",
        "setTitleMarginRight",
        "titleMarginTop",
        "getTitleMarginTop",
        "setTitleMarginTop",
        "titleTextColor",
        "getTitleTextColor",
        "setTitleTextColor",
        "titleTextIsBold",
        "getTitleTextIsBold",
        "setTitleTextIsBold",
        "titleTextSize",
        "getTitleTextSize",
        "setTitleTextSize",
        "topImageMarginBottom",
        "getTopImageMarginBottom",
        "setTopImageMarginBottom",
        "topImageMarginLeft",
        "getTopImageMarginLeft",
        "setTopImageMarginLeft",
        "topImageMarginRight",
        "getTopImageMarginRight",
        "setTopImageMarginRight",
        "topImageMarginTop",
        "getTopImageMarginTop",
        "setTopImageMarginTop",
        "topImageResource",
        "getTopImageResource",
        "setTopImageResource",
        "build",
        "Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;",
        "withBottomImageResource",
        "(Ljava/lang/Integer;IIII)Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;",
        "withBottomMessage",
        "(Ljava/lang/CharSequence;Ljava/lang/Integer;Ljava/lang/Float;ZIIII)Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;",
        "withBottomMessageImage",
        "withButtonPositioning",
        "(Ljava/lang/Float;)Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;",
        "withCloseButton",
        "withLeftButton",
        "(Landroid/text/SpannableString;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Landroid/view/View$OnClickListener;ZLjava/lang/Integer;ZZIIIILjava/lang/Integer;Ljava/lang/Integer;)Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;",
        "withMessage",
        "isTextBold",
        "withRightButton",
        "withShape",
        "(Ljava/lang/Integer;Ljava/lang/Integer;IIIIZ)Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;",
        "withTitle",
        "withTopImageResource",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private A:Landroid/view/View$OnClickListener;

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:Ljava/lang/Integer;

.field private J:Ljava/lang/Integer;

.field private K:Landroid/text/SpannableString;

.field private L:Ljava/lang/Integer;

.field private M:Ljava/lang/Integer;

.field private N:Ljava/lang/Integer;

.field private O:Ljava/lang/Integer;

.field private P:Ljava/lang/Integer;

.field private Q:Ljava/lang/Integer;

.field private R:Ljava/lang/Float;

.field private S:Landroid/view/View$OnClickListener;

.field private T:Z

.field private U:Z

.field private V:Z

.field private W:I

.field private X:I

.field private Y:I

.field private Z:I

.field public a:Ljava/lang/Float;

.field private aA:Ljava/lang/Integer;

.field private aB:I

.field private aC:I

.field private aD:I

.field private aE:I

.field private aF:Z

.field private aa:Ljava/lang/Integer;

.field private ab:Ljava/lang/Integer;

.field private ac:Ljava/lang/CharSequence;

.field private ad:Ljava/lang/Integer;

.field private ae:Ljava/lang/Float;

.field private af:Z

.field private ag:I

.field private ah:I

.field private ai:I

.field private aj:I

.field private ak:Ljava/lang/CharSequence;

.field private al:Ljava/lang/Integer;

.field private am:Ljava/lang/Float;

.field private an:Z

.field private ao:I

.field private ap:I

.field private aq:I

.field private ar:I

.field private as:Ljava/lang/CharSequence;

.field private at:Ljava/lang/Integer;

.field private au:Ljava/lang/Float;

.field private av:Z

.field private aw:I

.field private ax:I

.field private ay:I

.field private az:I

.field private b:Ljava/lang/Integer;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Ljava/lang/Integer;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Ljava/lang/Integer;

.field private m:Ljava/lang/Integer;

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Z

.field private s:Landroid/text/SpannableString;

.field private t:Ljava/lang/Integer;

.field private u:Ljava/lang/Integer;

.field private v:Ljava/lang/Integer;

.field private w:Ljava/lang/Integer;

.field private x:Ljava/lang/Integer;

.field private y:Ljava/lang/Integer;

.field private z:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 310
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->b:Ljava/lang/Integer;

    .line 317
    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->g:Ljava/lang/Integer;

    .line 325
    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->l:Ljava/lang/Integer;

    .line 326
    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->m:Ljava/lang/Integer;

    .line 337
    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->v:Ljava/lang/Integer;

    .line 357
    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->N:Ljava/lang/Integer;

    return-void
.end method

.method public static synthetic a(Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;IIIIZI)Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;
    .locals 2

    and-int/lit8 v0, p6, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 v0, p6, 0x8

    if-eqz v0, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 v0, p6, 0x10

    if-eqz v0, :cond_2

    const/4 p3, 0x0

    :cond_2
    and-int/lit8 v0, p6, 0x20

    if-eqz v0, :cond_3

    const/4 p4, 0x0

    :cond_3
    and-int/lit8 p6, p6, 0x40

    if-eqz p6, :cond_4

    const/4 p5, 0x0

    :cond_4
    const/4 p6, 0x0

    .line 1414
    iput-object p6, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->l:Ljava/lang/Integer;

    .line 1415
    iput-object p6, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->m:Ljava/lang/Integer;

    .line 1416
    iput p1, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->n:I

    .line 1417
    iput p2, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->o:I

    .line 1418
    iput p3, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->p:I

    .line 1419
    iput p4, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->q:I

    .line 1420
    iput-boolean p5, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->r:Z

    return-object p0
.end method

.method public static synthetic a(Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;Landroid/text/SpannableString;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Landroid/view/View$OnClickListener;ZLjava/lang/Integer;ZIIILjava/lang/Integer;Ljava/lang/Integer;I)Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p17

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v4, p2

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v5, p3

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v6, p4

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v7, p5

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v8, p6

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    const/4 v9, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v9, p7

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    const/4 v10, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v10, p8

    :goto_7
    and-int/lit16 v11, v1, 0x100

    const/4 v12, 0x0

    if-eqz v11, :cond_8

    const/4 v11, 0x0

    goto :goto_8

    :cond_8
    move/from16 v11, p9

    :goto_8
    and-int/lit16 v13, v1, 0x200

    if-eqz v13, :cond_9

    const/4 v13, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v13, p10

    :goto_9
    and-int/lit16 v14, v1, 0x400

    if-eqz v14, :cond_a

    const/4 v14, 0x0

    goto :goto_a

    :cond_a
    move/from16 v14, p11

    :goto_a
    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_b

    const/4 v15, 0x0

    goto :goto_b

    :cond_b
    move/from16 v15, p12

    :goto_b
    and-int/lit16 v3, v1, 0x4000

    if-eqz v3, :cond_c

    const/4 v3, 0x0

    goto :goto_c

    :cond_c
    move/from16 v3, p13

    :goto_c
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_d

    const/16 v17, 0x0

    goto :goto_d

    :cond_d
    move/from16 v17, p14

    :goto_d
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    if-eqz v16, :cond_e

    const/16 v18, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v18, p15

    :goto_e
    const/high16 v16, 0x20000

    and-int v1, v1, v16

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    goto :goto_f

    :cond_f
    move-object/from16 v1, p16

    .line 1457
    :goto_f
    iput-object v2, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->s:Landroid/text/SpannableString;

    .line 1458
    iput-object v4, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->t:Ljava/lang/Integer;

    .line 1459
    iput-object v5, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->u:Ljava/lang/Integer;

    .line 1460
    iput-object v6, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->v:Ljava/lang/Integer;

    .line 1461
    iput-object v7, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->x:Ljava/lang/Integer;

    .line 1462
    iput-object v8, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->y:Ljava/lang/Integer;

    .line 1463
    iput-object v9, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->z:Ljava/lang/Float;

    .line 1464
    iput-object v10, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->A:Landroid/view/View$OnClickListener;

    .line 1465
    iput-boolean v11, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->B:Z

    .line 1466
    iput-object v13, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->w:Ljava/lang/Integer;

    .line 1467
    iput-boolean v14, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->C:Z

    .line 1468
    iput-boolean v12, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->D:Z

    .line 1469
    iput v15, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->E:I

    .line 1470
    iput v12, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->F:I

    .line 1471
    iput v3, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->G:I

    move/from16 v12, v17

    .line 1472
    iput v12, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->H:I

    move-object/from16 v2, v18

    .line 1473
    iput-object v2, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->I:Ljava/lang/Integer;

    .line 1474
    iput-object v1, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->J:Ljava/lang/Integer;

    return-object v0
.end method

.method public static synthetic a(Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;Landroid/text/SpannableString;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Landroid/view/View$OnClickListener;ZLjava/lang/Integer;ZZIIILjava/lang/Integer;Ljava/lang/Integer;I)Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p18

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v4, p2

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v5, p3

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v6, p4

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v7, p5

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v8, p6

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    const/4 v9, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v9, p7

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    const/4 v10, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v10, p8

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    const/4 v11, 0x0

    goto :goto_8

    :cond_8
    move/from16 v11, p9

    :goto_8
    and-int/lit16 v13, v1, 0x200

    if-eqz v13, :cond_9

    const/4 v13, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v13, p10

    :goto_9
    and-int/lit16 v14, v1, 0x400

    if-eqz v14, :cond_a

    const/4 v14, 0x0

    goto :goto_a

    :cond_a
    move/from16 v14, p11

    :goto_a
    and-int/lit16 v15, v1, 0x800

    if-eqz v15, :cond_b

    const/4 v15, 0x0

    goto :goto_b

    :cond_b
    move/from16 v15, p12

    :goto_b
    and-int/lit16 v3, v1, 0x1000

    if-eqz v3, :cond_c

    const/4 v3, 0x0

    goto :goto_c

    :cond_c
    move/from16 v3, p13

    :goto_c
    and-int/lit16 v12, v1, 0x4000

    if-eqz v12, :cond_d

    const/4 v12, 0x0

    goto :goto_d

    :cond_d
    move/from16 v12, p14

    :goto_d
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_e

    const/16 v17, 0x0

    goto :goto_e

    :cond_e
    move/from16 v17, p15

    :goto_e
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    if-eqz v16, :cond_f

    const/16 v18, 0x0

    goto :goto_f

    :cond_f
    move-object/from16 v18, p16

    :goto_f
    const/high16 v16, 0x20000

    and-int v1, v1, v16

    if-eqz v1, :cond_10

    const/4 v1, 0x0

    goto :goto_10

    :cond_10
    move-object/from16 v1, p17

    .line 1432
    :goto_10
    iput-object v2, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->K:Landroid/text/SpannableString;

    .line 1433
    iput-object v4, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->L:Ljava/lang/Integer;

    .line 1434
    iput-object v5, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->M:Ljava/lang/Integer;

    .line 1435
    iput-object v6, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->N:Ljava/lang/Integer;

    .line 1436
    iput-object v7, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->P:Ljava/lang/Integer;

    .line 1437
    iput-object v8, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->Q:Ljava/lang/Integer;

    .line 1438
    iput-object v9, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->R:Ljava/lang/Float;

    .line 1439
    iput-object v10, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->S:Landroid/view/View$OnClickListener;

    .line 1440
    iput-boolean v11, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->T:Z

    .line 1441
    iput-object v13, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->O:Ljava/lang/Integer;

    .line 1442
    iput-boolean v14, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->U:Z

    .line 1443
    iput-boolean v15, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->V:Z

    .line 1444
    iput v3, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->W:I

    const/4 v2, 0x0

    .line 1445
    iput v2, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->X:I

    .line 1446
    iput v12, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->Y:I

    move/from16 v2, v17

    .line 1447
    iput v2, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->Z:I

    move-object/from16 v2, v18

    .line 1448
    iput-object v2, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->aa:Ljava/lang/Integer;

    .line 1449
    iput-object v1, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->ab:Ljava/lang/Integer;

    return-object v0
.end method

.method public static synthetic a(Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;Ljava/lang/CharSequence;Ljava/lang/Integer;)Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;
    .locals 0

    .line 1507
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->as:Ljava/lang/CharSequence;

    .line 1508
    iput-object p2, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->at:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 1509
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->au:Ljava/lang/Float;

    const/4 p1, 0x0

    .line 1510
    iput-boolean p1, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->av:Z

    const/16 p2, 0xa

    .line 1511
    iput p2, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->aw:I

    .line 1512
    iput p1, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->ax:I

    const/16 p2, 0x1e

    .line 1513
    iput p2, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->ay:I

    .line 1514
    iput p1, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->az:I

    return-object p0
.end method

.method public static synthetic a(Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;Ljava/lang/CharSequence;Ljava/lang/Integer;I)Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;
    .locals 0

    .line 1494
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->ak:Ljava/lang/CharSequence;

    .line 1495
    iput-object p2, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->al:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 1496
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->am:Ljava/lang/Float;

    const/4 p1, 0x0

    .line 1497
    iput-boolean p1, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->an:Z

    .line 1498
    iput p3, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->ao:I

    .line 1499
    iput p1, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->ap:I

    .line 1500
    iput p1, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->aq:I

    .line 1501
    iput p1, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->ar:I

    return-object p0
.end method

.method public static synthetic a(Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;Ljava/lang/CharSequence;Ljava/lang/Integer;ZII)Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;
    .locals 3

    and-int/lit8 v0, p5, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p1, v1

    :cond_0
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_1

    move-object p2, v1

    :cond_1
    and-int/lit8 v0, p5, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 p3, 0x0

    :cond_2
    and-int/lit8 p5, p5, 0x10

    if-eqz p5, :cond_3

    const/4 p4, 0x0

    .line 1481
    :cond_3
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->ac:Ljava/lang/CharSequence;

    .line 1482
    iput-object p2, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->ad:Ljava/lang/Integer;

    .line 1483
    iput-object v1, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->ae:Ljava/lang/Float;

    .line 1484
    iput-boolean p3, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->af:Z

    .line 1485
    iput p4, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->ag:I

    .line 1486
    iput v2, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->ah:I

    .line 1487
    iput v2, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->ai:I

    .line 1488
    iput v2, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->aj:I

    return-object p0
.end method

.method public static synthetic a(Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;Ljava/lang/Integer;)Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;
    .locals 0

    .line 1519
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->aA:Ljava/lang/Integer;

    const/16 p1, 0xa

    .line 1520
    iput p1, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->aB:I

    const/4 p1, 0x0

    .line 1521
    iput p1, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->aC:I

    .line 1522
    iput p1, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->aD:I

    .line 1523
    iput p1, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->aE:I

    return-object p0
.end method

.method public static synthetic b(Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;Ljava/lang/Integer;)Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;
    .locals 0

    .line 1528
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->b:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 1529
    iput p1, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->c:I

    .line 1530
    iput p1, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->d:I

    .line 1531
    iput p1, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->e:I

    .line 1532
    iput p1, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->f:I

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;
    .locals 1

    .line 551
    new-instance v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;-><init>(Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;)V

    return-object v0
.end method

.method public final getBottomImageMarginBottom()I
    .locals 1

    .line 319
    iget v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->i:I

    return v0
.end method

.method public final getBottomImageMarginLeft()I
    .locals 1

    .line 320
    iget v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->j:I

    return v0
.end method

.method public final getBottomImageMarginRight()I
    .locals 1

    .line 321
    iget v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->k:I

    return v0
.end method

.method public final getBottomImageMarginTop()I
    .locals 1

    .line 318
    iget v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->h:I

    return v0
.end method

.method public final getBottomImageResource()Ljava/lang/Integer;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->g:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getBottomMessage()Ljava/lang/CharSequence;
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->as:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getBottomMessageImage()Ljava/lang/Integer;
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->aA:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getBottomMessageImageMarginBottom()I
    .locals 1

    .line 406
    iget v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->aC:I

    return v0
.end method

.method public final getBottomMessageImageMarginLeft()I
    .locals 1

    .line 407
    iget v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->aD:I

    return v0
.end method

.method public final getBottomMessageImageMarginRight()I
    .locals 1

    .line 408
    iget v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->aE:I

    return v0
.end method

.method public final getBottomMessageImageMarginTop()I
    .locals 1

    .line 405
    iget v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->aB:I

    return v0
.end method

.method public final getBottomMessageMarginBottom()I
    .locals 1

    .line 399
    iget v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->ax:I

    return v0
.end method

.method public final getBottomMessageMarginLeft()I
    .locals 1

    .line 400
    iget v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->ay:I

    return v0
.end method

.method public final getBottomMessageMarginRight()I
    .locals 1

    .line 401
    iget v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->az:I

    return v0
.end method

.method public final getBottomMessageMarginTop()I
    .locals 1

    .line 398
    iget v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->aw:I

    return v0
.end method

.method public final getBottomMessageTextColor()Ljava/lang/Integer;
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->at:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getBottomMessageTextIsBold()Z
    .locals 1

    .line 397
    iget-boolean v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->av:Z

    return v0
.end method

.method public final getButtonPositioning()Ljava/lang/Float;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->a:Ljava/lang/Float;

    return-object v0
.end method

.method public final getCloseButtonVisibility()Z
    .locals 1

    .line 410
    iget-boolean v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->aF:Z

    return v0
.end method

.method public final getLeftBtnAllCaps()Z
    .locals 1

    .line 343
    iget-boolean v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->B:Z

    return v0
.end method

.method public final getLeftBtnBackgroundColor()Ljava/lang/Integer;
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->t:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getLeftBtnBold()Z
    .locals 1

    .line 344
    iget-boolean v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->C:Z

    return v0
.end method

.method public final getLeftBtnGravity()Ljava/lang/Integer;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->w:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getLeftBtnHeight()Ljava/lang/Integer;
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->J:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getLeftBtnListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->A:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final getLeftBtnMarginBottom()I
    .locals 1

    .line 347
    iget v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->F:I

    return v0
.end method

.method public final getLeftBtnMarginLeft()I
    .locals 1

    .line 348
    iget v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->G:I

    return v0
.end method

.method public final getLeftBtnMarginRight()I
    .locals 1

    .line 349
    iget v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->H:I

    return v0
.end method

.method public final getLeftBtnMarginTop()I
    .locals 1

    .line 346
    iget v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->E:I

    return v0
.end method

.method public final getLeftBtnResource()Ljava/lang/Integer;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->u:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getLeftBtnStrokeColor()Ljava/lang/Integer;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->x:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getLeftBtnStrokeWidth()Ljava/lang/Integer;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->v:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getLeftBtnText()Landroid/text/SpannableString;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->s:Landroid/text/SpannableString;

    return-object v0
.end method

.method public final getLeftBtnTextColor()Ljava/lang/Integer;
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->y:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getLeftBtnTextSize()Ljava/lang/Float;
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->z:Ljava/lang/Float;

    return-object v0
.end method

.method public final getLeftBtnWidth()Ljava/lang/Integer;
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->I:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getLeftWrapContentWidth()Z
    .locals 1

    .line 345
    iget-boolean v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->D:Z

    return v0
.end method

.method public final getMessage()Ljava/lang/CharSequence;
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->ak:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getMessageMarginBottom()I
    .locals 1

    .line 389
    iget v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->ap:I

    return v0
.end method

.method public final getMessageMarginLeft()I
    .locals 1

    .line 390
    iget v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->aq:I

    return v0
.end method

.method public final getMessageMarginRight()I
    .locals 1

    .line 391
    iget v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->ar:I

    return v0
.end method

.method public final getMessageMarginTop()I
    .locals 1

    .line 388
    iget v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->ao:I

    return v0
.end method

.method public final getMessageTextColor()Ljava/lang/Integer;
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->al:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMessageTextIsBold()Z
    .locals 1

    .line 387
    iget-boolean v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->an:Z

    return v0
.end method

.method public final getRightBtnAllCaps()Z
    .locals 1

    .line 363
    iget-boolean v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->T:Z

    return v0
.end method

.method public final getRightBtnBackgroundColor()Ljava/lang/Integer;
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->L:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getRightBtnBold()Z
    .locals 1

    .line 364
    iget-boolean v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->U:Z

    return v0
.end method

.method public final getRightBtnGravity()Ljava/lang/Integer;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->O:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getRightBtnHeight()Ljava/lang/Integer;
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->ab:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getRightBtnListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->S:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final getRightBtnMarginBottom()I
    .locals 1

    .line 367
    iget v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->X:I

    return v0
.end method

.method public final getRightBtnMarginLeft()I
    .locals 1

    .line 368
    iget v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->Y:I

    return v0
.end method

.method public final getRightBtnMarginRight()I
    .locals 1

    .line 369
    iget v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->Z:I

    return v0
.end method

.method public final getRightBtnMarginTop()I
    .locals 1

    .line 366
    iget v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->W:I

    return v0
.end method

.method public final getRightBtnResource()Ljava/lang/Integer;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->M:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getRightBtnStrokeColor()Ljava/lang/Integer;
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->P:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getRightBtnStrokeWidth()Ljava/lang/Integer;
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->N:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getRightBtnText()Landroid/text/SpannableString;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->K:Landroid/text/SpannableString;

    return-object v0
.end method

.method public final getRightBtnTextColor()Ljava/lang/Integer;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->Q:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getRightBtnTextSize()Ljava/lang/Float;
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->R:Ljava/lang/Float;

    return-object v0
.end method

.method public final getRightBtnWidth()Ljava/lang/Integer;
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->aa:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getRightWrapContentWidth()Z
    .locals 1

    .line 365
    iget-boolean v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->V:Z

    return v0
.end method

.method public final getShapePaddingBottom()I
    .locals 1

    .line 328
    iget v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->o:I

    return v0
.end method

.method public final getShapePaddingLeft()I
    .locals 1

    .line 329
    iget v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->p:I

    return v0
.end method

.method public final getShapePaddingRight()I
    .locals 1

    .line 330
    iget v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->q:I

    return v0
.end method

.method public final getShapePaddingTop()I
    .locals 1

    .line 327
    iget v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->n:I

    return v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->ac:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTitleMarginBottom()I
    .locals 1

    .line 379
    iget v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->ah:I

    return v0
.end method

.method public final getTitleMarginLeft()I
    .locals 1

    .line 380
    iget v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->ai:I

    return v0
.end method

.method public final getTitleMarginRight()I
    .locals 1

    .line 381
    iget v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->aj:I

    return v0
.end method

.method public final getTitleMarginTop()I
    .locals 1

    .line 378
    iget v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->ag:I

    return v0
.end method

.method public final getTitleTextColor()Ljava/lang/Integer;
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->ad:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getTitleTextIsBold()Z
    .locals 1

    .line 377
    iget-boolean v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->af:Z

    return v0
.end method

.method public final getTopImageMarginBottom()I
    .locals 1

    .line 312
    iget v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->d:I

    return v0
.end method

.method public final getTopImageMarginLeft()I
    .locals 1

    .line 313
    iget v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->e:I

    return v0
.end method

.method public final getTopImageMarginRight()I
    .locals 1

    .line 314
    iget v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->f:I

    return v0
.end method

.method public final getTopImageMarginTop()I
    .locals 1

    .line 311
    iget v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->c:I

    return v0
.end method

.method public final getTopImageResource()Ljava/lang/Integer;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->b:Ljava/lang/Integer;

    return-object v0
.end method
