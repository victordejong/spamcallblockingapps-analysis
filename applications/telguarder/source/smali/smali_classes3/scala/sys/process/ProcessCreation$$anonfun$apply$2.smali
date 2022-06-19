.class public final Lscala/sys/process/ProcessCreation$$anonfun$apply$2;
.super Lscala/runtime/AbstractFunction1;
.source "Process.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/sys/process/ProcessCreation;->apply(Lscala/collection/Seq;Lscala/Option;Lscala/collection/Seq;)Lscala/sys/process/ProcessBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/io/File;",
        "Ljava/lang/ProcessBuilder;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final jpb$1:Ljava/lang/ProcessBuilder;


# direct methods
.method public constructor <init>(Lscala/sys/process/ProcessCreation;Ljava/lang/ProcessBuilder;)V
    .locals 0

    .line 105
    iput-object p2, p0, Lscala/sys/process/ProcessCreation$$anonfun$apply$2;->jpb$1:Ljava/lang/ProcessBuilder;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 105
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lscala/sys/process/ProcessCreation$$anonfun$apply$2;->apply(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/io/File;)Ljava/lang/ProcessBuilder;
    .locals 1

    .line 105
    iget-object v0, p0, Lscala/sys/process/ProcessCreation$$anonfun$apply$2;->jpb$1:Ljava/lang/ProcessBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/ProcessBuilder;->directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    move-result-object p1

    return-object p1
.end method
