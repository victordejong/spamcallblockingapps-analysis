.class public final Lscala/sys/process/ProcessBuilderImpl$FileOutput$$anonfun$$lessinit$greater$3;
.super Lscala/runtime/AbstractFunction0;
.source "ProcessBuilderImpl.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/sys/process/ProcessBuilderImpl$FileOutput;-><init>(Lscala/sys/process/ProcessBuilder$;Ljava/io/File;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Ljava/io/FileOutputStream;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final append$1:Z

.field private final file$1:Ljava/io/File;


# direct methods
.method public constructor <init>(Lscala/sys/process/ProcessBuilder$;Ljava/io/File;Z)V
    .locals 0

    .line 33
    iput-object p2, p0, Lscala/sys/process/ProcessBuilderImpl$FileOutput$$anonfun$$lessinit$greater$3;->file$1:Ljava/io/File;

    iput-boolean p3, p0, Lscala/sys/process/ProcessBuilderImpl$FileOutput$$anonfun$$lessinit$greater$3;->append$1:Z

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply()Ljava/io/FileOutputStream;
    .locals 3

    .line 33
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lscala/sys/process/ProcessBuilderImpl$FileOutput$$anonfun$$lessinit$greater$3;->file$1:Ljava/io/File;

    iget-boolean v2, p0, Lscala/sys/process/ProcessBuilderImpl$FileOutput$$anonfun$$lessinit$greater$3;->append$1:Z

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    return-object v0
.end method

.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lscala/sys/process/ProcessBuilderImpl$FileOutput$$anonfun$$lessinit$greater$3;->apply()Ljava/io/FileOutputStream;

    move-result-object v0

    return-object v0
.end method
