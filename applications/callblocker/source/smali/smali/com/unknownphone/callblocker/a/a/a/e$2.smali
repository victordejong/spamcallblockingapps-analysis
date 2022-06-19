.class Lcom/unknownphone/callblocker/a/a/a/e$2;
.super Lcom/unknownphone/callblocker/custom/c;
.source "ContactsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/a/a/a/e;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/a/a/a/e;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/a/a/a/e;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/unknownphone/callblocker/a/a/a/e$2;->a:Lcom/unknownphone/callblocker/a/a/a/e;

    invoke-direct {p0}, Lcom/unknownphone/callblocker/custom/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/e$2;->a:Lcom/unknownphone/callblocker/a/a/a/e;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unknownphone/callblocker/a/a/a/e;->a(Lcom/unknownphone/callblocker/a/a/a/e;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/e$2;->a:Lcom/unknownphone/callblocker/a/a/a/e;

    invoke-static {v0}, Lcom/unknownphone/callblocker/a/a/a/e;->c(Lcom/unknownphone/callblocker/a/a/a/e;)V

    .line 104
    return-void
.end method
