.class final synthetic Lcom/google/firebase/iid/ak;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@20.1.5"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/firebase/iid/ah;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/ah;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/ak;->a:Lcom/google/firebase/iid/ah;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/iid/ak;->a:Lcom/google/firebase/iid/ah;

    invoke-virtual {v0}, Lcom/google/firebase/iid/ah;->c()V

    return-void
.end method
