.class final Landroidx/browser/trusted/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/browser/trusted/b$b;,
        Landroidx/browser/trusted/b$a;,
        Landroidx/browser/trusted/b$c;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;Landroid/content/pm/PackageManager;Landroidx/browser/trusted/d;)Z
    .locals 2

    .line 1064
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 1065
    new-instance v0, Landroidx/browser/trusted/b$a;

    invoke-direct {v0}, Landroidx/browser/trusted/b$a;-><init>()V

    goto :goto_0

    .line 1067
    :cond_0
    new-instance v0, Landroidx/browser/trusted/b$b;

    invoke-direct {v0}, Landroidx/browser/trusted/b$b;-><init>()V

    .line 56
    :goto_0
    invoke-interface {v0, p0, p1, p2}, Landroidx/browser/trusted/b$c;->a(Ljava/lang/String;Landroid/content/pm/PackageManager;Landroidx/browser/trusted/d;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    :goto_1
    const-string p1, "PackageIdentity"

    const-string p2, "Could not check if package matches token."

    .line 58
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method static a(Landroid/content/pm/Signature;)[B
    .locals 1

    :try_start_0
    const-string v0, "SHA256"

    .line 162
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method
