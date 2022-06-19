.class Lcom/allinone/callerid/b/z/d$a$a;
.super Ljava/lang/Object;
.source "CustomAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/b/z/d$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/b/z/d$a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/b/z/d$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/z/d$a$a;->d:Lcom/allinone/callerid/b/z/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
