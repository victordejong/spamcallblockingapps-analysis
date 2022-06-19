.class final Lcom/google/firebase/iid/m;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@20.1.5"


# instance fields
.field private final a:Landroid/os/Messenger;

.field private final b:Lcom/google/firebase/iid/as;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p1}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 3
    const-string/jumbo v1, "android.os.IMessenger"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/google/firebase/iid/m;->a:Landroid/os/Messenger;

    .line 5
    iput-object v2, p0, Lcom/google/firebase/iid/m;->b:Lcom/google/firebase/iid/as;

    .line 8
    :goto_0
    return-void

    .line 6
    :cond_0
    const-string/jumbo v1, "com.google.android.gms.iid.IMessengerCompat"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    new-instance v0, Lcom/google/firebase/iid/as;

    invoke-direct {v0, p1}, Lcom/google/firebase/iid/as;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/google/firebase/iid/m;->b:Lcom/google/firebase/iid/as;

    .line 8
    iput-object v2, p0, Lcom/google/firebase/iid/m;->a:Landroid/os/Messenger;

    goto :goto_0

    .line 9
    :cond_1
    const-string/jumbo v1, "MessengerIpcClient"

    const-string/jumbo v2, "Invalid interface descriptor: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 9
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method final a(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 11
    iget-object v0, p0, Lcom/google/firebase/iid/m;->a:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/google/firebase/iid/m;->a:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 14
    :goto_0
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/iid/m;->b:Lcom/google/firebase/iid/as;

    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/google/firebase/iid/m;->b:Lcom/google/firebase/iid/as;

    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/as;->a(Landroid/os/Message;)V

    goto :goto_0

    .line 15
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Both messengers are null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
