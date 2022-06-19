.class final synthetic Lcom/google/firebase/crashlytics/d/j/e;
.super Ljava/lang/Object;
.source "CrashlyticsReportPersistence.java"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field private static final d:Lcom/google/firebase/crashlytics/d/j/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/crashlytics/d/j/e;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/d/j/e;-><init>()V

    sput-object v0, Lcom/google/firebase/crashlytics/d/j/e;->d:Lcom/google/firebase/crashlytics/d/j/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/google/firebase/crashlytics/d/j/e;->d:Lcom/google/firebase/crashlytics/d/j/e;

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-static {p1, p2}, Lcom/google/firebase/crashlytics/d/j/g;->w(Ljava/io/File;Ljava/io/File;)I

    move-result p1

    return p1
.end method
