.class final synthetic Lcom/google/firebase/iid/l;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@20.1.5"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/firebase/iid/e;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/l;->a:Lcom/google/firebase/iid/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1
    iget-object v0, p0, Lcom/google/firebase/iid/l;->a:Lcom/google/firebase/iid/e;

    .line 2
    const/4 v1, 0x2

    const-string/jumbo v2, "Service disconnected"

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/iid/e;->a(ILjava/lang/String;)V

    .line 3
    return-void
.end method
