.class public abstract Lscala/sys/process/ProcessBuilderImpl$SequentialBuilder;
.super Lscala/sys/process/ProcessBuilderImpl$BasicBuilder;
.source "ProcessBuilderImpl.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/sys/process/ProcessBuilderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "SequentialBuilder"
.end annotation


# instance fields
.field private final a:Lscala/sys/process/ProcessBuilder;

.field private final b:Lscala/sys/process/ProcessBuilder;

.field private final operatorString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lscala/sys/process/ProcessBuilder$;Lscala/sys/process/ProcessBuilder;Lscala/sys/process/ProcessBuilder;Ljava/lang/String;)V
    .locals 0

    .line 178
    iput-object p2, p0, Lscala/sys/process/ProcessBuilderImpl$SequentialBuilder;->a:Lscala/sys/process/ProcessBuilder;

    .line 179
    iput-object p3, p0, Lscala/sys/process/ProcessBuilderImpl$SequentialBuilder;->b:Lscala/sys/process/ProcessBuilder;

    .line 180
    iput-object p4, p0, Lscala/sys/process/ProcessBuilderImpl$SequentialBuilder;->operatorString:Ljava/lang/String;

    .line 181
    invoke-direct {p0, p1}, Lscala/sys/process/ProcessBuilderImpl$BasicBuilder;-><init>(Lscala/sys/process/ProcessBuilder$;)V

    .line 183
    invoke-virtual {p0, p2}, Lscala/sys/process/ProcessBuilderImpl$SequentialBuilder;->checkNotThis(Lscala/sys/process/ProcessBuilder;)V

    .line 184
    invoke-virtual {p0, p3}, Lscala/sys/process/ProcessBuilderImpl$SequentialBuilder;->checkNotThis(Lscala/sys/process/ProcessBuilder;)V

    return-void
.end method


# virtual methods
.method public synthetic scala$sys$process$ProcessBuilderImpl$SequentialBuilder$$$outer()Lscala/sys/process/ProcessBuilder$;
    .locals 1

    .line 177
    iget-object v0, p0, Lscala/sys/process/ProcessBuilderImpl$SequentialBuilder;->$outer:Lscala/sys/process/ProcessBuilder$;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 185
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, " ( "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lscala/sys/process/ProcessBuilderImpl$SequentialBuilder;->a:Lscala/sys/process/ProcessBuilder;

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lscala/sys/process/ProcessBuilderImpl$SequentialBuilder;->operatorString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lscala/sys/process/ProcessBuilderImpl$SequentialBuilder;->b:Lscala/sys/process/ProcessBuilder;

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, " ) "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
