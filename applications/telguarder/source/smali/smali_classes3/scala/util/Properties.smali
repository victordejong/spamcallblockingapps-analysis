.class public final Lscala/util/Properties;
.super Ljava/lang/Object;
.source "Properties.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u00019;Q!\u0001\u0002\t\u0002\u001d\t!\u0002\u0015:pa\u0016\u0014H/[3t\u0015\t\u0019A!\u0001\u0003vi&d\'\"A\u0003\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001A\u0011\u0001\"C\u0007\u0002\u0005\u0019)!B\u0001E\u0001\u0017\tQ\u0001K]8qKJ$\u0018.Z:\u0014\u0007%a\u0001\u0003\u0005\u0002\u000e\u001d5\tA!\u0003\u0002\u0010\t\t1\u0011I\\=SK\u001a\u0004\"\u0001C\t\n\u0005I\u0011!a\u0004)s_B,\'\u000f^5fgR\u0013\u0018-\u001b;\t\u000bQIA\u0011A\u000b\u0002\rqJg.\u001b;?)\u00059\u0001\"B\u000c\n\t#A\u0012\u0001\u00049s_B\u001c\u0015\r^3h_JLX#A\r\u0011\u0005iyR\"A\u000e\u000b\u0005qi\u0012\u0001\u00027b]\u001eT\u0011AH\u0001\u0005U\u00064\u0018-\u0003\u0002!7\t11\u000b\u001e:j]\u001eDQAI\u0005\u0005\u0012\r\na\u0002]5dW*\u000b\'OQ1tK\u0012|e.F\u0001%!\rQReJ\u0005\u0003Mm\u0011Qa\u00117bgN\u0004$\u0001K\u0017\u0011\u00075I3&\u0003\u0002+\t\t1q\n\u001d;j_:\u0004\"\u0001L\u0017\r\u0001\u0011Ia&IA\u0001\u0002\u0003\u0015\ta\u000c\u0002\u0004?\u0012\n\u0014C\u0001\u00194!\ti\u0011\'\u0003\u00023\t\t9aj\u001c;iS:<\u0007CA\u00075\u0013\t)DAA\u0002B]fDqaN\u0005C\u0002\u0013\u0005\u0001(\u0001\u000bTG\u0006d\u0017mQ8na&dWM\u001d,feNLwN\\\u000b\u0002sA\u0011!(\u0013\u0008\u0003w\u0019s!\u0001P\"\u000f\u0005u\u0012eB\u0001 B\u001b\u0005y$B\u0001!\u0007\u0003\u0019a$o\\8u}%\ta$\u0003\u0002\u0004;%\u0011A)R\u0001\u0004U\u0006\u0014(BA\u0002\u001e\u0013\t9\u0005*\u0001\u0006BiR\u0014\u0018NY;uKNT!\u0001R#\n\u0005)[%\u0001\u0002(b[\u0016T!a\u0012%\t\r5K\u0001\u0015!\u0003:\u0003U\u00196-\u00197b\u0007>l\u0007/\u001b7feZ+\'o]5p]\u0002\u0002"
.end annotation


# direct methods
.method public static ScalaCompilerVersion()Ljava/util/jar/Attributes$Name;
    .locals 1

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0}, Lscala/util/Properties$;->ScalaCompilerVersion()Ljava/util/jar/Attributes$Name;

    move-result-object v0

    return-object v0
.end method

.method public static clearProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0, p0}, Lscala/util/Properties$;->clearProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static copyrightString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0}, Lscala/util/Properties$;->copyrightString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static developmentVersion()Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0}, Lscala/util/Properties$;->developmentVersion()Lscala/Option;

    move-result-object v0

    return-object v0
.end method

.method public static encodingString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0}, Lscala/util/Properties$;->encodingString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static envOrElse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0, p0, p1}, Lscala/util/Properties$;->envOrElse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static envOrNone(Ljava/lang/String;)Lscala/Option;
    .locals 1
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

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0, p0}, Lscala/util/Properties$;->envOrNone(Ljava/lang/String;)Lscala/Option;

    move-result-object p0

    return-object p0
.end method

.method public static envOrSome(Ljava/lang/String;Lscala/Option;)Lscala/Option;
    .locals 1
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

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0, p0, p1}, Lscala/util/Properties$;->envOrSome(Ljava/lang/String;Lscala/Option;)Lscala/Option;

    move-result-object p0

    return-object p0
.end method

.method public static isJavaAtLeast(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0, p0}, Lscala/util/Properties$;->isJavaAtLeast(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isMac()Z
    .locals 1

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0}, Lscala/util/Properties$;->isMac()Z

    move-result v0

    return v0
.end method

.method public static isWin()Z
    .locals 1

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0}, Lscala/util/Properties$;->isWin()Z

    move-result v0

    return v0
.end method

.method public static javaClassPath()Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0}, Lscala/util/Properties$;->javaClassPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static javaHome()Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0}, Lscala/util/Properties$;->javaHome()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static javaSpecName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0}, Lscala/util/Properties$;->javaSpecName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static javaSpecVendor()Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0}, Lscala/util/Properties$;->javaSpecVendor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static javaSpecVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0}, Lscala/util/Properties$;->javaSpecVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static javaVendor()Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0}, Lscala/util/Properties$;->javaVendor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static javaVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0}, Lscala/util/Properties$;->javaVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static javaVmInfo()Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0}, Lscala/util/Properties$;->javaVmInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static javaVmName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0}, Lscala/util/Properties$;->javaVmName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static javaVmVendor()Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0}, Lscala/util/Properties$;->javaVmVendor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static javaVmVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0}, Lscala/util/Properties$;->javaVmVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static jdkHome()Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0}, Lscala/util/Properties$;->jdkHome()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static lineSeparator()Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0}, Lscala/util/Properties$;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0, p0}, Lscala/util/Properties$;->main([Ljava/lang/String;)V

    return-void
.end method

.method public static osName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0}, Lscala/util/Properties$;->osName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static propFilename()Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0}, Lscala/util/Properties$;->propFilename()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static propIsSet(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0, p0}, Lscala/util/Properties$;->propIsSet(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static propIsSetTo(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0, p0, p1}, Lscala/util/Properties$;->propIsSetTo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static propOrElse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0, p0, p1}, Lscala/util/Properties$;->propOrElse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static propOrEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0, p0}, Lscala/util/Properties$;->propOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static propOrFalse(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0, p0}, Lscala/util/Properties$;->propOrFalse(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static propOrNone(Ljava/lang/String;)Lscala/Option;
    .locals 1
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

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0, p0}, Lscala/util/Properties$;->propOrNone(Ljava/lang/String;)Lscala/Option;

    move-result-object p0

    return-object p0
.end method

.method public static propOrNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0, p0}, Lscala/util/Properties$;->propOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static releaseVersion()Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0}, Lscala/util/Properties$;->releaseVersion()Lscala/Option;

    move-result-object v0

    return-object v0
.end method

.method public static scala$util$PropertiesTrait$_setter_$copyrightString_$eq(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0, p0}, Lscala/util/Properties$;->scala$util$PropertiesTrait$_setter_$copyrightString_$eq(Ljava/lang/String;)V

    return-void
.end method

.method public static scala$util$PropertiesTrait$_setter_$developmentVersion_$eq(Lscala/Option;)V
    .locals 1

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0, p0}, Lscala/util/Properties$;->scala$util$PropertiesTrait$_setter_$developmentVersion_$eq(Lscala/Option;)V

    return-void
.end method

.method public static scala$util$PropertiesTrait$_setter_$propFilename_$eq(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0, p0}, Lscala/util/Properties$;->scala$util$PropertiesTrait$_setter_$propFilename_$eq(Ljava/lang/String;)V

    return-void
.end method

.method public static scala$util$PropertiesTrait$_setter_$releaseVersion_$eq(Lscala/Option;)V
    .locals 1

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0, p0}, Lscala/util/Properties$;->scala$util$PropertiesTrait$_setter_$releaseVersion_$eq(Lscala/Option;)V

    return-void
.end method

.method public static scala$util$PropertiesTrait$_setter_$versionString_$eq(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0, p0}, Lscala/util/Properties$;->scala$util$PropertiesTrait$_setter_$versionString_$eq(Ljava/lang/String;)V

    return-void
.end method

.method public static scalaCmd()Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0}, Lscala/util/Properties$;->scalaCmd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static scalaHome()Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0}, Lscala/util/Properties$;->scalaHome()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static scalaPropOrElse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0, p0, p1}, Lscala/util/Properties$;->scalaPropOrElse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static scalaPropOrEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0, p0}, Lscala/util/Properties$;->scalaPropOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static scalaPropOrNone(Ljava/lang/String;)Lscala/Option;
    .locals 1
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

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0, p0}, Lscala/util/Properties$;->scalaPropOrNone(Ljava/lang/String;)Lscala/Option;

    move-result-object p0

    return-object p0
.end method

.method public static scalaProps()Ljava/util/Properties;
    .locals 1

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0}, Lscala/util/Properties$;->scalaProps()Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

.method public static scalacCmd()Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0}, Lscala/util/Properties$;->scalacCmd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0, p0, p1}, Lscala/util/Properties$;->setProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sourceEncoding()Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0}, Lscala/util/Properties$;->sourceEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sourceReader()Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0}, Lscala/util/Properties$;->sourceReader()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static tmpDir()Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0}, Lscala/util/Properties$;->tmpDir()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static userDir()Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0}, Lscala/util/Properties$;->userDir()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static userHome()Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0}, Lscala/util/Properties$;->userHome()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static userName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0}, Lscala/util/Properties$;->userName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static versionMsg()Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0}, Lscala/util/Properties$;->versionMsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static versionNumberString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0}, Lscala/util/Properties$;->versionNumberString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static versionString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0}, Lscala/util/Properties$;->versionString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
