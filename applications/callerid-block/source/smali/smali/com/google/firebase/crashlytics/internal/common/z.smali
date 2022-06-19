.class final synthetic Lcom/google/firebase/crashlytics/internal/common/z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/tasks/a;


# instance fields
.field private final a:Lcom/google/firebase/crashlytics/internal/common/b0;


# direct methods
.method private constructor <init>(Lcom/google/firebase/crashlytics/internal/common/b0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/z;->a:Lcom/google/firebase/crashlytics/internal/common/b0;

    return-void
.end method

.method public static b(Lcom/google/firebase/crashlytics/internal/common/b0;)Lcom/google/android/gms/tasks/a;
    .locals 1

    new-instance v0, Lcom/google/firebase/crashlytics/internal/common/z;

    invoke-direct {v0, p0}, Lcom/google/firebase/crashlytics/internal/common/z;-><init>(Lcom/google/firebase/crashlytics/internal/common/b0;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/tasks/g;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/z;->a:Lcom/google/firebase/crashlytics/internal/common/b0;

    invoke-static {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/b0;->a(Lcom/google/firebase/crashlytics/internal/common/b0;Lcom/google/android/gms/tasks/g;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
