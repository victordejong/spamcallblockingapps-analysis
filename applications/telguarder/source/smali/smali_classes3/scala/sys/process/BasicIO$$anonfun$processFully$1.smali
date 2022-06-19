.class public final Lscala/sys/process/BasicIO$$anonfun$processFully$1;
.super Lscala/runtime/AbstractFunction1;
.source "BasicIO.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/sys/process/BasicIO$;->processFully(Lscala/Function1;)Lscala/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/io/InputStream;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final processLine$1:Lscala/Function1;


# direct methods
.method public constructor <init>(Lscala/Function1;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lscala/sys/process/BasicIO$$anonfun$processFully$1;->processLine$1:Lscala/Function1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 163
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lscala/sys/process/BasicIO$$anonfun$processFully$1;->apply(Ljava/io/InputStream;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Ljava/io/InputStream;)V
    .locals 3

    .line 164
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 165
    :try_start_0
    sget-object p1, Lscala/sys/process/BasicIO$;->MODULE$:Lscala/sys/process/BasicIO$;

    iget-object v1, p0, Lscala/sys/process/BasicIO$$anonfun$processFully$1;->processLine$1:Lscala/Function1;

    new-instance v2, Lscala/sys/process/BasicIO$$anonfun$processFully$1$$anonfun$apply$6;

    invoke-direct {v2, p0, v0}, Lscala/sys/process/BasicIO$$anonfun$processFully$1$$anonfun$apply$6;-><init>(Lscala/sys/process/BasicIO$$anonfun$processFully$1;Ljava/io/BufferedReader;)V

    invoke-virtual {p1, v1, v2}, Lscala/sys/process/BasicIO$;->processLinesFully(Lscala/Function1;Lscala/Function0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw p1
.end method
