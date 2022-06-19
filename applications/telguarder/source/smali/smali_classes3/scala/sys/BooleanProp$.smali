.class public final Lscala/sys/BooleanProp$;
.super Ljava/lang/Object;
.source "BooleanProp.scala"


# static fields
.field public static final MODULE$:Lscala/sys/BooleanProp$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/sys/BooleanProp$;

    invoke-direct {v0}, Lscala/sys/BooleanProp$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/sys/BooleanProp$;->MODULE$:Lscala/sys/BooleanProp$;

    return-void
.end method


# virtual methods
.method public booleanPropAsBoolean(Lscala/sys/BooleanProp;)Z
    .locals 0

    .line 78
    invoke-interface {p1}, Lscala/sys/BooleanProp;->value()Z

    move-result p1

    return p1
.end method

.method public constant(Ljava/lang/String;Z)Lscala/sys/BooleanProp;
    .locals 1

    .line 76
    new-instance v0, Lscala/sys/BooleanProp$ConstantImpl;

    invoke-direct {v0, p1, p2}, Lscala/sys/BooleanProp$ConstantImpl;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public keyExists(Ljava/lang/String;)Lscala/sys/BooleanProp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lscala/sys/BooleanProp;"
        }
    .end annotation

    .line 72
    new-instance v0, Lscala/sys/BooleanProp$BooleanPropImpl;

    new-instance v1, Lscala/sys/BooleanProp$$anonfun$keyExists$1;

    invoke-direct {v1}, Lscala/sys/BooleanProp$$anonfun$keyExists$1;-><init>()V

    invoke-direct {v0, p1, v1}, Lscala/sys/BooleanProp$BooleanPropImpl;-><init>(Ljava/lang/String;Lscala/Function1;)V

    return-object v0
.end method

.method public valueIsTrue(Ljava/lang/String;)Lscala/sys/BooleanProp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lscala/sys/BooleanProp;"
        }
    .end annotation

    .line 63
    new-instance v0, Lscala/sys/BooleanProp$BooleanPropImpl;

    new-instance v1, Lscala/sys/BooleanProp$$anonfun$valueIsTrue$1;

    invoke-direct {v1}, Lscala/sys/BooleanProp$$anonfun$valueIsTrue$1;-><init>()V

    invoke-direct {v0, p1, v1}, Lscala/sys/BooleanProp$BooleanPropImpl;-><init>(Ljava/lang/String;Lscala/Function1;)V

    return-object v0
.end method
