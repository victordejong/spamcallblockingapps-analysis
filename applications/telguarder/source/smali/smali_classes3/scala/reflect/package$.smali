.class public final Lscala/reflect/package$;
.super Ljava/lang/Object;
.source "package.scala"


# static fields
.field public static final MODULE$:Lscala/reflect/package$;


# instance fields
.field private final ClassManifest:Lscala/reflect/ClassManifestFactory$;

.field private final Manifest:Lscala/reflect/ManifestFactory$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/reflect/package$;

    invoke-direct {v0}, Lscala/reflect/package$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    .line 36
    sget-object v0, Lscala/reflect/ClassManifestFactory$;->MODULE$:Lscala/reflect/ClassManifestFactory$;

    iput-object v0, p0, Lscala/reflect/package$;->ClassManifest:Lscala/reflect/ClassManifestFactory$;

    .line 43
    sget-object v0, Lscala/reflect/ManifestFactory$;->MODULE$:Lscala/reflect/ManifestFactory$;

    iput-object v0, p0, Lscala/reflect/package$;->Manifest:Lscala/reflect/ManifestFactory$;

    return-void
.end method


# virtual methods
.method public ClassManifest()Lscala/reflect/ClassManifestFactory$;
    .locals 1

    .line 36
    iget-object v0, p0, Lscala/reflect/package$;->ClassManifest:Lscala/reflect/ClassManifestFactory$;

    return-object v0
.end method

.method public Manifest()Lscala/reflect/ManifestFactory$;
    .locals 1

    .line 43
    iget-object v0, p0, Lscala/reflect/package$;->Manifest:Lscala/reflect/ManifestFactory$;

    return-object v0
.end method

.method public classTag(Lscala/reflect/ClassTag;)Lscala/reflect/ClassTag;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/reflect/ClassTag<",
            "TT;>;)",
            "Lscala/reflect/ClassTag<",
            "TT;>;"
        }
    .end annotation

    return-object p1
.end method

.method public ensureAccessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/reflect/AccessibleObject;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 52
    invoke-virtual {p1}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 53
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object p1
.end method
