.class public final Lscala/sys/process/ProcessCreation$$anonfun$cat$1;
.super Lscala/runtime/AbstractFunction1;
.source "Process.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/sys/process/ProcessCreation;->cat(Lscala/collection/Seq;)Lscala/sys/process/ProcessBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/sys/process/ProcessBuilder$Source;",
        "Lscala/sys/process/ProcessBuilder;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lscala/sys/process/ProcessCreation;)V
    .locals 0

    .line 174
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 174
    check-cast p1, Lscala/sys/process/ProcessBuilder$Source;

    invoke-virtual {p0, p1}, Lscala/sys/process/ProcessCreation$$anonfun$cat$1;->apply(Lscala/sys/process/ProcessBuilder$Source;)Lscala/sys/process/ProcessBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/sys/process/ProcessBuilder$Source;)Lscala/sys/process/ProcessBuilder;
    .locals 0

    .line 174
    invoke-interface {p1}, Lscala/sys/process/ProcessBuilder$Source;->cat()Lscala/sys/process/ProcessBuilder;

    move-result-object p1

    return-object p1
.end method
