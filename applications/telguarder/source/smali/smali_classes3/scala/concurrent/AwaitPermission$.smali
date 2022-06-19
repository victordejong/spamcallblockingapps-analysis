.class public final Lscala/concurrent/AwaitPermission$;
.super Ljava/lang/Object;
.source "package.scala"

# interfaces
.implements Lscala/concurrent/CanAwait;


# static fields
.field public static final MODULE$:Lscala/concurrent/AwaitPermission$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/concurrent/AwaitPermission$;

    invoke-direct {v0}, Lscala/concurrent/AwaitPermission$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/concurrent/AwaitPermission$;->MODULE$:Lscala/concurrent/AwaitPermission$;

    return-void
.end method
