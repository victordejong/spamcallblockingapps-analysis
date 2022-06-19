.class final Landroidx/appcompat/widget/s;
.super Ljava/lang/Object;
.source "AppCompatTextClassifierHelper.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/view/textclassifier/TextClassifier;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Landroidx/core/g/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/appcompat/widget/s;->a:Landroid/widget/TextView;

    .line 44
    return-void
.end method


# virtual methods
.method public a()Landroid/view/textclassifier/TextClassifier;
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Landroidx/appcompat/widget/s;->b:Landroid/view/textclassifier/TextClassifier;

    if-nez v0, :cond_1

    .line 63
    iget-object v0, p0, Landroidx/appcompat/widget/s;->a:Landroid/widget/TextView;

    .line 64
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/textclassifier/TextClassificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassificationManager;

    .line 65
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationManager;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    .line 68
    :cond_0
    sget-object v0, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/s;->b:Landroid/view/textclassifier/TextClassifier;

    goto :goto_0
.end method

.method public a(Landroid/view/textclassifier/TextClassifier;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Landroidx/appcompat/widget/s;->b:Landroid/view/textclassifier/TextClassifier;

    .line 52
    return-void
.end method
