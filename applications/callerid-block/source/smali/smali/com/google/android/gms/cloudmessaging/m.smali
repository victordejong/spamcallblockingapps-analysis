.class final synthetic Lcom/google/android/gms/cloudmessaging/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/gms/cloudmessaging/g;

.field private final c:Lcom/google/android/gms/cloudmessaging/q;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cloudmessaging/g;Lcom/google/android/gms/cloudmessaging/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/m;->b:Lcom/google/android/gms/cloudmessaging/g;

    iput-object p2, p0, Lcom/google/android/gms/cloudmessaging/m;->c:Lcom/google/android/gms/cloudmessaging/q;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/m;->b:Lcom/google/android/gms/cloudmessaging/g;

    iget-object v1, p0, Lcom/google/android/gms/cloudmessaging/m;->c:Lcom/google/android/gms/cloudmessaging/q;

    iget v1, v1, Lcom/google/android/gms/cloudmessaging/q;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cloudmessaging/g;->b(I)V

    return-void
.end method
