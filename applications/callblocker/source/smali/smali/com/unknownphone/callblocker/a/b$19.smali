.class Lcom/unknownphone/callblocker/a/b$19;
.super Ljava/lang/Object;
.source "BlockedFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 191
    iput-object p1, p0, Lcom/unknownphone/callblocker/a/b$19;->a:Lcom/unknownphone/callblocker/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b$19;->a:Lcom/unknownphone/callblocker/a/b;

    iget-object v1, p0, Lcom/unknownphone/callblocker/a/b$19;->a:Lcom/unknownphone/callblocker/a/b;

    invoke-static {v1}, Lcom/unknownphone/callblocker/a/b;->f(Lcom/unknownphone/callblocker/a/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unknownphone/callblocker/a/b;->b(Lcom/unknownphone/callblocker/a/b;Ljava/lang/String;)V

    .line 195
    return-void
.end method
