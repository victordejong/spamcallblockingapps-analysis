.class final Lcom/klinker/android/send_message/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/klinker/android/send_message/a;->d(Landroid/content/Context;Lcom/klinker/android/send_message/a$e;)V
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

    iput-object p1, p0, Lcom/klinker/android/send_message/a$a;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/klinker/android/send_message/a$a;->c:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/klinker/android/send_message/a$a;->d:Lcom/klinker/android/send_message/a$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/klinker/android/send_message/a$a;->b:Landroid/content/Context;

    iget-object p2, p0, Lcom/klinker/android/send_message/a$a;->c:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/klinker/android/send_message/a$a;->d:Lcom/klinker/android/send_message/a$e;

    invoke-static {p1, p2, v0}, Lcom/klinker/android/send_message/a;->a(Landroid/content/Context;Ljava/util/ArrayList;Lcom/klinker/android/send_message/a$e;)V

    return-void
.end method
