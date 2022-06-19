.class public final Lscala/sys/process/BasicIO$$anonfun$input$1;
.super Lscala/runtime/AbstractFunction1;
.source "BasicIO.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/sys/process/BasicIO$;->input(Z)Lscala/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/io/OutputStream;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final connect$1:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 198
    iput-boolean p1, p0, Lscala/sys/process/BasicIO$$anonfun$input$1;->connect$1:Z

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 198
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {p0, p1}, Lscala/sys/process/BasicIO$$anonfun$input$1;->apply(Ljava/io/OutputStream;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Ljava/io/OutputStream;)V
    .locals 1

    .line 199
    iget-boolean v0, p0, Lscala/sys/process/BasicIO$$anonfun$input$1;->connect$1:Z

    if-eqz v0, :cond_0

    sget-object v0, Lscala/sys/process/BasicIO$;->MODULE$:Lscala/sys/process/BasicIO$;

    invoke-virtual {v0, p1}, Lscala/sys/process/BasicIO$;->connectToIn(Ljava/io/OutputStream;)V

    .line 200
    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void
.end method
