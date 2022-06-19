.class Lcom/unknownphone/callblocker/h/a$2;
.super Ljava/lang/Object;
.source "ProtectionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/h/a;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/h/a;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/h/a;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/unknownphone/callblocker/h/a$2;->a:Lcom/unknownphone/callblocker/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a$2;->a:Lcom/unknownphone/callblocker/h/a;

    invoke-static {v0}, Lcom/unknownphone/callblocker/h/a;->b(Lcom/unknownphone/callblocker/h/a;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "subscription_ends_at"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/unknownphone/callblocker/h/a$2;->a:Lcom/unknownphone/callblocker/h/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/unknownphone/callblocker/h/a;->a(Lcom/unknownphone/callblocker/h/a;Z)V

    .line 230
    :cond_0
    return-void
.end method
