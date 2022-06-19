.class public final synthetic Lcom/google/firebase/iid/WithinAppServiceConnection$BindRequest$$Lambda$0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/google/firebase/iid/WithinAppServiceConnection$BindRequest;


# direct methods
.method public constructor <init>(Lcom/google/firebase/iid/WithinAppServiceConnection$BindRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/WithinAppServiceConnection$BindRequest$$Lambda$0;->arg$1:Lcom/google/firebase/iid/WithinAppServiceConnection$BindRequest;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/iid/WithinAppServiceConnection$BindRequest$$Lambda$0;->arg$1:Lcom/google/firebase/iid/WithinAppServiceConnection$BindRequest;

    invoke-virtual {v0}, Lcom/google/firebase/iid/WithinAppServiceConnection$BindRequest;->lambda$arrangeTimeout$0$WithinAppServiceConnection$BindRequest()V

    return-void
.end method
