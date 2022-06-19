.class final Lcom/klinker/android/send_message/a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/klinker/android/send_message/a;->j(Landroid/content/Context;Ljava/util/ArrayList;Lcom/klinker/android/send_message/a$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/klinker/android/send_message/a$e;


# direct methods
.method constructor <init>(Lcom/klinker/android/send_message/a$e;)V
    .locals 0

    iput-object p1, p0, Lcom/klinker/android/send_message/a$b;->b:Lcom/klinker/android/send_message/a$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/klinker/android/send_message/a$b;->b:Lcom/klinker/android/send_message/a$e;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/klinker/android/send_message/a$e;->a()V

    :cond_0
    return-void
.end method
