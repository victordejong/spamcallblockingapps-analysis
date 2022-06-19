.class final synthetic Lcom/google/android/gms/cloudmessaging/w;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cloud-messaging@@16.0.0"

# interfaces
.implements Lcom/google/android/gms/tasks/f;


# static fields
.field static final a:Lcom/google/android/gms/tasks/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/cloudmessaging/w;

    invoke-direct {v0}, Lcom/google/android/gms/cloudmessaging/w;-><init>()V

    sput-object v0, Lcom/google/android/gms/cloudmessaging/w;->a:Lcom/google/android/gms/tasks/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/tasks/g;
    .locals 0

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p1}, Lcom/google/android/gms/cloudmessaging/b;->c(Landroid/os/Bundle;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method
