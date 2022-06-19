.class public final Lscala/runtime/RichBoolean$;
.super Ljava/lang/Object;
.source "RichBoolean.scala"


# static fields
.field public static final MODULE$:Lscala/runtime/RichBoolean$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/runtime/RichBoolean$;

    invoke-direct {v0}, Lscala/runtime/RichBoolean$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/runtime/RichBoolean$;->MODULE$:Lscala/runtime/RichBoolean$;

    return-void
.end method


# virtual methods
.method public final equals$extension(ZLjava/lang/Object;)Z
    .locals 3

    .line 13
    instance-of v0, p2, Lscala/runtime/RichBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    check-cast p2, Lscala/runtime/RichBoolean;

    invoke-virtual {p2}, Lscala/runtime/RichBoolean;->self()Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final hashCode$extension(Z)I
    .locals 0

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1
.end method

.method public final ord$extension(Z)Lscala/math/Ordering$Boolean$;
    .locals 0

    .line 14
    sget-object p1, Lscala/math/Ordering$Boolean$;->MODULE$:Lscala/math/Ordering$Boolean$;

    return-object p1
.end method
