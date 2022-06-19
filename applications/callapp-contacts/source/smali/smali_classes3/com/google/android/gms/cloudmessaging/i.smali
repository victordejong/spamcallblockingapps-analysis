.class final synthetic Lcom/google/android/gms/cloudmessaging/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/cloudmessaging/g;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cloudmessaging/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/i;->a:Lcom/google/android/gms/cloudmessaging/g;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/i;->a:Lcom/google/android/gms/cloudmessaging/g;

    invoke-virtual {v0}, Lcom/google/android/gms/cloudmessaging/g;->c()V

    return-void
.end method
