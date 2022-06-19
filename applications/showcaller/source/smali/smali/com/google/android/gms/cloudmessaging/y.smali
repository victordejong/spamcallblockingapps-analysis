.class final Lcom/google/android/gms/cloudmessaging/y;
.super Lc/c/a/a/b/b/e;
.source "com.google.android.gms:play-services-cloud-messaging@@16.0.0"


# instance fields
.field private final synthetic a:Lcom/google/android/gms/cloudmessaging/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cloudmessaging/b;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/y;->a:Lcom/google/android/gms/cloudmessaging/b;

    invoke-direct {p0, p2}, Lc/c/a/a/b/b/e;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/y;->a:Lcom/google/android/gms/cloudmessaging/b;

    invoke-static {v0, p1}, Lcom/google/android/gms/cloudmessaging/b;->h(Lcom/google/android/gms/cloudmessaging/b;Landroid/os/Message;)V

    return-void
.end method
