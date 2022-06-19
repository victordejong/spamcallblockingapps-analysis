.class public Lho0;
.super Lfm0;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfm0<",
        "Lcom/facebook/share/model/ShareContent;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lbm0$b;->l:Lbm0$b;

    invoke-virtual {v0}, Lbm0$b;->a()I

    move-result v0

    sput v0, Lho0;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    sget v0, Lho0;->f:I

    invoke-direct {p0, p1, v0}, Lfm0;-><init>(Landroid/app/Activity;I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1

    new-instance v0, Lpm0;

    invoke-direct {v0, p1}, Lpm0;-><init>(Landroid/app/Fragment;)V

    sget p1, Lho0;->f:I

    invoke-direct {p0, v0, p1}, Lfm0;-><init>(Lpm0;I)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1

    new-instance v0, Lpm0;

    invoke-direct {v0, p1}, Lpm0;-><init>(Landroidx/fragment/app/Fragment;)V

    sget p1, Lho0;->f:I

    invoke-direct {p0, v0, p1}, Lfm0;-><init>(Lpm0;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1, p2}, Lho0;->l(Lcom/facebook/share/model/ShareContent;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public e()Lyl0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfm0<",
            "Lcom/facebook/share/model/ShareContent;",
            "Ljava/lang/Object;",
            ">.a;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic j(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1, p2}, Lho0;->m(Lcom/facebook/share/model/ShareContent;Ljava/lang/Object;)V

    return-void
.end method

.method public l(Lcom/facebook/share/model/ShareContent;Ljava/lang/Object;)Z
    .locals 0

    instance-of p2, p1, Lcom/facebook/share/model/ShareLinkContent;

    if-nez p2, :cond_1

    instance-of p1, p1, Lcom/facebook/share/model/ShareOpenGraphContent;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public m(Lcom/facebook/share/model/ShareContent;Ljava/lang/Object;)V
    .locals 2

    if-eqz p1, :cond_2

    instance-of p2, p1, Lcom/facebook/share/model/ShareLinkContent;

    if-nez p2, :cond_1

    instance-of p2, p1, Lcom/facebook/share/model/ShareOpenGraphContent;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lri0;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Lho0;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " only supports ShareLinkContent or ShareOpenGraphContent"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lri0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lui0;->e()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/facebook/FacebookActivity;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v0, "DeviceShareDialogFragment"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "content"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0}, Lfm0;->h()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lfm0;->k(Landroid/content/Intent;I)V

    return-void

    :cond_2
    new-instance p1, Lri0;

    const-string p2, "Must provide non-null content to share"

    invoke-direct {p1, p2}, Lri0;-><init>(Ljava/lang/String;)V

    throw p1
.end method
