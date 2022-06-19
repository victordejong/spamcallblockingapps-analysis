.class final synthetic Lcom/google/android/gms/cloudmessaging/j;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cloud-messaging@@16.0.0"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final d:Lcom/google/android/gms/cloudmessaging/g;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cloudmessaging/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/j;->d:Lcom/google/android/gms/cloudmessaging/g;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/j;->d:Lcom/google/android/gms/cloudmessaging/g;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cloudmessaging/g;->d(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
