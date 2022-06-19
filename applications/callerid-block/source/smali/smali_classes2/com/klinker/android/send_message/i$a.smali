.class Lcom/klinker/android/send_message/i$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/klinker/android/send_message/i;->q(Ljava/lang/String;[Ljava/lang/String;JILandroid/os/Parcelable;Landroid/os/Parcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/klinker/android/send_message/i;


# direct methods
.method constructor <init>(Lcom/klinker/android/send_message/i;)V
    .locals 0

    iput-object p1, p0, Lcom/klinker/android/send_message/i$a;->b:Lcom/klinker/android/send_message/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/klinker/android/send_message/i$a;->b:Lcom/klinker/android/send_message/i;

    invoke-static {v0}, Lcom/klinker/android/send_message/i;->a(Lcom/klinker/android/send_message/i;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Message could not be sent"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
