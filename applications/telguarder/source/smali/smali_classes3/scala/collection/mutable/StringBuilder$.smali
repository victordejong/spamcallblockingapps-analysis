.class public final Lscala/collection/mutable/StringBuilder$;
.super Ljava/lang/Object;
.source "StringBuilder.scala"

# interfaces
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/collection/mutable/StringBuilder$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/mutable/StringBuilder$;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/mutable/StringBuilder$;->MODULE$:Lscala/collection/mutable/StringBuilder$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 445
    sget-object v0, Lscala/collection/mutable/StringBuilder$;->MODULE$:Lscala/collection/mutable/StringBuilder$;

    return-object v0
.end method


# virtual methods
.method public newBuilder()Lscala/collection/mutable/StringBuilder;
    .locals 1

    .line 446
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    return-object v0
.end method
