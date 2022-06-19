.class Lcom/callapp/contacts/manager/CallAppClipboardManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/CallAppClipboardManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/CallAppClipboardManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/CallAppClipboardManager;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/callapp/contacts/manager/CallAppClipboardManager$1;->a:Lcom/callapp/contacts/manager/CallAppClipboardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/callapp/contacts/manager/CallAppClipboardManager$1;->a:Lcom/callapp/contacts/manager/CallAppClipboardManager;

    invoke-static {v0}, Lcom/callapp/contacts/manager/CallAppClipboardManager;->a(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    return-void
.end method
