.class public final Lscala/Proxy$;
.super Ljava/lang/Object;
.source "Proxy.scala"


# static fields
.field public static final MODULE$:Lscala/Proxy$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/Proxy$;

    invoke-direct {v0}, Lscala/Proxy$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/Proxy$;->MODULE$:Lscala/Proxy$;

    return-void
.end method
