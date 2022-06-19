.class final Lcom/callapp/contacts/util/Activities$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 499
    iput-object p1, p0, Lcom/callapp/contacts/util/Activities$6;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClickListener(Landroid/app/Activity;)V
    .locals 0

    .line 502
    iget-object p1, p0, Lcom/callapp/contacts/util/Activities$6;->a:Landroid/app/Activity;

    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->b(Landroid/app/Activity;)V

    return-void
.end method
