.class final synthetic Lcom/google/firebase/crashlytics/internal/common/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/FilenameFilter;


# static fields
.field private static final a:Lcom/google/firebase/crashlytics/internal/common/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/crashlytics/internal/common/h;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/internal/common/h;-><init>()V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/common/h;->a:Lcom/google/firebase/crashlytics/internal/common/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/io/FilenameFilter;
    .locals 1

    sget-object v0, Lcom/google/firebase/crashlytics/internal/common/h;->a:Lcom/google/firebase/crashlytics/internal/common/h;

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/google/firebase/crashlytics/internal/common/i;->K(Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
