.class public final Lscala/util/Properties$;
.super Ljava/lang/Object;
.source "Properties.scala"

# interfaces
.implements Lscala/util/PropertiesTrait;


# static fields
.field public static final MODULE$:Lscala/util/Properties$;


# instance fields
.field private final ScalaCompilerVersion:Ljava/util/jar/Attributes$Name;

.field private volatile bitmap$0:Z

.field private final copyrightString:Ljava/lang/String;

.field private final developmentVersion:Lscala/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Option<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final propFilename:Ljava/lang/String;

.field private final releaseVersion:Lscala/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Option<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final scalaProps:Ljava/util/Properties;

.field private final versionString:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/util/Properties$;

    invoke-direct {v0}, Lscala/util/Properties$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-static {p0}, Lscala/util/PropertiesTrait$class;->$init$(Lscala/util/PropertiesTrait;)V

    .line 23
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Scala-Compiler-Version"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lscala/util/Properties$;->ScalaCompilerVersion:Ljava/util/jar/Attributes$Name;

    return-void
.end method

.method private scalaProps$lzycompute()Ljava/util/Properties;
    .locals 1

    .line 17
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lscala/util/Properties$;->bitmap$0:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lscala/util/PropertiesTrait$class;->scalaProps(Lscala/util/PropertiesTrait;)Ljava/util/Properties;

    move-result-object v0

    iput-object v0, p0, Lscala/util/Properties$;->scalaProps:Ljava/util/Properties;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lscala/util/Properties$;->bitmap$0:Z

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/util/Properties$;->scalaProps:Ljava/util/Properties;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public ScalaCompilerVersion()Ljava/util/jar/Attributes$Name;
    .locals 1

    .line 23
    iget-object v0, p0, Lscala/util/Properties$;->ScalaCompilerVersion:Ljava/util/jar/Attributes$Name;

    return-object v0
.end method

.method public clearProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 17
    invoke-static {p0, p1}, Lscala/util/PropertiesTrait$class;->clearProp(Lscala/util/PropertiesTrait;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public copyrightString()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lscala/util/Properties$;->copyrightString:Ljava/lang/String;

    return-object v0
.end method

.method public developmentVersion()Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lscala/util/Properties$;->developmentVersion:Lscala/Option;

    return-object v0
.end method

.method public encodingString()Ljava/lang/String;
    .locals 1

    .line 17
    invoke-static {p0}, Lscala/util/PropertiesTrait$class;->encodingString(Lscala/util/PropertiesTrait;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public envOrElse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 17
    invoke-static {p0, p1, p2}, Lscala/util/PropertiesTrait$class;->envOrElse(Lscala/util/PropertiesTrait;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public envOrNone(Ljava/lang/String;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lscala/Option<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 17
    invoke-static {p0, p1}, Lscala/util/PropertiesTrait$class;->envOrNone(Lscala/util/PropertiesTrait;Ljava/lang/String;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public envOrSome(Ljava/lang/String;Lscala/Option;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lscala/Option<",
            "Ljava/lang/String;",
            ">;)",
            "Lscala/Option<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 17
    invoke-static {p0, p1, p2}, Lscala/util/PropertiesTrait$class;->envOrSome(Lscala/util/PropertiesTrait;Ljava/lang/String;Lscala/Option;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public isAvian()Z
    .locals 1

    .line 17
    invoke-static {p0}, Lscala/util/PropertiesTrait$class;->isAvian(Lscala/util/PropertiesTrait;)Z

    move-result v0

    return v0
.end method

.method public isJavaAtLeast(Ljava/lang/String;)Z
    .locals 0

    .line 17
    invoke-static {p0, p1}, Lscala/util/PropertiesTrait$class;->isJavaAtLeast(Lscala/util/PropertiesTrait;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isMac()Z
    .locals 1

    .line 17
    invoke-static {p0}, Lscala/util/PropertiesTrait$class;->isMac(Lscala/util/PropertiesTrait;)Z

    move-result v0

    return v0
.end method

.method public isWin()Z
    .locals 1

    .line 17
    invoke-static {p0}, Lscala/util/PropertiesTrait$class;->isWin(Lscala/util/PropertiesTrait;)Z

    move-result v0

    return v0
.end method

.method public javaClassPath()Ljava/lang/String;
    .locals 1

    .line 17
    invoke-static {p0}, Lscala/util/PropertiesTrait$class;->javaClassPath(Lscala/util/PropertiesTrait;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public javaHome()Ljava/lang/String;
    .locals 1

    .line 17
    invoke-static {p0}, Lscala/util/PropertiesTrait$class;->javaHome(Lscala/util/PropertiesTrait;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public javaSpecName()Ljava/lang/String;
    .locals 1

    .line 17
    invoke-static {p0}, Lscala/util/PropertiesTrait$class;->javaSpecName(Lscala/util/PropertiesTrait;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public javaSpecVendor()Ljava/lang/String;
    .locals 1

    .line 17
    invoke-static {p0}, Lscala/util/PropertiesTrait$class;->javaSpecVendor(Lscala/util/PropertiesTrait;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public javaSpecVersion()Ljava/lang/String;
    .locals 1

    .line 17
    invoke-static {p0}, Lscala/util/PropertiesTrait$class;->javaSpecVersion(Lscala/util/PropertiesTrait;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public javaVendor()Ljava/lang/String;
    .locals 1

    .line 17
    invoke-static {p0}, Lscala/util/PropertiesTrait$class;->javaVendor(Lscala/util/PropertiesTrait;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public javaVersion()Ljava/lang/String;
    .locals 1

    .line 17
    invoke-static {p0}, Lscala/util/PropertiesTrait$class;->javaVersion(Lscala/util/PropertiesTrait;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public javaVmInfo()Ljava/lang/String;
    .locals 1

    .line 17
    invoke-static {p0}, Lscala/util/PropertiesTrait$class;->javaVmInfo(Lscala/util/PropertiesTrait;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public javaVmName()Ljava/lang/String;
    .locals 1

    .line 17
    invoke-static {p0}, Lscala/util/PropertiesTrait$class;->javaVmName(Lscala/util/PropertiesTrait;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public javaVmVendor()Ljava/lang/String;
    .locals 1

    .line 17
    invoke-static {p0}, Lscala/util/PropertiesTrait$class;->javaVmVendor(Lscala/util/PropertiesTrait;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public javaVmVersion()Ljava/lang/String;
    .locals 1

    .line 17
    invoke-static {p0}, Lscala/util/PropertiesTrait$class;->javaVmVersion(Lscala/util/PropertiesTrait;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public jdkHome()Ljava/lang/String;
    .locals 1

    .line 17
    invoke-static {p0}, Lscala/util/PropertiesTrait$class;->jdkHome(Lscala/util/PropertiesTrait;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public lineSeparator()Ljava/lang/String;
    .locals 1

    .line 17
    invoke-static {p0}, Lscala/util/PropertiesTrait$class;->lineSeparator(Lscala/util/PropertiesTrait;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public main([Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-static {p0, p1}, Lscala/util/PropertiesTrait$class;->main(Lscala/util/PropertiesTrait;[Ljava/lang/String;)V

    return-void
.end method

.method public osName()Ljava/lang/String;
    .locals 1

    .line 17
    invoke-static {p0}, Lscala/util/PropertiesTrait$class;->osName(Lscala/util/PropertiesTrait;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public pickJarBasedOn()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lscala/Option<",
            "*>;>;"
        }
    .end annotation

    .line 19
    const-class v0, Lscala/Option;

    return-object v0
.end method

.method public propCategory()Ljava/lang/String;
    .locals 1

    const-string v0, "library"

    return-object v0
.end method

.method public propFilename()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lscala/util/Properties$;->propFilename:Ljava/lang/String;

    return-object v0
.end method

.method public propIsSet(Ljava/lang/String;)Z
    .locals 0

    .line 17
    invoke-static {p0, p1}, Lscala/util/PropertiesTrait$class;->propIsSet(Lscala/util/PropertiesTrait;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public propIsSetTo(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 17
    invoke-static {p0, p1, p2}, Lscala/util/PropertiesTrait$class;->propIsSetTo(Lscala/util/PropertiesTrait;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public propOrElse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 17
    invoke-static {p0, p1, p2}, Lscala/util/PropertiesTrait$class;->propOrElse(Lscala/util/PropertiesTrait;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public propOrEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 17
    invoke-static {p0, p1}, Lscala/util/PropertiesTrait$class;->propOrEmpty(Lscala/util/PropertiesTrait;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public propOrFalse(Ljava/lang/String;)Z
    .locals 0

    .line 17
    invoke-static {p0, p1}, Lscala/util/PropertiesTrait$class;->propOrFalse(Lscala/util/PropertiesTrait;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public propOrNone(Ljava/lang/String;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lscala/Option<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 17
    invoke-static {p0, p1}, Lscala/util/PropertiesTrait$class;->propOrNone(Lscala/util/PropertiesTrait;Ljava/lang/String;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public propOrNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 17
    invoke-static {p0, p1}, Lscala/util/PropertiesTrait$class;->propOrNull(Lscala/util/PropertiesTrait;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public releaseVersion()Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lscala/util/Properties$;->releaseVersion:Lscala/Option;

    return-object v0
.end method

.method public scala$util$PropertiesTrait$_setter_$copyrightString_$eq(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lscala/util/Properties$;->copyrightString:Ljava/lang/String;

    return-void
.end method

.method public scala$util$PropertiesTrait$_setter_$developmentVersion_$eq(Lscala/Option;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lscala/util/Properties$;->developmentVersion:Lscala/Option;

    return-void
.end method

.method public scala$util$PropertiesTrait$_setter_$propFilename_$eq(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lscala/util/Properties$;->propFilename:Ljava/lang/String;

    return-void
.end method

.method public scala$util$PropertiesTrait$_setter_$releaseVersion_$eq(Lscala/Option;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lscala/util/Properties$;->releaseVersion:Lscala/Option;

    return-void
.end method

.method public scala$util$PropertiesTrait$_setter_$versionString_$eq(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lscala/util/Properties$;->versionString:Ljava/lang/String;

    return-void
.end method

.method public scalaCmd()Ljava/lang/String;
    .locals 1

    .line 17
    invoke-static {p0}, Lscala/util/PropertiesTrait$class;->scalaCmd(Lscala/util/PropertiesTrait;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public scalaHome()Ljava/lang/String;
    .locals 1

    .line 17
    invoke-static {p0}, Lscala/util/PropertiesTrait$class;->scalaHome(Lscala/util/PropertiesTrait;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public scalaPropOrElse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 17
    invoke-static {p0, p1, p2}, Lscala/util/PropertiesTrait$class;->scalaPropOrElse(Lscala/util/PropertiesTrait;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public scalaPropOrEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 17
    invoke-static {p0, p1}, Lscala/util/PropertiesTrait$class;->scalaPropOrEmpty(Lscala/util/PropertiesTrait;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public scalaPropOrNone(Ljava/lang/String;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lscala/Option<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 17
    invoke-static {p0, p1}, Lscala/util/PropertiesTrait$class;->scalaPropOrNone(Lscala/util/PropertiesTrait;Ljava/lang/String;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public scalaProps()Ljava/util/Properties;
    .locals 1

    .line 17
    iget-boolean v0, p0, Lscala/util/Properties$;->bitmap$0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscala/util/Properties$;->scalaProps:Ljava/util/Properties;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lscala/util/Properties$;->scalaProps$lzycompute()Ljava/util/Properties;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public scalacCmd()Ljava/lang/String;
    .locals 1

    .line 17
    invoke-static {p0}, Lscala/util/PropertiesTrait$class;->scalacCmd(Lscala/util/PropertiesTrait;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 17
    invoke-static {p0, p1, p2}, Lscala/util/PropertiesTrait$class;->setProp(Lscala/util/PropertiesTrait;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public sourceEncoding()Ljava/lang/String;
    .locals 1

    .line 17
    invoke-static {p0}, Lscala/util/PropertiesTrait$class;->sourceEncoding(Lscala/util/PropertiesTrait;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sourceReader()Ljava/lang/String;
    .locals 1

    .line 17
    invoke-static {p0}, Lscala/util/PropertiesTrait$class;->sourceReader(Lscala/util/PropertiesTrait;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tmpDir()Ljava/lang/String;
    .locals 1

    .line 17
    invoke-static {p0}, Lscala/util/PropertiesTrait$class;->tmpDir(Lscala/util/PropertiesTrait;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public userDir()Ljava/lang/String;
    .locals 1

    .line 17
    invoke-static {p0}, Lscala/util/PropertiesTrait$class;->userDir(Lscala/util/PropertiesTrait;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public userHome()Ljava/lang/String;
    .locals 1

    .line 17
    invoke-static {p0}, Lscala/util/PropertiesTrait$class;->userHome(Lscala/util/PropertiesTrait;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public userName()Ljava/lang/String;
    .locals 1

    .line 17
    invoke-static {p0}, Lscala/util/PropertiesTrait$class;->userName(Lscala/util/PropertiesTrait;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public versionMsg()Ljava/lang/String;
    .locals 1

    .line 17
    invoke-static {p0}, Lscala/util/PropertiesTrait$class;->versionMsg(Lscala/util/PropertiesTrait;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public versionNumberString()Ljava/lang/String;
    .locals 1

    .line 17
    invoke-static {p0}, Lscala/util/PropertiesTrait$class;->versionNumberString(Lscala/util/PropertiesTrait;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public versionString()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lscala/util/Properties$;->versionString:Ljava/lang/String;

    return-object v0
.end method
