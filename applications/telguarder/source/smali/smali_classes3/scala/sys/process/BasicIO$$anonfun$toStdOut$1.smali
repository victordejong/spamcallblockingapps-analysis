.class public final Lscala/sys/process/BasicIO$$anonfun$toStdOut$1;
.super Lscala/runtime/AbstractFunction1;
.source "BasicIO.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/sys/process/BasicIO$;->toStdOut()Lscala/Function1;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 217
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 217
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lscala/sys/process/BasicIO$$anonfun$toStdOut$1;->apply(Ljava/io/InputStream;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Ljava/io/InputStream;)V
    .locals 2

    .line 217
    sget-object v0, Lscala/sys/process/BasicIO$;->MODULE$:Lscala/sys/process/BasicIO$;

    sget-object v1, Lscala/sys/process/package$;->MODULE$:Lscala/sys/process/package$;

    invoke-virtual {v1}, Lscala/sys/process/package$;->stdout()Ljava/io/PrintStream;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lscala/sys/process/BasicIO$;->transferFully(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method
