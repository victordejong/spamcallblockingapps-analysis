.class public final synthetic Lcom/callapp/contacts/manager/-$$Lambda$CallAppClipboardManager$RE9fCGcpt5r0U_ySexY9UQ6NHIw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/manager/-$$Lambda$CallAppClipboardManager$RE9fCGcpt5r0U_ySexY9UQ6NHIw;->f$0:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/callapp/contacts/manager/-$$Lambda$CallAppClipboardManager$RE9fCGcpt5r0U_ySexY9UQ6NHIw;->f$0:Landroid/content/Intent;

    invoke-static {v0}, Lcom/callapp/contacts/manager/CallAppClipboardManager;->lambda$RE9fCGcpt5r0U_ySexY9UQ6NHIw(Landroid/content/Intent;)V

    return-void
.end method
