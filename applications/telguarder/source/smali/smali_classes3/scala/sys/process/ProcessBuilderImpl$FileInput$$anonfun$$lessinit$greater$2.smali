.class public final Lscala/sys/process/ProcessBuilderImpl$FileInput$$anonfun$$lessinit$greater$2;
.super Lscala/runtime/AbstractFunction0;
.source "ProcessBuilderImpl.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/sys/process/ProcessBuilderImpl$FileInput;-><init>(Lscala/sys/process/ProcessBuilder$;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Ljava/io/FileInputStream;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final file$2:Ljava/io/File;


# direct methods
.method public constructor <init>(Lscala/sys/process/ProcessBuilder$;Ljava/io/File;)V
    .locals 0

    .line 32
    iput-object p2, p0, Lscala/sys/process/ProcessBuilderImpl$FileInput$$anonfun$$lessinit$greater$2;->file$2:Ljava/io/File;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply()Ljava/io/FileInputStream;
    .locals 2

    .line 32
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lscala/sys/process/ProcessBuilderImpl$FileInput$$anonfun$$lessinit$greater$2;->file$2:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lscala/sys/process/ProcessBuilderImpl$FileInput$$anonfun$$lessinit$greater$2;->apply()Ljava/io/FileInputStream;

    move-result-object v0

    return-object v0
.end method
