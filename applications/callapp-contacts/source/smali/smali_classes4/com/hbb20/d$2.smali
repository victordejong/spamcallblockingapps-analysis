.class final Lcom/hbb20/d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hbb20/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hbb20/d;


# direct methods
.method constructor <init>(Lcom/hbb20/d;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/hbb20/d$2;->a:Lcom/hbb20/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .line 90
    iget-object p2, p0, Lcom/hbb20/d$2;->a:Lcom/hbb20/d;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1123
    iget-object p4, p2, Lcom/hbb20/d;->c:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1124
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    .line 1127
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p4

    const/4 v1, 0x0

    if-lez p4, :cond_0

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result p4

    const/16 v2, 0x2b

    if-ne p4, v2, :cond_0

    const/4 p4, 0x1

    .line 1128
    invoke-virtual {p3, p4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 1131
    :cond_0
    invoke-virtual {p2, p3}, Lcom/hbb20/d;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p2, Lcom/hbb20/d;->a:Ljava/util/List;

    .line 1133
    iget-object p3, p2, Lcom/hbb20/d;->a:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-nez p3, :cond_1

    .line 1134
    iget-object p3, p2, Lcom/hbb20/d;->c:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1136
    :cond_1
    invoke-virtual {p2}, Lcom/hbb20/d;->notifyDataSetChanged()V

    .line 91
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 92
    iget-object p1, p0, Lcom/hbb20/d$2;->a:Lcom/hbb20/d;

    iget-object p1, p1, Lcom/hbb20/d;->j:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 94
    :cond_2
    iget-object p1, p0, Lcom/hbb20/d$2;->a:Lcom/hbb20/d;

    iget-object p1, p1, Lcom/hbb20/d;->j:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
