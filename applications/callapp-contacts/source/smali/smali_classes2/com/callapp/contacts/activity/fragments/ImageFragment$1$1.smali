.class Lcom/callapp/contacts/activity/fragments/ImageFragment$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/fragments/ImageFragment$1;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/e/a/j;Lcom/bumptech/glide/load/a;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/fragments/ImageFragment$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/fragments/ImageFragment$1;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/callapp/contacts/activity/fragments/ImageFragment$1$1;->a:Lcom/callapp/contacts/activity/fragments/ImageFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/callapp/contacts/activity/fragments/ImageFragment$1$1;->a:Lcom/callapp/contacts/activity/fragments/ImageFragment$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/fragments/ImageFragment$1;->a:Landroid/view/View;

    const v1, 0x7f0a06ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
