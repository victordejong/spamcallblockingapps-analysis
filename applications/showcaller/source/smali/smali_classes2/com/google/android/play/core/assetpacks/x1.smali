.class final synthetic Lcom/google/android/play/core/assetpacks/x1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FilenameFilter;


# static fields
.field static final a:Ljava/io/FilenameFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/play/core/assetpacks/x1;

    invoke-direct {v0}, Lcom/google/android/play/core/assetpacks/x1;-><init>()V

    sput-object v0, Lcom/google/android/play/core/assetpacks/x1;->a:Ljava/io/FilenameFilter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p2}, Lcom/google/android/play/core/assetpacks/y1;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
