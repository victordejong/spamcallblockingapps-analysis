.class public interface abstract Lscala/collection/parallel/mutable/ParSeq;
.super Ljava/lang/Object;
.source "ParSeq.scala"

# interfaces
.implements Lscala/collection/parallel/mutable/ParIterable;
.implements Lscala/collection/parallel/ParSeq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/mutable/ParIterable<",
        "TT;>;",
        "Lscala/collection/parallel/ParSeq<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u0005%a\u0001C\u0001\u0003!\u0003\r\taC\u0019\u0003\rA\u000b\'oU3r\u0015\t\u0019A!A\u0004nkR\u000c\'\r\\3\u000b\u0005\u00151\u0011\u0001\u00039be\u0006dG.\u001a7\u000b\u0005\u001dA\u0011AC2pY2,7\r^5p]*\t\u0011\"A\u0003tG\u0006d\u0017m\u0001\u0001\u0016\u0005192c\u0002\u0001\u000e#\u0001\"sE\u000c\t\u0003\u001d=i\u0011\u0001C\u0005\u0003!!\u0011a!\u00118z%\u00164\u0007c\u0001\n\u0014+5\ta!\u0003\u0002\u0015\r\t1q)\u001a8TKF\u0004\"AF\u000c\r\u0001\u0011)\u0001\u0004\u0001b\u00013\t\tA+\u0005\u0002\u001b;A\u0011abG\u0005\u00039!\u0011qAT8uQ&tw\r\u0005\u0002\u000f=%\u0011q\u0004\u0003\u0002\u0004\u0003:L\u0008cA\u0011#+5\t!!\u0003\u0002$\u0005\tY\u0001+\u0019:Ji\u0016\u0014\u0018M\u00197f!\r)c%F\u0007\u0002\t%\u0011\u0011\u0001\u0002\t\u0005Q-*R&D\u0001*\u0015\tQc!A\u0004hK:,\'/[2\n\u00051J#AE$f]\u0016\u0014\u0018n\u0019)beR+W\u000e\u001d7bi\u0016\u0004\"!\t\u0001\u0011\u000b\u0015zS#\r\u001a\n\u0005A\"!A\u0003)beN+\u0017\u000fT5lKB\u0019\u0011\u0005A\u000b\u0011\u0007M*T#D\u00015\u0015\t\u0019a!\u0003\u00027i\t\u00191+Z9\t\u000ba\u0002A\u0011A\u001d\u0002\r\u0011Jg.\u001b;%)\u0005Q\u0004C\u0001\u0008<\u0013\ta\u0004B\u0001\u0003V]&$\u0008\"\u0002 \u0001\t\u0003z\u0014!C2p[B\u000cg.[8o+\u0005\u0001%cA!D\r\u001a!!\t\u0001\u0001A\u00051a$/\u001a4j]\u0016lWM\u001c;?!\rAC)L\u0005\u0003\u000b&\u0012\u0001cR3oKJL7mQ8na\u0006t\u0017n\u001c8\u0011\u0007!:U&\u0003\u0002IS\t\u0019r)\u001a8fe&\u001c\u0007+\u0019:D_6\u0004\u0018M\\5p]\")!\n\u0001D\u0001\u0017\u00061Q\u000f\u001d3bi\u0016$2A\u000f\'R\u0011\u0015i\u0015\n1\u0001O\u0003\u0005I\u0007C\u0001\u0008P\u0013\t\u0001\u0006BA\u0002J]RDQAU%A\u0002U\tA!\u001a7f[\")A\u000b\u0001D\u0001+\u0006\u00191/Z9\u0016\u0003IBQa\u0016\u0001\u0005Ba\u000bQ\u0001^8TKF,\u0012!M\u0004\u00065\nA\taW\u0001\u0007!\u0006\u00148+Z9\u0011\u0005\u0005bf!B\u0001\u0003\u0011\u0003i6C\u0001/_!\rAs,L\u0005\u0003A&\u0012!\u0002U1s\r\u0006\u001cGo\u001c:z\u0011\u0015\u0011G\u000c\"\u0001d\u0003\u0019a\u0014N\\5u}Q\t1\u000cC\u0003f9\u0012\ra-\u0001\u0007dC:\u0014U/\u001b7e\rJ|W.\u0006\u0002haV\t\u0001\u000eE\u0003)S.|\u0017/\u0003\u0002kS\tq1)\u00198D_6\u0014\u0017N\\3Ge>l\u0007C\u00017n\u001b\u0005a\u0016B\u00018E\u0005\u0011\u0019u\u000e\u001c7\u0011\u0005Y\u0001H!\u0002\re\u0005\u0004I\u0002cA\u0011\u0001_\")1\u000f\u0018C\u0001i\u0006Qa.Z<Ck&dG-\u001a:\u0016\u0005UTX#\u0001<\u0011\t\u0015:\u0018p_\u0005\u0003q\u0012\u0011\u0001bQ8nE&tWM\u001d\t\u0003-i$Q\u0001\u0007:C\u0002e\u00012!\t\u0001z\u0011\u0015iH\u000c\"\u0001\u007f\u0003-qWm^\"p[\nLg.\u001a:\u0016\u0007}\u000c)!\u0006\u0002\u0002\u0002A1Qe^A\u0002\u0003\u000f\u00012AFA\u0003\t\u0015ABP1\u0001\u001a!\u0011\t\u0003!a\u0001"
.end annotation


# virtual methods
.method public abstract companion()Lscala/collection/generic/GenericCompanion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion<",
            "Lscala/collection/parallel/mutable/ParSeq;",
            ">;"
        }
    .end annotation
.end method

.method public abstract seq()Lscala/collection/mutable/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Seq<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract toSeq()Lscala/collection/parallel/mutable/ParSeq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/mutable/ParSeq<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract update(ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation
.end method
