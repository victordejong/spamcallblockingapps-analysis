.class Lcom/telguarder/features/intro/IntroPage1$1;
.super Ljava/lang/Object;
.source "IntroPage1.java"

# interfaces
.implements Lorg/bluecabin/textoo/LinksHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/intro/IntroPage1;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/intro/IntroPage1;


# direct methods
.method constructor <init>(Lcom/telguarder/features/intro/IntroPage1;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/telguarder/features/intro/IntroPage1$1;->this$0:Lcom/telguarder/features/intro/IntroPage1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Ljava/lang/String;)Z
    .locals 1

    .line 68
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string p1, "privacy:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    const-string p1, "terms:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/telguarder/features/intro/IntroPage1$1;->this$0:Lcom/telguarder/features/intro/IntroPage1;

    invoke-virtual {p1}, Lcom/telguarder/features/intro/IntroPage1;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    iget-object p2, p0, Lcom/telguarder/features/intro/IntroPage1$1;->this$0:Lcom/telguarder/features/intro/IntroPage1;

    invoke-static {p2}, Lcom/telguarder/features/intro/IntroPage1;->access$000(Lcom/telguarder/features/intro/IntroPage1;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/telguarder/features/intro/IntroLegalInfoWebView;->openLegalInfo(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)V

    return v0

    .line 73
    :cond_1
    iget-object p1, p0, Lcom/telguarder/features/intro/IntroPage1$1;->this$0:Lcom/telguarder/features/intro/IntroPage1;

    invoke-virtual {p1}, Lcom/telguarder/features/intro/IntroPage1;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    iget-object p2, p0, Lcom/telguarder/features/intro/IntroPage1$1;->this$0:Lcom/telguarder/features/intro/IntroPage1;

    invoke-static {p2}, Lcom/telguarder/features/intro/IntroPage1;->access$100(Lcom/telguarder/features/intro/IntroPage1;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/telguarder/features/intro/IntroLegalInfoWebView;->openLegalInfo(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)V

    return v0
.end method
