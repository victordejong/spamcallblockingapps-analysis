.class public final Lscala/Boolean$;
.super Ljava/lang/Object;
.source "Boolean.scala"

# interfaces
.implements Lscala/AnyValCompanion;


# static fields
.field public static final MODULE$:Lscala/Boolean$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/Boolean$;

    invoke-direct {v0}, Lscala/Boolean$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/Boolean$;->MODULE$:Lscala/Boolean$;

    return-void
.end method


# virtual methods
.method public box(Z)Ljava/lang/Boolean;
    .locals 0

    .line 117
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "object scala.Boolean"

    return-object v0
.end method

.method public unbox(Ljava/lang/Object;)Z
    .locals 0

    .line 129
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
