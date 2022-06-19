.class Lcom/callapp/contacts/manager/FeedbackManager$ShowToast;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/manager/FeedbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ShowToast"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/view/View;

.field private final c:I

.field private d:Ljava/lang/Integer;

.field private final e:I


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/lang/Integer;)V
    .locals 2

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070385

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/callapp/contacts/manager/FeedbackManager$ShowToast;->e:I

    .line 261
    iput-object p1, p0, Lcom/callapp/contacts/manager/FeedbackManager$ShowToast;->a:Ljava/lang/String;

    .line 262
    iput p2, p0, Lcom/callapp/contacts/manager/FeedbackManager$ShowToast;->c:I

    .line 263
    iput-object p3, p0, Lcom/callapp/contacts/manager/FeedbackManager$ShowToast;->d:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 264
    iput-object p1, p0, Lcom/callapp/contacts/manager/FeedbackManager$ShowToast;->b:Landroid/view/View;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Integer;Landroid/view/View;)V
    .locals 2

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070385

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/callapp/contacts/manager/FeedbackManager$ShowToast;->e:I

    .line 268
    iput-object p1, p0, Lcom/callapp/contacts/manager/FeedbackManager$ShowToast;->a:Ljava/lang/String;

    .line 269
    iput p2, p0, Lcom/callapp/contacts/manager/FeedbackManager$ShowToast;->c:I

    .line 270
    iput-object p4, p0, Lcom/callapp/contacts/manager/FeedbackManager$ShowToast;->b:Landroid/view/View;

    .line 271
    iput-object p3, p0, Lcom/callapp/contacts/manager/FeedbackManager$ShowToast;->d:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/Integer;Landroid/view/View;Lcom/callapp/contacts/manager/FeedbackManager$1;)V
    .locals 0

    .line 253
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/callapp/contacts/manager/FeedbackManager$ShowToast;-><init>(Ljava/lang/String;ILjava/lang/Integer;Landroid/view/View;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/Integer;Lcom/callapp/contacts/manager/FeedbackManager$1;)V
    .locals 0

    .line 253
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/manager/FeedbackManager$ShowToast;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 277
    iget-object v0, p0, Lcom/callapp/contacts/manager/FeedbackManager$ShowToast;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 278
    new-instance v0, Landroid/widget/Toast;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 279
    iget v1, p0, Lcom/callapp/contacts/manager/FeedbackManager$ShowToast;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 280
    iget-object v1, p0, Lcom/callapp/contacts/manager/FeedbackManager$ShowToast;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    goto :goto_0

    .line 282
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/manager/FeedbackManager$ShowToast;->a:Ljava/lang/String;

    iget v2, p0, Lcom/callapp/contacts/manager/FeedbackManager$ShowToast;->c:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 283
    iget v1, p0, Lcom/callapp/contacts/manager/FeedbackManager$ShowToast;->e:I

    invoke-static {v0, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Landroid/widget/Toast;I)V

    .line 285
    :goto_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/FeedbackManager$ShowToast;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 286
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 288
    :cond_1
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
