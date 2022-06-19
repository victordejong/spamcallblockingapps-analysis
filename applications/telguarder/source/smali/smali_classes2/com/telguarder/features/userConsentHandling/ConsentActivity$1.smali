.class Lcom/telguarder/features/userConsentHandling/ConsentActivity$1;
.super Ljava/lang/Object;
.source "ConsentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/userConsentHandling/ConsentActivity;->initbUttons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/userConsentHandling/ConsentActivity;


# direct methods
.method constructor <init>(Lcom/telguarder/features/userConsentHandling/ConsentActivity;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/telguarder/features/userConsentHandling/ConsentActivity$1;->this$0:Lcom/telguarder/features/userConsentHandling/ConsentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 65
    iget-object p1, p0, Lcom/telguarder/features/userConsentHandling/ConsentActivity$1;->this$0:Lcom/telguarder/features/userConsentHandling/ConsentActivity;

    invoke-virtual {p1}, Lcom/telguarder/features/userConsentHandling/ConsentActivity;->onNo()V

    return-void
.end method
