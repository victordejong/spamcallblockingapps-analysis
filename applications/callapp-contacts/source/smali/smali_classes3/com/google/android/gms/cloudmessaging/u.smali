.class final synthetic Lcom/google/android/gms/cloudmessaging/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/tasks/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/u;->a:Lcom/google/android/gms/tasks/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/u;->a:Lcom/google/android/gms/tasks/i;

    invoke-static {v0}, Lcom/google/android/gms/cloudmessaging/b;->a(Lcom/google/android/gms/tasks/i;)V

    return-void
.end method
