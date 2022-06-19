.class public Lscala/sys/BooleanProp$ConstantImpl;
.super Ljava/lang/Object;
.source "BooleanProp.scala"

# interfaces
.implements Lscala/sys/BooleanProp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/sys/BooleanProp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConstantImpl"
.end annotation


# instance fields
.field private final clear:Lscala/runtime/BoxedUnit;

.field private final disable:Lscala/runtime/BoxedUnit;

.field private final enable:Lscala/runtime/BoxedUnit;

.field private final isSet:Z

.field private final key:Ljava/lang/String;

.field private final toggle:Lscala/runtime/BoxedUnit;

.field private final value:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 46
    iput-object p1, p0, Lscala/sys/BooleanProp$ConstantImpl;->key:Ljava/lang/String;

    iput-boolean p2, p0, Lscala/sys/BooleanProp$ConstantImpl;->value:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean p2, p0, Lscala/sys/BooleanProp$ConstantImpl;->isSet:Z

    .line 51
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    iput-object p1, p0, Lscala/sys/BooleanProp$ConstantImpl;->clear:Lscala/runtime/BoxedUnit;

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    iput-object p1, p0, Lscala/sys/BooleanProp$ConstantImpl;->enable:Lscala/runtime/BoxedUnit;

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    iput-object p1, p0, Lscala/sys/BooleanProp$ConstantImpl;->disable:Lscala/runtime/BoxedUnit;

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    iput-object p1, p0, Lscala/sys/BooleanProp$ConstantImpl;->toggle:Lscala/runtime/BoxedUnit;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public disable()V
    .locals 0

    return-void
.end method

.method public enable()V
    .locals 0

    return-void
.end method

.method public get()Ljava/lang/String;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lscala/sys/BooleanProp$ConstantImpl;->value()Z

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSet()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lscala/sys/BooleanProp$ConstantImpl;->isSet:Z

    return v0
.end method

.method public key()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lscala/sys/BooleanProp$ConstantImpl;->key:Ljava/lang/String;

    return-object v0
.end method

.method public option()Lscala/Option;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Lscala/sys/BooleanProp$ConstantImpl;->isSet()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lscala/Some;

    invoke-virtual {p0}, Lscala/sys/BooleanProp$ConstantImpl;->value()Z

    move-result v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    :goto_0
    return-object v0
.end method

.method public set(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 48
    invoke-virtual {p0}, Lscala/sys/BooleanProp$ConstantImpl;->value()Z

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lscala/sys/BooleanProp$ConstantImpl;->setValue(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">(TT1;)Z"
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lscala/sys/BooleanProp$ConstantImpl;->value()Z

    move-result p1

    return p1
.end method

.method public toggle()V
    .locals 0

    return-void
.end method

.method public bridge synthetic value()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lscala/sys/BooleanProp$ConstantImpl;->value()Z

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public value()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lscala/sys/BooleanProp$ConstantImpl;->value:Z

    return v0
.end method

.method public bridge synthetic zero()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lscala/sys/BooleanProp$ConstantImpl;->zero()Z

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public zero()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
