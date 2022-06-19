.class final synthetic Lcom/google/firebase/messaging/b0;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@21.1.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/firebase/messaging/c0;


# direct methods
.method constructor <init>(Lcom/google/firebase/messaging/c0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/b0;->a:Lcom/google/firebase/messaging/c0;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/b0;->a:Lcom/google/firebase/messaging/c0;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/c0;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
