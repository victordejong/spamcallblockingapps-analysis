.class public Lcom/google/firebase/crashlytics/d/k/c;
.super Ljava/lang/Object;
.source "DataTransportCrashlyticsReportSender.java"


# static fields
.field private static final a:Lcom/google/firebase/crashlytics/d/h/x/h;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:Lcom/google/android/datatransport/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/datatransport/d<",
            "Lcom/google/firebase/crashlytics/d/h/v;",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final e:Lcom/google/android/datatransport/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/datatransport/e<",
            "Lcom/google/firebase/crashlytics/d/h/v;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/android/datatransport/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/datatransport/d<",
            "Lcom/google/firebase/crashlytics/d/h/v;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/firebase/crashlytics/d/h/x/h;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/d/h/x/h;-><init>()V

    sput-object v0, Lcom/google/firebase/crashlytics/d/k/c;->a:Lcom/google/firebase/crashlytics/d/h/x/h;

    const-string v0, "hts/cahyiseot-agolai.o/1frlglgc/aclg"

    const-string v1, "tp:/rsltcrprsp.ogepscmv/ieo/eaybtho"

    .line 2
    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/d/k/c;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/d/k/c;->b:Ljava/lang/String;

    const-string v0, "AzSBpY4F0rHiHFdinTvM"

    const-string v1, "IayrSTFL9eJ69YeSUO2"

    .line 3
    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/d/k/c;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/d/k/c;->c:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/google/firebase/crashlytics/d/k/b;->b()Lcom/google/android/datatransport/d;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/d/k/c;->d:Lcom/google/android/datatransport/d;

    return-void
.end method

.method constructor <init>(Lcom/google/android/datatransport/e;Lcom/google/android/datatransport/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/datatransport/e<",
            "Lcom/google/firebase/crashlytics/d/h/v;",
            ">;",
            "Lcom/google/android/datatransport/d<",
            "Lcom/google/firebase/crashlytics/d/h/v;",
            "[B>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/crashlytics/d/k/c;->e:Lcom/google/android/datatransport/e;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/crashlytics/d/k/c;->f:Lcom/google/android/datatransport/d;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/firebase/crashlytics/d/k/c;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/google/android/datatransport/h/r;->f(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/google/android/datatransport/h/r;->c()Lcom/google/android/datatransport/h/r;

    move-result-object p0

    new-instance v0, Lcom/google/android/datatransport/cct/a;

    sget-object v1, Lcom/google/firebase/crashlytics/d/k/c;->b:Ljava/lang/String;

    sget-object v2, Lcom/google/firebase/crashlytics/d/k/c;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/datatransport/cct/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/datatransport/h/r;->g(Lcom/google/android/datatransport/h/e;)Lcom/google/android/datatransport/f;

    move-result-object p0

    const-class v0, Lcom/google/firebase/crashlytics/d/h/v;

    const-string v1, "json"

    .line 4
    invoke-static {v1}, Lcom/google/android/datatransport/b;->b(Ljava/lang/String;)Lcom/google/android/datatransport/b;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/crashlytics/d/k/c;->d:Lcom/google/android/datatransport/d;

    const-string v3, "FIREBASE_CRASHLYTICS_REPORT"

    .line 5
    invoke-interface {p0, v3, v0, v1, v2}, Lcom/google/android/datatransport/f;->a(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/datatransport/b;Lcom/google/android/datatransport/d;)Lcom/google/android/datatransport/e;

    move-result-object p0

    .line 6
    new-instance v0, Lcom/google/firebase/crashlytics/d/k/c;

    invoke-direct {v0, p0, v2}, Lcom/google/firebase/crashlytics/d/k/c;-><init>(Lcom/google/android/datatransport/e;Lcom/google/android/datatransport/d;)V

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/tasks/h;Lcom/google/firebase/crashlytics/internal/common/n;Ljava/lang/Exception;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0, p2}, Lcom/google/android/gms/tasks/h;->d(Ljava/lang/Exception;)Z

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/h;->e(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic c(Lcom/google/firebase/crashlytics/d/h/v;)[B
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/crashlytics/d/k/c;->a:Lcom/google/firebase/crashlytics/d/h/x/h;

    invoke-virtual {v0, p0}, Lcom/google/firebase/crashlytics/d/h/x/h;->E(Lcom/google/firebase/crashlytics/d/h/v;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    if-ltz v0, :cond_2

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid input received"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public e(Lcom/google/firebase/crashlytics/internal/common/n;)Lcom/google/android/gms/tasks/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/internal/common/n;",
            ")",
            "Lcom/google/android/gms/tasks/g<",
            "Lcom/google/firebase/crashlytics/internal/common/n;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/common/n;->b()Lcom/google/firebase/crashlytics/d/h/v;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/gms/tasks/h;

    invoke-direct {v1}, Lcom/google/android/gms/tasks/h;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/google/firebase/crashlytics/d/k/c;->e:Lcom/google/android/datatransport/e;

    .line 4
    invoke-static {v0}, Lcom/google/android/datatransport/c;->e(Ljava/lang/Object;)Lcom/google/android/datatransport/c;

    move-result-object v0

    invoke-static {v1, p1}, Lcom/google/firebase/crashlytics/d/k/a;->b(Lcom/google/android/gms/tasks/h;Lcom/google/firebase/crashlytics/internal/common/n;)Lcom/google/android/datatransport/g;

    move-result-object p1

    .line 5
    invoke-interface {v2, v0, p1}, Lcom/google/android/datatransport/e;->b(Lcom/google/android/datatransport/c;Lcom/google/android/datatransport/g;)V

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/h;->a()Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method
