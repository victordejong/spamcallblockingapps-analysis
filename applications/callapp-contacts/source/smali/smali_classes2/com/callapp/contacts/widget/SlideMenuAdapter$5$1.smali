.class Lcom/callapp/contacts/widget/SlideMenuAdapter$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/SlideMenuAdapter$5;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/callapp/contacts/widget/SlideMenuAdapter$5;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/SlideMenuAdapter$5;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$5$1;->c:Lcom/callapp/contacts/widget/SlideMenuAdapter$5;

    iput-object p2, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$5$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$5$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 311
    iget-object v0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$5$1;->c:Lcom/callapp/contacts/widget/SlideMenuAdapter$5;

    iget-object v0, v0, Lcom/callapp/contacts/widget/SlideMenuAdapter$5;->a:Lcom/callapp/contacts/widget/SlideMenuAdapter;

    invoke-static {v0}, Lcom/callapp/contacts/widget/SlideMenuAdapter;->d(Lcom/callapp/contacts/widget/SlideMenuAdapter;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$5$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$5$1;->c:Lcom/callapp/contacts/widget/SlideMenuAdapter$5;

    iget-object v0, v0, Lcom/callapp/contacts/widget/SlideMenuAdapter$5;->a:Lcom/callapp/contacts/widget/SlideMenuAdapter;

    invoke-static {v0}, Lcom/callapp/contacts/widget/SlideMenuAdapter;->d(Lcom/callapp/contacts/widget/SlideMenuAdapter;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$5$1;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$5$1;->c:Lcom/callapp/contacts/widget/SlideMenuAdapter$5;

    iget-object v0, v0, Lcom/callapp/contacts/widget/SlideMenuAdapter$5;->a:Lcom/callapp/contacts/widget/SlideMenuAdapter;

    invoke-static {v0}, Lcom/callapp/contacts/widget/SlideMenuAdapter;->d(Lcom/callapp/contacts/widget/SlideMenuAdapter;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0601ec

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 314
    iget-object v0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$5$1;->c:Lcom/callapp/contacts/widget/SlideMenuAdapter$5;

    iget-object v0, v0, Lcom/callapp/contacts/widget/SlideMenuAdapter$5;->a:Lcom/callapp/contacts/widget/SlideMenuAdapter;

    invoke-static {v0}, Lcom/callapp/contacts/widget/SlideMenuAdapter;->e(Lcom/callapp/contacts/widget/SlideMenuAdapter;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$5$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$5$1;->c:Lcom/callapp/contacts/widget/SlideMenuAdapter$5;

    iget-object v0, v0, Lcom/callapp/contacts/widget/SlideMenuAdapter$5;->a:Lcom/callapp/contacts/widget/SlideMenuAdapter;

    invoke-static {v0}, Lcom/callapp/contacts/widget/SlideMenuAdapter;->e(Lcom/callapp/contacts/widget/SlideMenuAdapter;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$5$1;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$5$1;->c:Lcom/callapp/contacts/widget/SlideMenuAdapter$5;

    iget-object v0, v0, Lcom/callapp/contacts/widget/SlideMenuAdapter$5;->a:Lcom/callapp/contacts/widget/SlideMenuAdapter;

    invoke-static {v0}, Lcom/callapp/contacts/widget/SlideMenuAdapter;->e(Lcom/callapp/contacts/widget/SlideMenuAdapter;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0601cc

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
