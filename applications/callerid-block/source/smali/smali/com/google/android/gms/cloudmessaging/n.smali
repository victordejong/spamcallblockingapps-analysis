.class final synthetic Lcom/google/android/gms/cloudmessaging/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/gms/cloudmessaging/g;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cloudmessaging/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/n;->b:Lcom/google/android/gms/cloudmessaging/g;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/n;->b:Lcom/google/android/gms/cloudmessaging/g;

    const/4 v1, 0x2

    const-string v2, "Service disconnected"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cloudmessaging/g;->c(ILjava/lang/String;)V

    return-void
.end method
