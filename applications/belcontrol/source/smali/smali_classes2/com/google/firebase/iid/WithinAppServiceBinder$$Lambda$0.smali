.class public final synthetic Lcom/google/firebase/iid/WithinAppServiceBinder$$Lambda$0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field private final arg$1:Lcom/google/firebase/iid/WithinAppServiceConnection$BindRequest;


# direct methods
.method public constructor <init>(Lcom/google/firebase/iid/WithinAppServiceConnection$BindRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/WithinAppServiceBinder$$Lambda$0;->arg$1:Lcom/google/firebase/iid/WithinAppServiceConnection$BindRequest;

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/iid/WithinAppServiceBinder$$Lambda$0;->arg$1:Lcom/google/firebase/iid/WithinAppServiceConnection$BindRequest;

    invoke-static {v0, p1}, Lcom/google/firebase/iid/WithinAppServiceBinder;->lambda$send$0$WithinAppServiceBinder(Lcom/google/firebase/iid/WithinAppServiceConnection$BindRequest;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
