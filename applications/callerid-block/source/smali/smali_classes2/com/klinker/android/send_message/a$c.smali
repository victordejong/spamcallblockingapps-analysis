.class final Lcom/klinker/android/send_message/a$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/klinker/android/send_message/a;->j(Landroid/content/Context;Ljava/util/ArrayList;Lcom/klinker/android/send_message/a$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/util/ArrayList;

.field final synthetic d:Lcom/klinker/android/send_message/a$e;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/klinker/android/send_message/a$e;)V
    .locals 0

    iput-object p1, p0, Lcom/klinker/android/send_message/a$c;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/klinker/android/send_message/a$c;->c:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/klinker/android/send_message/a$c;->d:Lcom/klinker/android/send_message/a$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/klinker/android/send_message/a$c;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/klinker/android/send_message/a$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/klinker/android/send_message/a$d;

    invoke-static {v0, p2}, Lcom/klinker/android/send_message/a;->b(Landroid/content/Context;Lcom/klinker/android/send_message/a$d;)V

    iget-object p2, p0, Lcom/klinker/android/send_message/a$c;->d:Lcom/klinker/android/send_message/a$e;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/klinker/android/send_message/a$e;->a()V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
