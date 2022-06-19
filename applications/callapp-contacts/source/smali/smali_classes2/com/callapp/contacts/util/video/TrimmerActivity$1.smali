.class Lcom/callapp/contacts/util/video/TrimmerActivity$1;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/video/TrimmerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/util/video/TrimmerActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/video/TrimmerActivity;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/callapp/contacts/util/video/TrimmerActivity$1;->a:Lcom/callapp/contacts/util/video/TrimmerActivity;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    .line 102
    iget-object p1, p0, Lcom/callapp/contacts/util/video/TrimmerActivity$1;->a:Lcom/callapp/contacts/util/video/TrimmerActivity;

    const/16 v0, -0x64

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/util/video/TrimmerActivity;->setResult(I)V

    .line 103
    iget-object p1, p0, Lcom/callapp/contacts/util/video/TrimmerActivity$1;->a:Lcom/callapp/contacts/util/video/TrimmerActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/util/video/TrimmerActivity;->finish()V

    return-void
.end method
