.class public Lcom/verizon/ads/webview/MediaUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/webview/MediaUtils$PlayVideoListener;,
        Lcom/verizon/ads/webview/MediaUtils$SavePictureListener;
    }
.end annotation


# static fields
.field private static final a:Lcom/verizon/ads/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/verizon/ads/webview/MediaUtils;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/webview/MediaUtils;->a:Lcom/verizon/ads/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/verizon/ads/Logger;
    .locals 1

    .line 28
    sget-object v0, Lcom/verizon/ads/webview/MediaUtils;->a:Lcom/verizon/ads/Logger;

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .line 184
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    .line 185
    invoke-virtual {p0}, Landroid/content/Context;->getExternalMediaDirs()[Ljava/io/File;

    move-result-object v0

    .line 187
    array-length v2, v0

    if-lez v2, :cond_0

    .line 188
    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 191
    :cond_1
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 197
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 198
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 199
    invoke-virtual {v2, p0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 201
    sget-object v1, Lcom/verizon/ads/webview/MediaUtils;->a:Lcom/verizon/ads/Logger;

    const-string v2, "Could not retrieve the application label"

    invoke-virtual {v1, v2, p0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, "Saved"

    :goto_1
    if-eqz v0, :cond_2

    .line 205
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Verizon"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-object v0, v1

    :cond_2
    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/io/File;Lcom/verizon/ads/webview/MediaUtils$SavePictureListener;)V
    .locals 1

    const/4 v0, 0x1

    .line 28
    invoke-static {p0, p1, p2, v0}, Lcom/verizon/ads/webview/MediaUtils;->a(Landroid/content/Context;Ljava/io/File;Lcom/verizon/ads/webview/MediaUtils$SavePictureListener;Z)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/io/File;Lcom/verizon/ads/webview/MediaUtils$SavePictureListener;Z)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/verizon/ads/webview/MediaUtils$2;

    invoke-direct {v1, p3, p1, p2}, Lcom/verizon/ads/webview/MediaUtils$2;-><init>(ZLjava/io/File;Lcom/verizon/ads/webview/MediaUtils$SavePictureListener;)V

    const/4 p1, 0x0

    invoke-static {p0, v0, p1, v1}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    return-void
.end method

.method public static savePicture(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/verizon/ads/webview/MediaUtils$SavePictureListener;)V
    .locals 3

    if-nez p3, :cond_0

    .line 51
    sget-object p0, Lcom/verizon/ads/webview/MediaUtils;->a:Lcom/verizon/ads/Logger;

    const-string p1, "PictureListener is required"

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 56
    :cond_0
    new-instance v0, Lcom/verizon/ads/EnvironmentInfo;

    invoke-direct {v0, p0}, Lcom/verizon/ads/EnvironmentInfo;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-virtual {v0}, Lcom/verizon/ads/EnvironmentInfo;->getDeviceInfo()Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->isExternalStorageWritable()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "Storage not mounted, cannot add image to photo library"

    .line 59
    invoke-interface {p3, p0}, Lcom/verizon/ads/webview/MediaUtils$SavePictureListener;->onError(Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    const-string p0, "url is required"

    .line 65
    invoke-interface {p3, p0}, Lcom/verizon/ads/webview/MediaUtils$SavePictureListener;->onError(Ljava/lang/String;)V

    return-void

    .line 70
    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 72
    invoke-static {p0}, Lcom/verizon/ads/webview/MediaUtils;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_3

    const-string p0, "Cannot access pictures directory"

    .line 75
    invoke-interface {p3, p0}, Lcom/verizon/ads/webview/MediaUtils$SavePictureListener;->onError(Ljava/lang/String;)V

    return-void

    :cond_3
    if-nez p2, :cond_4

    .line 83
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/verizon/ads/utils/IOUtils;->getUniqueFileName(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    goto :goto_0

    .line 85
    :cond_4
    invoke-static {v1, p2}, Lcom/verizon/ads/utils/IOUtils;->getUniqueFileName(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    :goto_0
    if-nez p2, :cond_5

    const-string p0, "Unable to store photo"

    .line 89
    invoke-interface {p3, p0}, Lcom/verizon/ads/webview/MediaUtils$SavePictureListener;->onError(Ljava/lang/String;)V

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 94
    new-instance v1, Lcom/verizon/ads/webview/MediaUtils$1;

    invoke-direct {v1, p0, p3}, Lcom/verizon/ads/webview/MediaUtils$1;-><init>(Landroid/content/Context;Lcom/verizon/ads/webview/MediaUtils$SavePictureListener;)V

    invoke-static {p1, v0, p2, v1}, Lcom/verizon/ads/utils/IOUtils;->downloadFile(Ljava/lang/String;Ljava/lang/Integer;Ljava/io/File;Lcom/verizon/ads/utils/IOUtils$DownloadListener;)V

    return-void

    .line 114
    :cond_6
    new-instance p1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_7

    .line 116
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "No file found at "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/verizon/ads/webview/MediaUtils$SavePictureListener;->onError(Ljava/lang/String;)V

    return-void

    :cond_7
    const/4 p2, 0x0

    .line 121
    invoke-static {p0, p1, p3, p2}, Lcom/verizon/ads/webview/MediaUtils;->a(Landroid/content/Context;Ljava/io/File;Lcom/verizon/ads/webview/MediaUtils$SavePictureListener;Z)V

    return-void
.end method

.method public static startVideoPlayer(Landroid/content/Context;Ljava/lang/String;Lcom/verizon/ads/webview/MediaUtils$PlayVideoListener;)V
    .locals 2

    if-nez p2, :cond_0

    .line 130
    sget-object p0, Lcom/verizon/ads/webview/MediaUtils;->a:Lcom/verizon/ads/Logger;

    const-string p1, "VideoListener is required"

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "url is required"

    .line 136
    invoke-interface {p2, p0}, Lcom/verizon/ads/webview/MediaUtils$PlayVideoListener;->onError(Ljava/lang/String;)V

    return-void

    .line 141
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 143
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "video/*"

    .line 144
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    invoke-static {p0, v0}, Lcom/verizon/ads/support/utils/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 147
    invoke-interface {p2, p1}, Lcom/verizon/ads/webview/MediaUtils$PlayVideoListener;->onVideoStarted(Landroid/net/Uri;)V

    return-void

    :cond_2
    const-string p0, "No video application installed"

    .line 149
    invoke-interface {p2, p0}, Lcom/verizon/ads/webview/MediaUtils$PlayVideoListener;->onError(Ljava/lang/String;)V

    return-void
.end method
