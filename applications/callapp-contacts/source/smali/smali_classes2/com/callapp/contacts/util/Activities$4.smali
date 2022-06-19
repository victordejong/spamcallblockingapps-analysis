.class final Lcom/callapp/contacts/util/Activities$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/ActivityResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/Activities;->b(Landroid/app/Activity;Lcom/callapp/contacts/manager/popup/PopupDoneListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/popup/PopupDoneListener;

.field final synthetic b:Lcom/callapp/contacts/util/ReturnToAppTasker;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/popup/PopupDoneListener;Lcom/callapp/contacts/util/ReturnToAppTasker;)V
    .locals 0

    .line 463
    iput-object p1, p0, Lcom/callapp/contacts/util/Activities$4;->a:Lcom/callapp/contacts/manager/popup/PopupDoneListener;

    iput-object p2, p0, Lcom/callapp/contacts/util/Activities$4;->b:Lcom/callapp/contacts/util/ReturnToAppTasker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    .line 466
    iget-object p1, p0, Lcom/callapp/contacts/util/Activities$4;->a:Lcom/callapp/contacts/manager/popup/PopupDoneListener;

    if-eqz p1, :cond_0

    .line 467
    iget-object p1, p0, Lcom/callapp/contacts/util/Activities$4;->b:Lcom/callapp/contacts/util/ReturnToAppTasker;

    invoke-virtual {p1}, Lcom/callapp/contacts/util/ReturnToAppTasker;->b()V

    :cond_0
    return-void
.end method
