.class Lcom/telguarder/features/userConsentHandling/NumberLookupConsentActivity$1;
.super Ljava/lang/Object;
.source "NumberLookupConsentActivity.java"

# interfaces
.implements Lorg/bluecabin/textoo/LinksHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/userConsentHandling/NumberLookupConsentActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/userConsentHandling/NumberLookupConsentActivity;


# direct methods
.method constructor <init>(Lcom/telguarder/features/userConsentHandling/NumberLookupConsentActivity;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/telguarder/features/userConsentHandling/NumberLookupConsentActivity$1;->this$0:Lcom/telguarder/features/userConsentHandling/NumberLookupConsentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Ljava/lang/String;)Z
    .locals 0

    .line 51
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string p1, "privacy:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/telguarder/features/userConsentHandling/NumberLookupConsentActivity$1;->this$0:Lcom/telguarder/features/userConsentHandling/NumberLookupConsentActivity;

    invoke-static {p1}, Lcom/telguarder/features/userConsentHandling/NumberLookupConsentActivity;->access$000(Lcom/telguarder/features/userConsentHandling/NumberLookupConsentActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/telguarder/features/userConsentHandling/PolicyWebView;->openPolicy(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
