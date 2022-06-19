.class public Lscala/sys/BooleanProp$BooleanPropImpl;
.super Lscala/sys/PropImpl;
.source "BooleanProp.scala"

# interfaces
.implements Lscala/sys/BooleanProp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/sys/BooleanProp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BooleanPropImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/sys/PropImpl<",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/sys/BooleanProp;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lscala/Function1<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Lscala/sys/PropImpl;-><init>(Ljava/lang/String;Lscala/Function1;)V

    return-void
.end method


# virtual methods
.method public disable()V
    .locals 0

    .line 42
    invoke-virtual {p0}, Lscala/sys/BooleanProp$BooleanPropImpl;->clear()V

    return-void
.end method

.method public enable()V
    .locals 1

    const/4 v0, 0x1

    .line 41
    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/sys/BooleanProp$BooleanPropImpl;->setValue(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lscala/sys/BooleanProp$BooleanPropImpl;->setValue(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">(TT1;)Z"
        }
    .end annotation

    .line 37
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lscala/sys/BooleanProp$BooleanPropImpl;->value()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0}, Lscala/sys/BooleanProp$BooleanPropImpl;->clear()V

    goto :goto_0

    .line 39
    :cond_0
    invoke-super {p0, p1}, Lscala/sys/PropImpl;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public toggle()V
    .locals 1

    .line 43
    invoke-virtual {p0}, Lscala/sys/BooleanProp$BooleanPropImpl;->value()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lscala/sys/BooleanProp$BooleanPropImpl;->disable()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lscala/sys/BooleanProp$BooleanPropImpl;->enable()V

    :goto_0
    return-void
.end method

.method public bridge synthetic value()Z
    .locals 1

    .line 36
    invoke-virtual {p0}, Lscala/sys/BooleanProp$BooleanPropImpl;->value()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
