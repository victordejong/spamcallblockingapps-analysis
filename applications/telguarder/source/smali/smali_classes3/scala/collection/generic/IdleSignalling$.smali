.class public final Lscala/collection/generic/IdleSignalling$;
.super Lscala/collection/generic/DefaultSignalling;
.source "Signalling.scala"


# static fields
.field public static final MODULE$:Lscala/collection/generic/IdleSignalling$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/generic/IdleSignalling$;

    invoke-direct {v0}, Lscala/collection/generic/IdleSignalling$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Lscala/collection/generic/DefaultSignalling;-><init>()V

    sput-object p0, Lscala/collection/generic/IdleSignalling$;->MODULE$:Lscala/collection/generic/IdleSignalling$;

    return-void
.end method
