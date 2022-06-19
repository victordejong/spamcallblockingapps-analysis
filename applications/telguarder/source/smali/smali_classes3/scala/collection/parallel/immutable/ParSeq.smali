.class public interface abstract Lscala/collection/parallel/immutable/ParSeq;
.super Ljava/lang/Object;
.source "ParSeq.scala"

# interfaces
.implements Lscala/collection/parallel/ParSeq;
.implements Lscala/collection/parallel/immutable/ParIterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/ParSeq<",
        "TT;>;",
        "Lscala/collection/parallel/immutable/ParIterable<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001]4q!\u0001\u0002\u0011\u0002\u0007\u00051B\u0001\u0004QCJ\u001cV-\u001d\u0006\u0003\u0007\u0011\t\u0011\"[7nkR\u000c\'\r\\3\u000b\u0005\u00151\u0011\u0001\u00039be\u0006dG.\u001a7\u000b\u0005\u001dA\u0011AC2pY2,7\r^5p]*\t\u0011\"A\u0003tG\u0006d\u0017m\u0001\u0001\u0016\u0005192c\u0002\u0001\u000e#\u0001\u001asE\u000c\t\u0003\u001d=i\u0011\u0001C\u0005\u0003!!\u0011a!\u00118z%\u00164\u0007c\u0001\n\u0014+5\ta!\u0003\u0002\u0015\r\t1q)\u001a8TKF\u0004\"AF\u000c\r\u0001\u00111\u0001\u0004\u0001CC\u0002e\u0011\u0011\u0001V\t\u00035u\u0001\"AD\u000e\n\u0005qA!a\u0002(pi\"Lgn\u001a\t\u0003\u001dyI!a\u0008\u0005\u0003\u0007\u0005s\u0017\u0010E\u0002\"EUi\u0011\u0001B\u0005\u0003\u0003\u0011\u00012\u0001J\u0013\u0016\u001b\u0005\u0011\u0011B\u0001\u0014\u0003\u0005-\u0001\u0016M]%uKJ\u000c\'\r\\3\u0011\t!ZS#L\u0007\u0002S)\u0011!FB\u0001\u0008O\u0016tWM]5d\u0013\ta\u0013F\u0001\nHK:,\'/[2QCJ$V-\u001c9mCR,\u0007C\u0001\u0013\u0001!\u0015\ts&F\u00193\u0013\t\u0001DA\u0001\u0006QCJ\u001cV-\u001d\'jW\u0016\u00042\u0001\n\u0001\u0016!\r\u0019T\'F\u0007\u0002i)\u00111AB\u0005\u0003mQ\u00121aU3r\u0011\u0015A\u0004\u0001\"\u0001:\u0003\u0019!\u0013N\\5uIQ\t!\u0008\u0005\u0002\u000fw%\u0011A\u0008\u0003\u0002\u0005+:LG\u000fC\u0003?\u0001\u0011\u0005s(A\u0005d_6\u0004\u0018M\\5p]V\t\u0001IE\u0002B\u0007\u001a3AA\u0011\u0001\u0001\u0001\naAH]3gS:,W.\u001a8u}A\u0019\u0001\u0006R\u0017\n\u0005\u0015K#\u0001E$f]\u0016\u0014\u0018nY\"p[B\u000cg.[8o!\rAs)L\u0005\u0003\u0011&\u00121cR3oKJL7\rU1s\u0007>l\u0007/\u00198j_:DQA\u0013\u0001\u0005B-\u000bQ\u0001^8TKF,\u0012!M\u0004\u0006\u001b\nA\tAT\u0001\u0007!\u0006\u00148+Z9\u0011\u0005\u0011ze!B\u0001\u0003\u0011\u0003\u00016CA(R!\rA#+L\u0005\u0003\'&\u0012!\u0002U1s\r\u0006\u001cGo\u001c:z\u0011\u0015)v\n\"\u0001W\u0003\u0019a\u0014N\\5u}Q\ta\nC\u0003Y\u001f\u0012\r\u0011,\u0001\u0007dC:\u0014U/\u001b7e\rJ|W.\u0006\u0002[GV\t1\u000cE\u0003)9z\u0013G-\u0003\u0002^S\tq1)\u00198D_6\u0014\u0017N\\3Ge>l\u0007CA0a\u001b\u0005y\u0015BA1E\u0005\u0011\u0019u\u000e\u001c7\u0011\u0005Y\u0019G!\u0002\rX\u0005\u0004I\u0002c\u0001\u0013\u0001E\")am\u0014C\u0001O\u0006Qa.Z<Ck&dG-\u001a:\u0016\u0005!lW#A5\u0011\t\u0005RGN\\\u0005\u0003W\u0012\u0011\u0001bQ8nE&tWM\u001d\t\u0003-5$Q\u0001G3C\u0002e\u00012\u0001\n\u0001m\u0011\u0015\u0001x\n\"\u0001r\u0003-qWm^\"p[\nLg.\u001a:\u0016\u0005I,X#A:\u0011\t\u0005RGO\u001e\t\u0003-U$Q\u0001G8C\u0002e\u00012\u0001\n\u0001u\u0001"
.end annotation


# virtual methods
.method public abstract companion()Lscala/collection/generic/GenericCompanion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion<",
            "Lscala/collection/parallel/immutable/ParSeq;",
            ">;"
        }
    .end annotation
.end method

.method public abstract toSeq()Lscala/collection/parallel/immutable/ParSeq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/immutable/ParSeq<",
            "TT;>;"
        }
    .end annotation
.end method
