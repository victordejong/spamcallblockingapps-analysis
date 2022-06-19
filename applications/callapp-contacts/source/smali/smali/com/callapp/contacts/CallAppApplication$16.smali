.class Lcom/callapp/contacts/CallAppApplication$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/CallAppApplication;->a(ZLandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/callapp/contacts/CallAppApplication;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/CallAppApplication;Ljava/lang/Runnable;)V
    .locals 0

    .line 620
    iput-object p1, p0, Lcom/callapp/contacts/CallAppApplication$16;->b:Lcom/callapp/contacts/CallAppApplication;

    iput-object p2, p0, Lcom/callapp/contacts/CallAppApplication$16;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 623
    iget-object v0, p0, Lcom/callapp/contacts/CallAppApplication$16;->b:Lcom/callapp/contacts/CallAppApplication;

    invoke-static {v0}, Lcom/callapp/contacts/CallAppApplication;->f(Lcom/callapp/contacts/CallAppApplication;)Landroid/app/Service;

    move-result-object v0

    if-nez v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/callapp/contacts/CallAppApplication$16;->b:Lcom/callapp/contacts/CallAppApplication;

    iget-object v1, p0, Lcom/callapp/contacts/CallAppApplication$16;->a:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->a(Lcom/callapp/contacts/CallAppApplication;Ljava/lang/Runnable;)V

    return-void

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/CallAppApplication$16;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
