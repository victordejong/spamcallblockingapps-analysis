.class public Lscala/collection/mutable/Node;
.super Ljava/lang/Object;
.source "AVLTree.scala"

# interfaces
.implements Lscala/collection/mutable/AVLTree;
.implements Lscala/Product;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/mutable/AVLTree<",
        "TA;>;",
        "Lscala/Product;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\tub\u0001B\u0001\u0003\t&\u0011AAT8eK*\u00111\u0001B\u0001\u0008[V$\u0018M\u00197f\u0015\t)a!\u0001\u0006d_2dWm\u0019;j_:T\u0011aB\u0001\u0006g\u000e\u000cG.Y\u0002\u0001+\tQQcE\u0003\u0001\u0017=q\u0012\u0005\u0005\u0002\r\u001b5\ta!\u0003\u0002\u000f\r\t1\u0011I\\=SK\u001a\u00042\u0001E\t\u0014\u001b\u0005\u0011\u0011B\u0001\n\u0003\u0005\u001d\te\u000b\u0014+sK\u0016\u0004\"\u0001F\u000b\r\u0001\u0011)a\u0003\u0001b\u0001/\t\t\u0011)\u0005\u0002\u00197A\u0011A\"G\u0005\u00035\u0019\u0011qAT8uQ&tw\r\u0005\u0002\r9%\u0011QD\u0002\u0002\u0004\u0003:L\u0008C\u0001\u0007 \u0013\t\u0001cAA\u0004Qe>$Wo\u0019;\u0011\u00051\u0011\u0013BA\u0012\u0007\u00051\u0019VM]5bY&T\u0018M\u00197f\u0011!)\u0003A!f\u0001\n\u00031\u0013\u0001\u00023bi\u0006,\u0012a\u0005\u0005\tQ\u0001\u0011\t\u0012)A\u0005\'\u0005)A-\u0019;bA!A!\u0006\u0001BK\u0002\u0013\u00051&\u0001\u0003mK\u001a$X#A\u0008\t\u00115\u0002!\u0011#Q\u0001\n=\tQ\u0001\\3gi\u0002B\u0001b\u000c\u0001\u0003\u0016\u0004%\taK\u0001\u0006e&<\u0007\u000e\u001e\u0005\tc\u0001\u0011\t\u0012)A\u0005\u001f\u00051!/[4ii\u0002BQa\r\u0001\u0005\u0002Q\na\u0001P5oSRtD\u0003B\u001b7oa\u00022\u0001\u0005\u0001\u0014\u0011\u0015)#\u00071\u0001\u0014\u0011\u0015Q#\u00071\u0001\u0010\u0011\u0015y#\u00071\u0001\u0010\u0011\u001dQ\u0004A1A\u0005Bm\nqAY1mC:\u001cW-F\u0001=!\taQ(\u0003\u0002?\r\t\u0019\u0011J\u001c;\t\r\u0001\u0003\u0001\u0015!\u0003=\u0003!\u0011\u0017\r\\1oG\u0016\u0004\u0003b\u0002\"\u0001\u0005\u0004%\teO\u0001\u0006I\u0016\u0004H\u000f\u001b\u0005\u0007\t\u0002\u0001\u000b\u0011\u0002\u001f\u0002\r\u0011,\u0007\u000f\u001e5!\u0011\u00151\u0005\u0001\"\u0011H\u0003!IG/\u001a:bi>\u0014XC\u0001%O+\u0005I\u0005c\u0001&L\u001b6\tA!\u0003\u0002M\t\tA\u0011\n^3sCR|\'\u000f\u0005\u0002\u0015\u001d\u0012)q*\u0012b\u0001!\n\t!)\u0005\u0002\u00147!)!\u000b\u0001C!\'\u0006A1m\u001c8uC&t7/\u0006\u0002U7R\u0019Q\u000b\u0017/\u0011\u000511\u0016BA,\u0007\u0005\u001d\u0011un\u001c7fC:DQ!W)A\u0002i\u000bQA^1mk\u0016\u0004\"\u0001F.\u0005\u000b=\u000b&\u0019\u0001)\t\u000bu\u000b\u0006\u0019\u00010\u0002\u0011=\u0014H-\u001a:j]\u001e\u00042a\u00182[\u001d\ta\u0001-\u0003\u0002b\r\u00059\u0001/Y2lC\u001e,\u0017BA2e\u0005!y%\u000fZ3sS:<\'BA1\u0007\u0011\u00151\u0007\u0001\"\u0011h\u0003\u0019Ign]3siV\u0011\u0001n\u001b\u000b\u0004S2l\u0007c\u0001\t\u0012UB\u0011Ac\u001b\u0003\u0006\u001f\u0016\u0014\r\u0001\u0015\u0005\u00063\u0016\u0004\rA\u001b\u0005\u0006;\u0016\u0004\rA\u001c\t\u0004?\nT\u0007\"\u00029\u0001\t\u0003\n\u0018A\u0002:f[>4X-\u0006\u0002skR\u0019qb\u001d<\t\u000be{\u0007\u0019\u0001;\u0011\u0005Q)H!B(p\u0005\u0004\u0001\u0006\"B/p\u0001\u00049\u0008cA0ci\")\u0011\u0010\u0001C!u\u0006I!/Z7pm\u0016l\u0015N\\\u000b\u0004w\u0006\u0005Q#\u0001?\u0011\u000b1ix0a\u0001\n\u0005y4!A\u0002+va2,\'\u0007E\u0002\u0015\u0003\u0003!Qa\u0014=C\u0002A\u00032\u0001E\t\u0000\u0011\u001d\t9\u0001\u0001C!\u0003\u0013\t\u0011B]3n_Z,W*\u0019=\u0016\t\u0005-\u0011\u0011C\u000b\u0003\u0003\u001b\u0001b\u0001D?\u0002\u0010\u0005M\u0001c\u0001\u000b\u0002\u0012\u00111q*!\u0002C\u0002A\u0003B\u0001E\t\u0002\u0010!9\u0011q\u0003\u0001\u0005B\u0005e\u0011!\u0003:fE\u0006d\u0017M\\2f+\u0011\tY\"!\t\u0016\u0005\u0005u\u0001\u0003\u0002\t\u0012\u0003?\u00012\u0001FA\u0011\t\u0019y\u0015Q\u0003b\u0001!\"9\u0011Q\u0005\u0001\u0005B\u0005\u001d\u0012\u0001\u00047fMR\u0014v\u000e^1uS>tW\u0003BA\u0015\u0003_)\"!a\u000b\u0011\tA\u0001\u0011Q\u0006\t\u0004)\u0005=BAB(\u0002$\t\u0007\u0001\u000bC\u0004\u00024\u0001!\t%!\u000e\u0002\u001bILw\r\u001b;S_R\u000cG/[8o+\u0011\t9$!\u0010\u0016\u0005\u0005e\u0002\u0003\u0002\t\u0001\u0003w\u00012\u0001FA\u001f\t\u0019y\u0015\u0011\u0007b\u0001!\"9\u0011\u0011\t\u0001\u0005B\u0005\r\u0013A\u00053pk\ndW\rT3giJ{G/\u0019;j_:,B!!\u0012\u0002LU\u0011\u0011q\t\t\u0005!\u0001\tI\u0005E\u0002\u0015\u0003\u0017\"aaTA \u0005\u0004\u0001\u0006bBA(\u0001\u0011\u0005\u0013\u0011K\u0001\u0014I>,(\r\\3SS\u001eDGOU8uCRLwN\\\u000b\u0005\u0003\'\nI&\u0006\u0002\u0002VA!\u0001\u0003AA,!\r!\u0012\u0011\u000c\u0003\u0007\u001f\u00065#\u0019\u0001)\t\u0013\u0005u\u0003!!A\u0005\u0002\u0005}\u0013\u0001B2paf,B!!\u0019\u0002hQA\u00111MA5\u0003W\ny\u0007\u0005\u0003\u0011\u0001\u0005\u0015\u0004c\u0001\u000b\u0002h\u00111a#a\u0017C\u0002]A\u0011\"JA.!\u0003\u0005\r!!\u001a\t\u0013)\nY\u0006%AA\u0002\u00055\u0004\u0003\u0002\t\u0012\u0003KB\u0011bLA.!\u0003\u0005\r!!\u001c\t\u0013\u0005M\u0004!%A\u0005\u0002\u0005U\u0014AD2paf$C-\u001a4bk2$H%M\u000b\u0005\u0003o\ni)\u0006\u0002\u0002z)\u001a1#a\u001f,\u0005\u0005u\u0004\u0003BA@\u0003\u0013k!!!!\u000b\t\u0005\r\u0015QQ\u0001\nk:\u001c\u0007.Z2lK\u0012T1!a\"\u0007\u0003)\tgN\\8uCRLwN\\\u0005\u0005\u0003\u0017\u000b\tIA\tv]\u000eDWmY6fIZ\u000b\'/[1oG\u0016$aAFA9\u0005\u00049\u0002\"CAI\u0001E\u0005I\u0011AAJ\u00039\u0019w\u000e]=%I\u00164\u0017-\u001e7uII*B!!&\u0002\u001aV\u0011\u0011q\u0013\u0016\u0004\u001f\u0005mDA\u0002\u000c\u0002\u0010\n\u0007q\u0003C\u0005\u0002\u001e\u0002\t\n\u0011\"\u0001\u0002 \u0006q1m\u001c9zI\u0011,g-Y;mi\u0012\u001aT\u0003BAK\u0003C#aAFAN\u0005\u00049\u0002\"CAS\u0001\u0005\u0005I\u0011IAT\u00035\u0001(o\u001c3vGR\u0004&/\u001a4jqV\u0011\u0011\u0011\u0016\t\u0005\u0003W\u000b),\u0004\u0002\u0002.*!\u0011qVAY\u0003\u0011a\u0017M\\4\u000b\u0005\u0005M\u0016\u0001\u00026bm\u0006LA!a.\u0002.\n11\u000b\u001e:j]\u001eD\u0001\"a/\u0001\u0003\u0003%\taO\u0001\raJ|G-^2u\u0003JLG/\u001f\u0005\n\u0003\u007f\u0003\u0011\u0011!C\u0001\u0003\u0003\u000ca\u0002\u001d:pIV\u001cG/\u00127f[\u0016tG\u000fF\u0002\u001c\u0003\u0007D\u0011\"!2\u0002>\u0006\u0005\t\u0019\u0001\u001f\u0002\u0007a$\u0013\u0007C\u0005\u0002J\u0002\t\t\u0011\"\u0011\u0002L\u0006y\u0001O]8ek\u000e$\u0018\n^3sCR|\'/\u0006\u0002\u0002NB\u0019!jS\u000e\t\u0013\u0005E\u0007!!A\u0005\u0002\u0005M\u0017\u0001C2b]\u0016\u000bX/\u00197\u0015\u0007U\u000b)\u000eC\u0005\u0002F\u0006=\u0017\u0011!a\u00017!I\u0011\u0011\u001c\u0001\u0002\u0002\u0013\u0005\u00131\\\u0001\tQ\u0006\u001c\u0008nQ8eKR\tA\u0008C\u0005\u0002`\u0002\t\t\u0011\"\u0011\u0002b\u0006AAo\\*ue&tw\r\u0006\u0002\u0002*\"I\u0011Q\u001d\u0001\u0002\u0002\u0013\u0005\u0013q]\u0001\u0007KF,\u0018\r\\:\u0015\u0007U\u000bI\u000fC\u0005\u0002F\u0006\r\u0018\u0011!a\u00017\u001dI\u0011Q\u001e\u0002\u0002\u0002#%\u0011q^\u0001\u0005\u001d>$W\rE\u0002\u0011\u0003c4\u0001\"\u0001\u0002\u0002\u0002#%\u00111_\n\u0005\u0003c\\\u0011\u0005C\u00044\u0003c$\t!a>\u0015\u0005\u0005=\u0008BCAp\u0003c\u000c\t\u0011\"\u0012\u0002b\"Q\u0011Q`Ay\u0003\u0003%\t)a@\u0002\u000b\u0005\u0004\u0008\u000f\\=\u0016\t\t\u0005!q\u0001\u000b\t\u0005\u0007\u0011IAa\u0003\u0003\u0010A!\u0001\u0003\u0001B\u0003!\r!\"q\u0001\u0003\u0007-\u0005m(\u0019A\u000c\t\u000f\u0015\nY\u00101\u0001\u0003\u0006!9!&a?A\u0002\t5\u0001\u0003\u0002\t\u0012\u0005\u000bAqaLA~\u0001\u0004\u0011i\u0001\u0003\u0006\u0003\u0014\u0005E\u0018\u0011!CA\u0005+\tq!\u001e8baBd\u00170\u0006\u0003\u0003\u0018\t\u001dB\u0003\u0002B\r\u0005W\u0001R\u0001\u0004B\u000e\u0005?I1A!\u0008\u0007\u0005\u0019y\u0005\u000f^5p]BIAB!\t\u0003&\t%\"\u0011F\u0005\u0004\u0005G1!A\u0002+va2,7\u0007E\u0002\u0015\u0005O!aA\u0006B\t\u0005\u00049\u0002\u0003\u0002\t\u0012\u0005KA!B!\u000c\u0003\u0012\u0005\u0005\t\u0019\u0001B\u0018\u0003\rAH\u0005\r\t\u0005!\u0001\u0011)\u0003\u0003\u0006\u00034\u0005E\u0018\u0011!C\u0005\u0005k\t1B]3bIJ+7o\u001c7wKR\u0011!q\u0007\t\u0005\u0003W\u0013I$\u0003\u0003\u0003<\u00055&AB(cU\u0016\u001cG\u000f"
.end annotation


# instance fields
.field private final balance:I

.field private final data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private final depth:I

.field private final left:Lscala/collection/mutable/AVLTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/mutable/AVLTree<",
            "TA;>;"
        }
    .end annotation
.end field

.field private final right:Lscala/collection/mutable/AVLTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/mutable/AVLTree<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lscala/collection/mutable/AVLTree;Lscala/collection/mutable/AVLTree;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Lscala/collection/mutable/AVLTree<",
            "TA;>;",
            "Lscala/collection/mutable/AVLTree<",
            "TA;>;)V"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lscala/collection/mutable/Node;->data:Ljava/lang/Object;

    iput-object p2, p0, Lscala/collection/mutable/Node;->left:Lscala/collection/mutable/AVLTree;

    iput-object p3, p0, Lscala/collection/mutable/Node;->right:Lscala/collection/mutable/AVLTree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/mutable/AVLTree$class;->$init$(Lscala/collection/mutable/AVLTree;)V

    invoke-static {p0}, Lscala/Product$class;->$init$(Lscala/Product;)V

    .line 80
    invoke-interface {p3}, Lscala/collection/mutable/AVLTree;->depth()I

    move-result p1

    invoke-interface {p2}, Lscala/collection/mutable/AVLTree;->depth()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lscala/collection/mutable/Node;->balance:I

    .line 82
    sget-object p1, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-interface {p2}, Lscala/collection/mutable/AVLTree;->depth()I

    move-result p2

    invoke-interface {p3}, Lscala/collection/mutable/AVLTree;->depth()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lscala/math/package$;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lscala/collection/mutable/Node;->depth:I

    return-void
.end method

.method public static apply(Ljava/lang/Object;Lscala/collection/mutable/AVLTree;Lscala/collection/mutable/AVLTree;)Lscala/collection/mutable/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;",
            "Lscala/collection/mutable/AVLTree<",
            "TA;>;",
            "Lscala/collection/mutable/AVLTree<",
            "TA;>;)",
            "Lscala/collection/mutable/Node<",
            "TA;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/mutable/Node$;->MODULE$:Lscala/collection/mutable/Node$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/collection/mutable/Node$;->apply(Ljava/lang/Object;Lscala/collection/mutable/AVLTree;Lscala/collection/mutable/AVLTree;)Lscala/collection/mutable/Node;

    move-result-object p0

    return-object p0
.end method

.method public static unapply(Lscala/collection/mutable/Node;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/mutable/Node<",
            "TA;>;)",
            "Lscala/Option<",
            "Lscala/Tuple3<",
            "TA;",
            "Lscala/collection/mutable/AVLTree<",
            "TA;>;",
            "Lscala/collection/mutable/AVLTree<",
            "TA;>;>;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/mutable/Node$;->MODULE$:Lscala/collection/mutable/Node$;

    invoke-virtual {v0, p0}, Lscala/collection/mutable/Node$;->unapply(Lscala/collection/mutable/Node;)Lscala/Option;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public balance()I
    .locals 1

    .line 80
    iget v0, p0, Lscala/collection/mutable/Node;->balance:I

    return v0
.end method

.method public canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 79
    instance-of p1, p1, Lscala/collection/mutable/Node;

    return p1
.end method

.method public contains(Ljava/lang/Object;Lscala/math/Ordering;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/math/Ordering<",
            "TB;>;)Z"
        }
    .end annotation

    .line 87
    invoke-virtual {p0}, Lscala/collection/mutable/Node;->data()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    if-gez v0, :cond_1

    .line 91
    invoke-virtual {p0}, Lscala/collection/mutable/Node;->left()Lscala/collection/mutable/AVLTree;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lscala/collection/mutable/AVLTree;->contains(Ljava/lang/Object;Lscala/math/Ordering;)Z

    move-result p1

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {p0}, Lscala/collection/mutable/Node;->right()Lscala/collection/mutable/AVLTree;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lscala/collection/mutable/AVLTree;->contains(Ljava/lang/Object;Lscala/math/Ordering;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public copy(Ljava/lang/Object;Lscala/collection/mutable/AVLTree;Lscala/collection/mutable/AVLTree;)Lscala/collection/mutable/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;",
            "Lscala/collection/mutable/AVLTree<",
            "TA;>;",
            "Lscala/collection/mutable/AVLTree<",
            "TA;>;)",
            "Lscala/collection/mutable/Node<",
            "TA;>;"
        }
    .end annotation

    .line 79
    new-instance v0, Lscala/collection/mutable/Node;

    invoke-direct {v0, p1, p2, p3}, Lscala/collection/mutable/Node;-><init>(Ljava/lang/Object;Lscala/collection/mutable/AVLTree;Lscala/collection/mutable/AVLTree;)V

    return-object v0
.end method

.method public copy$default$1()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()TA;"
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Lscala/collection/mutable/Node;->data()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public copy$default$2()Lscala/collection/mutable/AVLTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/AVLTree<",
            "TA;>;"
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Lscala/collection/mutable/Node;->left()Lscala/collection/mutable/AVLTree;

    move-result-object v0

    return-object v0
.end method

.method public copy$default$3()Lscala/collection/mutable/AVLTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/AVLTree<",
            "TA;>;"
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Lscala/collection/mutable/Node;->right()Lscala/collection/mutable/AVLTree;

    move-result-object v0

    return-object v0
.end method

.method public data()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lscala/collection/mutable/Node;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public depth()I
    .locals 1

    .line 82
    iget v0, p0, Lscala/collection/mutable/Node;->depth:I

    return v0
.end method

.method public doubleLeftRotation()Lscala/collection/mutable/Node;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Node<",
            "TB;>;"
        }
    .end annotation

    .line 195
    sget-object v0, Lscala/collection/mutable/Leaf$;->MODULE$:Lscala/collection/mutable/Leaf$;

    invoke-virtual {p0}, Lscala/collection/mutable/Node;->right()Lscala/collection/mutable/AVLTree;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lscala/collection/mutable/Node;->right()Lscala/collection/mutable/AVLTree;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/Node;

    .line 198
    invoke-virtual {v0}, Lscala/collection/mutable/Node;->rightRotation()Lscala/collection/mutable/Node;

    move-result-object v0

    .line 199
    new-instance v1, Lscala/collection/mutable/Node;

    invoke-virtual {v0}, Lscala/collection/mutable/Node;->data()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lscala/collection/mutable/Node;

    invoke-virtual {p0}, Lscala/collection/mutable/Node;->data()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0}, Lscala/collection/mutable/Node;->left()Lscala/collection/mutable/AVLTree;

    move-result-object v5

    invoke-virtual {v0}, Lscala/collection/mutable/Node;->left()Lscala/collection/mutable/AVLTree;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lscala/collection/mutable/Node;-><init>(Ljava/lang/Object;Lscala/collection/mutable/AVLTree;Lscala/collection/mutable/AVLTree;)V

    invoke-virtual {v0}, Lscala/collection/mutable/Node;->right()Lscala/collection/mutable/AVLTree;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lscala/collection/mutable/Node;-><init>(Ljava/lang/Object;Lscala/collection/mutable/AVLTree;Lscala/collection/mutable/AVLTree;)V

    return-object v1

    .line 200
    :cond_0
    sget-object v0, Lscala/sys/package$;->MODULE$:Lscala/sys/package$;

    const-string v1, "Should not happen."

    invoke-virtual {v0, v1}, Lscala/sys/package$;->error(Ljava/lang/String;)Lscala/runtime/Nothing$;

    move-result-object v0

    throw v0
.end method

.method public doubleRightRotation()Lscala/collection/mutable/Node;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Node<",
            "TB;>;"
        }
    .end annotation

    .line 204
    sget-object v0, Lscala/collection/mutable/Leaf$;->MODULE$:Lscala/collection/mutable/Leaf$;

    invoke-virtual {p0}, Lscala/collection/mutable/Node;->left()Lscala/collection/mutable/AVLTree;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lscala/collection/mutable/Node;->left()Lscala/collection/mutable/AVLTree;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/Node;

    .line 207
    invoke-virtual {v0}, Lscala/collection/mutable/Node;->leftRotation()Lscala/collection/mutable/Node;

    move-result-object v0

    .line 208
    new-instance v1, Lscala/collection/mutable/Node;

    invoke-virtual {v0}, Lscala/collection/mutable/Node;->data()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lscala/collection/mutable/Node;->left()Lscala/collection/mutable/AVLTree;

    move-result-object v3

    new-instance v4, Lscala/collection/mutable/Node;

    invoke-virtual {p0}, Lscala/collection/mutable/Node;->data()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0}, Lscala/collection/mutable/Node;->right()Lscala/collection/mutable/AVLTree;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/mutable/Node;->right()Lscala/collection/mutable/AVLTree;

    move-result-object v6

    invoke-direct {v4, v5, v0, v6}, Lscala/collection/mutable/Node;-><init>(Ljava/lang/Object;Lscala/collection/mutable/AVLTree;Lscala/collection/mutable/AVLTree;)V

    invoke-direct {v1, v2, v3, v4}, Lscala/collection/mutable/Node;-><init>(Ljava/lang/Object;Lscala/collection/mutable/AVLTree;Lscala/collection/mutable/AVLTree;)V

    return-object v1

    .line 209
    :cond_0
    sget-object v0, Lscala/sys/package$;->MODULE$:Lscala/sys/package$;

    const-string v1, "Should not happen."

    invoke-virtual {v0, v1}, Lscala/sys/package$;->error(Ljava/lang/String;)Lscala/runtime/Nothing$;

    move-result-object v0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, p1, :cond_9

    .line 79
    instance-of v2, p1, Lscala/collection/mutable/Node;

    if-eqz v2, :cond_a

    check-cast p1, Lscala/collection/mutable/Node;

    invoke-virtual {p0}, Lscala/collection/mutable/Node;->data()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lscala/collection/mutable/Node;->data()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    instance-of v4, v2, Ljava/lang/Number;

    if-eqz v4, :cond_2

    check-cast v2, Ljava/lang/Number;

    invoke-static {v2, v3}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_2
    instance-of v4, v2, Ljava/lang/Character;

    if-eqz v4, :cond_3

    check-cast v2, Ljava/lang/Character;

    invoke-static {v2, v3}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lscala/collection/mutable/Node;->left()Lscala/collection/mutable/AVLTree;

    move-result-object v2

    invoke-virtual {p1}, Lscala/collection/mutable/Node;->left()Lscala/collection/mutable/AVLTree;

    move-result-object v3

    if-nez v2, :cond_4

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_5
    invoke-virtual {p0}, Lscala/collection/mutable/Node;->right()Lscala/collection/mutable/AVLTree;

    move-result-object v2

    invoke-virtual {p1}, Lscala/collection/mutable/Node;->right()Lscala/collection/mutable/AVLTree;

    move-result-object v3

    if-nez v2, :cond_6

    if-eqz v3, :cond_7

    goto :goto_1

    :cond_6
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    invoke-virtual {p1, p0}, Lscala/collection/mutable/Node;->canEqual(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_2

    :cond_8
    :goto_1
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_a

    :cond_9
    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 79
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->_hashCode(Lscala/Product;)I

    move-result v0

    return v0
.end method

.method public insert(Ljava/lang/Object;Lscala/math/Ordering;)Lscala/collection/mutable/AVLTree;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/math/Ordering<",
            "TB;>;)",
            "Lscala/collection/mutable/AVLTree<",
            "TB;>;"
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Lscala/collection/mutable/Node;->data()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_1

    if-gez v0, :cond_0

    .line 106
    new-instance v0, Lscala/collection/mutable/Node;

    invoke-virtual {p0}, Lscala/collection/mutable/Node;->data()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lscala/collection/mutable/Node;->left()Lscala/collection/mutable/AVLTree;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lscala/collection/mutable/AVLTree;->insert(Ljava/lang/Object;Lscala/math/Ordering;)Lscala/collection/mutable/AVLTree;

    move-result-object p1

    invoke-virtual {p0}, Lscala/collection/mutable/Node;->right()Lscala/collection/mutable/AVLTree;

    move-result-object p2

    invoke-direct {v0, v1, p1, p2}, Lscala/collection/mutable/Node;-><init>(Ljava/lang/Object;Lscala/collection/mutable/AVLTree;Lscala/collection/mutable/AVLTree;)V

    invoke-virtual {v0}, Lscala/collection/mutable/Node;->rebalance()Lscala/collection/mutable/AVLTree;

    move-result-object p1

    goto :goto_0

    .line 108
    :cond_0
    new-instance v0, Lscala/collection/mutable/Node;

    invoke-virtual {p0}, Lscala/collection/mutable/Node;->data()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lscala/collection/mutable/Node;->left()Lscala/collection/mutable/AVLTree;

    move-result-object v2

    invoke-virtual {p0}, Lscala/collection/mutable/Node;->right()Lscala/collection/mutable/AVLTree;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lscala/collection/mutable/AVLTree;->insert(Ljava/lang/Object;Lscala/math/Ordering;)Lscala/collection/mutable/AVLTree;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lscala/collection/mutable/Node;-><init>(Ljava/lang/Object;Lscala/collection/mutable/AVLTree;Lscala/collection/mutable/AVLTree;)V

    invoke-virtual {v0}, Lscala/collection/mutable/Node;->rebalance()Lscala/collection/mutable/AVLTree;

    move-result-object p1

    :goto_0
    return-object p1

    .line 104
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/Iterator<",
            "TB;>;"
        }
    .end annotation

    .line 84
    new-instance v0, Lscala/collection/mutable/AVLIterator;

    invoke-direct {v0, p0}, Lscala/collection/mutable/AVLIterator;-><init>(Lscala/collection/mutable/Node;)V

    return-object v0
.end method

.method public left()Lscala/collection/mutable/AVLTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/AVLTree<",
            "TA;>;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lscala/collection/mutable/Node;->left:Lscala/collection/mutable/AVLTree;

    return-object v0
.end method

.method public leftRotation()Lscala/collection/mutable/Node;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Node<",
            "TB;>;"
        }
    .end annotation

    .line 181
    sget-object v0, Lscala/collection/mutable/Leaf$;->MODULE$:Lscala/collection/mutable/Leaf$;

    invoke-virtual {p0}, Lscala/collection/mutable/Node;->right()Lscala/collection/mutable/AVLTree;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lscala/collection/mutable/Node;->right()Lscala/collection/mutable/AVLTree;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/Node;

    .line 183
    new-instance v1, Lscala/collection/mutable/Node;

    invoke-virtual {v0}, Lscala/collection/mutable/Node;->data()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lscala/collection/mutable/Node;

    invoke-virtual {p0}, Lscala/collection/mutable/Node;->data()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0}, Lscala/collection/mutable/Node;->left()Lscala/collection/mutable/AVLTree;

    move-result-object v5

    invoke-virtual {v0}, Lscala/collection/mutable/Node;->left()Lscala/collection/mutable/AVLTree;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lscala/collection/mutable/Node;-><init>(Ljava/lang/Object;Lscala/collection/mutable/AVLTree;Lscala/collection/mutable/AVLTree;)V

    invoke-virtual {v0}, Lscala/collection/mutable/Node;->right()Lscala/collection/mutable/AVLTree;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lscala/collection/mutable/Node;-><init>(Ljava/lang/Object;Lscala/collection/mutable/AVLTree;Lscala/collection/mutable/AVLTree;)V

    return-object v1

    .line 184
    :cond_0
    sget-object v0, Lscala/sys/package$;->MODULE$:Lscala/sys/package$;

    const-string v1, "Should not happen."

    invoke-virtual {v0, v1}, Lscala/sys/package$;->error(Ljava/lang/String;)Lscala/runtime/Nothing$;

    move-result-object v0

    throw v0
.end method

.method public productArity()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public productElement(I)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lscala/collection/mutable/Node;->right()Lscala/collection/mutable/AVLTree;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lscala/collection/mutable/Node;->left()Lscala/collection/mutable/AVLTree;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lscala/collection/mutable/Node;->data()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public productIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 79
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->typedProductIterator(Lscala/Product;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public productPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "Node"

    return-object v0
.end method

.method public rebalance()Lscala/collection/mutable/AVLTree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/AVLTree<",
            "TB;>;"
        }
    .end annotation

    .line 165
    invoke-virtual {p0}, Lscala/collection/mutable/Node;->balance()I

    move-result v0

    const/4 v1, -0x2

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    .line 166
    invoke-virtual {p0}, Lscala/collection/mutable/Node;->left()Lscala/collection/mutable/AVLTree;

    move-result-object v1

    invoke-interface {v1}, Lscala/collection/mutable/AVLTree;->balance()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 167
    invoke-virtual {p0}, Lscala/collection/mutable/Node;->doubleRightRotation()Lscala/collection/mutable/Node;

    move-result-object v0

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {p0}, Lscala/collection/mutable/Node;->rightRotation()Lscala/collection/mutable/Node;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 170
    invoke-virtual {p0}, Lscala/collection/mutable/Node;->balance()I

    move-result v1

    if-ne v0, v1, :cond_3

    const/4 v0, -0x1

    .line 171
    invoke-virtual {p0}, Lscala/collection/mutable/Node;->right()Lscala/collection/mutable/AVLTree;

    move-result-object v1

    invoke-interface {v1}, Lscala/collection/mutable/AVLTree;->balance()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 172
    invoke-virtual {p0}, Lscala/collection/mutable/Node;->doubleLeftRotation()Lscala/collection/mutable/Node;

    move-result-object v0

    goto :goto_0

    .line 174
    :cond_2
    invoke-virtual {p0}, Lscala/collection/mutable/Node;->leftRotation()Lscala/collection/mutable/Node;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public remove(Ljava/lang/Object;Lscala/math/Ordering;)Lscala/collection/mutable/AVLTree;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/math/Ordering<",
            "TB;>;)",
            "Lscala/collection/mutable/AVLTree<",
            "TA;>;"
        }
    .end annotation

    .line 116
    invoke-virtual {p0}, Lscala/collection/mutable/Node;->data()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_4

    .line 118
    sget-object p1, Lscala/collection/mutable/Leaf$;->MODULE$:Lscala/collection/mutable/Leaf$;

    invoke-virtual {p0}, Lscala/collection/mutable/Node;->left()Lscala/collection/mutable/AVLTree;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 119
    sget-object p1, Lscala/collection/mutable/Leaf$;->MODULE$:Lscala/collection/mutable/Leaf$;

    invoke-virtual {p0}, Lscala/collection/mutable/Node;->right()Lscala/collection/mutable/AVLTree;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 120
    sget-object p1, Lscala/collection/mutable/Leaf$;->MODULE$:Lscala/collection/mutable/Leaf$;

    goto/16 :goto_0

    .line 122
    :cond_0
    invoke-virtual {p0}, Lscala/collection/mutable/Node;->right()Lscala/collection/mutable/AVLTree;

    move-result-object p1

    invoke-interface {p1}, Lscala/collection/mutable/AVLTree;->removeMin()Lscala/Tuple2;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p2, Lscala/Tuple2;

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lscala/collection/mutable/AVLTree;

    .line 123
    new-instance v0, Lscala/collection/mutable/Node;

    invoke-virtual {p0}, Lscala/collection/mutable/Node;->left()Lscala/collection/mutable/AVLTree;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lscala/collection/mutable/Node;-><init>(Ljava/lang/Object;Lscala/collection/mutable/AVLTree;Lscala/collection/mutable/AVLTree;)V

    invoke-virtual {v0}, Lscala/collection/mutable/Node;->rebalance()Lscala/collection/mutable/AVLTree;

    move-result-object p1

    goto :goto_0

    .line 122
    :cond_1
    new-instance p2, Lscala/MatchError;

    invoke-direct {p2, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p2

    .line 126
    :cond_2
    invoke-virtual {p0}, Lscala/collection/mutable/Node;->left()Lscala/collection/mutable/AVLTree;

    move-result-object p1

    invoke-interface {p1}, Lscala/collection/mutable/AVLTree;->removeMax()Lscala/Tuple2;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance p2, Lscala/Tuple2;

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lscala/collection/mutable/AVLTree;

    .line 127
    new-instance v0, Lscala/collection/mutable/Node;

    invoke-virtual {p0}, Lscala/collection/mutable/Node;->right()Lscala/collection/mutable/AVLTree;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lscala/collection/mutable/Node;-><init>(Ljava/lang/Object;Lscala/collection/mutable/AVLTree;Lscala/collection/mutable/AVLTree;)V

    invoke-virtual {v0}, Lscala/collection/mutable/Node;->rebalance()Lscala/collection/mutable/AVLTree;

    move-result-object p1

    goto :goto_0

    .line 126
    :cond_3
    new-instance p2, Lscala/MatchError;

    invoke-direct {p2, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p2

    :cond_4
    if-gez v0, :cond_5

    .line 130
    new-instance v0, Lscala/collection/mutable/Node;

    invoke-virtual {p0}, Lscala/collection/mutable/Node;->data()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lscala/collection/mutable/Node;->left()Lscala/collection/mutable/AVLTree;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lscala/collection/mutable/AVLTree;->remove(Ljava/lang/Object;Lscala/math/Ordering;)Lscala/collection/mutable/AVLTree;

    move-result-object p1

    invoke-virtual {p0}, Lscala/collection/mutable/Node;->right()Lscala/collection/mutable/AVLTree;

    move-result-object p2

    invoke-direct {v0, v1, p1, p2}, Lscala/collection/mutable/Node;-><init>(Ljava/lang/Object;Lscala/collection/mutable/AVLTree;Lscala/collection/mutable/AVLTree;)V

    invoke-virtual {v0}, Lscala/collection/mutable/Node;->rebalance()Lscala/collection/mutable/AVLTree;

    move-result-object p1

    goto :goto_0

    .line 132
    :cond_5
    new-instance v0, Lscala/collection/mutable/Node;

    invoke-virtual {p0}, Lscala/collection/mutable/Node;->data()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lscala/collection/mutable/Node;->left()Lscala/collection/mutable/AVLTree;

    move-result-object v2

    invoke-virtual {p0}, Lscala/collection/mutable/Node;->right()Lscala/collection/mutable/AVLTree;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lscala/collection/mutable/AVLTree;->remove(Ljava/lang/Object;Lscala/math/Ordering;)Lscala/collection/mutable/AVLTree;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lscala/collection/mutable/Node;-><init>(Ljava/lang/Object;Lscala/collection/mutable/AVLTree;Lscala/collection/mutable/AVLTree;)V

    invoke-virtual {v0}, Lscala/collection/mutable/Node;->rebalance()Lscala/collection/mutable/AVLTree;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public removeMax()Lscala/Tuple2;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/Tuple2<",
            "TB;",
            "Lscala/collection/mutable/AVLTree<",
            "TB;>;>;"
        }
    .end annotation

    .line 156
    sget-object v0, Lscala/collection/mutable/Leaf$;->MODULE$:Lscala/collection/mutable/Leaf$;

    invoke-virtual {p0}, Lscala/collection/mutable/Node;->right()Lscala/collection/mutable/AVLTree;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    new-instance v0, Lscala/Tuple2;

    invoke-virtual {p0}, Lscala/collection/mutable/Node;->data()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lscala/collection/mutable/Node;->left()Lscala/collection/mutable/AVLTree;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {p0}, Lscala/collection/mutable/Node;->right()Lscala/collection/mutable/AVLTree;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/mutable/AVLTree;->removeMax()Lscala/Tuple2;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lscala/Tuple2;

    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/mutable/AVLTree;

    .line 160
    new-instance v2, Lscala/Tuple2;

    new-instance v3, Lscala/collection/mutable/Node;

    invoke-virtual {p0}, Lscala/collection/mutable/Node;->data()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0}, Lscala/collection/mutable/Node;->left()Lscala/collection/mutable/AVLTree;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1}, Lscala/collection/mutable/Node;-><init>(Ljava/lang/Object;Lscala/collection/mutable/AVLTree;Lscala/collection/mutable/AVLTree;)V

    invoke-virtual {v3}, Lscala/collection/mutable/Node;->rebalance()Lscala/collection/mutable/AVLTree;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    :goto_0
    return-object v0

    .line 159
    :cond_1
    new-instance v1, Lscala/MatchError;

    invoke-direct {v1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public removeMin()Lscala/Tuple2;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/Tuple2<",
            "TB;",
            "Lscala/collection/mutable/AVLTree<",
            "TB;>;>;"
        }
    .end annotation

    .line 142
    sget-object v0, Lscala/collection/mutable/Leaf$;->MODULE$:Lscala/collection/mutable/Leaf$;

    invoke-virtual {p0}, Lscala/collection/mutable/Node;->left()Lscala/collection/mutable/AVLTree;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    new-instance v0, Lscala/Tuple2;

    invoke-virtual {p0}, Lscala/collection/mutable/Node;->data()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lscala/collection/mutable/Node;->right()Lscala/collection/mutable/AVLTree;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {p0}, Lscala/collection/mutable/Node;->left()Lscala/collection/mutable/AVLTree;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/mutable/AVLTree;->removeMin()Lscala/Tuple2;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lscala/Tuple2;

    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/mutable/AVLTree;

    .line 146
    new-instance v2, Lscala/Tuple2;

    new-instance v3, Lscala/collection/mutable/Node;

    invoke-virtual {p0}, Lscala/collection/mutable/Node;->data()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0}, Lscala/collection/mutable/Node;->right()Lscala/collection/mutable/AVLTree;

    move-result-object v5

    invoke-direct {v3, v4, v1, v5}, Lscala/collection/mutable/Node;-><init>(Ljava/lang/Object;Lscala/collection/mutable/AVLTree;Lscala/collection/mutable/AVLTree;)V

    invoke-virtual {v3}, Lscala/collection/mutable/Node;->rebalance()Lscala/collection/mutable/AVLTree;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    :goto_0
    return-object v0

    .line 145
    :cond_1
    new-instance v1, Lscala/MatchError;

    invoke-direct {v1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public right()Lscala/collection/mutable/AVLTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/AVLTree<",
            "TA;>;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lscala/collection/mutable/Node;->right:Lscala/collection/mutable/AVLTree;

    return-object v0
.end method

.method public rightRotation()Lscala/collection/mutable/Node;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Node<",
            "TB;>;"
        }
    .end annotation

    .line 188
    sget-object v0, Lscala/collection/mutable/Leaf$;->MODULE$:Lscala/collection/mutable/Leaf$;

    invoke-virtual {p0}, Lscala/collection/mutable/Node;->left()Lscala/collection/mutable/AVLTree;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lscala/collection/mutable/Node;->left()Lscala/collection/mutable/AVLTree;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/Node;

    .line 190
    new-instance v1, Lscala/collection/mutable/Node;

    invoke-virtual {v0}, Lscala/collection/mutable/Node;->data()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lscala/collection/mutable/Node;->left()Lscala/collection/mutable/AVLTree;

    move-result-object v3

    new-instance v4, Lscala/collection/mutable/Node;

    invoke-virtual {p0}, Lscala/collection/mutable/Node;->data()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0}, Lscala/collection/mutable/Node;->right()Lscala/collection/mutable/AVLTree;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/mutable/Node;->right()Lscala/collection/mutable/AVLTree;

    move-result-object v6

    invoke-direct {v4, v5, v0, v6}, Lscala/collection/mutable/Node;-><init>(Ljava/lang/Object;Lscala/collection/mutable/AVLTree;Lscala/collection/mutable/AVLTree;)V

    invoke-direct {v1, v2, v3, v4}, Lscala/collection/mutable/Node;-><init>(Ljava/lang/Object;Lscala/collection/mutable/AVLTree;Lscala/collection/mutable/AVLTree;)V

    return-object v1

    .line 191
    :cond_0
    sget-object v0, Lscala/sys/package$;->MODULE$:Lscala/sys/package$;

    const-string v1, "Should not happen."

    invoke-virtual {v0, v1}, Lscala/sys/package$;->error(Ljava/lang/String;)Lscala/runtime/Nothing$;

    move-result-object v0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 79
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->_toString(Lscala/Product;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
