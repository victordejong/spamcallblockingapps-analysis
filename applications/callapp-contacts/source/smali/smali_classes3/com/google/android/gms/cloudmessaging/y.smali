.class final Lcom/google/android/gms/cloudmessaging/y;
.super Lcom/google/android/gms/internal/b/e;
.source "SourceFile"


# instance fields
.field private final synthetic a:Lcom/google/android/gms/cloudmessaging/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cloudmessaging/b;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/y;->a:Lcom/google/android/gms/cloudmessaging/b;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/b/e;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/y;->a:Lcom/google/android/gms/cloudmessaging/b;

    invoke-static {v0, p1}, Lcom/google/android/gms/cloudmessaging/b;->a(Lcom/google/android/gms/cloudmessaging/b;Landroid/os/Message;)V

    return-void
.end method
