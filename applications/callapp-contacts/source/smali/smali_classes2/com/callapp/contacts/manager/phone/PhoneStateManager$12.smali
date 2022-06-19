.class Lcom/callapp/contacts/manager/phone/PhoneStateManager$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/phone/PhoneStateManager;->muteRingerIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/callapp/contacts/manager/phone/PhoneStateManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)V
    .locals 0

    .line 1968
    iput-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$12;->b:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1969
    iput p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$12;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "audio"

    .line 1973
    invoke-static {v0}, Lcom/callapp/contacts/manager/Singletons;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1974
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$12;->a:I

    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr v0, v1

    .line 1977
    iput v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$12;->a:I

    .line 1978
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$12;->b:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-static {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->access$500(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 1975
    :cond_1
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->d()V

    return-void
.end method
