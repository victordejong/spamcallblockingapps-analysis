.class Lcom/google/android/material/snackbar/b$1;
.super Ljava/lang/Object;
.source "SnackbarManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/snackbar/b;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/snackbar/b;


# direct methods
.method constructor <init>(Lcom/google/android/material/snackbar/b;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/android/material/snackbar/b$1;->a:Lcom/google/android/material/snackbar/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .prologue
    .line 57
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 62
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 59
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/material/snackbar/b$1;->a:Lcom/google/android/material/snackbar/b;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/snackbar/b$b;

    invoke-virtual {v1, v0}, Lcom/google/android/material/snackbar/b;->a(Lcom/google/android/material/snackbar/b$b;)V

    .line 60
    const/4 v0, 0x1

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
