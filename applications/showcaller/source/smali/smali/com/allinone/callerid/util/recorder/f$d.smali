.class Lcom/allinone/callerid/util/recorder/f$d;
.super Ljava/lang/Object;
.source "RecorderUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/util/recorder/f;->v(Landroid/app/Activity;Lcom/allinone/callerid/i/a/d;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/i/a/d;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/i/a/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/util/recorder/f$d;->d:Lcom/allinone/callerid/i/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/util/recorder/f$d;->d:Lcom/allinone/callerid/i/a/d;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/allinone/callerid/i/a/d;->a()V

    :cond_0
    return-void
.end method
