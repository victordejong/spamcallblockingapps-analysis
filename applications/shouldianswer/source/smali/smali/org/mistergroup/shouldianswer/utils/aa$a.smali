.class public final Lorg/mistergroup/shouldianswer/utils/aa$a;
.super Landroid/text/style/ClickableSpan;
.source "TextViewWithLinksHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/utils/aa;->a(Landroid/text/SpannableStringBuilder;Landroid/text/style/URLSpan;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/utils/aa;

.field final synthetic b:Landroid/text/style/URLSpan;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/utils/aa;Landroid/text/style/URLSpan;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/style/URLSpan;",
            ")V"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/utils/aa$a;->a:Lorg/mistergroup/shouldianswer/utils/aa;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/utils/aa$a;->b:Landroid/text/style/URLSpan;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/utils/aa$a;->a:Lorg/mistergroup/shouldianswer/utils/aa;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/utils/aa;->a(Lorg/mistergroup/shouldianswer/utils/aa;)Lkotlin/e/a/b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/utils/aa$a;->b:Landroid/text/style/URLSpan;

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    const-string v1, "span.url"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lkotlin/e/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/o;

    :cond_0
    return-void
.end method
