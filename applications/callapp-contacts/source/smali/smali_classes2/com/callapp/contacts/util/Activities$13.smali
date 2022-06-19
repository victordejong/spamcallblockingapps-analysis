.class final Lcom/callapp/contacts/util/Activities$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/ActivityResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/Activities;->c(Landroid/app/Activity;Lcom/callapp/contacts/manager/popup/PopupDoneListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/util/ReturnToAppTasker;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ReturnToAppTasker;)V
    .locals 0

    .line 1293
    iput-object p1, p0, Lcom/callapp/contacts/util/Activities$13;->a:Lcom/callapp/contacts/util/ReturnToAppTasker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    .line 1296
    iget-object p1, p0, Lcom/callapp/contacts/util/Activities$13;->a:Lcom/callapp/contacts/util/ReturnToAppTasker;

    invoke-virtual {p1}, Lcom/callapp/contacts/util/ReturnToAppTasker;->b()V

    return-void
.end method
