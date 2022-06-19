.class public final Lscala/util/control/NoStackTrace$;
.super Ljava/lang/Object;
.source "NoStackTrace.scala"

# interfaces
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/util/control/NoStackTrace$;


# instance fields
.field private _noSuppression:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/util/control/NoStackTrace$;

    invoke-direct {v0}, Lscala/util/control/NoStackTrace$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/util/control/NoStackTrace$;->MODULE$:Lscala/util/control/NoStackTrace$;

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lscala/util/control/NoStackTrace$;->_noSuppression:Z

    .line 31
    sget-object v0, Lscala/sys/SystemProperties$;->MODULE$:Lscala/sys/SystemProperties$;

    invoke-virtual {v0}, Lscala/sys/SystemProperties$;->noTraceSupression()Lscala/sys/BooleanProp;

    move-result-object v0

    invoke-interface {v0}, Lscala/sys/BooleanProp;->value()Z

    move-result v0

    invoke-direct {p0, v0}, Lscala/util/control/NoStackTrace$;->_noSuppression_$eq(Z)V

    return-void
.end method

.method private final _noSuppression()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lscala/util/control/NoStackTrace$;->_noSuppression:Z

    return v0
.end method

.method private final _noSuppression_$eq(Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lscala/util/control/NoStackTrace$;->_noSuppression:Z

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 26
    sget-object v0, Lscala/util/control/NoStackTrace$;->MODULE$:Lscala/util/control/NoStackTrace$;

    return-object v0
.end method


# virtual methods
.method public final noSuppression()Z
    .locals 1

    .line 27
    invoke-direct {p0}, Lscala/util/control/NoStackTrace$;->_noSuppression()Z

    move-result v0

    return v0
.end method
