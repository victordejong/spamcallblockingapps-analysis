.class public Lscala/io/BufferedSource$BufferedLineIterator;
.super Lscala/collection/AbstractIterator;
.source "BufferedSource.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/io/BufferedSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BufferedLineIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractIterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/io/BufferedSource;

.field private final lineReader:Ljava/io/BufferedReader;

.field private nextLine:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lscala/io/BufferedSource;)V
    .locals 0

    .line 66
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/io/BufferedSource$BufferedLineIterator;->$outer:Lscala/io/BufferedSource;

    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    .line 67
    invoke-virtual {p1}, Lscala/io/BufferedSource;->scala$io$BufferedSource$$decachedReader()Ljava/io/BufferedReader;

    move-result-object p1

    iput-object p1, p0, Lscala/io/BufferedSource$BufferedLineIterator;->lineReader:Ljava/io/BufferedReader;

    const/4 p1, 0x0

    .line 68
    iput-object p1, p0, Lscala/io/BufferedSource$BufferedLineIterator;->nextLine:Ljava/lang/String;

    return-void
.end method

.method private lineReader()Ljava/io/BufferedReader;
    .locals 1

    .line 67
    iget-object v0, p0, Lscala/io/BufferedSource$BufferedLineIterator;->lineReader:Ljava/io/BufferedReader;

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 71
    invoke-virtual {p0}, Lscala/io/BufferedSource$BufferedLineIterator;->nextLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 72
    invoke-direct {p0}, Lscala/io/BufferedSource$BufferedLineIterator;->lineReader()Ljava/io/BufferedReader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/io/BufferedSource$BufferedLineIterator;->nextLine_$eq(Ljava/lang/String;)V

    .line 74
    :cond_0
    invoke-virtual {p0}, Lscala/io/BufferedSource$BufferedLineIterator;->nextLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lscala/io/BufferedSource$BufferedLineIterator;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 2

    .line 78
    invoke-virtual {p0}, Lscala/io/BufferedSource$BufferedLineIterator;->nextLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/io/BufferedSource$BufferedLineIterator;->lineReader()Ljava/io/BufferedReader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 79
    :try_start_0
    invoke-virtual {p0}, Lscala/io/BufferedSource$BufferedLineIterator;->nextLine()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Lscala/io/BufferedSource$BufferedLineIterator;->nextLine_$eq(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 81
    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {v0}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_1
    return-object v0

    :catchall_0
    move-exception v1

    .line 79
    invoke-virtual {p0, v0}, Lscala/io/BufferedSource$BufferedLineIterator;->nextLine_$eq(Ljava/lang/String;)V

    throw v1
.end method

.method public nextLine()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lscala/io/BufferedSource$BufferedLineIterator;->nextLine:Ljava/lang/String;

    return-object v0
.end method

.method public nextLine_$eq(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lscala/io/BufferedSource$BufferedLineIterator;->nextLine:Ljava/lang/String;

    return-void
.end method

.method public synthetic scala$io$BufferedSource$BufferedLineIterator$$$outer()Lscala/io/BufferedSource;
    .locals 1

    .line 66
    iget-object v0, p0, Lscala/io/BufferedSource$BufferedLineIterator;->$outer:Lscala/io/BufferedSource;

    return-object v0
.end method
