.class public final Lscala/sys/process/ProcessCreation$$anonfun$apply$1;
.super Lscala/runtime/AbstractFunction0$mcI$sp;
.source "Process.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/sys/process/ProcessCreation;->apply(Z)Lscala/sys/process/ProcessBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final value$1:Z


# direct methods
.method public constructor <init>(Lscala/sys/process/ProcessCreation;Z)V
    .locals 0

    .line 133
    iput-boolean p2, p0, Lscala/sys/process/ProcessCreation$$anonfun$apply$1;->value$1:Z

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0$mcI$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply()I
    .locals 1

    .line 133
    invoke-virtual {p0}, Lscala/sys/process/ProcessCreation$$anonfun$apply$1;->apply$mcI$sp()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 133
    invoke-virtual {p0}, Lscala/sys/process/ProcessCreation$$anonfun$apply$1;->apply()I

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public apply$mcI$sp()I
    .locals 1

    .line 133
    iget-boolean v0, p0, Lscala/sys/process/ProcessCreation$$anonfun$apply$1;->value$1:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
