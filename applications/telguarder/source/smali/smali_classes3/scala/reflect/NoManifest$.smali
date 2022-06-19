.class public final Lscala/reflect/NoManifest$;
.super Ljava/lang/Object;
.source "NoManifest.scala"

# interfaces
.implements Lscala/reflect/OptManifest;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/reflect/OptManifest<",
        "Lscala/runtime/Nothing$;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/reflect/NoManifest$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/reflect/NoManifest$;

    invoke-direct {v0}, Lscala/reflect/NoManifest$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/reflect/NoManifest$;->MODULE$:Lscala/reflect/NoManifest$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 16
    sget-object v0, Lscala/reflect/NoManifest$;->MODULE$:Lscala/reflect/NoManifest$;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "<?>"

    return-object v0
.end method
