.class public final Lscala/Predef$Ensuring;
.super Ljava/lang/Object;
.source "Predef.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/Predef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Ensuring"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final scala$Predef$Ensuring$$self:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .line 252
    iput-object p1, p0, Lscala/Predef$Ensuring;->scala$Predef$Ensuring$$self:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ensuring(Lscala/Function1;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)TA;"
        }
    .end annotation

    .line 255
    sget-object v0, Lscala/Predef$Ensuring$;->MODULE$:Lscala/Predef$Ensuring$;

    invoke-virtual {p0}, Lscala/Predef$Ensuring;->scala$Predef$Ensuring$$self()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v1, p1}, Lscala/Predef$;->assert(Z)V

    return-object v0
.end method

.method public ensuring(Lscala/Function1;Lscala/Function0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/Function0<",
            "Ljava/lang/Object;",
            ">;)TA;"
        }
    .end annotation

    .line 256
    sget-object v0, Lscala/Predef$Ensuring$;->MODULE$:Lscala/Predef$Ensuring$;

    invoke-virtual {p0}, Lscala/Predef$Ensuring;->scala$Predef$Ensuring$$self()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "assertion failed: "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public ensuring(Z)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TA;"
        }
    .end annotation

    .line 253
    sget-object v0, Lscala/Predef$Ensuring$;->MODULE$:Lscala/Predef$Ensuring$;

    invoke-virtual {p0}, Lscala/Predef$Ensuring;->scala$Predef$Ensuring$$self()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lscala/Predef$Ensuring$;->ensuring$extension0(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public ensuring(ZLscala/Function0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lscala/Function0<",
            "Ljava/lang/Object;",
            ">;)TA;"
        }
    .end annotation

    .line 254
    sget-object v0, Lscala/Predef$Ensuring$;->MODULE$:Lscala/Predef$Ensuring$;

    invoke-virtual {p0}, Lscala/Predef$Ensuring;->scala$Predef$Ensuring$$self()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "assertion failed: "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 252
    sget-object v0, Lscala/Predef$Ensuring$;->MODULE$:Lscala/Predef$Ensuring$;

    invoke-virtual {p0}, Lscala/Predef$Ensuring;->scala$Predef$Ensuring$$self()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lscala/Predef$Ensuring$;->equals$extension(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 252
    sget-object v0, Lscala/Predef$Ensuring$;->MODULE$:Lscala/Predef$Ensuring$;

    invoke-virtual {p0}, Lscala/Predef$Ensuring;->scala$Predef$Ensuring$$self()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/Predef$Ensuring$;->hashCode$extension(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public scala$Predef$Ensuring$$self()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lscala/Predef$Ensuring;->scala$Predef$Ensuring$$self:Ljava/lang/Object;

    return-object v0
.end method
