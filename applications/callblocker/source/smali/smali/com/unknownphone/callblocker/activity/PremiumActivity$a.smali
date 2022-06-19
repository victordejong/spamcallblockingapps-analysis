.class Lcom/unknownphone/callblocker/activity/PremiumActivity$a;
.super Landroidx/fragment/app/m;
.source "PremiumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unknownphone/callblocker/activity/PremiumActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/unknownphone/callblocker/custom/a;

.field private b:Lcom/unknownphone/callblocker/custom/a;

.field private c:Lcom/unknownphone/callblocker/custom/a;

.field private d:Lcom/unknownphone/callblocker/custom/a;


# direct methods
.method constructor <init>(Landroidx/fragment/app/i;)V
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroidx/fragment/app/m;-><init>(Landroidx/fragment/app/i;I)V

    .line 244
    return-void
.end method


# virtual methods
.method public a(I)Landroidx/fragment/app/Fragment;
    .locals 3

    .prologue
    .line 249
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/PremiumActivity$a;->a:Lcom/unknownphone/callblocker/custom/a;

    iget-object v1, p0, Lcom/unknownphone/callblocker/activity/PremiumActivity$a;->b:Lcom/unknownphone/callblocker/custom/a;

    iget-object v2, p0, Lcom/unknownphone/callblocker/activity/PremiumActivity$a;->c:Lcom/unknownphone/callblocker/custom/a;

    invoke-static {v0, v1, v2}, Lcom/unknownphone/callblocker/b/b;->a(Lcom/unknownphone/callblocker/custom/a;Lcom/unknownphone/callblocker/custom/a;Lcom/unknownphone/callblocker/custom/a;)Lcom/unknownphone/callblocker/b/b;

    move-result-object v0

    .line 252
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/PremiumActivity$a;->c:Lcom/unknownphone/callblocker/custom/a;

    iget-object v1, p0, Lcom/unknownphone/callblocker/activity/PremiumActivity$a;->d:Lcom/unknownphone/callblocker/custom/a;

    invoke-static {v0, v1}, Lcom/unknownphone/callblocker/b/a;->a(Lcom/unknownphone/callblocker/custom/a;Lcom/unknownphone/callblocker/custom/a;)Lcom/unknownphone/callblocker/b/a;

    move-result-object v0

    goto :goto_0
.end method

.method a(Lcom/unknownphone/callblocker/custom/a;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/unknownphone/callblocker/activity/PremiumActivity$a;->a:Lcom/unknownphone/callblocker/custom/a;

    .line 262
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x2

    return v0
.end method

.method b(Lcom/unknownphone/callblocker/custom/a;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/unknownphone/callblocker/activity/PremiumActivity$a;->b:Lcom/unknownphone/callblocker/custom/a;

    .line 266
    return-void
.end method

.method c(Lcom/unknownphone/callblocker/custom/a;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/unknownphone/callblocker/activity/PremiumActivity$a;->c:Lcom/unknownphone/callblocker/custom/a;

    .line 270
    return-void
.end method

.method d(Lcom/unknownphone/callblocker/custom/a;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/unknownphone/callblocker/activity/PremiumActivity$a;->d:Lcom/unknownphone/callblocker/custom/a;

    .line 274
    return-void
.end method
