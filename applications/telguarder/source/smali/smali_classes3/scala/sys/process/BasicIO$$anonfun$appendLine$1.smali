.class public final Lscala/sys/process/BasicIO$$anonfun$appendLine$1;
.super Lscala/runtime/AbstractFunction1;
.source "BasicIO.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/sys/process/BasicIO$;->appendLine(Ljava/lang/Appendable;)Lscala/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/lang/String;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final buffer$1:Ljava/lang/Appendable;


# direct methods
.method public constructor <init>(Ljava/lang/Appendable;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lscala/sys/process/BasicIO$$anonfun$appendLine$1;->buffer$1:Ljava/lang/Appendable;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 226
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lscala/sys/process/BasicIO$$anonfun$appendLine$1;->apply(Ljava/lang/String;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Ljava/lang/String;)V
    .locals 1

    .line 227
    iget-object v0, p0, Lscala/sys/process/BasicIO$$anonfun$appendLine$1;->buffer$1:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 228
    iget-object p1, p0, Lscala/sys/process/BasicIO$$anonfun$appendLine$1;->buffer$1:Ljava/lang/Appendable;

    sget-object v0, Lscala/sys/process/BasicIO$;->MODULE$:Lscala/sys/process/BasicIO$;

    invoke-virtual {v0}, Lscala/sys/process/BasicIO$;->Newline()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method
