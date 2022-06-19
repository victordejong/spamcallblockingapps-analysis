.class Lcom/callapp/contacts/activity/birthday/BirthdaysActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity$2;->a:Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 83
    iget-object p1, p0, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity$2;->a:Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity$2;->a:Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;

    const-class v2, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method
