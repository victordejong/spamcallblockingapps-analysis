.class final synthetic Lcom/google/android/gms/cloudmessaging/u;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cloud-messaging@@16.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/tasks/h;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/u;->d:Lcom/google/android/gms/tasks/h;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/u;->d:Lcom/google/android/gms/tasks/h;

    invoke-static {v0}, Lcom/google/android/gms/cloudmessaging/b;->i(Lcom/google/android/gms/tasks/h;)V

    return-void
.end method
