.class public Lcom/kedlin/cca/core/CCAService;
.super Lcom/kedlin/cca/core/ContactSyncService;
.source ""

# interfaces
.implements Lra1$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kedlin/cca/core/CCAService$b;
    }
.end annotation


# static fields
.field public static final A:Ljava/lang/String;

.field public static final B:Ljava/lang/String;

.field public static final C:Ljava/lang/String;

.field public static final k:Ljava/lang/String;

.field public static final l:Ljava/lang/String;

.field public static final m:Ljava/lang/String;

.field public static final n:Ljava/lang/String;

.field public static final o:Ljava/lang/String;

.field public static final p:Ljava/lang/String;

.field public static final q:Ljava/lang/String;

.field public static final r:Ljava/lang/String;

.field public static final s:Ljava/lang/String;

.field public static final t:Ljava/lang/String;

.field public static final u:Ljava/lang/String;

.field public static final v:Ljava/lang/String;

.field public static final w:Ljava/lang/String;

.field public static final x:Ljava/lang/String;

.field public static final y:Ljava/lang/String;

.field public static final z:Ljava/lang/String;


# instance fields
.field public d:Landroid/os/HandlerThread;

.field public f:Landroid/os/Handler;

.field public g:Z

.field public h:Lsa1;

.field public j:Lra1$f;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/kedlin/cca/core/CCAService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".CATEGORY_WAKEUP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kedlin/cca/core/CCAService;->k:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/kedlin/cca/core/CCAService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".CATEGORY_PLACE_CALL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kedlin/cca/core/CCAService;->l:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/kedlin/cca/core/CCAService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".CATEGORY_SETTINGS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kedlin/cca/core/CCAService;->m:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/kedlin/cca/core/CCAService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".CATEGORY_CONTENT_BLOCKED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kedlin/cca/core/CCAService;->n:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/kedlin/cca/core/CCAService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".CATEGORY_CONTENT_MISSED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kedlin/cca/core/CCAService;->o:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/kedlin/cca/core/CCAService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".CATEGORY_CALL_PURCHASE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kedlin/cca/core/CCAService;->p:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/kedlin/cca/core/CCAService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".CATEGORY_WIDGET_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kedlin/cca/core/CCAService;->q:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/kedlin/cca/core/CCAService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".CATEGORY_CALL_SUPPORT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kedlin/cca/core/CCAService;->r:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/kedlin/cca/core/CCAService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".CATEGORY_SHOW_ATTORNEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kedlin/cca/core/CCAService;->s:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/kedlin/cca/core/CCAService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".CATEGORY_CC_DISABLED_REMINDER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kedlin/cca/core/CCAService;->t:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/kedlin/cca/core/CCAService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EXTRA_PHONE_NUMBER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kedlin/cca/core/CCAService;->u:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/kedlin/cca/core/CCAService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EXTRA_TEXT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kedlin/cca/core/CCAService;->v:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/kedlin/cca/core/CCAService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EXTRA_REASON"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kedlin/cca/core/CCAService;->w:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/kedlin/cca/core/CCAService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EXTRA_COMMUNITY_TYPE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kedlin/cca/core/CCAService;->x:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/kedlin/cca/core/CCAService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EXTRA_CONTENT_TYPE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kedlin/cca/core/CCAService;->y:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/kedlin/cca/core/CCAService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EXTRA_DISPLAY_NAME"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kedlin/cca/core/CCAService;->z:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/kedlin/cca/core/CCAService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EXTRA_PURCHASE_ORIGIN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kedlin/cca/core/CCAService;->A:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/kedlin/cca/core/CCAService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EXTRA_WIDGET_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kedlin/cca/core/CCAService;->B:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/kedlin/cca/core/CCAService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EXTRA_CCH_ID_SUPPORT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/kedlin/cca/core/CCAService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EXTRA_ATTORNEY_URL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kedlin/cca/core/CCAService;->C:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/kedlin/cca/core/ContactSyncService;-><init>()V

    new-instance v0, Ll31;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kedlin/cca/core/CCAService;->g:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kedlin/cca/core/CCAService;->h:Lsa1;

    iput-object v0, p0, Lcom/kedlin/cca/core/CCAService;->j:Lra1$f;

    return-void
.end method

.method public static e(Landroid/content/Context;)V
    .locals 1

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method


# virtual methods
.method public a()Lra1$f;
    .locals 1

    iget-object v0, p0, Lcom/kedlin/cca/core/CCAService;->j:Lra1$f;

    if-nez v0, :cond_0

    invoke-static {}, Loe1;->l()Lra1$f;

    move-result-object v0

    iput-object v0, p0, Lcom/kedlin/cca/core/CCAService;->j:Lra1$f;

    :cond_0
    iget-object v0, p0, Lcom/kedlin/cca/core/CCAService;->j:Lra1$f;

    return-object v0
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lke1;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 7

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kedlin/cca/core/CCAService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/kedlin/cca/core/CCAService;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v2, Lz7$e;

    const-string v3, "cca_service"

    invoke-direct {v2, p0, v3}, Lz7$e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v3, Lcom/kedlin/cca/core/CCAService$b;->f:Lcom/kedlin/cca/core/CCAService$b;

    invoke-virtual {v3}, Lcom/kedlin/cca/core/CCAService$b;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Lz7$e;->F(I)Lz7$e;

    const v3, 0x7f1100c9

    invoke-virtual {p0, v3}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lz7$e;->r(Ljava/lang/CharSequence;)Lz7$e;

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const v6, 0x7f1100c8

    invoke-virtual {p0, v6, v4}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lz7$e;->q(Ljava/lang/CharSequence;)Lz7$e;

    invoke-virtual {v2, v0}, Lz7$e;->p(Landroid/app/PendingIntent;)Lz7$e;

    new-instance v0, Lz7$c;

    invoke-direct {v0}, Lz7$c;-><init>()V

    invoke-virtual {p0, v3}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lz7$c;->m(Ljava/lang/CharSequence;)Lz7$c;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-virtual {p0, v6, v1}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lz7$c;->l(Ljava/lang/CharSequence;)Lz7$c;

    invoke-virtual {v2, v0}, Lz7$e;->H(Lz7$g;)Lz7$e;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x3

    const/16 v1, 0x1a

    if-lt p1, v1, :cond_0

    invoke-virtual {v2}, Lz7$e;->c()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object p1

    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    invoke-virtual {v2}, Lz7$e;->c()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :goto_0
    return-void
.end method

.method public final g(Lcom/kedlin/cca/core/CCAService$b;)V
    .locals 8

    sget-object v4, Lq71$e;->b:Lq71$e;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/kedlin/cca/core/CCAService;->h(Lcom/kedlin/cca/core/CCAService$b;Ljava/lang/String;Ljava/lang/String;Lq71$e;IILjava/lang/String;)V

    return-void
.end method

.method public final h(Lcom/kedlin/cca/core/CCAService$b;Ljava/lang/String;Ljava/lang/String;Lq71$e;IILjava/lang/String;)V
    .locals 7

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1100c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/kedlin/cca/core/CCAService$b;->f:Lcom/kedlin/cca/core/CCAService$b;

    const/high16 v2, 0x8000000

    const/4 v3, 0x1

    if-eq p1, v1, :cond_0

    sget-object v4, Lcom/kedlin/cca/core/CCAService$b;->g:Lcom/kedlin/cca/core/CCAService$b;

    if-ne p1, v4, :cond_6

    :cond_0
    sget-object v4, Lq71$e;->b:Lq71$e;

    if-ne p4, v4, :cond_6

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/kedlin/cca/core/CCAService;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-ne p1, v1, :cond_1

    sget-object v5, Lcom/kedlin/cca/core/CCAService;->n:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v5, Lcom/kedlin/cca/core/CCAService;->o:Ljava/lang/String;

    :goto_0
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v5, Lcom/kedlin/cca/core/CCAService;->y:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    invoke-virtual {v4, v5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string p4, "com.kedlin.cca.extra.MISSEDCALLNAMESUGGESTIONTIMESTAMP"

    invoke-virtual {v4, p4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    if-eqz p2, :cond_2

    sget-object p4, Lcom/kedlin/cca/core/CCAService;->u:Ljava/lang/String;

    invoke-virtual {v4, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const/4 p2, -0x1

    if-eq p2, p5, :cond_3

    sget-object p2, Lcom/kedlin/cca/core/CCAService;->w:Ljava/lang/String;

    invoke-virtual {v4, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_3
    if-eqz p6, :cond_4

    sget-object p2, Lcom/kedlin/cca/core/CCAService;->x:Ljava/lang/String;

    invoke-virtual {v4, p2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_4
    if-eqz p7, :cond_5

    sget-object p2, Lcom/kedlin/cca/core/CCAService;->z:Ljava/lang/String;

    invoke-virtual {v4, p2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    const/4 p2, 0x0

    invoke-static {p0, p2, v4, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    goto :goto_1

    :cond_6
    new-instance p2, Landroid/content/Intent;

    const-class p5, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    invoke-direct {p2, p0, p5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object p5, Lcom/kedlin/cca/core/CCAService;->y:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    invoke-virtual {p2, p5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p0, v3, p2, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    :goto_1
    new-instance p4, Lz7$e;

    const-string p5, "cca_service"

    invoke-direct {p4, p0, p5}, Lz7$e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/kedlin/cca/core/CCAService$b;->a()I

    move-result p5

    invoke-virtual {p4, p5}, Lz7$e;->F(I)Lz7$e;

    invoke-virtual {p4, v0}, Lz7$e;->r(Ljava/lang/CharSequence;)Lz7$e;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_7

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p1}, Lcom/kedlin/cca/core/CCAService$b;->b()I

    move-result p6

    invoke-virtual {p5, p6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    goto :goto_2

    :cond_7
    move-object p5, p3

    :goto_2
    invoke-virtual {p4, p5}, Lz7$e;->q(Ljava/lang/CharSequence;)Lz7$e;

    invoke-virtual {p4, p2}, Lz7$e;->p(Landroid/app/PendingIntent;)Lz7$e;

    const/16 p2, 0x1a

    if-eq p1, v1, :cond_8

    sget-object p5, Lcom/kedlin/cca/core/CCAService$b;->g:Lcom/kedlin/cca/core/CCAService$b;

    if-ne p1, p5, :cond_b

    :cond_8
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_9

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p1}, Lcom/kedlin/cca/core/CCAService$b;->b()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    :cond_9
    invoke-virtual {p4, p3}, Lz7$e;->I(Ljava/lang/CharSequence;)Lz7$e;

    sget-object p1, Lr71$a;->q:Lr71$a;

    invoke-virtual {p1}, Lr71$a;->a()Z

    move-result p1

    if-nez p1, :cond_b

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 p3, 0x2

    if-lt p1, p2, :cond_a

    invoke-virtual {p4}, Lz7$e;->c()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    goto :goto_3

    :cond_a
    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object p1

    const-string p2, "notification"

    invoke-virtual {p1, p2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    invoke-virtual {p4}, Lz7$e;->c()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :goto_3
    return-void

    :cond_b
    invoke-virtual {p4, v3}, Lz7$e;->A(Z)Lz7$e;

    sget-object p1, Lr71$a;->p:Lr71$a;

    invoke-virtual {p1}, Lr71$a;->a()Z

    move-result p1

    if-nez p1, :cond_d

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, p2, :cond_c

    goto :goto_4

    :cond_c
    invoke-virtual {p0, v3}, Landroid/app/Service;->stopForeground(Z)V

    goto :goto_5

    :cond_d
    :goto_4
    invoke-virtual {p4}, Lz7$e;->c()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    :goto_5
    return-void
.end method

.method public i(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kedlin/cca/core/CCAService;->j(Ljava/lang/String;)V

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 6

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.kedlin.cca.receivers.IntentToServiceTransportReceiver.ACTION_TRANSPORT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/kedlin/cca/core/CCAService;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/kedlin/cca/core/CCAService;->w:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v4, 0x6ddd00

    add-long/2addr v1, v4

    invoke-virtual {v0, v3, v1, v2, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    invoke-static {}, Lr71;->m()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_5

    sget-object v0, Lr71$a;->L0:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    const/4 v1, 0x0

    const-string v2, "cca_service"

    const-string v3, "Call Control Background Service"

    invoke-static {v2, v3, v1}, Lfa1;->h(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lfa1;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    const-string v2, "cca_message"

    const-string v3, "Call Control Messages"

    invoke-static {v2, v3, v1}, Lfa1;->h(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    new-instance v0, Lsa1;

    invoke-direct {v0}, Lsa1;-><init>()V

    iput-object v0, p0, Lcom/kedlin/cca/core/CCAService;->h:Lsa1;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsa1;->b(Landroid/content/Context;)V

    :cond_2
    sget-object v0, Lr71$a;->d:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/kedlin/cca/core/CCAService$b;->c:Lcom/kedlin/cca/core/CCAService$b;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/kedlin/cca/core/CCAService$b;->d:Lcom/kedlin/cca/core/CCAService$b;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/kedlin/cca/core/CCAService;->g(Lcom/kedlin/cca/core/CCAService$b;)V

    const-string v0, "CCA"

    invoke-static {v0}, Lj91;->B(Ljava/lang/String;)V

    invoke-static {}, Lo91;->c()V

    invoke-static {p0}, Lra1;->g(Lra1$e;)V

    new-instance v0, Landroid/os/HandlerThread;

    const/16 v1, 0xa

    const-string v2, "cca_service_worker_thread"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/kedlin/cca/core/CCAService;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/kedlin/cca/core/CCAService;->d:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kedlin/cca/core/CCAService;->f:Landroid/os/Handler;

    invoke-static {p0}, Lfa1$e;->q(Landroid/app/Service;)V

    invoke-static {}, Li91;->x()V

    invoke-static {}, Lo71;->m()V

    invoke-static {}, Lu71;->G()V

    sget-object v0, Lr71$a;->S:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Laa1;->n()V

    :cond_4
    invoke-static {}, Lz91;->s()V

    invoke-static {}, Lcom/kedlin/cca/core/sync/ServerSync;->l()V

    :try_start_0
    invoke-static {}, Lcom/kedlin/cca/core/PushListenerService;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void

    :cond_5
    :goto_1
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Laa1;->p()V

    invoke-static {}, Lz91;->u()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/kedlin/cca/core/CCAService;->h:Lsa1;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsa1;->a(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lr71;->L()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lfa1$e;->r(Landroid/app/Service;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    iget-object v0, p0, Lcom/kedlin/cca/core/CCAService;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kedlin/cca/core/CCAService;->f:Landroid/os/Handler;

    invoke-static {}, Lw91;->i()V

    const/4 v0, 0x0

    const-string v1, "CCA"

    invoke-static {v1, v0}, Lj91;->D(Ljava/lang/String;Z)V

    :cond_1
    invoke-super {p0}, Lcom/kedlin/cca/core/ContactSyncService;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 14

    move-object v8, p0

    move-object v9, p1

    invoke-static {}, Lr71;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :goto_0
    invoke-super/range {p0 .. p3}, Lcom/kedlin/cca/core/ContactSyncService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v9, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v3, Laa1;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    sget-object v3, Lcom/kedlin/cca/core/ContactSyncService;->a:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    or-int/2addr v2, v3

    if-eqz v2, :cond_2

    invoke-super/range {p0 .. p3}, Lcom/kedlin/cca/core/ContactSyncService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0

    :cond_2
    invoke-static {p0}, Lw91;->f(Ljava/lang/Object;)V

    const/high16 v2, 0x54000000

    if-eqz v9, :cond_3

    sget-object v3, Lcom/kedlin/cca/core/CCAService;->s:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/kedlin/cca/core/CCAService;->C:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-class v4, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    :cond_3
    if-eqz v9, :cond_4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lfa1$e;->o(Ljava/lang/String;)Li91;

    move-result-object v3

    invoke-virtual {v3}, Li91;->i()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lfa1$e;->s(Ljava/lang/String;)V

    invoke-virtual {v3}, Li91;->p()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v0, Lr71$a;->d:Lr71$a;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lr71$a;->k(Ljava/lang/Boolean;)V

    sget-object v0, Lcom/kedlin/cca/core/CCAService$b;->h:Lcom/kedlin/cca/core/CCAService$b;

    invoke-virtual {p0, v0}, Lcom/kedlin/cca/core/CCAService;->g(Lcom/kedlin/cca/core/CCAService$b;)V

    invoke-static {p0}, Lw91;->g(Ljava/lang/Object;)V

    const v0, 0x7f1100be

    invoke-virtual {p0, v0}, Lcom/kedlin/cca/core/CCAService;->i(I)V

    goto/16 :goto_0

    :cond_4
    const/high16 v3, 0x10000000

    const-string v4, "notification"

    const/4 v10, -0x1

    if-eqz v9, :cond_11

    sget-object v5, Lcom/kedlin/cca/core/CCAService;->n:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    sget-object v6, Lcom/kedlin/cca/core/CCAService;->o:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    :cond_5
    sget-object v6, Lcom/kedlin/cca/core/CCAService;->u:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lfa1$e;->o(Ljava/lang/String;)Li91;

    move-result-object v11

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Landroid/app/NotificationManager;->cancel(I)V

    new-instance v4, Ln91$b;

    invoke-direct {v4}, Ln91$b;-><init>()V

    sget-object v6, Lcom/kedlin/cca/core/CCAService;->z:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Ln91$b;->f:Ljava/lang/String;

    sget-object v6, Lcom/kedlin/cca/core/CCAService;->w:Ljava/lang/String;

    invoke-virtual {p1, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-eq v10, v6, :cond_6

    invoke-static {}, Ln91$a;->values()[Ln91$a;

    move-result-object v7

    aget-object v6, v7, v6

    iput-object v6, v4, Ln91$b;->a:Ln91$a;

    :cond_6
    sget-object v6, Lcom/kedlin/cca/core/CCAService;->x:Ljava/lang/String;

    invoke-virtual {p1, v6, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v4, Ln91$b;->g:Ljava/lang/Integer;

    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v4, Ln91$b;->b:Z

    new-instance v1, Ll81;

    invoke-direct {v1}, Ll81;-><init>()V

    invoke-virtual {v1, v11}, Ll81;->u0(Li91;)Ll81;

    sget-object v5, Lr71$a;->u:Lr71$a;

    invoke-virtual {v5}, Lr71$a;->a()Z

    move-result v5

    if-eqz v5, :cond_7

    sget-object v5, Lcom/kedlin/cca/core/CCAService;->y:Ljava/lang/String;

    invoke-virtual {p1, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    sget-object v6, Lq71$e;->b:Lq71$e;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-ne v5, v6, :cond_7

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_2

    :cond_7
    invoke-static {}, Lra1;->j()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v11}, Li91;->q()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v11}, Li91;->s()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v1}, Ll81;->r0()Z

    move-result v1

    if-nez v1, :cond_8

    new-instance v1, Lra1;

    invoke-direct {v1}, Lra1;-><init>()V

    invoke-virtual {v1}, Lra1;->f()V

    invoke-static {v11, v4, v0}, Lra1;->h(Li91;Ln91$b;Z)V

    goto :goto_3

    :cond_8
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/kedlin/cca/core/CCAService;->y:Ljava/lang/String;

    invoke-virtual {p1, v1, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_2
    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    :goto_3
    sget-object v0, Lr71$a;->d:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/kedlin/cca/core/CCAService$b;->c:Lcom/kedlin/cca/core/CCAService$b;

    goto :goto_4

    :cond_9
    sget-object v0, Lcom/kedlin/cca/core/CCAService$b;->d:Lcom/kedlin/cca/core/CCAService$b;

    :goto_4
    invoke-virtual {p0, v0}, Lcom/kedlin/cca/core/CCAService;->g(Lcom/kedlin/cca/core/CCAService$b;)V

    goto/16 :goto_6

    :cond_a
    sget-object v2, Lcom/kedlin/cca/core/CCAService;->y:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    sget-object v2, Lr71$a;->s:Lr71$a;

    invoke-virtual {v2}, Lr71$a;->a()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v0, 0x0

    :cond_b
    sget-object v2, Lr71$a;->r:Lr71$a;

    invoke-virtual {v2}, Lr71$a;->a()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    const/4 v0, 0x0

    :cond_c
    if-eqz v0, :cond_e

    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/kedlin/cca/core/CCAService$b;->f:Lcom/kedlin/cca/core/CCAService$b;

    goto :goto_5

    :cond_d
    sget-object v0, Lcom/kedlin/cca/core/CCAService$b;->g:Lcom/kedlin/cca/core/CCAService$b;

    :goto_5
    move-object v2, v0

    invoke-virtual {v11}, Li91;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/kedlin/cca/core/CCAService;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lq71$e;->values()[Lq71$e;

    move-result-object v0

    aget-object v5, v0, v12

    sget-object v0, Lcom/kedlin/cca/core/CCAService;->w:Ljava/lang/String;

    invoke-virtual {p1, v0, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    sget-object v0, Lcom/kedlin/cca/core/CCAService;->x:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    sget-object v0, Lcom/kedlin/cca/core/CCAService;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    move-object v7, v13

    invoke-virtual/range {v0 .. v7}, Lcom/kedlin/cca/core/CCAService;->h(Lcom/kedlin/cca/core/CCAService$b;Ljava/lang/String;Ljava/lang/String;Lq71$e;IILjava/lang/String;)V

    :cond_e
    sget-object v0, Lr71$a;->u:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lq71$e;->b:Lq71$e;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne v12, v0, :cond_f

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const v1, 0x54000004

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_f
    sget-object v0, Lta1;->E:Lta1;

    invoke-virtual {v0}, Lta1;->d()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/kedlin/cca/core/CCAService;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lq71$e;->b:Lq71$e;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne v0, v12, :cond_10

    sget-object v0, Lcom/kedlin/cca/core/CCAService;->w:Ljava/lang/String;

    invoke-virtual {p1, v0, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Ln91$a;->values()[Ln91$a;

    move-result-object v1

    aget-object v0, v1, v0

    sget-object v1, Lr71$a;->M0:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v1

    if-nez v1, :cond_10

    sget-object v1, Ln91$a;->p:Ln91$a;

    if-ne v0, v1, :cond_10

    new-instance v0, Lo81;

    invoke-direct {v0}, Lo81;-><init>()V

    invoke-virtual {v11}, Li91;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo81;->H(Ljava/lang/String;)Lo81;

    :cond_10
    :goto_6
    invoke-static {}, Lcom/kedlin/cca/core/sync/ServerSync;->o()V

    goto/16 :goto_9

    :cond_11
    if-eqz v9, :cond_14

    sget-object v2, Lcom/kedlin/cca/core/CCAService;->m:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v5, "com.kedlin.cca.action.SETTINGS_CHANGED"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_12
    sget-object v0, Lr71$a;->d:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    if-eqz v0, :cond_13

    :goto_7
    sget-object v0, Lcom/kedlin/cca/core/CCAService$b;->c:Lcom/kedlin/cca/core/CCAService$b;

    goto :goto_8

    :cond_13
    sget-object v0, Lcom/kedlin/cca/core/CCAService$b;->d:Lcom/kedlin/cca/core/CCAService$b;

    :goto_8
    invoke-virtual {p0, v0}, Lcom/kedlin/cca/core/CCAService;->g(Lcom/kedlin/cca/core/CCAService$b;)V

    goto/16 :goto_9

    :cond_14
    if-eqz v9, :cond_15

    sget-object v2, Lcom/kedlin/cca/core/CCAService;->l:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    iput-boolean v0, v8, Lcom/kedlin/cca/core/CCAService;->g:Z

    goto/16 :goto_9

    :cond_15
    if-eqz v9, :cond_17

    sget-object v0, Lcom/kedlin/cca/core/CCAService;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/kedlin/cca/core/CCAService;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    sget-object v1, Lr71$a;->d:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kedlin/cca/core/CCAService;->f(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_16
    sget-object v0, Lr71$a;->d:Lr71$a;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lr71$a;->k(Ljava/lang/Boolean;)V

    sget-object v0, Lcom/kedlin/cca/core/CCAService$b;->c:Lcom/kedlin/cca/core/CCAService$b;

    invoke-virtual {p0, v0}, Lcom/kedlin/cca/core/CCAService;->g(Lcom/kedlin/cca/core/CCAService$b;)V

    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_9

    :cond_17
    if-eqz v9, :cond_18

    sget-object v0, Lcom/kedlin/cca/core/CCAService;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lcom/kedlin/cca/core/CCAService;->B:Ljava/lang/String;

    invoke-virtual {p1, v0, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " widgetAction"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lr71$a;->O:Lr71$a;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lr71$a;->m(Ljava/lang/Integer;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    :cond_18
    if-eqz v9, :cond_1d

    sget-object v0, Lcom/kedlin/cca/core/CCAService;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_19
    invoke-static {}, Lfa1;->u()Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Application is default for text messages. Skipping "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1a
    :goto_9
    invoke-static {p0}, Lw91;->g(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1b
    invoke-static {p1}, Lfa1$e;->u(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, v8, Lcom/kedlin/cca/core/CCAService;->f:Landroid/os/Handler;

    new-instance v2, Lcom/kedlin/cca/core/CCAService$a;

    invoke-direct {v2, p0, p1}, Lcom/kedlin/cca/core/CCAService$a;-><init>(Lcom/kedlin/cca/core/CCAService;Landroid/content/Intent;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1c
    iget-boolean v0, v8, Lcom/kedlin/cca/core/CCAService;->g:Z

    invoke-static {p1, v0}, Lfa1;->I(Landroid/content/Intent;Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    iput-boolean v1, v8, Lcom/kedlin/cca/core/CCAService;->g:Z

    goto :goto_9

    :cond_1d
    sget-object v0, Lr71$a;->d:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    if-eqz v0, :cond_13

    goto/16 :goto_7
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v1, 0x10000000

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.kedlin.cca.receivers.IntentToServiceTransportReceiver.ACTION_TRANSPORT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/kedlin/cca/core/CCAService;->k:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void

    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/kedlin/cca/ui/CCAEActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Service;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
