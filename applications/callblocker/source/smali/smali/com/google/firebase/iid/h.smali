.class final synthetic Lcom/google/firebase/iid/h;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@20.1.5"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final a:Lcom/google/firebase/iid/e;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/h;->a:Lcom/google/firebase/iid/e;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/iid/h;->a:Lcom/google/firebase/iid/e;

    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/e;->a(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method
