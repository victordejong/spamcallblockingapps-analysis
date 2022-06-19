.class final synthetic Lcom/google/firebase/crashlytics/d/k/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/datatransport/g;


# instance fields
.field private final a:Lcom/google/android/gms/tasks/h;

.field private final b:Lcom/google/firebase/crashlytics/internal/common/n;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/tasks/h;Lcom/google/firebase/crashlytics/internal/common/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/d/k/a;->a:Lcom/google/android/gms/tasks/h;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/d/k/a;->b:Lcom/google/firebase/crashlytics/internal/common/n;

    return-void
.end method

.method public static b(Lcom/google/android/gms/tasks/h;Lcom/google/firebase/crashlytics/internal/common/n;)Lcom/google/android/datatransport/g;
    .locals 1

    new-instance v0, Lcom/google/firebase/crashlytics/d/k/a;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/crashlytics/d/k/a;-><init>(Lcom/google/android/gms/tasks/h;Lcom/google/firebase/crashlytics/internal/common/n;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/k/a;->a:Lcom/google/android/gms/tasks/h;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/k/a;->b:Lcom/google/firebase/crashlytics/internal/common/n;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/crashlytics/d/k/c;->b(Lcom/google/android/gms/tasks/h;Lcom/google/firebase/crashlytics/internal/common/n;Ljava/lang/Exception;)V

    return-void
.end method
