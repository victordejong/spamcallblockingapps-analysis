.class Lcom/callapp/contacts/manager/popup/PopupManager$DismissListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/PopupManager$DialogFragmentDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/manager/popup/PopupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DismissListener"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/callapp/contacts/manager/popup/PopupManager;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/manager/popup/PopupManager;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/manager/popup/PopupManager;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/callapp/contacts/manager/popup/PopupManager$DismissListener;->a:Ljava/lang/ref/WeakReference;

    .line 132
    iput-object p2, p0, Lcom/callapp/contacts/manager/popup/PopupManager$DismissListener;->b:Ljava/lang/Class;

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/manager/popup/PopupManager;Ljava/lang/Class;Lcom/callapp/contacts/manager/popup/PopupManager$1;)V
    .locals 0

    .line 125
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/manager/popup/PopupManager$DismissListener;-><init>(Lcom/callapp/contacts/manager/popup/PopupManager;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/manager/popup/BaseDialogFragment;)V
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/callapp/contacts/manager/popup/PopupManager$DismissListener;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/manager/popup/PopupManager;

    .line 140
    iget-object v1, p0, Lcom/callapp/contacts/manager/popup/PopupManager$DismissListener;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 v1, 0x0

    .line 141
    iput-object v1, p0, Lcom/callapp/contacts/manager/popup/PopupManager$DismissListener;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 143
    iget-object v2, p0, Lcom/callapp/contacts/manager/popup/PopupManager$DismissListener;->b:Ljava/lang/Class;

    invoke-static {v0, v2, p1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Lcom/callapp/contacts/manager/popup/PopupManager;Ljava/lang/Class;Lcom/callapp/contacts/manager/popup/BaseDialogFragment;)V

    .line 146
    :cond_0
    iput-object v1, p0, Lcom/callapp/contacts/manager/popup/PopupManager$DismissListener;->b:Ljava/lang/Class;

    :cond_1
    return-void
.end method
