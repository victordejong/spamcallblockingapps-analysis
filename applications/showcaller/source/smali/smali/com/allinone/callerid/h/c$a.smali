.class Lcom/allinone/callerid/h/c$a;
.super Ljava/lang/Object;
.source "OverlayView.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/m/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/h/c;->z0(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/h/c;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/h/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/h/c$a;->a:Lcom/allinone/callerid/h/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/h/c$a;->a:Lcom/allinone/callerid/h/c;

    invoke-static {p1}, Lcom/allinone/callerid/h/c;->z(Lcom/allinone/callerid/h/c;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/h/c$a;->a:Lcom/allinone/callerid/h/c;

    invoke-static {v0}, Lcom/allinone/callerid/h/c;->C(Lcom/allinone/callerid/h/c;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/h/c$a$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/h/c$a$a;-><init>(Lcom/allinone/callerid/h/c$a;)V

    invoke-static {p1, v0, v1}, Lcom/allinone/callerid/i/a/h/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/allinone/callerid/i/a/h/a;)V

    :cond_0
    return-void
.end method
