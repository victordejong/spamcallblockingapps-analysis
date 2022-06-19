.class Lcom/unknownphone/callblocker/a/b$17;
.super Lcom/unknownphone/callblocker/custom/c;
.source "BlockedFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/a/b;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/a/b;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/a/b;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/unknownphone/callblocker/a/b$17;->a:Lcom/unknownphone/callblocker/a/b;

    invoke-direct {p0}, Lcom/unknownphone/callblocker/custom/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b$17;->a:Lcom/unknownphone/callblocker/a/b;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unknownphone/callblocker/a/b;->a(Lcom/unknownphone/callblocker/a/b;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b$17;->a:Lcom/unknownphone/callblocker/a/b;

    sget-object v1, Lcom/unknownphone/callblocker/a/b$b$a;->a:Lcom/unknownphone/callblocker/a/b$b$a;

    invoke-static {v0, v1}, Lcom/unknownphone/callblocker/a/b;->a(Lcom/unknownphone/callblocker/a/b;Lcom/unknownphone/callblocker/a/b$b$a;)V

    .line 172
    return-void
.end method
